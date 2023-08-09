*** Settings ***
Documentation    este metodo faz um Delete do usuario na api
Resource        ../Resources/main.robot

*** Variables ***
${ID}
*** Keywords ***

Delete Api test
  ${HEADER}    Json Header
  ${RESPONSE}   DELETE    ${URL}/${ID}    headers=${HEADER}

  Status Should Be    204