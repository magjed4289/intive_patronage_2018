# intive_patronage_2018

User story: As a regular user I want to be able to authenticate to the application so that I can see my account details

AC1. only registered users can authenticate to the application
AC2. authentication form contains two fields: login and password
AC3. login field validation: valid email address, up to 60 characters (app displays relevant validation messages)
AC3. error message "Authentication failed. Login or password are incorrect." is displayed if authentication process failed (incorrect login, password or user is not registered)
AC4. authenticated user can see account details view:
	- name
	- surname
	- email address
	- mailing address