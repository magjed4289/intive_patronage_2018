Feature: Login to application

Background: 
	Given user is on the login view

Scenario: Login as user with valid account
	When user fills in the fields with the valid credentials:
	 | email | password |
	And clicks the "Log in/Sign In" button
	Then the system signs user in
	
Scenario: Login with incorrect email address
	When user enters the incorrect email into the email field
	And user enters the correct password field
	And user clicks the "Log in" button
	Then user should see the message "Authentication failed. Login or password are incorrect."
	And user should not be able to login
	
Scenario: Login with incorrect password
	When user enters the correct email into the email field
	And user enters the incorrect password into the password field
	And user clicks the "Log in" button
	Then user should see the message "Authentication failed. Login or password are incorrect."
	And user should not be able to login