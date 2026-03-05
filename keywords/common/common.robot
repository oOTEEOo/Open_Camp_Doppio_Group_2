*** Keywords ***

Open ikea website
    Browser.New Browser    chromium    headless=false
    Browser.New Context
    Browser.New Page       https://www.ikea.com/th/en