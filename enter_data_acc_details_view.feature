Feature: enter data on the account details view

Scenario: user enters the data into the fields
	Given user is logged in
	And user is on the account details view
	When user enters into the fields the folowing data:
	 | name | surname | email_address | mailing_address |
	And user submits the form
	Then the data should be saved in the database
	And user should be able to see the data on the account details view	