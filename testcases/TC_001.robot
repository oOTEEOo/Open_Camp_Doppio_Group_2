*** Settings ***
Resource    ../resources/import.robot


*** Test Cases ***
TC_IKEA_004 Verify user can add product successfully
    common.Open Prod main page
    cookie_policy_page.Click cookie_policy button 
    Prod_main_page.Test search Prod main page       ${TC04.item}
    Prod_main_page.Click product
    Prod_main_page.Get Product Detail
    product_detail_feature.Add quantity
    
    product_detail_page.Add to cart button
    product_detail_feature.Verify add to cart successfully
    product_detail_page.Click go back to shopping

    Close Browser



# IKEA_001
#     common.Open training website
#     top_bar_page.Click account button
IKEA_002
    common.Open Prod main page
    cookie_policy_page.Click cookie_policy button 
    top_bar_page.Click account button
    register_page.Click create account button
    #register_feature.Register account  ${IKEA_002.firstname}  ${IKEA_002.lastname}   ${IKEA_002.email}  ${IKEA_002.password} 
    register_page.Check checkbox 
    register_page.Check uncheckbox
    register_page.Click signup button
    register_page.Verify msg firstname  
    register_page.Verify msg lastname 
    register_page.Verify msg email 
    register_page.Verify msg password
    register_page.Verify msg policy
    #debug

#----------------------------------------------------------------------
# Login Test Cases: Invalid login with empty username, invalid login, login error occured
TC01 cannot login with empty username
    common.Open Prod main page
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
    common.Open Prod main page
      
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
    common.Open Prod main page
      
    Wait For Elements State    ${btn_accept_all_cookies}    visible    timeout=10s
    accepted_all_cookies_page.Click accept all cookies button
        # home_page.Click Profile Button
    home_page.Click profile button
    Input email           ${tc03_login_error_occured.email}
    Input password        ${tc03_login_error_occured.password}
    Click login button
    
    get text   h6[class*="message__title"]   ==   ${login_error_occured_1}
    get text   p[class*="message__body"]   ==   ${login_error_occured_2}

