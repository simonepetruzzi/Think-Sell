Feature: User successfully logs in
Scenario: UserLogin
	Given I am a new user
	Given I am on the ThinkSell home page
	When I follow "Sign In"
	Then I should be on the ThinkSell login page
	When I fill in "email" with "simonepetruzzi@admin.it"
	And I fill in "Password" with "Password"
	And I press "Log In"
	Then I should be on the ThinkSell login page
	
