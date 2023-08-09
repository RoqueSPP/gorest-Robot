*** Settings ***
Documentation    este metodo faz um get na api
Resource        ../Resources/main.robot

*** Keywords ***

Get Api test
  ${HEADER}    Json Header
  ${RESPONSE}   Get    ${URL}    headers=${HEADER}

  Log To Console    ${RESPONSE.json()}[7][name]
  Status Should Be    200
  Log To Console    ${RESPONSE}\[status]