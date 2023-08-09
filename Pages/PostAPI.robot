*** Settings ***
Documentation    este metodo faz um Post na api 
Resource        ../Resources/main.robot

*** Keywords ***

Post Api test
  ${HEADER}    Json Header
  ${BODY}    Json Body
  ${RESPONSE}   POST    ${URL}  headers=${HEADER}  json=${BODY}

  Log To Console    ${RESPONSE.json()}
  ${ID}    Set Variable    ${RESPONSE.json()}[id]
  Set Suite Variable    ${ID}
  Status Should Be    201