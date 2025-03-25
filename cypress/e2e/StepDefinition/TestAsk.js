import { Given, Then, When } from "cypress-cucumber-preprocessor/steps";

if (Cypress.spec.name === "TestAsk.feature") {
  function responseInterceptor() {
    let message_id = "";
    // default api timeout is 5 secs, using 10 secs.
    cy.wait("@sendCall", { timeout: 10000 }).then((interception) => {
      expect(interception.response.statusCode).to.be.oneOf([202]);
      message_id = interception.response?.body?.message_id;

      cy.log("Message ID: ", message_id);

      cy.intercept(
        "GET",
        `https://algocore-api-fc-engine-shared-snowflake-uat.azurewebsites.net/v2/messages/${message_id}`
      ).as("messageResponse");

      function waitFor200Response() {
        cy.wait("@messageResponse", { timeout: 10000 }).then((interception) => {
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

  // Then("User waits for 'What's Trending' Response", () => {
  //   cy.title().should("eq", "Algo - Creative Intelligence");
  //   cy.url().should("include", "/home");

  //   // cy.intercept(
  //   //   "POST",
  //   //   "https://algocore-api-fc-engine-shared-snowflake-uat.azurewebsites.net/v1/messages/send"
  //   // ).as("sendCall");

  //   // responseInterceptor(); //Wait for Reponse status 200.

  //   // cy.get(`[id="Panel - 00"] app-dynamic-tabs`);

  //   // cy.get('[mattooltip="Delete"]').click();
  //   // cy.get(".btn-primary").click();
  // });

  Then("User Checks page has loaded", () => {
    cy.title().should("eq", "Algo - Creative Intelligence");
    cy.url().should("include", "/home");
  });

  When(`User enters Ask: {string}`, async (ASK) => {
    cy.get('[mattooltip="Delete"]').click();
    cy.get(".btn-primary").click();
    cy.intercept(
      "POST",
      "https://algocore-api-fc-engine-shared-snowflake-uat.azurewebsites.net/v1/messages/send"
    ).as("sendCall");
    cy.get("#mat-input-0", {
      timeout: 10000,
    }).type(`${ASK}{enter}`);
    responseInterceptor(); //Wait for Reponse status 200.
  });

  Then("User checks for response", () => {
    cy.get(`[id="Panel - 00"] app-dynamic-tabs`).then(($body) => {
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
