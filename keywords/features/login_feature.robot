*** Keywords ***
Login with username and password
    [Arguments]     ${email}     ${password}
    login_page.Input email       ${email}
    login_page.Input password       ${password}
    login_page.Click login button

