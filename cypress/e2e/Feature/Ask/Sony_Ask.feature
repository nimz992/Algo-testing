Feature: Test SONY Asks

    Scenario: Login as SONY
        Given User Login as SONY
        Then User Checks page has loaded
        Then User clears the pannel

    Scenario Outline: Testing Ask: <ASK>
        When User enters Ask: '<ASK>'
        Then User checks for response
        Then User clears the pannel

        Examples:
            | ASK                                                                                                    |
            | Whats Trending                                                                                         |
            | Tableau Report Check                                                                                   |