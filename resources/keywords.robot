*** Settings ***
Library    SeleniumLibrary
Resource   locators.robot

*** Keywords ***

Launch MoRent Website
    Open Browser    https://morent-car.archisacademy.com/    chrome
    Maximize Browser Window

Search Car With Valid Inputs
    Wait Until Element Is Visible    ${PICKUP_CITY_DROPDOWN}    10s
    sleep  5s
    Click Element    ${PICKUP_CITY_DROPDOWN}
    Wait Until Element Is Visible    ${PALAKKAD_OPTION}    10s
    Click Element    ${PALAKKAD_OPTION}

    Click Element    ${PICKUP_DATE_FIELD}
    Click Element    ${TODAY_PICKUP}

    Click Element    ${PICKUP_TIME_FIELD}
    Click Element    ${NOW_PICKUP}
    Sleep  2s
    Wait Until Element Is Visible  ${DROPOFF_CITY_DROPDOWN}  timeout=10s
    Sleep  5s
    Click Element    ${DROPOFF_CITY_DROPDOWN}
    Wait Until Element Is Visible    ${THRISSUR_OPTION}    10s
    Click Element    ${THRISSUR_OPTION}

    Click Element    ${DROPOFF_DATE_FIELD}
    Click Element    ${TODAY_DROPOFF}

    Click Element    ${DROPOFF_TIME_FIELD}
    Click Element    ${NOW_DROPOFF}

    Click Element    ${SEARCH_BUTTON}
    
Verify Search Results Loaded
    Wait Until Page Contains Element    xpath=//h3[normalize-space()='Koenigsegg']    15s
    
    # Verify car name
    Element Should Be Visible           xpath=//h3[normalize-space()='Koenigsegg']

    # Verify car image
    Element Should Be Visible           xpath=//h3[normalize-space()='Koenigsegg']/ancestor::div[contains(@class,'card')]//img

    # Verify Rent/Book button
    Element Should Be Visible           xpath=//h3[normalize-space()='Koenigsegg']/ancestor::div[contains(@class,'card')]//button

Close Browser Session
    Close Browser
