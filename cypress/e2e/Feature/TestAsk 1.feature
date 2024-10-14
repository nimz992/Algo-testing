Feature: Simple asks 'Folder 1'

    Scenario Outline: Simple ask: '<ASK>'
        Given User Login as SONY-DPIP
        Then User waits for 'What's Trending' Response
        Then User Checks page has loaded
        When User enters Ask: '<ASK>'
        Then User checks for response

        Examples:
            | ASK                                                                                               |
            | Whats Trending                                                                                    |
            | Tableau Report Check                                                                              |
            | NRDP Exception                                                                                    |
            | promo exceptions                                                                                  |
            | 13 week pos forecast                                                                              |
            | 13 week pos forecast report                                                                       |
            | 26 week pos forecast                                                                              |
            | 13 week shipment forecast                                                                         |
            | 26 week shipment forecast                                                                         |
            | Change week 2 forecast override and save                                                          |
            | walmart dp dashboard item code "53018"                                                            |
            | dp workflow New Release forecast layer "New Release" CA workflow state "IN PROGRESS, NOT STARTED" |
            | dp workflow Promotion forecast layer "Promotion" CA workflow state "IN PROGRESS, NOT STARTED"     |
            | dp mape New Release forecast layer "New Release" CA UNDER FORECAST                                |