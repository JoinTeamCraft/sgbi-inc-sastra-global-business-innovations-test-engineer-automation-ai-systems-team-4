*** Settings ***
Documentation     Template for Search tests
Resource          ../../resources/keywords.robot
<<<<<<< Updated upstream
Resource          ../../resources/locators.robot

=======

Suite Setup    Launch MoRent Website
Suite Teardown   Close Browser Session
>>>>>>> Stashed changes
*** Test Cases ***
Search Test Template
    [Documentation]    Placeholder for search test
    [Tags]    search
<<<<<<< Updated upstream
    Log    Implement search test here
=======

    Search Car With Valid Inputs

    Verify Search Results Loaded

    Close Browser Session
>>>>>>> Stashed changes
