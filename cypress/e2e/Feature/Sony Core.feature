Feature: Test SONY Asks

    Scenario: Login as SONY
        Given User Login as SONY
        Then User Checks page has loaded

    Scenario Outline: Testing Ask: <ASK>
        Given User clears the pannel
        When User enters Ask: '<ASK>'
        Then User checks for response

        Examples:
            | ASK                  |
            | Whats Trending       |
            | Tableau Report Check |