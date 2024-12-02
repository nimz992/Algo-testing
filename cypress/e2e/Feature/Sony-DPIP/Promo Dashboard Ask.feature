Feature: Promo Dashboard

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