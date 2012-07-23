Feature: Creating a Story 
In order to read a story 
As a User 
I need to create it easily

Background: 
 Given I am on the homepage 
 When I follow "The Story"

Scenario: Creating a Story 
  When I follow "Nieuwe story" 
  And I fill in "Titel" with "De moegestreden bever"
  And I fill in "Achtergrond Story" with "Hier een foto genomen op zaterdag, veel plezier" 
  And I press "Plaats die story!" 
  Then I should see "Storie is geplaatst, lekkur!"
  And I should see "De moegestreden bever"
  And I should see "Hier een foto genomen op zaterdag, veel plezier"
  When I follow "Zuruck jawohl!"
  Then I should see "De moegestreden bever"
  When I follow "De moegestreden bever"
  When I follow "Eventjes wijzigen"
  And I fill in "Titel" with "De fitte bever"
  And I press "Plaats die story!"
  Then I should see "De fitte bever"
  When I follow "Zuruck jawohl!"
  Then I should see "De fitte bever"



