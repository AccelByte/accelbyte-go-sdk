# OpenAPI 2.0 Vendor Extensions

AccelByte uses the following vendor extensions:

| Vendor Extensions | Description                                                                                                                                                                                     |
|-------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| x-authorization   | Contains permissions information. ex: `{"action": "2", "resource": "ADMIN:NAMESPACE"}`                                                                                                          |
| x-deprecated      | Used to mark a property's deprecation. Appears in `Analytics Game Telemetry`.                                                                                                                   |
| x-keys            | Added to support OpenAPI 2.0 Cookie Authentication.                                                                                                                                             |
| x-required        | Added to support OpenAPI 2.0 Cookie Authentication.                                                                                                                                             |
| x-nullable        | Exactly the same as `go-swagger`'s `x-nullable`. Makes a property value nullable, for go code that means a pointer.                                                                             |
| x-omitempty       | Exactly the same as `go-swagger`'s `x-omitempty`. This is used to control presence of omitempty tag to be used by JSON Marshaler. If the field is required, this extension doesn't take effect. |

## OpenAPI 2.0 Cookie Authentication Support

OpenAPI `3.0` supports Cookie Authentication but `2.0` does not, to get around this we have added in `x-keys` and `x-required` vendor extensions.

```yaml
openapi: 3.0.0
...
# 1) Define the cookie name
components:
    securitySchemes:
        cookieAuth:             # arbitrary name for the security scheme; will be used in the "security" key later
            type: apiKey
            in: cookie
            name: access_token  # cookie name
# 2) Apply cookie auth globally to all operations
security:
    - cookieAuth: []
# 3) Or apply cookie auth on the operation level instead
paths:
    /users:
        get:
            description: Returns a list of users.
            security:
            - cookieAuth: []
            responses: 
            '200':
                description: OK
```

To achieve the same effect in `2.0` some modifications are required to have Cookie Authentication support.

```yaml
swagger: 2.0
...
# 1) Define the cookie security
securityDefinitions:
    cookieAuth:             # arbitrary name for the security scheme; will be used in the "security" key later
        name: Cookie        # has to be exactly 'Cookie'
        type: apiKey
        in: header
        x-keys:
            - access_token  # cookie key name
# 2) Apply cookie auth globally to all operations
security:
    - cookieAuth: []
# 3) Or apply cookie auth on the operation level instead
paths:
    /users:
        get:
            description: Returns a list of users.
            parameters:
                - name: Cookie      # has to be exactly 'Cookie'
                  type: string
                  in: header
                  required: false   # always set to 'false'; use 'x-required' instead
                  x-keys:           # is a list in case there are multiple keys in the Cookie header
                    - access_token  # cookie key name
                    - favorite_pet  # unrelated cookie key
                  x-required:       # is a list in case each key needs individual "required-ness"
                    - access_token
            security:
            - cookieAuth: []
            responses: 
            '200':
                description: OK
```

```
GET /users
Host: example.com
Accept: application/json
Cookie: access_token=********; favorite_pet=Fido;
```

## Useful Links
- [go-swagger's Vendor Extensions](https://goswagger.io/use/spec.html#known-vendor-extensions)
- [OpenAPI 2.0 Cookie Authentication Github Issue #15](https://github.com/OAI/OpenAPI-Specification/issues/15)
- [OpenAPI 2.0 Cookie Authentication Github Issue #161](https://github.com/OAI/OpenAPI-Specification/issues/161)
- [OpenAPI 3.0 Cookie Authentication](https://swagger.io/docs/specification/authentication/cookie-authentication)
