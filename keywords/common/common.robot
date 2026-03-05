*** Keywords ***
Open training website
    Browser.New browser     chromium      headless=${FALSE}
    Browser.New page        https://www.ikea.com/th