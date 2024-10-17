Feature: Sony-DPIP Data Modification Asks 3

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
