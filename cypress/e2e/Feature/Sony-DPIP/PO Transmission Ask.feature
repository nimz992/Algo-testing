Feature: PO Transmission

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