*** Settings ***
Documentation     Template for Search tests
Resource          ../../resources/keywords.robot


Test Setup    Launch MoRent Website
Suite Teardown   Close Browser Session
*** Test Cases ***
Search Test Template
    [Documentation]    Verify car search using valid inputs
    [Tags]    search

    Search Car With Valid Inputs

    Verify Search Results Loaded

    

    
