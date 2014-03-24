Feature: The data spinner jquery element

    Scenario: Clicking on the up arrow
        Given a webpage containing the data spinner element
        When I click on the up arrow
        Then the value of the data spinner is 1

    Scenario: Clicking on the set value button
        Given a webpage containing the data spinner element
        When I click on the set value button
        Then the value of the data spinner is 5