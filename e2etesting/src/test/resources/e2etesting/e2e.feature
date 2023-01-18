Feature: E2e

  Scenario: Successful open elephant
    Given open page "http://localhost:7000/"
    Then Current page changed to "http://localhost:7000/login"
    Then close browser

  Scenario: SingUp not auth user
    Given open page "http://localhost:7000/registration"
    Then Input login "polkamarka@gmail.com"
    Then Input password "Qwerty123?"
    Then Input conformation "Qwerty123?"
    Then Click "Sign up" button
    Then close browser

  Scenario: Login not auth user
    Given open page "http://localhost:7000/login"
    Then Input login "polkamarka@gmail.com"
    Then Input password "Qwerty123?"
    Then Click "Sign in" button
    Then Current page changed to "http://localhost:7000/home"
    Then close browser

  Scenario: Login not auth user 2
    Given open page "http://localhost:7000/login"
    Then Input login "polkamarka@gmail.com"
    Then Input password "Qwerty123?"
    Then Click "Sign in" button
    Then Current page changed to "http://localhost:7000/home"
    And text "Hi, newcomer!" is visible
    Then close browser

  Scenario: open not auth profile
    Given open page "http://localhost:7000/login"
    Then Input login "polkamarka@gmail.com"
    Then Input password "Qwerty123?"
    Then Click "Sign in" button
    Then Click "polkamarka@gmail.com" button a
    Then Current page changed to "http://localhost:7000/profile"
    Then close browser

#    Через доступ до БД змінюємо роль на Basic

  Scenario: login basic user
    Given open page "http://localhost:7000/login"
    Then Input login "polkamarka@gmail.com"
    Then Input password "Qwerty123?"
    Then Click "Sign in" button
    Then Click "polkamarka@gmail.com" button a
    Then Current page changed to "http://localhost:7000/profile"
    And button "It's your" visible
    Then close browser

  Scenario: open basic profile
    Given open page "http://localhost:7000/login"
    Then Input login "polkamarka@gmail.com"
    Then Input password "Qwerty123?"
    Then Click "Sign in" button
    Then Click "polkamarka@gmail.com" button a
    Then Current page changed to "http://localhost:7000/profile"
    Then close browser

  Scenario: Create DB
    Given open page "http://localhost:7000/login"
    Then Input login "polkamarka@gmail.com"
    Then Input password "Qwerty123?"
    Then Click "Sign in" button
    And Current page changed to "http://localhost:7000/home"
    Then Click "Create new database" button
    And Current page changed to "http://localhost:7000/database"
    And text "500" is visible
    Then close browser
    # Тест з помилкою бо база даних не створюється (інші вимоги пов'язані з БД не будуть протестовані)

  Scenario: check basic limits
    Given open page "http://localhost:7000/login"
    Then Input login "polkamarka@gmail.com"
    Then Input password "Qwerty123?"
    Then Click "Sign in" button
    Then Click " Dashboard " button a
    Then Message small "created from 2 in your plan"
    Then close browser


#    Через доступ до БД змінюємо роль на Pro
  Scenario: login pro user
    Given open page "http://localhost:7000/login"
    Then Input login "polkamarka@gmail.com"
    Then Input password "Qwerty123?"
    Then Click "Sign in" button
    Then Click "polkamarka@gmail.com" button a
    Then Current page changed to "http://localhost:7000/profile"
    And button "It's your" visible
    Then close browser

  Scenario: open pro profile
    Given open page "http://localhost:7000/login"
    Then Input login "polkamarka@gmail.com"
    Then Input password "Qwerty123?"
    Then Click "Sign in" button
    Then Click "polkamarka@gmail.com" button a
    Then Current page changed to "http://localhost:7000/profile"
    Then close browser

  Scenario: check pro limits
    Given open page "http://localhost:7000/login"
    Then Input login "polkamarka@gmail.com"
    Then Input password "Qwerty123?"
    Then Click "Sign in" button
    Then Click " Dashboard " button a
    Then Message small "created from 3 in your plan"
    Then close browser

#    Через доступ до БД змінюємо роль на Admin
  Scenario: login admin user
    Given open page "http://localhost:7000/login"
    Then Input login "polkamarka@gmail.com"
    Then Input password "Qwerty123?"
    Then Click "Sign in" button
    Then Click "polkamarka@gmail.com" button a
    Then Current page changed to "http://localhost:7000/profile"
    Then close browser

  Scenario: open admin profile
    Given open page "http://localhost:7000/login"
    Then Input login "polkamarka@gmail.com"
    Then Input password "Qwerty123?"
    Then Click "Sign in" button
    Then Click "polkamarka@gmail.com" button a
    Then Current page changed to "http://localhost:7000/profile"
    Then close browser

  Scenario: check admin limits
    Given open page "http://localhost:7000/login"
    Then Input login "polkamarka@gmail.com"
    Then Input password "Qwerty123?"
    Then Click "Sign in" button
    Then Click " Dashboard " button a
    Then Message small "created from 100 in your plan"
    Then close browser

  Scenario: SingUp duplicate
    Given open page "http://localhost:7000/registration"
    Then Input login "polkamarka@gmail.com"
    Then Input password "Qwerty123?"
    Then Input conformation "Qwerty123?"
    Then Click "Sign up" button
    Then Error is visible
    Then close browser

  Scenario: Forgot password
    Given open page "http://localhost:7000/login"
    Then Click "Forgot password?" button a
    Then Current page changed to "http://localhost:7000/login/reset-password"
    Then Input email "polkamarka@gmail.com"
    And Click "Send link for password recovery" button
    And text "500" is visible
    Then close browser

  Scenario: Re-generate API key
    Given open page "http://localhost:7000/login"
    And Input login "polkamarka@gmail.com"
    And Input password "Qwerty123?"
    Then Click "Sign in" button
    Then open page "http://localhost:7000/profile"
    And Current page changed to "http://localhost:7000/profile"
    Then Click "Re-generate" button
    And Message "API keys was reset successful"
    Then close browser

  Scenario: Change bd pass
    Given open page "http://localhost:7000/login"
    And Input login "polkamarka@gmail.com"
    And Input password "Qwerty123?"
    Then Click "Sign in" button
    Then open page "http://localhost:7000/profile"
    And Current page changed to "http://localhost:7000/profile"
    Then Click change bd pass button
    And Message "DB user password was changed"
    Then close browser

  Scenario: Upgrade user
    Given open page "http://localhost:7000/login"
    And Input login "polkamarka@gmail.com"
    And Input password "Qwerty123?"
    Then Click "Sign in" button
    Then open page "http://localhost:7000/profile"
    And Current page changed to "http://localhost:7000/profile"
    Then Click "Upgrade" button
    Then button "It's your" visible
    Then close browser

  Scenario: Delete user
    Given open page "http://localhost:7000/login"
    And Input login "polkamarka@gmail.com"
    And Input password "Qwerty123?"
    Then Click "Sign in" button
    Then open page "http://localhost:7000/profile"
    And Current page changed to "http://localhost:7000/profile"
    Then Click "Delete Account" button
    Then Error is visible
    And Click "Delete" button
    Then Current page changed to "http://localhost:7000/login"
    And Message "Account has been deleted"
    Then close browser