*** Settings ***
Library              Selenium2Library
Resource             keywords.robot
Variables	         data.yaml        
# Test Template         Search with return data
Suite Teardown        close all browsers 
Test Teardown         close browser  

*** Test Cases ***
Search Successful    [Template]    Search with return data
                                    ${TC_TMX_02768}
                                    ${TC_TMX_02769}
                                    ${TC_TMX_02770}

# *** Test Cases ***                                                     SEARCH_TEXT
# TC_TMX_02767 : search with partial username or name                    ${TC_TMX_02767}
# TC_TMX_02768 : searching with existing Username                        ${TC_TMX_02768}
# TC_TMX_02769 : searching with column : Name                            ${TC_TMX_02769}
# TC_TMX_02770 : search feature with non existing name or username       ${TC_TMX_02770}