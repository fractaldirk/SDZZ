Feature: Creating post comments
In order to add comments
As a user
I want to create them easily

Background:
 Given I am on the homepage
 When I follow "Nieuws"
 When I follow "Nieuw Artikel" 
 And I fill in "Titel" with "Geweldige Zaterdagmiddag!" 
 And I fill in "Naam schrijver" with "Dirk Grandjean" 
 And I fill in "Inhoud" with "Het was weer een mooi potje voetbal" 
 And I press "Gaan met die banaan!" 
 Then I should see "Een meesterwerk is geplaast, lekkur!"
 And I should see "Geweldige Zaterdagmiddag!"
 

Scenario: Create a comment
 When I fill in "Uw naam is?" with "Hoe lang"
 And I fill in "What's on your mind sweatheart?" with "Ik heb ballen"
 And I press "Meum mundum creo"
 Then I should see "Gewoon dikke prima!"
 And I should see "Hoe lang"
 And I should see "Ik heb ballen"

