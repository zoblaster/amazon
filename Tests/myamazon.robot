*** Settings ***
Documentation  This is some basic info about whole suite
Library  SeleniumLibrary



*** Test Cases ***
Userm must sign in to check out
    [Documentation]  Some basic info about test
    [Tags]  Smoke
    Open Browser  http:\\www.amazon.com  chrome
    Wait Until Page Contains  Amazon.com
    Input Text  //*[@id="twotabsearchtextbox"]  Ferrari 458
    Click Button  //*[@id="nav-search-submit-button"]
    Wait Until Page Contains  results for "Ferrari 458"
    Click Element   //*[@id="a-autoid-0-announce"]/span[2]
    Click Element  //*[@id="s-result-sort-select_4"]
    Click Element  //*[@id="nav-orders"]/span[2]
    Input Text   //*[@id="ap_email"]  dinko.frankic@gmail.com
    Click Button  //*[@id="continue"]
    Input Text  //*[@id="ap_password"]  Hajduk5
    Click Button  //*[@id="signInSubmit"]
    Set Selenium Timeout  3s
    Close Browser

