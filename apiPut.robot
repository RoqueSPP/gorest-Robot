*** Settings ***
Documentation    Api Teste
Library          RequestsLibrary


*** Variable ***

${url}    https://gorest.co.in/public/v2/users




*** Keywords ***
Deve fazer um put
    &{H}    Create Dictionary
    ...                  Accept=application/json
    ...                  Content-Type=application/json
    ...                  Authorization=Bearer 38455aed713c78fb528c63f350b299c108316b532a223f5e811ed0e6e74a587e

    &{body}    Create Dictionary
    ...        name=Tenali Roque makrishna
    ...        gender=male
    ...        email=roque.pires@15ce.com
    ...        status=active

    ${response}         Put    ${url}/${idPost}    headers=${H}    json=${body}    
    Log To Console      ${response}
    Status Should Be    200