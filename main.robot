*** Settings ***
Resource                  apiPost.robot
Resource                  apiPut.robot
Resource                  apiGet.robot
Resource                  apiDelete.robot

*** Test Case ***
Post
    Deve fazer um post
Put
    Deve fazer um put
Get
    Deve fazer um Get
Delete
    Deve fazer um Delete
