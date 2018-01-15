Feature: Registration action

Background: 
	Given user is on the registration form

Scenario: user registers with valid data
	When user enters a 60 characters email address not registered before into the email field
	And user enters 60 characters password into the password field
	And user fills in all the required fields
	Then user should be registered
	And a confirmation message/link should be sent to the specified email address

Scenario:  user registers with an email address and password with more than 60 characters
	When user enters a 61 characters email address into the email field
	And user enters 61 characters password into the password field
	Then user should see a text notifications about the email and password not being valid
	And the registration should not be possible