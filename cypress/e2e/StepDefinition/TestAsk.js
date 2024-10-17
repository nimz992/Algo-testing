import { Given, Then, When } from "cypress-cucumber-preprocessor/steps";

if (
  Cypress.spec.name === "TestAsk 1.feature" ||
  Cypress.spec.name === "TestAsk 2.feature" ||
  Cypress.spec.name === "TestAsk 3.feature" ||
  Cypress.spec.name === "TestAsk 4.feature" ||
  Cypress.spec.name === "TestAsk 5.feature"
) {
  function responseInterceptor() {
    cy.intercept(
      "POST",
      "https://algocoreapi-algocore-uat.algoplus.com/v1/messages/send"
    ).as("sendCall");

    let message_id = "";
    cy.wait("@sendCall").then((interception) => {
      expect(interception.response.statusCode).to.be.oneOf([202]);
      message_id = interception.response?.body?.message_id;

      cy.log("Message ID: ", message_id);

      cy.intercept(
        "GET",
        `https://algocoreapi-algocore-uat.algoplus.com/v2/messages/${message_id}`
      ).as("messageResponse");

      function waitFor200Response() {
        cy.wait("@messageResponse").then((interception) => {
          if (interception.response.statusCode === 200) {
            cy.log("Received the 200 status response");
          } else if (interception.response.statusCode === 202) {
            waitFor200Response();
          } else {
            throw new Error("No 200 status response received after retries");
          }
        });
      }

      waitFor200Response();
    });
  }

  Given("User Login as SONY-DPIP", () => {
    cy.fixture("credential").then((user) => {
      cy.loginAsDPIP(user.email, user.password);
    });

    cy.visit("https://algocore-uat.algoplus.com/home");
  });

  Then("User waits for 'What's Trending' Response", () => {
    cy.title().should("eq", "Algo - Creative Intelligence");
    cy.url().should("include", "/home");

    responseInterceptor(); //Wait for Reponse status 200.

    cy.get(`[id="Panel - 00"] app-dynamic-tabs`);
  });

  Then("User Checks page has loaded", () => {
    cy.title().should("eq", "Algo - Creative Intelligence");
    cy.url().should("include", "/home");
  });

  When(`User enters Ask: {string}`, async (ASK) => {
    cy.get("#mat-input-0", {
      timeout: 10000,
    }).type(`${ASK}{enter}`);
  });

  Then("User checks for response", () => {
    responseInterceptor(); //Wait for Reponse status 200.

    cy.get(`[id="Panel - 01"] app-dynamic-tabs`).then(($body) => {
      // Check if app-dynamic-message is displayed.
      if ($body.find("app-dynamic-message").length > 0) {
        // Check if app-dynamic-message has text "I am sorry".
        cy.wrap($body)
          .find("app-dynamic-message div div")
          .should("not.contain", "I am sorry");
      } else {
        // Pass the test if the error message is not found
        cy.log("No error message element found, test passed.");
      }
    });
  });
}
