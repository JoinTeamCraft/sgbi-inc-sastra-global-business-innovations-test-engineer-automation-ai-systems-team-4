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
    Close All Browsers

Click Search Button
    Wait Until Element Is Visible    ${SEARCH_BUTTON}    10s
    Click Element    ${SEARCH_BUTTON}
    Sleep  2s

Verify Validation Message Displayed
    [Documentation]    Verify red validation alert is displayed for missing inputs
    [Arguments]    ${expected_text}
    Wait Until Element Is Visible  ${VALID_ALERT}  10S
    Element Should Be Visible        ${VALID_ALERT}
    Element Should Contain  ${VALID_ALERT}  ${expected_text}
    Page Should Not Contain  ${VERIFY_CAR_CARD}

Verify User Stays On Home Page
    [Documentation]    Verify the user location is on home page
    Location Should Be   https://morent-car.archisacademy.com/ 

Select Pickup Location Only
    [Documentation]    Verify the partially filled pickup location
    Wait Until Element Is Visible  ${PICKUP_CITY_DROPDOWN}  10s
    Sleep  3s
    Click Element    ${PICKUP_CITY_DROPDOWN}
    Wait Until Element Is Visible  ${PALAKKAD_OPTION}  10s
    Click Element    ${PALAKKAD_OPTION}

Select Pickup And Drop Locations
    [Documentation]    Verify the partially filled pickup and drop location
    Wait Until Element Is Visible  ${PICKUP_CITY_DROPDOWN}  10s
    Sleep  3s
    Click Element    ${PICKUP_CITY_DROPDOWN}
    Wait Until Element Is Visible  ${PALAKKAD_OPTION}  10s
    Click Element    ${PALAKKAD_OPTION}
    Wait Until Element Is Visible  ${DROPOFF_CITY_DROPDOWN}  10s
    Sleep  3s
    Click Element    ${DROPOFF_CITY_DROPDOWN}
    Wait Until Element Is Visible  ${THRISSUR_OPTION}  10s
    Click Element    ${THRISSUR_OPTION}

Select Dates Only
    [Documentation]    Search With partially filled pickup and dropoff Date
    Wait Until Element Is Visible  ${PICKUP_DATE_FIELD}  10s
    Sleep  2s
    Click Element    ${PICKUP_DATE_FIELD}
    Wait Until Element Is Visible  ${TODAY_PICKUP}  10s
    Sleep  2s
    Click Element    ${TODAY_PICKUP}
    Wait Until Element Is Visible  ${DROPOFF_DATE_FIELD}  10s
    Sleep  2s
    Click Element    ${DROPOFF_DATE_FIELD}
    Wait Until Element Is Visible  ${TODAY_DROPOFF}  10s
    Sleep  2s
    Click Element    ${TODAY_DROPOFF}




