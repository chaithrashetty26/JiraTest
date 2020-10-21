*** Settings ***
Library    REST     https://juggernauttester.atlassian.net/
*** Variables ***

*** Keywords ***

*** Test Cases ***
Add Issues
    #SET HEADERS     {"Authorization":"Basic Y2hhaXRocmFzaGV0dHkxMTI2QGdtYWlsLmNvbTogVHFNZWFRZDlPZHRsRngwa0JRUjRDQTYx"}
    Set Headers     {"Authorization":"Basic a2FkYXJsYS5wcmFkZWVwNEBnbWFpbC5jb206TXRINDhMUkgzaWZqSzJsZlpSa20xQkY4"}
    POST    /rest/api/2/issue       {"fields":{"project":{"key":"MYP"},"summary":"Bug ","description":"Bug has been created. Test bug","issuetype":{"name":"Bug"}}}
    Output   response body   ./u.json
    ${id}   Output    response body id
    log to console    ${id}
    #test test

    GET      /rest/api/2/issue/${id}
    Output      response body    ./test.json
    #test yfgjghjhj

    DELETE      /rest/api/2/issue/${id}
    Object    response
    Integer     response status   204

    GET      /rest/api/2/issue/${id}
    Output      response body    ./tests.json
    ##comment



