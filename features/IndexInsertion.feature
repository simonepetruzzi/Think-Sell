Feature: Receive a list of all insertions
Scenario: IndexInsertion
	Given I am on the ThinkSell home page
	When I follow "Mostra Inserzioni"
	Then I should be on the ThinkSell insertion page

