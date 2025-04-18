import { Given, Then, When } from "cypress-cucumber-preprocessor/steps";

Given("User clears the pannel", () => {
  cy.get('[mattooltip="Delete"]').click();
  cy.get(".btn-primary").click();
});

When(`User enters Ask: {string}`, async (ASK) => {
  cy.intercept("POST", `${Cypress.env("SNOWFLAKE_URL")}/v1/messages/send`).as(
    "sendCall"
  );
  cy.wait(3000);
  cy.get("#mat-input-2", {
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

function responseInterceptor() {
  let message_id = "";
  // default api timeout is 5 secs, using 10 secs.
  cy.wait("@sendCall", { timeout: 10000 }).then((interception) => {
    expect(interception.response.statusCode).to.be.oneOf([202]);
    message_id = interception.response?.body?.message_id;

    cy.log("Message ID: ", message_id);

    cy.intercept(
      "GET",
      `${Cypress.env("SNOWFLAKE_URL")}/v2/messages/${message_id}`
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
