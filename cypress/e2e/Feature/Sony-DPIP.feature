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


# 6-list future promo replen curves
# click on "edit" for a row with a valid Item Type
# Change week 1 ship override and save