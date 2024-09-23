Feature: Test Asks in Sony DPIP

    Scenario Outline: Ask Response
        Given User Login as SDS
        Then User Checks page has loaded
        When User enters Ask: "<ASK>"
        Then User checks for response
        
        Examples:
            | ASK                            |
            | Nimrah                         |
            | Testing                        |
            | 13 week pos forecast comp calc |
            | Tableau report                 |