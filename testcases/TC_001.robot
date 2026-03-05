*** Settings ***
Resource       ${CURDIR}/../resources/import.robot

*** Test Cases ***
TC01 cannot login with empty username
    common.Open ikea website
    #  IF '${LANG}' == 'th'
    #     Click   ${btn_language_switch}
    #  END
      
    Wait For Elements State    ${btn_accept_all_cookies}    visible    timeout=10s
    accepted_all_cookies_page.Click accept all cookies button
        # home_page.Click Profile Button
    home_page.Click profile button
    Input email           ${tc01_invalid_login_with_incorrect_email_format.email}
    Input password        ${tc01_invalid_login_with_incorrect_email_format.password}
    Click login button
    
    get text   span[class*="helper-text--error"]   ==   ${login_incorrect_email_message}
          

TC02 invalid_login:
    common.Open ikea website
      
    Wait For Elements State    ${btn_accept_all_cookies}    visible    timeout=10s
    ${is_displayed}    accepted_all_cookies_page.Verify accept all cookies button is displayed
    IF    ${is_displayed}
        Click Accept All Cookies Button
    END
        # home_page.Click Profile Button
    home_page.Click profile button
    Input email           ${tc02_invalid_login.email}
    Input password        ${tc02_invalid_login.password}
    Click login button

    get text   p[class*="prefix-inline-message__body"]  ==   ${login_invalid_credentials}


TC03 There was a problem signing in:
    common.Open ikea website
      
    Wait For Elements State    ${btn_accept_all_cookies}    visible    timeout=10s
    accepted_all_cookies_page.Click accept all cookies button
        # home_page.Click Profile Button
    home_page.Click profile button
    Input email           ${tc03_login_error_occured.email}
    Input password        ${tc03_login_error_occured.password}
    Click login button
    
    get text   h6[class*="message__title"]   ==   ${login_error_occured_1}
    get text   p[class*="message__body"]   ==   ${login_error_occured_2}
