Feature: Creating projects
In order to have projects to assign tickets to
As a user
I want to create them easily

Background:
 Given I am on the homepage
 When I follow "Nieuws"

Scenario: Creating an Article
	When I follow "Nieuw Artikel" 
    	And I fill in "Titel" with "Geweldige Zaterdagmiddag!" 
    	And I fill in "Naam schrijver" with "Dirk Grandjean" 
    	And I fill in "Inhoud" with "Het was weer een mooi potje voetbal" 
    	And I press "Gaan met die banaan!" 
    	Then I should see "Een meesterwerk is geplaast, lekkur!"
        And I should see "Geweldige Zaterdagmiddag!"
        When I follow "Terug naar overzicht"
        And I follow "Geweldige Zaterdagmiddag!"
        And I follow "Eventjes wijzigen"
        And I fill in "Titel" with "Super Zaterdagmiddag!"
        And I press "Gaan met die banaan!"
        Then I should see "Slim, eventjes gewijzigd, stukken beter zo!"
        And I should see "Super Zaterdagmiddag!"
        When I follow "Terug naar overzicht"
        Then I should see "Super Zaterdagmiddag!"
        

