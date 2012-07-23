Feature: Creating a Story 
In order to read a story 
As a User 
I need to create it easily

Background: 
 Given I am on the homepage 
 When I follow "The Story"
 When I follow "Nieuwe story" 
 And I fill in "Titel" with "De moegestreden bever"
 And I fill in "Achtergrond Story" with "Hier een foto genomen op zaterdag, veel plezier" 
 And I press "Plaats die story!" 
 Then I should see "Storie is geplaatst, lekkur!"
 And I should see "De moegestreden bever"
 And I should see "Hier een foto genomen op zaterdag, veel plezier"

Scenario: Add a comment
 And I fill in "Waaaaat is jouw naam?" with "Mr. T"
 And I fill in "Gevat bijschrift" with "Bruggen bouwen, zoals echt bevers doen"
 And I press "Share"
 Then I should see "Wauw, wat een pareltje, lekkur!"
 And I should see "Mr. T"
 And I should see "Bruggen bouwen, zoals echt bevers doen"
 When I follow "Privacy Statement"
 Then I should see "Ingrijpen bij reacties"
 When I follow "Zuruck jawohl!"
 Then I should see "The Stories"

