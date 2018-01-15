Feature: authenticate to the application to see the account details

Background: 
	Given user is registered
	And user is on the authentication form

	Scenario: authentication form
		When user is on the authentication form
		Then user should see "login" field and "password" field
	
	Scenario: authentication when registered
		When user enters valid credentials
		Then user is authenticated
		
	Scenario outline: login field validation
		When user enters <email> to the "login" field
		Then should see <validation_message>
		
		Examples:
		email                          | validation_message
		valid email < 60 characters    | relevant validation message
		valid email with 60 characters | relevant validation message
		valid email > 60 characters    | relevant validation message
		invalid email                  | relevant validation message 
		NULL                           | relevant validation message
		
	Scenario outline: unsuccessful authentication message
		When user enters <email> to the "login" field
		And user enters <password> to the "password" field
		Then user should see a <message>

		Examples:
		email              | password           | message
		registered email   | incorrect password | "Authentication failed. Login or password are incorrect"
		incorrect email    | correct password   | "Authentication failed. Login or password are incorrect"
		unregistered email | incorrect password | "Authentication failed. Login or password are incorrect"
		unregistered email | correct password   | "Authentication failed. Login or password are incorrect"

		
	Scenario: account details view
		When user enters valid login into the "login" field
		And user enters valid password into the "password" field
		Then user should be able to see the following account details data:
		name|surname|email_address|mailing_address|

