import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";

Given("User Login as Sony-DPIP", () => {
  cy.fixture("credential").then((user) => {
    cy.loginAsDPIP(user.email, user.password);
  });

  cy.visit("https://algocore-uat.algoplus.com/home");
});

Then("User waits for 'What's Trending' Response", () => {
  cy.title().should("eq", "Algo - Creative Intelligence");
  cy.url().should("include", "/home");
  cy.get(`[id="Panel - 00"] app-dynamic-tabs`, {
    timeout: 200000,
  });
});

// -------------------------------------------------------------------------------------------

When("User ask 'hect dashboard'", () => {
  cy.get("#mat-input-0", {
    timeout: 10000,
  }).type(`hect dashboard{enter}`);
});

Then("User waits for 'Hect Dashboard' Response", () => {
  // Checks app-dynamic-tabs for response.
  cy.get(`[id="Panel - 01"] app-dynamic-tabs`, {
    timeout: 500000,
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

// ----------------------------- 'list transit times' Ask ------------------------------------

When("User ask 'list transit times'", () => {
  cy.get("#mat-input-0", {
    timeout: 10000,
  }).type(`list transit times{enter}`);
});

Then("User waits for 'list transit times' Response", () => {
  // Checks app-dynamic-tabs for response.
  cy.get(`[id="Panel - 01"] app-dynamic-tabs`, {
    timeout: 500000,
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

When("User click edit button of first row", () => {
  cy.get('[row-id="0"] [col-id="edit"] div').click();
});

Then("User waits for 'Edit' Response", () => {
  // Checks app-dynamic-tabs for response.
  cy.get(`[id="Panel - 02"] app-dynamic-tabs`, {
    timeout: 500000,
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

Then("User change the 'Fg Transit' value", () => {
  cy.get(".editable-table tbody tr:nth-child(2) td:nth-child(6) div")
    .clear()
    .type(5);
});

Then("User Click save button", () => {
  cy.get(
    ".w-100.align-items-start > .mat-focus-indicator > .mat-button-wrapper"
  ).click();
});

Then("User wait for 'transit times added successful' response", () => {
  cy.get("#mat-tab-label-2-1", { timeout: 20000 });
  cy.get(
    '#mat-tab-content-2-1 > .mat-tab-body-content > .pb-3 > .col-12 > [style="min-height: 80px;"] > app-dynamic-message > .ng-star-inserted > div'
  ).contains("Your transit times have been added!");
});

// ---------------------------------------------------------------------------------------