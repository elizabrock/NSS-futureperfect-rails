Feature: User views list of projects

	Scenario:
		Given "bob@example.com" has the following projects:
			| name   |
			| Baz    |
			| Hockey |
		And I am logged in
		And I have the following projects:
			| name   |
			| Foo    |
			| Bar    |
			| Grille |
		When I go to the projects page
		Then I should see the following list:
			| Foo    |
			| Bar    |
			| Grille |
		And I should not see any of the following:
			| Baz    |
			| Hockey |
