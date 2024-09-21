// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
Cypress.Commands.add("loginAsSDS", (username, password) => {
  cy.session([username, password], () => {
    cy.visit("https://algocore-uat.algoplus.com/_admin/Login");
    cy.get("#mat-input-0").clear().type(username);
    cy.get("#mat-input-1").clear().type(password);
    cy.get("#login").click();
    cy.get(":nth-child(1) > .mat-focus-indicator").click(); //Login as SDS
    cy.wait(10000); // Require time to get all sessions.
  });
});

Cypress.Commands.add("loginAsDPIP", (username, password) => {
  cy.session([username, password], () => {
    cy.visit("https://algocore-uat.algoplus.com/_admin/Login");
    cy.get("#mat-input-0").clear().type(username);
    cy.get("#mat-input-1").clear().type(password);
    cy.get("#login").click();
    cy.get(":nth-child(2) > .mat-focus-indicator").click(); //Login as DP-IP
    cy.wait(10000); // Require time to get all sessions.
  });
});

Cypress.Commands.add("loginAsMSFTDPIP", (username, password) => {
  cy.session([username, password], () => {
    cy.visit("https://algocore-uat.algoplus.com/_admin/Login");
    cy.get("#mat-input-0").clear().type(username);
    cy.get("#mat-input-1").clear().type(password);
    cy.get("#login").click();
    cy.get(":nth-child(9) > .mat-focus-indicator").click(); //Login as MSFT/DP-IP
    cy.wait(10000); // Require time to get all sessions.
  });
});
//
//
// -- This is a child command --
// Cypress.Commands.add('drag', { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add('dismiss', { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will overwrite an existing command --
// Cypress.Commands.overwrite('visit', (originalFn, url, options) => { ... })
