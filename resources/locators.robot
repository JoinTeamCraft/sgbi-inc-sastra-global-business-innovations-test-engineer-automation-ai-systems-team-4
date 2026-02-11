*** Settings ***
Documentation     Template for common locators
Library           SeleniumLibrary

*** Variables ***

# Pickup
${PICKUP_CITY_DROPDOWN}     (//span[@title='Select you City'][normalize-space()='Select you City'])[1]
${PALAKKAD_OPTION}          //div[contains(text(),'Palakkad')]

${PICKUP_DATE_FIELD}        (//input[@placeholder='Select date'])[1]
${TODAY_PICKUP}             (//a[@class='ant-picker-now-btn'][normalize-space()='Today'])[1]

${PICKUP_TIME_FIELD}        (//input[@placeholder='Select time'])[1]
${NOW_PICKUP}               (//a[@class='ant-picker-now-btn'][normalize-space()='Now'])[1]

# Dropoff
${DROPOFF_CITY_DROPDOWN}    //body[1]/div[1]/main[1]/section[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/span[1]/span[2]
${THRISSUR_OPTION}          (//div[@class='ant-select-item-option-content'][normalize-space()='Thrissur'])[2]

${DROPOFF_DATE_FIELD}       (//input[@placeholder='Select date'])[2]
${TODAY_DROPOFF}            (//a[@class='ant-picker-now-btn'][normalize-space()='Today'])[2]

${DROPOFF_TIME_FIELD}       (//input[@placeholder='Select time'])[2]
${NOW_DROPOFF}              (//a[@class='ant-picker-now-btn'][normalize-space()='Now'])[2]

# Search
${SEARCH_BUTTON}            //span[normalize-space()='Search']

