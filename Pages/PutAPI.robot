*** Settings ***
Documentation        deve fazer um put na api
Resource             ../Resources/main.robot

*** Variables ***
${ID}

*** Keywords ***

Put Api test
  ${HEADER}    Json Header
  ${BODY_UPDATE}    Json BodyUpData
  ${RESPONSE}   PUT    ${URL}/${ID}  headers=${HEADER}  json=${BODY_UPDATE}

  Log To Console    ${RESPONSE.json()}
  Status Should Be    200