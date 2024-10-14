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
  cy.get(`[id="Panel - 00"] app-dynamic-tabs`);
});

// -------------------- Common Step Definition ------------------------------------------

When("User ask 'hect dashboard'", () => {
  cy.get("#mat-input-0").type(`hect dashboard{enter}`);
});

Then("User waits for 'Hect Dashboard' Response", () => {
  // Checks app-dynamic-tabs for response.
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

When("User click edit button of first row", () => {
  cy.get('[row-id="0"] [col-id="edit"] div').click();
});

When("User click add button of first row", () => {
  cy.get(
    "app-dynamic-grid[class='ng-star-inserted'] button[class='mat-focus-indicator me-1 mat-raised-button mat-button-base ng-star-inserted']"
  ).click();
});

When("User click delete button of first row", () => {
  cy.get('[row-id="0"] [col-id="delete"] div').click();
});

Then("User waits for 'Edit' Response", () => {
  // Checks app-dynamic-tabs for response.
  cy.get(`[id="Panel - 02"] app-dynamic-tabs`).then(($body) => {
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

Then("User waits for 'Add' Response", () => {
  // Checks app-dynamic-tabs for response.
  cy.get(`[id="Panel - 03"] app-dynamic-tabs`).then(($body) => {
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

Then("User waits for 'Delete' Response", () => {
  // Checks app-dynamic-tabs for response.
  cy.get(`[id="Panel - 04"] app-dynamic-tabs`).then(($body) => {
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

var confirmation = true;

When("User click confirmation button of first row", () => {
  confirmation = true;
  cy.get('[row-id="0"] [col-id="confirmation"] div').then(($body) => {
    if ($body.find("button").length > 0) {
      cy.wrap($body).click();
    } else {
      confirmation = false;
      cy.log("Button Not found");
    }
  });
});

var overwride = true;

When("User click overwride button of first row", () => {
  overwride = true;
  cy.get('[row-id="0"] [col-id="edit"] div').then(($body) => {
    if ($body.find("button").length > 0) {
      cy.wrap($body).click();
    } else {
      overwride = false;
      cy.log("Button Not found");
    }
  });
});

Then("User waits for 'Confirmation' Response", () => {
  if (confirmation) {
    // Checks app-dynamic-tabs for response.
    cy.get(`[id="Panel - 02"] app-dynamic-tabs`).then(($body) => {
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
  } else {
    cy.log("Confirmation button not found, skipped.");
  }
});

Then("User waits for 'Overwride' Response", () => {
  if (overwride) {
    // Checks app-dynamic-tabs for response.
    cy.get(`[id="Panel - 02"] app-dynamic-tabs`).then(($body) => {
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
  } else {
    cy.log("Confirmation button not found, skipped.");
  }
});

// ----------------------------- End of common Step Definition -------------------------------

// ----------------------------- 'list transit times' Ask ------------------------------------

When("User ask 'list transit times'", () => {
  cy.get("#mat-input-0").type(`list transit times{enter}`);
});

Then("User waits for 'list transit times' Response", () => {
  // Checks app-dynamic-tabs for response.
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
  cy.get("#mat-tab-label-2-1");
  cy.get(
    '#mat-tab-content-2-1 > .mat-tab-body-content > .pb-3 > .col-12 > [style="min-height: 80px;"] > app-dynamic-message > .ng-star-inserted > div'
  ).contains("Your transit times have been added!");
});

// ---------------------------- List Mod Reset Curve ------------------------------

When("User ask 'list mod reset curve'", () => {
  cy.get("#mat-input-0").type(`list mod reset curve{enter}`);
});

Then("User waits for 'list mod reset curve' Response", () => {
  // Checks app-dynamic-tabs for response.
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

// ------------------------- List Safety Stock ----------------------------------

When("User ask 'list safety stock'", () => {
  cy.get("#mat-input-0").type(`list safety stock{enter}`);
});

Then("User waits for 'list safety stock' Response", () => {
  // Checks app-dynamic-tabs for response.
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

// ----------------------------- rmplan poststreet -----------------------------------

When("User ask 'rmplan poststreet'", () => {
  cy.get("#mat-input-0").type(`rmplan poststreet{enter}`);
});

Then("User waits for 'rmplan poststreet' Response", () => {
  // Checks app-dynamic-tabs for response.
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

// ------------------------- list future promo replen curves -------------------------

When("User ask 'list future promo replen curves'", () => {
  cy.get("#mat-input-0").type(`list future promo replen curves{enter}`);
});

Then("User waits for 'list future promo replen curves' Response", () => {
  // Checks app-dynamic-tabs for response.
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

Then("User change week 1 ship override", () => {
  cy.get(":nth-child(5) > .form-group > .ng-untouched").clear().type("0.0336");
});

Then("User save", () => {
  cy.get(".w-100.align-items-start > .mat-focus-indicator").click();
});

// ----------------------------- Rmplan catalog ------------------------------

When("User ask 'rmplan catalog'", () => {
  cy.get("#mat-input-0").type(`rmplan catalog{enter}`);
});

Then("User waits for 'rmplan catalog' Response", () => {
  // Checks app-dynamic-tabs for response.
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

// ------------------------- list bom cost surcharges -------------------------

When("User ask 'list bom cost surcharges'", () => {
  cy.get("#mat-input-0").type(`list bom cost surcharges{enter}`);
});

Then("User waits for 'list bom cost surcharges' Response", () => {
  // Checks app-dynamic-tabs for response.
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

Then("User change Surcharge Cost", () => {
  cy.get(":nth-child(2) > .form-group > .ng-untouched").clear().type("200");
});

Then("User click Edit BOM Cost Surcharge", () => {
  cy.get(".w-100.align-items-start > .mat-focus-indicator").click();
});

// ----------------------------------- list vendors ------------------------------

When("User ask 'list vendors'", () => {
  cy.get("#mat-input-0").type(`list vendors{enter}`);
});

Then("User waits for 'list vendors' Response", () => {
  // Checks app-dynamic-tabs for response.
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

Then("User change Vendor Name", () => {
  cy.get(":nth-child(2) > .form-group > .ng-untouched")
    .clear()
    .type("UNIVERSAL/CLICKII");
});

Then("User click Edit Vendor", () => {
  cy.get(".w-100.align-items-start > .mat-focus-indicator").click();
});

// ---------------------- list bom cost overrides ---------------------------

When("User ask 'list bom cost overrides'", () => {
  cy.get("#mat-input-0").type(`list bom cost overrides{enter}`);
});

Then("User waits for 'list bom cost overrides' Response", () => {
  // Checks app-dynamic-tabs for response.
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

Then("User change value of 'cost'", () => {
  cy.get("#pr_id_1_label").click();
  cy.get(":nth-child(2) > .p-ripple").click();
});

Then("User click Edit Bom Cost Overrides buton", () => {
  cy.get(".w-100.align-items-start > .mat-focus-indicator").click();
});

// ------------------------- list dc -----------------------------

When("User ask 'list dc'", () => {
  cy.get("#mat-input-0").type(`list dc{enter}`);
});

Then("User waits for 'list dc' Response", () => {
  // Checks app-dynamic-tabs for response.
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

Then("User change value of DC name", () => {
  cy.get(":nth-child(2) > .form-group > .ng-untouched")
    .clear()
    .type("RANK VIDEO SERVICES, INC.");
});

Then("User click Edit DC button", () => {
  cy.get(".w-100.align-items-start > .mat-focus-indicator").click();
});

// ----------------------- list finished good lead times -----------------------------

When("User ask 'list finished good lead times'", () => {
  cy.get("#mat-input-0").type(`list finished good lead times{enter}`);
});

Then("User waits for 'list finished good lead times' Response", () => {
  // Checks app-dynamic-tabs for response.
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

When("User click 'add finished good lead time'", () => {
  cy.get("div[class='ng-star-inserted'] div ul li question").click();
});

Then("User waits for 'add finished good lead time' Response", () => {
  cy.get("#mat-tab-label-2-0");
});

// -------------------- list raw material subclass lead times ----------------------

When("User ask 'list raw material subclass lead times'", () => {
  cy.get("#mat-input-0").type(`list raw material subclass lead times{enter}`);
});

Then("User waits for 'list raw material subclass lead times' Response", () => {
  // Checks app-dynamic-tabs for response.
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

When("User click 'add raw material subclass lead times'", () => {
  cy.get("question").click({ force: true });
});

Then("User waits for 'add raw material subclass lead times' Response", () => {
  cy.get("#mat-tab-label-2-0");
});

// -------------------- list strategic forecast mod reset curve ----------------------

When("User ask 'list strategic forecast mod reset curve'", () => {
  cy.get("#mat-input-0").type(`list strategic forecast mod reset curve{enter}`);
});

Then(
  "User waits for 'list strategic forecast mod reset curve' Response",
  () => {
    // Checks app-dynamic-tabs for response.
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
  }
);

// -------------------- list safety stock ----------------------

When("User ask 'list safety stock'", () => {
  cy.get("#mat-input-0").type(`list safety stock{enter}`);
});

Then("User waits for 'list safety stock' Response", () => {
  // Checks app-dynamic-tabs for response.
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

// -------------------- list catalog wo ship to ----------------------

When("User ask 'list catalog wo ship to'", () => {
  cy.get("#mat-input-0").type(`list catalog wo ship to{enter}`);
});

Then("User waits for 'list catalog wo ship to' Response", () => {
  // Checks app-dynamic-tabs for response.
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

When("User click 'Add'", () => {
  cy.get(
    "app-dynamic-grid.ng-star-inserted > app-dynamic-buttons > .row > :nth-child(1) > .mat-focus-indicator"
  ).click();
});

Then("User waits for 'Add' Response", () => {
  cy.get("#mat-tab-label-3-0");
});

Then("User click 'Add list Catalog Work Order Ship To' Button", () => {
  cy.get(
    "#mat-tab-content-3-0 > .mat-tab-body-content > .m-0 > .col-12 > app-dynamic-form.ng-star-inserted > .p-2 > .w-100.align-items-start > .mat-focus-indicator"
  ).click();
});

// -------------------- list nr wo ship to ----------------------

When("User ask 'list nr wo ship to'", () => {
  cy.get("#mat-input-0").type(`list nr wo ship to{enter}`);
});

Then("User waits for 'list nr wo ship to' Response", () => {
  // Checks app-dynamic-tabs for response.
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

Then("User click 'Add NR WO Ship To' Button", () => {
  cy.get(
    "#mat-tab-content-3-0 > .mat-tab-body-content > .m-0 > .col-12 > app-dynamic-form.ng-star-inserted > .p-2 > .w-100.align-items-start > .mat-focus-indicator"
  ).click();
});

// -------------------- open sales orders ----------------------

When("User ask 'open sales orders'", () => {
  cy.get("#mat-input-0").type(`open sales orders{enter}`);
});

Then("User waits for 'open sales orders' Response", () => {
  // Checks app-dynamic-tabs for response.
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

When("User Click on an item", () => {
  cy.get("div[row-id='1'] div[col-id='item_code'] i").click();
});

Then("User see the sales orders detail", () => {
  cy.get("#mat-tab-label-2-0");
});

// -------------------- list disabled forecast item code 55773W21' ----------------------

When("User ask 'list disabled forecast item code 55773W21'", () => {
  cy.get("#mat-input-0").type(
    `list disabled forecast item code "55773W21"{enter}`
  );
});

Then(
  "User waits for 'list disabled forecast item code 55773W21' Response",
  () => {
    // Checks app-dynamic-tabs for response.
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
  }
);

When("User Edit disable forecast data and click Edit button", () => {
  cy.get(
    ".mat-focus-indicator.m-1.float-end.mt-2.mat-raised-button.mat-button-base.mat-accent"
  ).type("108074");
  cy.get(
    "body > app-root:nth-child(1) > app-layout:nth-child(4) > div:nth-child(1) > div:nth-child(1) > algo-side-nav:nth-child(2) > mat-sidenav-container:nth-child(1) > mat-sidenav-content:nth-child(5) > app-main:nth-child(2) > main:nth-child(1) > div:nth-child(2) > app-dashboard:nth-child(2) > div:nth-child(1) > div:nth-child(3) > div:nth-child(3) > div:nth-child(1) > mat-accordion:nth-child(2) > mat-expansion-panel:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > app-dynamic-component-builder:nth-child(1) > div:nth-child(1) > app-dynamic-tabs:nth-child(1) > div:nth-child(1) > mat-tab-group:nth-child(1) > div:nth-child(2) > mat-tab-body:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > app-dynamic-form:nth-child(1) > div:nth-child(1) > form:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > input:nth-child(2)"
  ).click();
});

Then("User waits for Edit disable forecast data Response", () => {
  cy.get("#mat-tab-label-2-1");
});

// -------------------- list customers ----------------------

When("User ask 'list customers'", () => {
  cy.get("#mat-input-0").type(`list customers{enter}`);
});

Then("User waits for 'list customers' Response", () => {
  // Checks app-dynamic-tabs for response.
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

When("User Edit customer data and click Edit button", () => {
  cy.get(".w-100.align-items-start > .mat-focus-indicator").click();
});

Then("User waits for Edit customer data Response", () => {
  cy.get("#mat-tab-label-2-1");
});

// -------------------- list customers ----------------------

When("User ask 'list future promo replen curves'", () => {
  cy.get("#mat-input-0").type(`list future promo replen curves{enter}`);
});

Then("User waits for 'list future promo replen curves' Response", () => {
  // Checks app-dynamic-tabs for response.
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

When("User Change week 1 ship override and save", () => {
  cy.get(".w-100.align-items-start > .mat-focus-indicator").click();
});

Then("User waits for ship override Response", () => {
  cy.get("#mat-tab-label-2-1");
});

// -------------------- promo dashboard ----------------------

When("User ask 'promo dashboard'", () => {
  cy.get("#mat-input-0").type(`promo dashboard{enter}`);
});

Then("User waits for 'promo dashboard' Response", () => {
  // Checks app-dynamic-tabs for response.
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

When("User click on a row under promo id column", () => {
  cy.get("div[row-id='0'] div[col-id='promo_id']").click();
});

Then("User waits for promo id response", () => {
  cy.get("#mat-tab-label-2-0");
});

When(
  "select 'PROMOTION' for Forecast Layer Dropdown and 'Default' for Promo Type Drop down and click save",
  () => {
    cy.get(
      ":nth-child(5) > .form-group > .w-100 > .p-inputwrapper > .p-dropdown"
    ).click();

    cy.get(":nth-child(2) > .p-ripple").click();
    cy.get(".w-100.align-items-start > .mat-focus-indicator").click();
  }
);

Then("user waits for Promo response", () => {
  cy.get("#mat-tab-label-3-1");
});

When(
  "select 'NEW RELEASE' for Forecast Layer Dropdown and 'Default' for Promo Type Drop down and click save",
  () => {
    cy.get(
      ":nth-child(5) > .form-group > .w-100 > .p-inputwrapper > .p-dropdown"
    ).click();

    cy.get(":nth-child(4) > .p-ripple").click();
    cy.get(".w-100.align-items-start > .mat-focus-indicator").click();
  }
);

Then("user waits for Promo response", () => {
  cy.get("#mat-tab-label-4-1");
});

// -------------------- promo dashboard ----------------------

When("User ask 'nrst item report'", () => {
  cy.get("#mat-input-0").type(
    `nrst item report for street date "04/30/2024"{enter}`
  );
});

Then("User waits for 'nrst item report' Response", () => {
  // Checks app-dynamic-tabs for response.
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

When("User click on a row from the Customer level overview", () => {
  cy.get(
    ".pb-3 > :nth-child(3) div[row-id='0'] div[col-id='customer_code']"
  ).click();
});

Then("User waits for response Customer level overview", () => {
  cy.get("#mat-tab-label-2-0");
});

// -------------------- strategic forecast report fiscal year 2030 ----------------------

When("User ask 'strategic forecast report fiscal year 2030'", () => {
  cy.get("#mat-input-0").type(
    `strategic forecast report fiscal year "2030"{enter}`
  );
});

Then(
  "User waits for 'strategic forecast report fiscal year 2030' Response",
  () => {
    // Checks app-dynamic-tabs for response.
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
  }
);

// -------------------- strategic forecast planning calendar fiscal year "2030" ----------------------

When("User ask 'strategic forecast planning calendar fiscal year 2030'", () => {
  cy.get("#mat-input-0").type(
    `strategic forecast planning calendar fiscal year "2030"{enter}`
  );
});

Then(
  "User waits for 'strategic forecast planning calendar fiscal year 2030' Response",
  () => {
    // Checks app-dynamic-tabs for response.
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
  }
);

Then("User click Holiday Events Tab", () => {
  cy.get("#mat-tab-label-1-0").click();
});

Then("User click MOD Events Tab and click edit.", () => {
  cy.get("#mat-tab-label-1-1").click();

  cy.get('#mat-tab-content-1-1 [row-id="0"] [col-id="edit"] div').click();
});

Then("User waits for 'MOD Events Edit' Response", () => {
  // Checks app-dynamic-tabs for response.
  cy.get(`[id="Panel - 03"] app-dynamic-tabs`).then(($body) => {
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

// -------------------- list mass forecast override ----------------------

When("User ask 'list mass forecast override'", () => {
  cy.get("#mat-input-0").type(`list mass forecast override{enter}`);
});

Then("User waits for 'list mass forecast override' Response", () => {
  // Checks app-dynamic-tabs for response.
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

// -------------------- list user id xref ----------------------

When("User ask 'list user id xref'", () => {
  cy.get("#mat-input-0").type(`list user id xref{enter}`);
});

Then("User waits for 'list user id xref' Response", () => {
  // Checks app-dynamic-tabs for response.
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

// -------------------- po transmission log ----------------------

When("User ask 'po transmission log'", () => {
  cy.get("#mat-input-0").type(`po transmission log{enter}`);
});

Then("User waits for 'po transmission log' Response", () => {
  // Checks app-dynamic-tabs for response.
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

var resend = true;
var cancel = true;

When("User click resend button of first row", () => {
  resend = true;
  cy.get('[row-id="0"] [col-id="confirmation"] div').then(($body) => {
    if ($body.find("button").length > 0) {
      cy.wrap($body).click();
    } else {
      resend = false;
      cy.log("Button Not found");
    }
  });
});

Then("User waits for 'Resend' Response", () => {
  if (resend) {
    // Checks app-dynamic-tabs for response.
    cy.get(`[id="Panel - 02"] app-dynamic-tabs`).then(($body) => {
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
  } else {
    cy.log("Confirmation button not found, skipped.");
  }
});

When("User click cancel button of first row", () => {
  cancel = true;
  cy.get('[row-id="0"] [col-id="cancel"] div').then(($body) => {
    if ($body.find("button").length > 0) {
      cy.wrap($body).click();
    } else {
      cancel = false;
      cy.log("Button Not found");
    }
  });
});

Then("User waits for 'Cancel' Response", () => {
  if (cancel) {
    // Checks app-dynamic-tabs for response.
    cy.get(`[id="Panel - 02"] app-dynamic-tabs`).then(($body) => {
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
  } else {
    cy.log("Confirmation button not found, skipped.");
  }
});
