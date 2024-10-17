Feature: Testing Ask Folder 3

    Scenario Outline: Testing Ask: <ASK>
        Given User Login as SONY-DPIP
        Then User waits for 'What's Trending' Response
        Then User Checks page has loaded
        When User enters Ask: '<ASK>'
        Then User checks for response

        Examples:
            | ASK                                                     |
            | nr consensus item item code "57296"                     |
            | nr inventory summary street date "some street date"     |
            | nr post mortem street date "some street date"           |
            | nr shipments                                            |
            | nr to catalog transition street date "some street date" |
            | nrip dashboard street date "some street date"           |
            | on time and completion                                  |
            | open purchase orders                                    |
            | rm inventory item code "01353LTR"                       |
            | rm inventory report                                     |
            | rm net negative                                         |
            | vendor calendar                                         |
            | weekly itss feed                                        |
            | compare ship forecast to core                           |
            | context builder                                         |
            | core data exception report                              |
            | daily forecast accuracy dashboard                       |
            | debug poststreet forecast check                         |
            | debug poststreet forecast errors                        |
            | forecast accuracy dashboard                             |
            | forecast validation walmart                             |
            | future pog wac                                          |
            | future pog changes                                      |