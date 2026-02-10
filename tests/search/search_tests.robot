*** Settings ***
Documentation     Template for Search tests
Resource          ../../resources/keywords.robot
Resource          ../../resources/locators.robot


Suite Setup    Launch MoRent Website
Suite Teardown   Close Browser Session
*** Test Cases ***
Search Test Template
    [Documentation]    Placeholder for search test
    [Tags]    search
    Log    Implement search test here

    Search Car With Valid Inputs

    Verify Search Results Loaded

    Close Browser Session
