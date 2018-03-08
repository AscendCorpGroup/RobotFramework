*** Settings ***
Library              Selenium2Library
Library              Dialogs
Variables            data.yaml

*** Keywords ***
Search with return data
    [Arguments]    ${search_text}
    pause execution    your text is ${search_text}
    
Search without return data
    [Arguments]    ${search_text}
    pause execution    fucking ${search_text}    
    