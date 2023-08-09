*** Settings ***
Documentation    este metodo faz um get na api para buscar usuario
Resource        ../Resources/main.robot

*** Variables ***
${ID}

*** Keywords ***

Get Api test User
  ${HEADER}    Json Header
  ${RESPONSE}   Get    ${URL}/${ID}    headers=${HEADER}

  Log To Console    ${RESPONSE.json()}[name]
  Status Should Be    200
  Log To Console    ${RESPONSE}\[status]