*** Settings ***
Documentation     Car Search automation test
Resource          ../../resources/keywords.robot


*** Test Cases ***
Verify Car Search Functionality With Valid Inputs
    [Documentation]    Verify user can search cars using valid pickup and drop details
    [Tags]    search

    Open Browser    https://morent-car.archisacademy.com/    chrome
    Maximize Browser Window

    Search Car With Valid Inputs

    Verify Search Results Loaded

    Close Browser Session
