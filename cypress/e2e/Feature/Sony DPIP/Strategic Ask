Feature: Rmplan Ask

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