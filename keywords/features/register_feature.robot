*** Keywords ***
Register account
    [Arguments]        ${firstname}     ${lastname}     ${email}    ${password} 
    register_page.Input fullname   ${firstname}  
    register_page.Input mobile phone  ${lastname}  
    register_page.Input email   ${email}
    register_page.Input password  ${password}
