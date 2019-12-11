Feature: User can sign up
   As a user,
   In order to be able to finalize an order
   I would like to be able to register an account

    Background:
        Given the following user exist:
            | name   | email          | password  |
            | user1  | user@email.com | password  |

        Given I am on the landing page
        And I click on "Sign up"

Scenario: Successfully creates an account
        And I fill in "Email" with "bob@bob.bob"
        And I fill in "Password" with "bobbobbob"
        And I fill in "Password confirmation" with "bobbobbob"
        And I click on "Create"
        Then I should be on the landing page
        And I should see "Welcome! You have signed up successfully."
        
