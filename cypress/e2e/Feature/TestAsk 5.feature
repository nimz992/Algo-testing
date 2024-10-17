Feature: Testing Ask Folder 5

    Scenario Outline: Testing Ask: <ASK>
        Given User Login as SONY-DPIP
        Then User waits for 'What's Trending' Response
        Then User Checks page has loaded
        When User enters Ask: '<ASK>'
        Then User checks for response

        Examples:
            | ASK                                                                    |
            | strategic forecast exception report                                    |
            | compare forecast                                                       |
            | steelbook inventory item code "54572"                                  |
            | otc raw material part number "46115SLR"                                |
            | overstock rework detail report                                         |
            | nr fg inventory report                                                 |
            | list itype xref                                                        |
            | raw material attributes item code "04609LIT"                           |
            | list strategic forecast corrugates box office                          |
            | daily bofka                                                            |
            | version 13 week shipment forecast version date "06/23/2021" 06/20/2021 |
            | mass forecast override log                                             |
            | mod forecast promotion id "PR21000047"                                 |
            | order frequency                                                        |
