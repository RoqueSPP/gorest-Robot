*** Settings ***
Documentation    Api Teste
Library          RequestsLibrary


*** Variable ***

${url}    https://gorest.co.in/public/v2/users




*** Keywords ***
Deve fazer um Get
    &{H}    Create Dictionary
    ...                  Accept=application/json
    ...                  Content-Type=application/json
    ...                  Authorization=Bearer 38455aed713c78fb528c63f350b299c108316b532a223f5e811ed0e6e74a587e

    ${response}         Get    ${url}/${idPost}    headers=${H}   
    Log To Console      ${response}
    Log To Console      ${response.json()}
    Status Should Be    200