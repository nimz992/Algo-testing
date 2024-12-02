Feature: NSRT Report

    Scenario: nrst item report for street date 04/30/2024
        Given User Login as Sony-DPIP
        Then User waits for 'What's Trending' Response
        When User ask 'nrst item report'
        Then User waits for 'nrst item report' Response
        When User click on a row from the Customer level overview
        Then User waits for response Customer level overview