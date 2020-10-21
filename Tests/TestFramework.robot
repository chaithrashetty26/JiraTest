*** Settings ***
Library    REST     https://juggernauttester.atlassian.net/
Resource        Keyword.robot
*** Variables ***

*** Keywords ***

*** Test Cases ***
Add Issues
    Send Headers
    Post request  /rest/api/2/issue    {"fields":{"project":{"key":"MYP"},"summary":"Bug ","description":"Bug has been created. Test bug","issuetype":{"name":"Bug"}}}
    Post request with file    /rest/api/2/issue    Variables/inputbody.json
    Output File    utest.json
    ${id}   Print Output field    id
    log to console    ${id}
    Get Request    /rest/api/2/issue/${id}
    Output File    tetst2.json
    log to console    ${id}
    Delete Request     /rest/api/2/issue/${id}
    Verify Status Code    204



