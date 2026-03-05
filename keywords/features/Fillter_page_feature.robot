*** Keywords ***
Go to brown sofa and verify prod
     [Arguments]    ${prodname}    ${prodprize}    ${proddescription}
    Go to expand color tab
    Click color brown
    Verify filter bar is visible
    Verify Prodname is visible corectly    ${prodname}
    verify prod prize in list page        ${prodprize} 
    verify prod describtion in list page     ${proddescription}
    Verify fav button display
    Verify cart button badge display
    Click band of prod