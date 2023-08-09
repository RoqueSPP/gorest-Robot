*** Settings ***
Documentation          Suite de testes Get e Post
Resource               ${EXECDIR}/Resources/main.robot


*** Test Cases ***
   
Fazer um get na API Gorest
     [Tags]    get
    Get Api test
     
Fazer um post na API Gorest
   [Tags]    post
    Post Api test

Fazer um get na API Gorest para buscar usuario
     [Tags]    getuser
    Get Api test User

Fazer um put na API Gorest
   [Tags]    put
    Put Api test

Fazer um delete na API Gorest
   [Tags]    delete
    Delete Api test
