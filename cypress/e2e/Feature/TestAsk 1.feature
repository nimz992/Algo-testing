Feature: Test Asks in Sony DPIP Session 1

    Scenario Outline: Ask Response
        Given User Login as SONY-DPIP
        Then User waits for 'What's Trending' Response
        Then User Checks page has loaded
        When User enters Ask: '<ASK>'
        Then User checks for response

        Examples:
            | ASK                                                                                               |
            | Whats Trending                                                                                    |