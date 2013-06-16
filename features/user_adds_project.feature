Feature: User adds project

	Scenario: Happy Path
		Given I am logged in
		And I have the following projects:
			| name         |
			| Yodel        |
			| Triage Email |
		When I go to the projects page
		And I fill in "Project Name" with "Practice German"
		And I press "Add Project"
		Then I should see "Practice German has been added to your project list"
		And I should see the following list:
			| Yodel           |
			| Triage Email    |
			| Practice German |

	Scenario: Duplicate Name
		Given I am logged in
		And I have the following projects:
			| name         |
			| Yodel        |
			| Triage Email |
		When I go to the projects page
		And I fill in "Project Name" with "Triage Email"
		And I press "Add Project"
		Then I should see "Name must be unique"

	Scenario: Blank Name
		Given I am logged in
		When I go to the projects page
		And I fill in "Project Name" with ""
		And I press "Add Project"
		Then I should see "Name can't be blank"
