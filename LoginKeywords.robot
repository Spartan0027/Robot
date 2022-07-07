*** Settings ***
Library          SeleniumLibrary
Variables        ../PageObjects/Locators.py

*** Keywords ***
open my browser
    [Arguments]    ${siteurl}   ${browser}
    open browser    ${siteurl}   ${browser}
    maximize browser window

Enter username
    [Arguments]       ${username}
    input text      ${txt_loginUserName}        ${username}

Enter password
    [Arguments]     ${password}
    input text      ${txt_LoginPassword}    ${password}

Click Submit
    click button    ${btn_submit}

Click pull request
    click element       ${btn1_element}
#    IF
#    page should contain    No results matched your search.
Click search
    click element       ${btn2_element}
Enter text
    [Arguments]    ${text}
    input text    ${txt_search}     ${text}

#    select radio button     tripType     oneWay
#Click
#    click element   ${clk}

#Select options     ${Name}     ${value}
#    select radio button     tripType     oneway
#    select from list by value    ${value2}
#    select from list by value    ${value3}
#    select from list by value    ${value4}
#    select from list by value    ${value5}
#Verify Successful Login
#    page should contain    Login Successfully

Close my browser
    close all browsers

