Feature: Tournament

  @javascript
  Scenario: Complete tournament
    Given I am authorized user
    And I am logged in
    When I navigate to tournament path
    Then I should see caption with 'Round 1'
    And I should see 2 images to compare
    When I click on left image 15 times
    Then I should see a winner image
 
