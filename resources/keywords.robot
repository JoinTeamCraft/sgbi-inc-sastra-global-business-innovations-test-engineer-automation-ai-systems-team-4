*** Settings ***
Documentation     Template for reusable keywords
Library           SeleniumLibrary
Resource          locators.robot

*** Keywords ***


Launch MoRent Website
    [Documentation]    Open MoRent website and wait until home page loads
    Open Browser    https://morent-car.archisacademy.com/    chrome
    Maximize Browser Window

Search Car With Valid Inputs
    [Documentation]    Search cars using valid pickup, drop location, date and time
    Wait Until Element Is Visible    ${PICKUP_CITY_DROPDOWN}    10s
    Click Element    ${PICKUP_CITY_DROPDOWN}
    Wait Until Element Is Visible    ${PALAKKAD_OPTION}    15s
    Click Element    ${PALAKKAD_OPTION}

    Click Element    ${PICKUP_DATE_FIELD}
    Click Element    ${TODAY_PICKUP}

    Click Element    ${PICKUP_TIME_FIELD}
    Click Element    ${NOW_PICKUP}
    
    Wait Until Element Is Visible  ${DROPOFF_CITY_DROPDOWN}  timeout=10s
    Click Element    ${DROPOFF_CITY_DROPDOWN}
    Wait Until Element Is Visible    ${THRISSUR_OPTION}    10s
    Click Element    ${THRISSUR_OPTION}

    Click Element    ${DROPOFF_DATE_FIELD}
    Click Element    ${TODAY_DROPOFF}

    Click Element    ${DROPOFF_TIME_FIELD}
    Click Element    ${NOW_DROPOFF}

    Click Element    ${SEARCH_BUTTON}
    
Verify Search Results Loaded
    [Documentation]    Verify that search results page loads and at least one car card is displayed

    # Wait for any car result card
    Wait Until Element Is Visible    ${VERIFY_CAR_CARD} 

    # Verify at least one car name present
    Element Should Be Visible    ${VERIFY_CAR_TITLE} 

    # Verify car image present
    Element Should Be Visible    ${VERIFY_CAR_IMAGE}

    # Verify Rent/Book button present
    Element Should Be Visible    ${VERIFY_RENT_BUTTON}  

Close Browser Session
    [Documentation]    Close browser after execution
    Close Browser

    



