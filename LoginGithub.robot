*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot


*** Variables ***
${browser}      chrome
${siteurl}      https://github.com/login

${user}     Spartan0027
${pwd}      Lkjlkj@12345
${text}     Basic Github

*** Test Cases ***
Login Test
    open my browser     ${siteurl}    ${browser}
    Enter username    ${user}
    Enter password    ${pwd}
    Click Submit
#    Verify Successful Login
#    Click pull request
#    Click search
    Enter text      ${text}
    Sleep   5
#    Click flight link
#    Click
#    handle alert
#    Select options

#    close my browser
