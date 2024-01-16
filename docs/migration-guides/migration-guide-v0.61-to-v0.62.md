# [v0.62.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

### AMS
The following operation(s) has been updated.
- Operation `AccountCreate` renamed to `AdminAccountCreate`
  - The request params `account.{ AccountCreateParams -> AdminAccountCreateParams }`
- Operation `AccountLinkTokenGet` renamed to `AdminAccountLinkTokenGet`
  - The request params `account.{ AccountLinkTokenGetParams -> AdminAccountLinkTokenGetParams }`
- Operation `AccountLink` renamed to `AdminAccountLinkTokenPost`
  - The request params `account.{ AccountLinkParams -> AdminAccountLinkTokenPostParams }`

[v0.62.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.61.0..v0.62.0