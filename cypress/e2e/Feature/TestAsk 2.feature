Feature: Testing Ask Folder 2

    Scenario Outline: Testing Ask: <ASK>
        Given User Login as SONY-DPIP
        Then User waits for 'What's Trending' Response
        Then User Checks page has loaded
        When User enters Ask: '<ASK>'
        Then User checks for response

        Examples:
            | ASK                                                                                                    |
            | dp mape New Release forecast layer "New Release" CA OVER FORECAST                                      |
            | dp mape Promotion forecast layer "Promotion" CA UNDER FORECAST                                         |
            | dp mape Promotion forecast layer "Promotion" CA OVER FORECAST                                          |
            | dp mape Baseline forecast layer "Baseline" CA UNDER FORECAST                                           |
            | dp mape Baseline forecast layer "Baseline" CA OVER FORECAST                                            |
            | debug poststreet forecast item code "05503, 10130, 41781, 41961" customer code "999999, 779999" 9/1/19 |
            | pos and shipment history last 3 weeks before 08/15/2022                                                |
            | bom attributes for item code "53018"                                                                   |
            | catalog dashboard                                                                                      |
            | corrugate report                                                                                       |
            | daily dadc component feed                                                                              |
            | fg inventory item code "53018"                                                                         |
            | fg inventory report                                                                                    |
            | forecast consumption report                                                                            |
            | inventory difference                                                                                   |
            | inventory planner                                                                                      |
            | inventory transaction item code "01353" from 5/10/2021 to 5/11/2021                                    |
            | ip data check                                                                                          |
            | ip promotions dashboard                                                                                |
            | negative available inventory report                                                                    |
            | nr consensus customer walmart                                                                          |