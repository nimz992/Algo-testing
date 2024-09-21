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


# list mod reset curve
# Click on edit button
# Click on Add button
# Click on delete button