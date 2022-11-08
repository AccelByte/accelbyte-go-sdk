<a name="v0.29.0"></a>
## [v0.29.0] - 2022-10-18

### BREAKING CHANGE
```
/*
Following changes in AB Cloud OpenAPI spec:

- Model OauthmodelTokenResponseV3 is replaced with OauthmodelTokenWithDeviceCookieResponseV3
- Model EntitlementInfo is replaced with TrackedEntitlementInfo

The new models above are compatible with the models it is replacing. 
So, if you are affected, a simple rename should be sufficient 
e.g. rename OauthmodelTokenResponseV3 with OauthmodelTokenWithDeviceCookieResponseV3 in your code.
*/
```

[v0.29.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.28.0...v0.29.0
