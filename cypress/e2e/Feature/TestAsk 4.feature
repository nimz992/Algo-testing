Feature: Testing Ask Folder 4

    Scenario Outline: Testing Ask: <ASK>
        Given User Login as SONY-DPIP
        Then User waits for 'What's Trending' Response
        Then User Checks page has loaded
        When User enters Ask: '<ASK>'
        Then User checks for response

        Examples:
            | ASK                                                        |
            | on hand walmart                                            |
            | preview mod forecast promotion id "PR21000220"             |
            | promo changes                                              |
            | promotions                                                 |
            | sales walmart 5/10/2021                                    |
            | sales vs on hand walmart 5/10/2021                         |
            | sales vs reporting facings walmart 5/10/2021               |
            | sales vs shipments walmart 5/10/2021                       |
            | sales yoy walmart                                          |
            | shipment based shipment forecast                           |
            | shipments walmart 5/10/2021                                |
            | shipments yoy walmart                                      |
            | short term forecast                                        |
            | system future pog Walmart                                  |
            | raw material scrap orders street date "some street date"   |
            | overstock report                                           |
            | debug nrst                                                 |
            | list air dates upload fiscal year "2030"                   |
            | list theatrical release schedule upload fiscal year "2030" |

