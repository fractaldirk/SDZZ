Feature: Creating projects
In order to create a post 
As a user 
I want to create them easily

Secenario: Creating a post 
	Given I am on the homepage 
    	When I follow "Nieuw Artikel" 
    	And I fill in "title" with "Geweldige Zaterdagmiddag!" 
    	And I fill in "name" with "Dirk Grandjean" 
    	And I fill in "content" with "Het was weer een mooi potje voetbal" 
    	And I press "Gaan met die banaan!" 
    	Then I should see "Een meesterwerk is geplaast, lekkur!"


