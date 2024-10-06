Feature: Sony-DPIP Data Modification Asks

    # Scenario: List Transit Times
    #     Given User Login as Sony-DPIP
    #     Then User waits for 'What's Trending' Response
    #     When User ask 'list transit times'
    #     Then User waits for 'list transit times' Response
    #     When User click edit button of first row
    #     Then User waits for 'Edit' Response
    #     Then User change the 'Fg Transit' value
    #     Then User Click save button
    #     Then User wait for 'transit times added successful' response

    # Scenario: List Mod Reset Curve
    #     Given User Login as Sony-DPIP
    #     Then User waits for 'What's Trending' Response
    #     When User ask 'list mod reset curve'
    #     Then User waits for 'list mod reset curve' Response
    #     When User click edit button of first row
    #     Then User waits for 'Edit' Response
    #     When User click add button of first row
    #     Then User waits for 'Add' Response
    # # When User click delete button of first row
    # # Then User waits for 'Delete' Response

    # Scenario: List Safety Stock
    #     Given User Login as Sony-DPIP
    #     Then User waits for 'What's Trending' Response
    #     When User ask 'list safety stock'
    #     Then User waits for 'list safety stock' Response
    #     When User click edit button of first row
    #     Then User waits for 'Edit' Response
    #     When User click add button of first row
    #     Then User waits for 'Add' Response
    # # When User click delete button of first row
    # # Then User waits for 'Delete' Response

    # Scenario: Rmplan Poststreet
    #     Given User Login as Sony-DPIP
    #     Then User waits for 'What's Trending' Response
    #     When User ask 'rmplan poststreet'
    #     Then User waits for 'rmplan poststreet' Response
    #     When User click confirmation button of first row
    #     Then User waits for 'Confirmation' Response
    #     When User click overwride button of first row
    #     Then User waits for 'Overwride' Response

    # Scenario: list future promo replen curves
    #     Given User Login as Sony-DPIP
    #     Then User waits for 'What's Trending' Response
    #     When User ask 'list future promo replen curves'
    #     Then User waits for 'list future promo replen curves' Response
    #     When User click edit button of first row
    #     Then User waits for 'Edit' Response
    #     Then User change week 1 ship override
    #     Then User save


    # Scenario: Rmplan catalog
    #     Given User Login as Sony-DPIP
    #     Then User waits for 'What's Trending' Response
    #     When User ask 'rmplan catalog'
    #     Then User waits for 'rmplan catalog' Response
    #     When User click confirmation button of first row
    #     Then User waits for 'Confirmation' Response
    #     When User click overwride button of first row
    #     Then User waits for 'Overwride' Response


    # Scenario: List bom cost surcharges
    #     Given User Login as Sony-DPIP
    #     Then User waits for 'What's Trending' Response
    #     When User ask 'list bom cost surcharges'
    #     Then User waits for 'list bom cost surcharges' Response
    #     When User click edit button of first row
    #     Then User waits for 'Edit' Response
    #     Then User change Surcharge Cost
    #     Then User click Edit BOM Cost Surcharge


    # Scenario: list vendors
    #     Given User Login as Sony-DPIP
    #     Then User waits for 'What's Trending' Response
    #     When User ask 'list vendors'
    #     Then User waits for 'list vendors' Response
    #     When User click edit button of first row
    #     Then User waits for 'Edit' Response
    #     Then User change Vendor Name
    #     Then User click Edit Vendor

    # Scenario: list bom cost overrides
    #     Given User Login as Sony-DPIP
    #     Then User waits for 'What's Trending' Response
    #     When User ask 'list bom cost overrides'
    #     Then User waits for 'list bom cost overrides' Response
    #     When User click edit button of first row
    #     Then User waits for 'Edit' Response
    #     Then User change value of 'cost'
    #     Then User click Edit Bom Cost Overrides buton

    # Scenario: list dc
    #     Given User Login as Sony-DPIP
    #     Then User waits for 'What's Trending' Response
    #     When User ask 'list dc'
    #     Then User waits for 'list dc' Response
    #     When User click edit button of first row
    #     Then User waits for 'Edit' Response
    #     Then User change value of DC name
    #     Then User click Edit DC button

    # Not Working.
    # Scenario: list finished good lead times
    #     Given User Login as Sony-DPIP
    #     Then User waits for 'What's Trending' Response
    #     When User ask 'list finished good lead times'
    #     Then User waits for 'list finished good lead times' Response
    #     When User click 'add finished good lead time'
    #     Then User waits for 'add finished good lead time' Response

    # Not Working.
    # Scenario: list raw material subclass lead times
    #     Given User Login as Sony-DPIP
    #     Then User waits for 'What's Trending' Response
    #     When User ask 'list raw material subclass lead times'
    #     Then User waits for 'list raw material subclass lead times' Response
    #     When User click 'add raw material subclass lead times'
    #     Then User waits for 'add raw material subclass lead times' Response

    # Scenario: list strategic forecast mod reset curve
    #     Given User Login as Sony-DPIP
    #     Then User waits for 'What's Trending' Response
    #     When User ask 'list strategic forecast mod reset curve'
    #     Then User waits for 'list strategic forecast mod reset curve' Response
    #     When User click edit button of first row
    #     Then User waits for 'Edit' Response
    #     When User click add button of first row
    #     Then User waits for 'Add' Response
    # # When User click delete button of first row
    # # Then User waits for 'Delete' Response


    # Scenario: list safety stock
    #     Given User Login as Sony-DPIP
    #     Then User waits for 'What's Trending' Response
    #     When User ask 'list safety stock'
    #     Then User waits for 'list safety stock' Response
    #     When User click edit button of first row
    #     Then User waits for 'Edit' Response
    #     When User click add button of first row
    #     Then User waits for 'Add' Response
    # # When User click delete button of first row
    # # Then User waits for 'Delete' Response


    # Scenario: list catalog wo ship to
    #     Given User Login as Sony-DPIP
    #     Then User waits for 'What's Trending' Response
    #     When User ask 'list catalog wo ship to'
    #     Then User waits for 'list catalog wo ship to' Response
    #     When User click edit button of first row
    #     Then User waits for 'Edit' Response
    #     When User click 'Add'
    #     Then User waits for 'Add' Response
    #     Then User click 'Add list Catalog Work Order Ship To' Button


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



# 24-list nr wo ship to
# Click on edit button
# Click add button shown on top left when entering list nr wo ship to measure