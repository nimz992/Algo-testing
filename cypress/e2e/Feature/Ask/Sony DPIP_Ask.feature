Feature: Test SONY-DPIP Asks

    Scenario: Login as SONY-DPIP
        Given User Login as SONY-DPIP
        Then User Checks page has loaded

    Scenario Outline: Testing Ask: <ASK>
        Given User clears the pannel
        When User enters Ask: '<ASK>'
        Then User checks for response

        Examples:
            | ASK                                                                                                    |
            | Whats Trending                                                                                         |
            | Tableau Report Check                                                                                   |
            | NRDP Exception                                                                                         |
            | promo exceptions                                                                                       |
            | 13 week pos forecast                                                                                   |
            | 13 week pos forecast report                                                                            |
            | 26 week pos forecast                                                                                   |
            | 13 week shipment forecast                                                                              |
            | 26 week shipment forecast                                                                              |
            | Change week 2 forecast override and save                                                               |
            | walmart dp dashboard item code "53018"                                                                 |
            | dp workflow New Release forecast layer "New Release" CA workflow state "IN PROGRESS, NOT STARTED"      |
            | dp workflow Promotion forecast layer "Promotion" CA workflow state "IN PROGRESS, NOT STARTED"          |
            | dp mape New Release forecast layer "New Release" CA UNDER FORECAST                                     |
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
            | nr consensus item item code "57296"                                                                    |
            | nr inventory summary street date "some street date"                                                    |
            | nr post mortem street date "some street date"                                                          |
            | nr shipments                                                                                           |
            | nr to catalog transition street date "some street date"                                                |
            | nrip dashboard street date "some street date"                                                          |
            | on time and completion                                                                                 |
            | open purchase orders                                                                                   |
            | rm inventory item code "01353LTR"                                                                      |
            | rm inventory report                                                                                    |
            | rm net negative                                                                                        |
            | vendor calendar                                                                                        |
            | weekly itss feed                                                                                       |
            | compare ship forecast to core                                                                          |
            | context builder                                                                                        |
            | core data exception report                                                                             |
            | daily forecast accuracy dashboard                                                                      |
            | debug poststreet forecast check                                                                        |
            | debug poststreet forecast errors                                                                       |
            | forecast accuracy dashboard                                                                            |
            | forecast validation walmart                                                                            |
            | future pog wac                                                                                         |
            | future pog changes                                                                                     |
            | on hand walmart                                                                                        |
            | preview mod forecast promotion id "PR21000220"                                                         |
            | promo changes                                                                                          |
            | promotions                                                                                             |
            | sales walmart 5/10/2021                                                                                |
            | sales vs on hand walmart 5/10/2021                                                                     |
            | sales vs reporting facings walmart 5/10/2021                                                           |
            | sales vs shipments walmart 5/10/2021                                                                   |
            | sales yoy walmart                                                                                      |
            | shipment based shipment forecast                                                                       |
            | shipments walmart 5/10/2021                                                                            |
            | shipments yoy walmart                                                                                  |
            | short term forecast                                                                                    |
            | system future pog Walmart                                                                              |
            | raw material scrap orders street date "some street date"                                               |
            | overstock report                                                                                       |
            | debug nrst                                                                                             |
            | list air dates upload fiscal year "2030"                                                               |
            | list theatrical release schedule upload fiscal year "2030"                                             |
            | strategic forecast exception report                                                                    |
            | compare forecast                                                                                       |
            | steelbook inventory item code "54572"                                                                  |
            | otc raw material part number "46115SLR"                                                                |
            | overstock rework detail report                                                                         |
            | nr fg inventory report                                                                                 |
            | list itype xref                                                                                        |
            | raw material attributes item code "04609LIT"                                                           |
            | list strategic forecast corrugates box office                                                          |
            | daily bofka                                                                                            |
            | version 13 week shipment forecast version date "06/23/2021" 06/20/2021                                 |
            | mass forecast override log                                                                             |
            | mod forecast promotion id "PR21000047"                                                                 |
            | order frequency                                                                                        |


