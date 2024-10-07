const report = require("multiple-cucumber-html-reporter");

report.generate({
  jsonDir: "cypress/reports/cucumber-json", // Path to your JSON files
  reportPath: "cypress/reports/cucumber-html", // Output directory for the HTML report
  metadata: {
    browser: {
      name: "chrome",
      version: "91",
    },
    device: "Local test machine",
    platform: {
      name: "windows",
      version: "10",
    },
  },
  customData: {
    title: "Run Info",
    data: [
      { label: "Project", value: "Cypress-Cucumber Project" },
      { label: "Release", value: "1.0.0" },
      { label: "Execution Date", value: new Date().toLocaleString() },
    ],
    displayDuration: true,
    displayReportTime: true,
  },
});
