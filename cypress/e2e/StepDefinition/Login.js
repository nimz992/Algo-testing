import { When, Then, Given } from "cypress-cucumber-preprocessor/steps";

Given("User Login as SONY-DPIP", () => {
  cy.visit(Cypress.env("BASE_URL"));
  cy.get("#mat-input-0").clear().type(Cypress.env("EMAIL"));
  cy.get("#mat-input-1").clear().type(Cypress.env("PASSWORD"));
  cy.get("#login").click();
  cy.get(":nth-child(2) > .mat-focus-indicator", { timeout: 600000 }).click(); //Login as DP-IP
  cy.wait(10000); // Require time to get all sessions.
});

Given("User Login as SONY", () => {
  cy.visit(Cypress.env("BASE_URL"));
  cy.get("#mat-input-0").clear().type(Cypress.env("EMAIL"));
  cy.get("#mat-input-1").clear().type(Cypress.env("PASSWORD"));
  cy.get("#login").click();
  cy.get(":nth-child(7) > .mat-focus-indicator", { timeout: 600000 }).click(); //Login as core
  cy.wait(10000); // Require time to get all sessions.
});

Then("User Checks page has loaded", () => {
  cy.title().should("eq", "Algo - Creative Intelligence");
  cy.url().should("include", "/home");
});
