*** Settings ***
Resource    ../../resources/locators/login_locator.robot

*** Keywords ***

Input email
    [Arguments]              ${email}
    Browser.Fill Text        ${txt_login_email}    ${email}

Input password
    [Arguments]              ${password}
    Browser.Fill Text        ${txt_login_password}      ${password}

Click login button
    Browser.Click            ${btn_login}