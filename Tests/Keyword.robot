*** Settings ***
Library    REST
*** Keywords ***
Send Headers
    Set Headers     {"Authorization":"Basic a2FkYXJsYS5wcmFkZWVwNEBnbWFpbC5jb206TXRINDhMUkgzaWZqSzJsZlpSa20xQkY4"}
Get Request
    [Arguments]    ${endpoint}
    ${response}     GET    ${endpoint}
    [Return]    ${response}
    #test test
Post request
    [Arguments]    ${endpoint}  ${body}
    ${response}    POST    ${endpoint}  ${body}
    [Return]    ${response}

Post request with file
    [Arguments]    ${endpoint}  ${filepath}
    ${response}    POST    ${endpoint}  ${filepath}
    [Return]    ${response}

PATCH Request
    [Arguments]    ${endpoint}  ${body}
    ${response}    POST    ${endpoint}  ${body}
    [Return]    ${response}

Delete Request
    [Arguments]    ${endpoint}
    Delete    ${endpoint}

Output File
    [Arguments]    ${filename}
    Output    response body     OutputResponse/${filename}

Print Output
    Output    response body

Print Output field
    [Arguments]    ${fieldname}
    ${response}    Output    response body ${fieldname}
    [Return]    ${response}



Object Response
    Object    response body

Validate Field to be an Array
    [Arguments]    ${fieldname}
    Array    response body ${fieldname}

Validate to be String
    [Arguments]    ${field}    ${value}
    String    response body ${field}    ${value}
Verify Status Code
    [Arguments]    ${code}
    Integer    response status      ${code}





