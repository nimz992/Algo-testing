Feature: Test SONY-DPIP Asks

    Scenario: Login as SONY-DPIP
        Given User Login as SONY-DPIP
        Then User Checks page has loaded

    Scenario Outline: Testing Ask: <ASK>
        Given User clears the pannel
        When User enters Ask: '<ASK>'
        Then User checks for response

        Examples:
            | ASK                                                                                            |
            | 13 week pos forecast report                                                                    |
            | 13 week pos forecast                                                                           |
            | 13 week pos forecast territory "CA"                                                            |
            | 13 week shipment forecast                                                                      |
            | 13 week shipment forecast territory "CA"                                                       |
            | 26 week pos forecast                                                                           |
            | 26 week pos forecast territory"CA"                                                             |
            | 26 week shipment forecast                                                                      |
            | 26 week shipment forecast territory "CA"                                                       |
            | 8 week pos forecast compare                                                                    |
            | 8 week pos forecast compare customer code "101530", "108880"                                   |
            | baseline pos forecast accuracy report                                                          |
            | cancel back order atp dashboard                                                                |
            | cancel back order atp dashboard studio code "SPE"                                              |
            | cancel back order atp dashboard item code "40240"                                              |
            | compare forecast start date "12/1/2024" end date "12/5/2024"                                   |
            | compare ship forecast to core                                                                  |
            | core data exception report                                                                     |
            | core data exception report customer code "850000"                                              |
            | daily bofka                                                                                    |
            | daily forecast accuracy dashboard customer code "226229" studio code "LGE" item code "A062071" |
            | debug nrst customer code "150044" and studio code "LGE"                                        |
            | debug poststreet forecast check customer code " 859999" and item code "FG11076"                |
            | debug poststreet forecast errors                                                               |
            | debug poststreet forecast WAC item code "18571202"                                             |
            | distribution summary actual details customer code "175449"                                     |
            | distribution summary details customer code "859999"                                            |
            | dp dashboard                                                                                   |
            | mod forecast promotion id "CA17001863"                                                         |
            | monthly forecast accuracy dashboard                                                            |
            | nr comps customer                                                                              |
            | nr comps customer customer code "224531" item code "64027"                                     |
            | nr sell thru item report item code "32732,43922,43459,42664,46088,51229"                       |
            | promo exceptions customer code "750000"                                                        |
            | promo exceptions item code "88691981952"                                                       |
            | promotions                                                                                     |
            | promotions customer code "226229" and item code " A062103"                                     |
            | regie forecast                                                                                 |
            | sales vs on hand                                                                               |
            | sales vs on hand walmart                                                                       |
            | sales vs on hand 5/10/2024                                                                     |
            | sales vs reporting facings                                                                     |
            | sales vs reporting facings walmart fmy                                                         |
            | sales vs reporting facings 5/10/2024 walmart fmy                                               |
            | sales vs shipments                                                                             |
            | sales vs shipments walmart fmy                                                                 |
            | sales vs shipments 5/10/2024 walmart fmy                                                       |
            | sales yoy                                                                                      |
            | sales yoy walmart                                                                              |
            | sales yoy FMY BBY MEI BBC                                                                      |
            | sales amzc item code "63455"                                                                   |
            | shipment based shipment forecast                                                               |
            | shipments yoy                                                                                  |
            | shipments yoy walmart                                                                          |
            | shipments item code "63793" 8/1/2024 to 10/5/2024                                              |
            | shipments week item code "63793" customer 8/1/2024 to 10/5/2024                                |
            | WAC shipments by item code last week for supplier code "spe, cru,dsy"                          |
            | shipments 10/6/2024 to 11/2/2024                                                               |
            | strategic forecast exception report                                                            |
            | tableau report check                                                                           |
            | toolbox based shipment forecast                                                                |
            | upload mass pos forecast override                                                              |
            | us street leads                                                                                |
            | version 13 week pos forecast                                                                   |
            | version 13 week pos forecast SPE                                                               |
            | version 13 week shipment forecast                                                              |
            | version 13 week shipment forecast version date "06/23/2021" 06/20/2021                         |
            | version 13 week shipment forecast "CA" studio code "CRU"                                       |
            | weekly itss feed                                                                               |
            | walmart wos by location code                                                                   |
            | wos                                                                                            |
            | bom attributes                                                                                 |
            | bom attributes for item code "53018"                                                           |
            | bom attributes for item code "63189"                                                           |
            | catalog dashboard                                                                              |
            | catalog ip                                                                                     |
            | Catalog IP Studio Code "SPE, DSY"                                                              |
            | catalog ip item code "FN10196"                                                                 |
            | corrugate report                                                                               |
            | daily dadc component feed                                                                      |
            | fg inventory report with promos                                                                |
            | fg inventory report with promos promotion id "PR25000007"                                      |
            | fg inventory report                                                                            |
            | nr fg inventory report studio code "CRU"                                                       |
            | Fg inventory report with promos studio code "LGE"                                              |
            | fg inventory item code "wmu"                                                                   |
            | generate events calendar fiscal year "2024"                                                    |
            | generate strategic forecast planning calendar                                                  |
            | inventory difference report                                                                    |
            | inventory transaction item code "01353" from 5/10/2021 to 5/11/2021                            |
            | ip data check                                                                                  |
            | ip promotions dashboard sku details item code "47911"                                          |
            | ip sales order details item code "63504" branch "SMD-BOL"                                      |
            | list bom cost overrides                                                                        |
            | list orphan skus studio code "SPE"                                                             |
            | list orphan sku territory "US"                                                                 |
            | list raw material subclass lead times                                                          |
            | list safety stock                                                                              |
            | list scenario plan                                                                             |
            | list transit times                                                                             |
            | list user id xref                                                                              |
            | list vendors                                                                                   |
            | negative available inventory report                                                            |
            | nr consensus customer for item code "64155" and street date "01/07/2025"                       |
            | nr consensus item item code "FG10953" street date "06/04/2024"                                 |
            | nr consensus item studio code "GVN"                                                            |
            | nr fg inventory report studio code "CRU"                                                       |
            | nr inventory summary street date "4/30/2024"                                                   |
            | nr post mortem                                                                                 |
            | nr shipments                                                                                   |
            | nr to catalog transition street date "12/3/24"                                                 |


