*** Settings ***
Resource    ../../resources/locators/login_locator.robot

*** Keywords ***

Input email login
    [Arguments]              ${email}
    Browser.Fill Text        ${txt_login_email}    ${email}

Input password login
    [Arguments]              ${password}
    Browser.Fill Text        ${txt_login_password}      ${password}

Click login button
    Browser.Click            ${btn_login}