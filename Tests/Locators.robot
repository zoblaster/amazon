*** Settings ***
Library   SelemiumLibrary

*** Test Cases ***
Searching for product on Amazon
        Open Browser  http:\\www.amazon.com  chrome
        Sleep  3s
        Input text  id=twotabsearchtextbox  ferrari 458
        Sleep  3s
        Click Button  css=#nav-search-submit-button

