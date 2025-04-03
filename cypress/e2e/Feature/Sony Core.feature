Feature: Test SONY Asks

    Scenario: Login as SONY
        Given User Login as SONY
        Then User Checks page has loaded

    Scenario Outline: Testing Ask: <ASK>
        Given User clears the pannel
        When User enters Ask: '<ASK>'
        Then User checks for response

        Examples:
            | ASK                                                                                                                                                             |
            | algo processing dictionary                                                                                                                                      |
            | algo yoy comparison customer code "WMU" location code "WMU0090"                                                                                                 |
            | algo yoy comparison customer code "BBC" location code "BBC0009"                                                                                                 |
            | algo yoy comparison customer code "BBC" location code "BBC0971"                                                                                                 |
            | all order activity customer code "WMC" and batch id "40675eef-0807-427a-bea7-ff24bf7b4ecf"                                                                      |
            | all order activity customer code "TGU" and batch id "58d9e399-da05-4a9a-b2dd-2e4ef089fc1f"                                                                      |
            | all order activity customer code "FMY" and batch id "db9d0dd1-ae5c-404e-96d5-5c5c0022335e"                                                                      |
            | BBC Assortment Manager                                                                                                                                          |
            | assortment manager wmc                                                                                                                                          |
            | wau item at a glance report                                                                                                                                     |
            | WAC fixture at a glance report                                                                                                                                  |
            | atp cuts wau WAU by item code                                                                                                                                   |
            | atp cuts customer code wau                                                                                                                                      |
            | atp cuts item code "a051646" walmart                                                                                                                            |
            | atp cuts item code "41675" wac                                                                                                                                  |
            | atp cuts walmart today"                                                                                                                                         |
            | best buy sell thru                                                                                                                                              |
            | best buy us daily alert                                                                                                                                         |
            | Business at a Glance Walmart from 1/1/2023 to 2/15/2023                                                                                                         |
            | customer availability percentages facings                                                                                                                       |
            | Customer Availability Percentages NRG                                                                                                                           |
            | customer availability percentages nrg FMY by item code                                                                                                          |
            | Customer Availability Percentages                                                                                                                               |
            | wmc Customer Availability Percentages by location code by item code                                                                                             |
            | customer item alias                                                                                                                                             |
            | Daily Instock Report WAU supplier code “LGE” by customer code by item code                                                                                      |
            | Walmart Daily Instock Report supplier code "J2F" by item code location code for location code "wmu2492" location code "wmu2196"                                 |
            | debug edi returns                                                                                                                                               |
            | debug nr sell thru report                                                                                                                                       |
            | debug oh feed report                                                                                                                                            |
            | WMU debug retailer info                                                                                                                                         |
            | Inaccurate Inactive DRR Items                                                                                                                                   |
            | email subscription log                                                                                                                                          |
            | facings by item code supplier code "J96" by customer code BBY BBC TGU WMU WMC                                                                                   |
            | wac sku facings location code 3/20/23                                                                                                                           |
            | fixture group at a glance v2 customer code "WAU"                                                                                                                |
            | forecast                                                                                                                                                        |
            | BBY Forecast                                                                                                                                                    |
            | gross sales                                                                                                                                                     |
            | groups file                                                                                                                                                     |
            | in stock percentage forecast                                                                                                                                    |
            | in stock percentage forecast WMU by item code                                                                                                                   |
            | In stock percentages narrative reasons for customer code "WAC" item code "A056988" by item code                                                                 |
            | in stock percentages MEI by item code                                                                                                                           |
            | in stock percentages last 4 weeks best buy 4/7/2024 by customer code                                                                                            |
            | walmart initial ship allocation error by item code 2022                                                                                                         |
            | inventory change report                                                                                                                                         |
            | inventory turnover 01/02/2023 and 02/02/2023 wau                                                                                                                |
            | item alias by item code "1000749284"                                                                                                                            |
            | Item at a Glance                                                                                                                                                |
            | walmart canada item master                                                                                                                                      |
            | list order notifications batch id "664c8130-2573-11ed-9258-395166c6d48c"                                                                                        |
            | list order notifications customer code "DGN"                                                                                                                    |
            | list order notifications item code "1000188927"                                                                                                                 |
            | list promotions item code "QAS-00007"                                                                                                                           |
            | list promotions amz supplier code "CRU"                                                                                                                         |
            | list promotions AMC                                                                                                                                             |
            | list promotions wau street date "08/27/2024"                                                                                                                    |
            | list promotions wac item code "63649" street date "11/05/2024"                                                                                                  |
            | pos item code "1000095187" by location code for location code "fmd10703"                                                                                        |
            | wmu location master                                                                                                                                             |
            | lost sales                                                                                                                                                      |
            | menu manager                                                                                                                                                    |
            | metrics performance tracker                                                                                                                                     |
            | metrics                                                                                                                                                         |
            | min compliance customer code "MEI" item code "1000749284"                                                                                                       |
            | mod reset headers                                                                                                                                               |
            | mod reset batch id "79d03580-0d39-11ef-8959-2bcb3dbee4f2"                                                                                                       |
            | mod reset batch id "ee003ba0-1160-11ef-9a81-2735a03f4eb5"                                                                                                       |
            | new forecast                                                                                                                                                    |
            | new release dashboard                                                                                                                                           |
            | new release dashboard DESPICABLE ME 4 NRG                                                                                                                       |
            | new release vs catalog sales                                                                                                                                    |
            | nr performance by customer code "WMU"                                                                                                                           |
            | BBC nr sell thru report item code "1000837259"                                                                                                                  |
            | nr sla rolling tracker by customer code "WMU" by item code "1000837431"                                                                                         |
            | oh feed dashboard                                                                                                                                               |
            | oh feed report                                                                                                                                                  |
            | oh file investigator by customer code "WMU" by item code "1946196979" by location code "WMU3494"                                                                |
            | on hand                                                                                                                                                         |
            | on hand bby 1000750724 by location code                                                                                                                         |
            | walmart oos by store                                                                                                                                            |
            | ocl                                                                                                                                                             |
            | order notification batch id "7efcf0db-b363-4250-ace8-d1c0464a36b5"                                                                                              |
            | order notification batch id "f87b3c74-6f8d-458d-b5e2-3f24d3f6713e"                                                                                              |
            | order notification batch id "65e12e97-2a3b-46d0-b90a-25e89619b406"                                                                                              |
            | wmu ordering kpi metrics                                                                                                                                        |
            | wmc Out of Stock with ITR Locations                                                                                                                             |
            | physical inventory data cleanup                                                                                                                                 |
            | pog capacity fmd FMD by location code                                                                                                                           |
            | pog capacity fmd FMD by item code                                                                                                                               |
            | pog capacity                                                                                                                                                    |
            | pog item historical customer code "wmu" item code "21311" trait type id "2"                                                                                     |
            | pog items                                                                                                                                                       |
            | on pog returns report 09/14/24 lookahead week "1" customer code "WMU"                                                                                           |
            | on pog returns report 09/14/24 lookahead week "1" customer code "TAR"                                                                                           |
            | on pog returns report 09/14/24 lookahead week "1" customer code "DOL"                                                                                           |
            | TGU POG                                                                                                                                                         |
            | ordering pog by item code wmu                                                                                                                                   |
            | pog status by item code wmu 1000842423 by location code                                                                                                         |
            | 000842692 pog status by item code by location code wmu                                                                                                          |
            | baseline pos forecast accuracy report VERSION DATE "08/20/2024" 08/18/2024 BBC                                                                                  |
            | raw soq customer code "WMC"                                                                                                                                     |
            | replenishment exception report                                                                                                                                  |
            | returns yoy 5/10/2024                                                                                                                                           |
            | TAR returns by supplier code by month 2024                                                                                                                      |
            | TAR returns by location code by supplier code by week from 5/1/24 to 5/31/24                                                                                    |
            | TAR returns by location code by week from 10/1/24 to 10/31/24                                                                                                   |
            | meijer returns this year by month                                                                                                                               |
            | walmart returns by month 01/01/2024 to 10/16/2024                                                                                                               |
            | returns this year walmart 2024/10 by customer code                                                                                                              |
            | walmart returns by month this year                                                                                                                              |
            | ris forecast                                                                                                                                                    |
            | sales vs on hand 5/10/2024                                                                                                                                      |
            | sales vs on hand 9/11/2024                                                                                                                                      |
            | sales vs reporting facings 5/10/2024                                                                                                                            |
            | sales vs reporting facings 9/11/2024                                                                                                                            |
            | net sales vs returns                                                                                                                                            |
            | net pos vs returns                                                                                                                                              |
            | sales vs returns                                                                                                                                                |
            | pos vs returns                                                                                                                                                  |
            | returns vs net sales                                                                                                                                            |
            | returns vs net pos                                                                                                                                              |
            | returns vs pos                                                                                                                                                  |
            | sales vs shipments walmart 5/10/2021                                                                                                                            |
            | sales yoy walmart                                                                                                                                               |
            | sales yoy                                                                                                                                                       |
            | wac pos by store for 9/01/2024 to 12/12/2024                                                                                                                    |
            | 2024 wau pos by item                                                                                                                                            |
            | sell through percentage 01/23/2024 by customer code                                                                                                             |
            | walmart sell through percentage by item code item code "1000838066" item code "1000837413" item code "1000837430" item code "1000837431" item code "1000837720" |
            | sell through percentage                                                                                                                                         |
            | WMU sell through percentage by item code from 07/27/2024 to 11/04/2024                                                                                          |
            | shipments vs returns                                                                                                                                            |
            | bbc Shipments with No POS 01/01/2024 to 03/18/2024 location code "BBC0971"                                                                                      |
            | bbc Shipments with No POS "01/01/2024 to 03/18/2024"                                                                                                            |
            | walmart shipments yoy                                                                                                                                           |
            | walmart shipments by supplier code "J2G, J2E, J2F, J2D" 09/01/2024 to 11/24/2024 by supplier code                                                               |
            | walmart shipments supplier code "J2G, J2E, J2D" 2024 by supplier code                                                                                           |
            | WMU pos vs shipments by item code from 07/27/2024 to 11/04/2024                                                                                                 |
            | walmart shipments by week by item code                                                                                                                          |
            | wmu shipments by day for item codes "1000837034, 1000837029"                                                                                                    |
            | store groups benchmark details                                                                                                                                  |
            | WMC store groups instock report                                                                                                                                 |
            | walmart store groups instock report                                                                                                                             |
            | WMU store groups instock report                                                                                                                                 |
            | store groups instock report customer code "wmu"                                                                                                                 |
            | store groups instock report supplier code "j2g" customer code "wmu" supplier code "j2e" supplier code "j2d"                                                     |
            | store groups instock report not supplier code "j96"                                                                                                             |
            | store groups instock report supplier code "j2k" customer code "wmu"                                                                                             |
            | store groups instock report customer code "wmu" exclude supplier code "j2k" exclude supplier code "j2d"                                                         |
            | store groups instock report supplier code "j2g,j2e,j2d" customer code "wmu"                                                                                     |
            | WMU system future pog                                                                                                                                           |
            | tableau report check                                                                                                                                            |
            | target sbt inf report                                                                                                                                           |
            | Target SBT shrink report from 10/1/2023 to 1/13/2024                                                                                                            |
            | Target SBT shrink report from 10/1/2023 to 1/13/2024 TGU                                                                                                        |
            | DGN traits tracker 01/07/2024 to 11/17/2024                                                                                                                     |
            | TGU traits tracker 9/29/2024 to 12/29/2024 supplier code "J96"                                                                                                  |
            | walmart traits tracker                                                                                                                                          |
            | WAC traits tracker for 2024 by week                                                                                                                             |
            | wac traits tracker by week                                                                                                                                      |
            | TGU traits tracker item code "1000833644" 7/14/2024 to 10/13/2024                                                                                               |
            | walmart canada traits tracker 07/01/2024 to 07/15/2024                                                                                                          |
            | TGU traits tracker exclude supplier code "J96" 6/9/2024                                                                                                         |
            | TGU traits tracker 6/9/2024 release day 6/11/2024                                                                                                               |
            | workflow master                                                                                                                                                 |
            | Weeks of Supply                                                                                                                                                 |
            | target wos by week 01/01/2024 to 08/28/2024                                                                                                                     |
            | walmart wos by location code                                                                                                                                    |
            | TAR Returns by item code from 8/1/24 to 10/31/24 returns > 0                                                                                                    |
            | TAR Returns by item code by location code October 2024 returns > 0                                                                                              |
