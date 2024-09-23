const { defineConfig } = require("cypress");
const cucumber = require("cypress-cucumber-preprocessor").default;

module.exports = defineConfig({
  e2e: {
    setupNodeEvents(on, config) {
      on("file:preprocessor", cucumber());
    },
    specPattern: "cypress/e2e/Feature/*.feature",
    screenshotsFolder: "./cypress/screenshots",
    reporter: "spec",
    env: {
      "cucumber-json": {
        generate: true, // Enable JSON generation
        outputFolder: "cypress/reports/cucumber-json", // Output directory for JSON files
        filePrefix: "",
        fileSuffix: ".cucumber",
      },
    },
  },
});
