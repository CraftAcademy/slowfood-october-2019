Feature: User can navigate the site
   As a visitor,
   In order to navigate the site
   I would like to use a navbar

   Background: 
      Given I am on the landing page

   Scenario: Can see navbar
      Then I should see "Signup"
      And I should see "Login"
      And I should see "Menu"
      And I should see "GRETA'S GREENS"