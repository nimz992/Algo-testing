Feature: Rmplan Ask

    Scenario: Rmplan catalog
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'rmplan catalog'
        Then User waits for 'rmplan catalog' Response
        When User click confirmation button of first row
        Then User waits for 'Confirmation' Response
        When User click overwride button of first row
        Then User waits for 'Overwride' Response

    Scenario: Rmplan Poststreet
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'rmplan poststreet'
        Then User waits for 'rmplan poststreet' Response
        When User click confirmation button of first row
        Then User waits for 'Confirmation' Response
        When User click overwride button of first row
        Then User waits for 'Overwride' Response