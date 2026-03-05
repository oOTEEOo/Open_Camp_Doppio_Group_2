*** Keywords ***
Add quantity    
    FOR    ${i}    IN RANGE    4
        Click    css=button[aria-label="Increase quantity button"]
    END

Verify add to cart successfully
    ${text}=    Get Text    css=p[class="rec-inline-message__body"]
    Should Be Equal As Strings    ${text}    Added to cart