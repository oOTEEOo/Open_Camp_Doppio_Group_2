*** Keywords ***
Click create account button          
    Browser.Click           selector=${btn_create_account} 

Input fullname
    [Arguments]     ${firstname}
    Browser.Fill text           selector=${txt_firstname}        txt=${firstname}

Input mobile phone
    [Arguments]     ${lastname}
    Browser.Fill text           selector=${txt_lastname}        txt=${lastname}

Input email
    [Arguments]     ${email}
    Browser.Fill text           selector=${txt_email}        txt=${email}

Input password
    [Arguments]     ${password}
    Browser.Fill text           selector=${txt_password}        txt=${password}

Check checkbox 
    Browser.Check checkbox         selector=${chk_policy}

Check uncheckbox
    Browser.Uncheck checkbox       selector=${chk_policy}

Click signup button
    Browser.Click           selector=${btn_signup}

Verify msg firstname
    Browser.Get text   ${lbl_alert_firstname}  ==  ${alert.firstname}

Verify msg lastname
    Browser.Get text     ${lbl_alert_lastname}  ==  ${alert.lastname}

Verify msg email
    Browser.Get text      ${lbl_alert_email}  ==  ${alert.email}

Verify msg password
    Browser.Get text     ${lbl_alert_password}  ==  ${alert.password}

Verify msg policy
    Browser.Get text      ${lbl_alert_policy}  ==  ${alert.policy}
    