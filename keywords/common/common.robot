*** Keywords ***
Open Prod main page
    Browser.New Browser    chromium    ${FALSE}
    Browser.New Context
    Browser.New Page    ${URL}

Click Cookies
    Browser.Click    ${btn_cookies}