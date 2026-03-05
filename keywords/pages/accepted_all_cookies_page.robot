*** Keywords ***
Click accept all cookies button
    Browser.Click           ${btn_accept_all_cookies}

Verify accept all cookies button is displayed
    ${is_verify}    Get Element States    ${btn_accept_all_cookies}    contains    visible
    RETURN    ${is_verify}