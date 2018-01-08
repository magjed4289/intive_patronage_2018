Feature: visit account details view

Scenario: visit account details view while not being logged in
    Given user is not logged in
	When user is on Home view
	Then user should be asked to register or sign in to continue
	And user should not be able to see the account details view

Scenario: visit account details view while being logged in
	Given user is logged in
	And user account details data is saved
	When user navigates to the account details view
	Then user should be able to see the following account details data:
	 | name | surname | email_address | mailing_address |