*** Keywords ***
Test search Prod main page
    [Arguments]    ${prodname}
    Browser.fill text    ${Prod_main_locator_searhbox_txt}       ${prodname}
    Browser.click        ${Prod_main_locator_Search_btn}

Get Product Detail
    Browser.Get Text    ${Prod_main_locator_Product_Detail}

Click product
    Browser.Click    ${Prod_main_locator_Product}

