*** Settings ***
Documentation     Template for partial tests
Resource          ../../resources/keywords.robot


Test Setup    Launch MoRent Website
Suite Teardown   Close Browser Session

*** Test Cases ***

Search With All Fields Empty
    [Documentation]    Verify validation when search is clicked without entering any inputs
    Click Search Button
    Verify Validation Message Displayed  expected_text=Pickup Date and Dropoff Date is mandatory
    Verify User Stays On Home Page
    
Search With Only Pickup Location
    [Documentation]    Verify validation when only pickup location is entered
    Select Pickup Location Only
    Click Search Button
    Verify Validation Message Displayed  expected_text=Pickup Date and Dropoff Date is mandatory


Search With Locations But No Dates
    [Documentation]    Verify validation when locations selected but dates missing
    Select Pickup And Drop Locations
    Click Search Button
    Verify Validation Message Displayed  expected_text=Pickup Date and Dropoff Date is mandatory


Search With Dates But No Locations
    [Documentation]    Verify search works with only dates and shows no cars message
    Select Dates Only
    Click Search Button
    Wait Until Page Contains  No Cars Found  10s
    Page Should Contain  text=No Cars Found



