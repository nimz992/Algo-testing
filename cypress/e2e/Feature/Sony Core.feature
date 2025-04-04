Feature: Test SONY Asks

    Scenario: Login as SONY
        Given User Login as SONY
        Then User Checks page has loaded

    Scenario Outline: Testing Ask: <ASK>
        Given User clears the pannel
        When User enters Ask: '<ASK>'
        Then User checks for response

        Examples:
            | ASK                                                                                                                             |
            | algo processing dictionary                                                                                                      |
            | algo yoy comparison customer code "BBC" location code "BBC0971"                                                                 |
            | all order activity customer code "FMY" and batch id "db9d0dd1-ae5c-404e-96d5-5c5c0022335e"                                      |
            | BBC Assortment Manager                                                                                                          |
            | WAC fixture at a glance report                                                                                                  |
            | atp cuts item code "a051646" walmart                                                                                            |
            | best buy sell thru                                                                                                              |
            | best buy us daily alert                                                                                                         |
            | Business at a Glance Walmart from 1/1/2023 to 2/15/2023                                                                         |
            | customer availability percentages facings                                                                                       |
            | customer availability percentages nrg FMY by item code                                                                          |
            | customer item alias                                                                                                             |
            | Walmart Daily Instock Report supplier code "J2F" by item code location code for location code "wmu2492" location code "wmu2196" |
            | debug edi returns                                                                                                               |
            | debug nr sell thru report                                                                                                       |
            | debug oh feed report  by customer code "TAR"                                                                                    |
            | WMU debug retailer info                                                                                                         |
            | Inaccurate Inactive DRR Items by customer code "FMY"                                                                            |
            | email subscription log                                                                                                          |
            | facings by item code supplier code "J96" by customer code BBY BBC TGU WMU WMC                                                   |
            | fixture group at a glance v2 customer code "WAU"                                                                                |
            | BBY Forecast                                                                                                                    |
            | gross sales                                                                                                                     |
            | groups file                                                                                                                     |
            | in stock percentage forecast WMU by item code                                                                                   |
            | In stock percentages narrative reasons for customer code "WAC" item code "A056988" by item code                                 |
            | in stock percentages MEI by item code                                                                                           |
            | walmart initial ship allocation error by item code 2022                                                                         |
            | inventory change report  by item code "A056925"                                                                                 |
            | inventory turnover 01/02/2023 and 02/02/2023 wau                                                                                |
            | item alias by item code "1000749284"                                                                                            |
            | Item at a Glance                                                                                                                |
            | walmart canada item master  by customer code WAC and item code "18196601"                                                       |
            | list order notifications batch id "664c8130-2573-11ed-9258-395166c6d48c"                                                        |
            | list promotions wac item code "63649" street date "11/05/2024"                                                                  |
            | pos item code "1000095187" by location code for location code "fmd10703"                                                        |
            | wmu location master                                                                                                             |
            | lost sales                                                                                                                      |
            | menu manager                                                                                                                    |
            | metrics performance tracker                                                                                                     |
            | metrics                                                                                                                         |
            | min compliance customer code "MEI" item code "1000749284"                                                                       |
            | mod reset headers                                                                                                               |
            | mod reset batch id "79d03580-0d39-11ef-8959-2bcb3dbee4f2"                                                                       |
            | new forecast                                                                                                                    |
            | new release dashboard DESPICABLE ME 4 NRG                                                                                       |
            | new release vs catalog sales by item code "24005500"                                                                            |
            | nr performance by customer code "WMU"                                                                                           |
            | BBC nr sell thru report item code "1000837259"                                                                                  |
            | nr sla rolling tracker by customer code "WMU" by item code "1000837431"                                                         |
            | oh feed dashboard                                                                                                               |
            | oh feed report                                                                                                                  |
            | oh file investigator by customer code "WMU" by item code "1946196979" by location code "WMU3494"                                |
            | on hand bby 1000750724 by location code                                                                                         |
            | walmart oos by store                                                                                                            |
            | ocl                                                                                                                             |
            | order notification batch id "65e12e97-2a3b-46d0-b90a-25e89619b406"                                                              |
            | wmu ordering kpi metrics                                                                                                        |
            | wmc Out of Stock with ITR Locations                                                                                             |
            | physical inventory data cleanup                                                                                                 |
            | pog capacity fmd FMD by location code                                                                                           |
            | pog item historical customer code "wmu" item code "21311" trait type id "2"                                                     |
            | on pog returns report 09/14/24 lookahead week "1" customer code "DOL"                                                           |
            | ordering pog by item code wmu                                                                                                   |
            | baseline pos forecast accuracy report VERSION DATE "08/20/2024" 08/18/2024 BBC                                                  |
            | raw soq customer code "WMC"                                                                                                     |
            | replenishment exception report                                                                                                  |
            | returns yoy 5/10/2024                                                                                                           |
            | TAR returns by location code by supplier code by week from 5/1/24 to 5/31/24                                                    |
            | ris forecast                                                                                                                    |
            | sales vs on hand 9/11/2024                                                                                                      |
            | sales vs reporting facings 5/10/2024                                                                                            |
            | net sales vs returns                                                                                                            |
            | sales vs shipments walmart 5/10/2021                                                                                            |
            | sales yoy walmart                                                                                                               |
            | wac pos by store for 9/01/2024 to 12/12/2024                                                                                    |
            | sell through percentage 01/23/2024 by customer code                                                                             |
            | shipments vs returns                                                                                                            |
            | bbc Shipments with No POS 01/01/2024 to 03/18/2024 location code "BBC0971"                                                      |
            | walmart shipments by supplier code "J2G, J2E, J2F, J2D" 09/01/2024 to 11/24/2024 by supplier code                               |
            | store groups benchmark details                                                                                                  |
            | store groups instock report supplier code "j2g" customer code "wmu" supplier code "j2e" supplier code "j2d"                     |
            | WMU system future pog                                                                                                           |
            | tableau report check                                                                                                            |
            | target sbt inf report                                                                                                           |
            | Target SBT shrink report from 10/1/2023 to 1/13/2024 TGU                                                                        |
            | TGU traits tracker 9/29/2024 to 12/29/2024 supplier code "J96"                                                                  |
            | walmart traits tracker                                                                                                          |
            | TGU traits tracker item code "1000833644" 7/14/2024 to 10/13/2024                                                               |
            | walmart canada traits tracker 07/01/2024 to 07/15/2024                                                                          |
            | TGU traits tracker exclude supplier code "J96" 6/9/2024                                                                         |
            | workflow master                                                                                                                 |
            | target wos by week 01/01/2024 to 08/28/2024                                                                                     |
            | debug nrst data                                                                                                                 |
            | customer availability percentages by CUSTOMER CODE "MEI"                                                                        |
            | pog items                                                                                                                       |
            | summary metrics                                                                                                                 |