
import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";

Given("precondition", () => {
    cy.visit("https://algocore-uat.algoplus.com/_admin/Login")
})

When("action", () => {
    cy.get('#mat-input-0').clear().type('nimrah.anwar@algo.com')
    cy.get(' #mat-input-1').clear().type('Algo@1234')
    cy.get('#login').click()
    cy.get(':nth-child(1) > .mat-focus-indicator').click();
    //cy.get("(//button[@class='mat-focus-indicator mat-raised-button mat-button-base'])[1]").click();
    //cy.xpath("(//button[@class='mat-focus-indicator mat-raised-button mat-button-base'])[2]").click();

})

Then("Wrong Search", () => {
    cy.wait(5000)
    cy.get('#mat-input-2').type('Nimrah{enter}')
    cy.wait(15000)
   //cy.get('[id="Panel - 00"] app-dynamic-message > .ng-star-inserted > div').should('not.contain','I am sorry');
   cy.get('[id="Panel - 00"] app-dynamic-message').should('not.exist');
    
});


Then("Right Search", () => {
    cy.wait(5000)
    cy.get('#mat-input-2').type('13 week pos forecast comp calc{enter}')
    cy.wait(15000)
   //cy.get('[id="Panel - 00"] app-dynamic-message > .ng-star-inserted > div').should('not.contain','I am sorry');
   cy.get('[id="Panel - 01"] app-dynamic-message').should('not.exist');
    
});




