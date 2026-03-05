*** Keywords ***
Go to expand color tab
    Browser.click       ${Filter_page_locator_color_btn} 
Click color brown
    Browser.click       ${Filter_page_locator_color_Brown_txt} 
Verify filter bar is visible
    Browser.Wait For elements state    ${Filter_page_locator_color_lbl}      visible    timeout=5 s

Verify Prodname is visible corectly
    [Arguments]    ${prodname}
    Browser.Get Text       ${Filter_page_locator_Prodname_txt}      ==    ${prodname}    timeout=5s  
verify prod prize in list page
    [Arguments]    ${prodprize}
     Browser.Get Text      ${Filter_page_locator_Prodprize_txt}     contains    ${prodprize}    timeout=5s  
verify prod describtion in list page 
    [Arguments]    ${proddescription}
    Browser.Get Text     ${Filter_page_locator_Proddes_txt}    contains    ${proddescription}    timeout=5s 
    
Verify fav button display
     Browser.Wait For Elements State      ${Filter_page_locator_fav_btn}        visible    timeout=5 s

Verify cart button badge display
    Browser.Wait For Elements State      ${Filter_page_locator_cart_txt}        visible    timeout=5 s

Click band of prod
    Browser.click        ${Filter_page_locator_brand_prod_img}