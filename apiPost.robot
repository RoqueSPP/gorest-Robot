*** Settings ***
Documentation    Api Teste
Library          RequestsLibrary


*** Variable ***

${url}    https://gorest.co.in/public/v2/users




*** Keywords ***

Deve fazer um post

    &{body}    Create Dictionary
    ...        name=Tenali Roque makrishna
    ...        gender=male
    ...        email=roque.ramakrishna@15ce.com
    ...        status=active
    &{H}       Create Dictionary

    ...                   Accept=application/json
    ...                   Content-Type=application/json
    ...                   Authorization=Bearer 38455aed713c78fb528c63f350b299c108316b532a223f5e811ed0e6e74a587e
    ${response}           Post     ${url}      headers=${H}    json=${body}    
    ${idPost}             Set Variable                                                                             ${response.json()}[id]
    Log To Console        ${response}
    Status Should Be      201
    Set Suite Variable    ${idPost}