Feature: TSony-DPIP Data Modification Asks Session 2

    Scenario: list finished good lead times
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'list finished good lead times'
        Then User waits for 'list finished good lead times' Response
    # When User click 'add finished good lead time'
    # Then User waits for 'add finished good lead time' Response


    Scenario: list raw material subclass lead times
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'list raw material subclass lead times'
        Then User waits for 'list raw material subclass lead times' Response
    # When User click 'add raw material subclass lead times'
    # Then User waits for 'add raw material subclass lead times' Response

    Scenario: list strategic forecast mod reset curve
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'list strategic forecast mod reset curve'
        Then User waits for 'list strategic forecast mod reset curve' Response
        When User click edit button of first row
        Then User waits for 'Edit' Response
        When User click add button of first row
        Then User waits for 'Add' Response
    # When User click delete button of first row
    # Then User waits for 'Delete' Response


    Scenario: list safety stock
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'list safety stock'
        Then User waits for 'list safety stock' Response
        When User click edit button of first row
        Then User waits for 'Edit' Response
        When User click add button of first row
        Then User waits for 'Add' Response
    # When User click delete button of first row
    # Then User waits for 'Delete' Response


    Scenario: list catalog wo ship to
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'list catalog wo ship to'
        Then User waits for 'list catalog wo ship to' Response
        When User click edit button of first row
        Then User waits for 'Edit' Response
        When User click 'Add'
        Then User waits for 'Add' Response
        Then User click 'Add list Catalog Work Order Ship To' Button


    Scenario: list nr wo ship to
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'list nr wo ship to'
        Then User waits for 'list nr wo ship to' Response
        When User click edit button of first row
        Then User waits for 'Edit' Response
        When User click 'Add'
        Then User waits for 'Add' Response
        Then User click 'Add NR WO Ship To' Button


    Scenario: open sales orders
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'open sales orders'
        Then User waits for 'open sales orders' Response
        When User Click on an item
        Then User see the sales orders detail


    Scenario: list disabled forecast item code "55773W21"
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'list disabled forecast item code 55773W21'
        Then User waits for 'list disabled forecast item code 55773W21' Response
        When User click edit button of first row
        Then User waits for 'Edit' Response
        When User Edit disable forecast data and click Edit button
        Then User waits for Edit disable forecast data Response


    Scenario: list customers
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'list customers'
        Then User waits for 'list customers' Response
        When User click edit button of first row
        Then User waits for 'Edit' Response
        When User Change week 1 ship override and save
        Then User waits for ship override Response


    Scenario: promo dashboard
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'promo dashboard'
        Then User waits for 'promo dashboard' Response
        When User click on a row under promo id column
        Then User waits for promo id response
        When User click edit button of first row
        Then User waits for 'Edit' Response
        When select 'PROMOTION' for Forecast Layer Dropdown and 'Default' for Promo Type Drop down and click save
        Then user waits for Promo response