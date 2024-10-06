Feature: Sony-DPIP Data Modification Asks

    Scenario: List Transit Times
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'list transit times'
        Then User waits for 'list transit times' Response
        When User click edit button of first row
        Then User waits for 'Edit' Response
        Then User change the 'Fg Transit' value
        Then User Click save button
        Then User wait for 'transit times added successful' response

    Scenario: List Mod Reset Curve
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'list mod reset curve'
        Then User waits for 'list mod reset curve' Response
        When User click edit button of first row
        Then User waits for 'Edit' Response
        When User click add button of first row
        Then User waits for 'Add' Response
    # When User click delete button of first row
    # Then User waits for 'Delete' Response

    Scenario: List Safety Stock
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

    Scenario: Rmplan Poststreet
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'rmplan poststreet'
        Then User waits for 'rmplan poststreet' Response
        When User click confirmation button of first row
        Then User waits for 'Confirmation' Response
        When User click overwride button of first row
        Then User waits for 'Overwride' Response

    Scenario: list future promo replen curves
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'list future promo replen curves'
        Then User waits for 'list future promo replen curves' Response
        When User click edit button of first row
        Then User waits for 'Edit' Response
        Then User change week 1 ship override
        Then User save


    Scenario: Rmplan catalog
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'rmplan catalog'
        Then User waits for 'rmplan catalog' Response
        When User click confirmation button of first row
        Then User waits for 'Confirmation' Response
        When User click overwride button of first row
        Then User waits for 'Overwride' Response


    Scenario: List bom cost surcharges
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'list bom cost surcharges'
        Then User waits for 'list bom cost surcharges' Response
        When User click edit button of first row
        Then User waits for 'Edit' Response
        Then User change Surcharge Cost
        Then User click Edit BOM Cost Surcharge


    Scenario: list vendors
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'list vendors'
        Then User waits for 'list vendors' Response
        When User click edit button of first row
        Then User waits for 'Edit' Response
        Then User change Vendor Name
        Then User click Edit Vendor

    Scenario: list bom cost overrides
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'list bom cost overrides'
        Then User waits for 'list bom cost overrides' Response
        When User click edit button of first row
        Then User waits for 'Edit' Response
        Then User change value of 'cost'
        Then User click Edit Bom Cost Overrides buton

    Scenario: list dc
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'list dc'
        Then User waits for 'list dc' Response
        When User click edit button of first row
        Then User waits for 'Edit' Response
        Then User change value of DC name
        Then User click Edit DC button


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

    Scenario: nrst item report for street date 04/30/2024
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'nrst item report'
        Then User waits for 'nrst item report' Response
        When User click on a row from the Customer level overview
        Then User waits for response Customer level overview

    Scenario: strategic forecast report fiscal year "2030"
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'strategic forecast report fiscal year 2030'
        Then User waits for 'strategic forecast report fiscal year 2030' Response

    Scenario: strategic forecast planning calendar fiscal year "2030"
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'strategic forecast planning calendar fiscal year 2030'
        Then User waits for 'strategic forecast planning calendar fiscal year 2030' Response
        Then User click Holiday Events Tab
        When User click edit button of first row
        Then User waits for 'Edit' Response
        # When User click delete button of first row
        # Then User waits for 'Delete' Response
        When User click MOD Events Tab and click edit.
        Then User waits for 'MOD Events Edit' Response
    # When User click delete button of first row
    # Then User waits for 'Delete' Response

    Scenario: list mass forecast override
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'list mass forecast override'
        Then User waits for 'list mass forecast override' Response

    Scenario: list user id xref
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'list user id xref'
        Then User waits for 'list user id xref' Response
    # When user click on add user id xref in the header


    Scenario: po transmission log
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'po transmission log'
        Then User waits for 'po transmission log' Response
        When User click resend button of first row
        Then User waits for 'Resend' Response
        When User click cancel button of first row
        Then User waits for 'Cancel' Response


# 21-po transmission log
# Select a row to resend, by clicking the resend button
# Select a row to cancel, by clicking the cancel button
# Click on the PO pending transmission log tab
# Select a few rows from the PO Pending transmission log tab, and then select execute potransmission log for measure name "po transmission log" action "transmit"
