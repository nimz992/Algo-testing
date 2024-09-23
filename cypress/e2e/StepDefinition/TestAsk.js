import { Given, Then, When } from "cypress-cucumber-preprocessor/steps";

Given("User Login as SDS", () => {
  cy.fixture("credential").then((user) => {
    cy.loginAsSDS(user.email, user.password);
  });

  cy.visit("https://algocore-uat.algoplus.com/home");
});

Then("User Checks page has loaded", () => {
  cy.title().should("eq", "Algo - Creative Intelligence");
  cy.url().should("include", "/home");
});

When("User enters Ask: {string}", async (ASK) => {
  cy.get("#mat-input-0", {
    timeout: 10000,
  }).type(`${ASK}{enter}`);
});

Then("User checks for response", () => {
  cy.get(`[id="Panel - 00"] app-dynamic-tabs`, {
    timeout: 10000,
  }).then(($body) => {
    // Check if app-dynamic-message is displayed.
    if ($body.find("app-dynamic-message").length > 0) {
      // Check if app-dynamic-message has text "I am sorry".
      cy.wrap($body)
        .find("app-dynamic-message div div", { timeout: 1000 })
        .should("not.contain", "I am sorry");
    } else {
      // Pass the test if the error message is not found
      cy.log("No error message element found, test passed.");
    }
  });
});
