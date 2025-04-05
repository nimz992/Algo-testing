Feature: Test SONY-DPIP Asks

    Scenario: Login as SONY-DPIP
        Given User Login as SONY-DPIP
        Then User Checks page has loaded

    # Scenario Outline: Testing Ask: <ASK>
    #     Given User clears the pannel
    #     When User enters Ask: '<ASK>'
    #     Then User checks for response

    #     Examples:
    #         | ASK                                                                                            |
    #         | 13 week pos forecast report                                                                    |
    #         | 13 week pos forecast territory "CA"                                                            |
    #         | 13 week shipment forecast territory "CA"                                                       |
    #         | 26 week pos forecast territory"CA"                                                             |
    #         | 26 week shipment forecast territory "CA"                                                       |
    #         | 8 week pos forecast compare customer code "101530", "108880"                                   |
    #         | baseline pos forecast accuracy report                                                          |
    #         | cancel back order atp dashboard studio code "SPE"                                              |
    #         | compare forecast start date "12/1/2024" end date "12/5/2024"                                   |
    #         | compare ship forecast to core                                                                  |
    #         | core data exception report customer code "850000"                                              |
    #         | daily bofka                                                                                    |
    #         | daily forecast accuracy dashboard customer code "226229" studio code "LGE" item code "A062071" |
    #         | debug nrst customer code "150044" and studio code "LGE"                                        |
    #         | debug poststreet forecast check customer code " 859999"                                        |
    #         | debug poststreet forecast errors                                                               |
    #         | debug poststreet forecast WAC item code "18571202"                                             |
    #         | distribution summary actual details customer code "175449"                                     |
    #         | distribution summary details customer code "859999"                                            |
    #         | dp dashboard by territory "CA"                                                                 |
    #         | mod forecast promotion id "CA17001863"                                                         |
    #         | monthly forecast accuracy dashboard                                                            |
    #         | nr comps customer customer code "224531" item code "64027"                                     |
    #         | nr sell thru item report item code "32732,43922,43459,42664,46088,51229"                       |
    #         | promo exceptions item code "88691981952"                                                       |
    #         | promotions customer code "226229" and item code " A062103"                                     |
    #         | regie forecast                                                                                 |
    #         | sales vs on hand 5/10/2024                                                                     |
    #         | sales vs reporting facings walmart fmy                                                         |
    #         | sales vs shipments 5/10/2024 walmart fmy                                                       |
    #         | sales yoy FMY BBY MEI BBC                                                                      |
    #         | sales amzc item code "63455"                                                                   |
    #         | shipment based shipment forecast                                                               |
    #         | shipments yoy walmart                                                                          |
    #         | shipments item code "63793" 8/1/2024 to 10/5/2024                                              |
    #         | strategic forecast exception report   fiscal year "2024"                                       |
    #         | tableau report check                                                                           |
    #         | toolbox based shipment forecast                                                                |
    #         | upload mass pos forecast override                                                              |
    #         | us street leads                                                                                |
    #         | version 13 week shipment forecast version date "06/23/2021" 06/20/2021                         |
    #         | weekly itss feed                                                                               |
    #         | walmart wos by location code                                                                   |
    #         | bom attributes for item code "53018"                                                           |
    #         | catalog dashboard                                                                              |
    #         | Catalog IP Studio Code "SPE, DSY"                                                              |
    #         | corrugate report                                                                               |
    #         | daily dadc component feed                                                                      |
    #         | fg inventory report with promos promotion id "PR25000007"                                      |
    #         | nr fg inventory report studio code "CRU"                                                       |
    #         | generate events calendar fiscal year "2024"                                                    |
    #         | generate strategic forecast planning calendar fiscal year "2031"                               |
    #         | inventory difference report                                                                    |
    #         | inventory transaction item code "01353" from 5/10/2021 to 5/11/2021                            |
    #         | ip data check                                                                                  |
    #         | ip promotions dashboard sku details item code "47911"                                          |
    #         | ip sales order details item code "63504" branch "SMD-BOL"                                      |
    #         | list bom cost overrides                                                                        |
    #         | list orphan skus studio code "SPE"                                                             |
    #         | list raw material subclass lead times                                                          |
    #         | list safety stock                                                                              |
    #         | list scenario plan                                                                             |
    #         | list transit times                                                                             |
    #         | list user id xref                                                                              |
    #         | list vendors                                                                                   |
    #         | negative available inventory report                                                            |
    #         | nr consensus item studio code "GVN"                                                            |
    #         | nr inventory summary street date "4/30/2024"                                                   |
    #         | nr post mortem                                                                                 |
    #         | nr shipments                                                                                   |
    #         | nr to catalog transition street date "12/3/24"                                                 |
    #         | event calendar details                                                                         |
    #         | event calendar summary fiscal year"2023"                                                       |
    #         | forecast adjustment weights                                                                    |
    #         | forecast consumption report                                                                    |
    #         | forecast details                                                                               |
    #         | forecast validation customer code "218931"                                                     |
    #         | future pog changes                                                                             |
    #         | future pog by customer code"859999"                                                            |
    #         | generate seasonal event calendar year "2024"                                                   |
    #         | list air dates upload                                                                          |
    #         | list air dates title id "805362"                                                               |
    #         | list customers territory "US"                                                                  |
    #         | list disabled forecast  by item code "SPE"                                                     |
    #         | list finished goods to disc conversion customer code "132281" and supplier code "SPE"          |
    #         | list forecast override                                                                         |
    #         | list future promo pos curves customer code "99999"                                             |
    #         | list fututre promo replen curves   by customer code "999999"                                   |
    #         | list type xref                                                                                 |
    #         | list log future promo replen curves customer code "999999"                                     |
    #         | list mass forecast override                                                                    |
    #         | list mod reset curve customer code "108880"                                                    |
    #         | list promotion override                                                                        |
    #         | list seasonal event calendar year"2024"                                                        |
    #         | list seasonal drafting skus customer code "226229" and studio code "DSY"                       |
    #         | list seasonal event forecast by customer code "226229"                                         |
    #         | list stragetic forecast corrugates box office customer code "108880" and supplier code "SPE"   |
    #         | list strategic forecast mod reset curve  customer code "132281"                                |
    #         | list strategic forecast pre street curve                                                       |
    #         | list strategic forecast skus studio code "DSY"  and territory "US"                             |
    #         | list theatrical release schedule upload                                                        |
    #         | list theatrical release schedule batch id "49e2c63c-a666-4995-8349-670c9615259"                |
    #         | lost sales details customer code "amz" create date "08/30/2024"                                |
    #         | lost sales run                                                                                 |
    #         | manufacturing summary actual details                                                           |
    #         | manufacturing summary details                                                                  |
    #         | mass forecast override log                                                                     |
    #         | mass pos forecast override log                                                                 |
    #         | mass pos forecast override MEI                                                                 |
    #         | short term forecast                                                                            |
    #         | system future pog walmart                                                                      |
    #         | execute rmplan poststreet                                                                      |
    #         | list dc                                                                                        |
    #         | on hand by item code on 12/06/2024                                                             |
    #         | pos and shipment history                                                                       |
    #         | preview mod forecast                                                                           |
    #         | promo changes                                                                                  |
    #         | promo dashboard details customer code "175449" and territory "CA"                              |
    #         | strategic forecast corrugates report fiscal year "2024"                                        |
    #         | strategic forecast promo association by studio code "SPE"                                      |
    #         | version 13 week pos forecast SPE                                                               |
    #         | fg inventory item code "wmu"                                                                   |
    #         | list bom cost surcharges                                                                       |
    #         | list catalog work order ship to by territory "US"                                              |
    #         | list finished good lead times  by territory "CA"                                               |
    #         | list nr wo ship to territory "ca"                                                              |
    #         | nr consensus customer for item code "64155" and street date "01/07/2025"                       |
    #         | nr sell thru report customer code "999999" item code "14327500,14479200,15202300,15202400"     |
    #         | list theatrical release schedule by supplier code "SPE"                                        |
    #         | mass forecast override MEI                                                                     |
    #         | nrdp customer item code "64027"                                                                |
    #         | nrdp exception item code "63523"  and studio code "SPE"                                        |
    #         | nrdp item item code "63736" and studio code "SPE"                                              |
    #         | Nrip dashboard street date 11/01/2024 to 03/31/2025 supplier code "CRU"                        |
    #         | nrip item title id "993365" street date "01/21/2025"                                           |
    #         | nrip post street item code "64051"  nrip post street territory "CA"                            |
    #         | nrip report street date "12/31/2024"                                                           |
    #         | nrip title street date "01/21/2025"                                                            |
    #         | on time and completion studio "LGE"                                                            |
    #         | open purchase orders by supplier code "DSY"                                                    |
    #         | Open sales orders detail for item code "FG10963, FN02250, FN10357"                             |
    #         | open sales orders by item code "12715263"                                                      |
    #         | otc raw material part number "46115SLR"                                                        |
    #         | otc report supplier code "DSY"                                                                 |
    #         | Overstock Report Studio Code "SPE"                                                             |
    #         | overstock rework detail report studio code "SPE"                                               |
    #         | po transmission log                                                                            |
    #         | promo ip street date "02/13/2024"                                                              |
    #         | promo post mortem by promotion "PR23000039" item code "57786"                                  |
    #         | promo to catalog transition                                                                    |
    #         | purchase orders  by supplier code "CRU"                                                        |
    #         | raw material attributes by item code "57786"                                                   |
    #         | raw material scrap orders street date "02/02/2024"                                             |
    #         | rm inventory report studio code "CRU"                                                          |
    #         | rm inventory by item code "57786"                                                              |
    #         | rm plan order form export street date "5/21/2024"                                              |
    #         | rm plan for street date "03/04/2025"                                                           |
    #         | rmplan catalog by studio code "CRU"                                                            |
    #         | rmplan poststreet wau street date "08/27/2024"                                                 |
    #         | rmplan promo wau street date "08/27/2024"                                                      |
    #         | shipment forecast detail item code "56552" branch "SMD-BOL"                                    |
    #         | sku detail item code "63687"                                                                   |
    #         | steelbook inventory studIO code "DSY" street date "09/26/2023"                                 |
    #         | stragetic forecast exception report                                                            |
    #         | strategic forecast corrugates                                                                  |