# [v0.60.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

### AMS
The following model(s) are renamed.
```
- amsclientmodels.{ APIFleetArtifactsSampleRulesResponse -> APIFleetArtifactsSampleRules }
- amsclientmodels.{ APIArtifactTypeSamplingRulesResponse -> APIArtifactTypeSamplingRules }
- amsclientmodels.{ APIArtifactSamplingRuleResponse -> APIArtifactSamplingRule }
```

The following operations are moved to a different package and the corresponding wrapper methods follows. The wrapper will used as follows
```
- ok, errOK := { images -> artifacts }Service.FleetArtifactSamplingRulesGetShort(input)
```

### Platform
The following model(s) are renamed.
```
- platformclientmodels.{ CatalogChangePagingSlicedResult -> CatalogChangePagingResult }
```

The following operation(s) has been updated.
- Operation `QueryChanges`
    - Return type model changed from `CatalogChangePagingSlicedResult` to `CatalogChangePagingResult?`
- Operation `DebitByWalletPlatform`
    - The request params `DebitByWalletPlatformParams` change `body` to `request`.

### Session
The following operation(s) has been updated.
- Operation `GetSessionServerSecret`
    - Request params `DebitByWalletPlatformParams` body is removed.

### Social
The following operations are moved to a different package and the corresponding wrapper methods follows. The wrapper will used as follows
```
- created, errCreated := { statConfiguration -> statCycleConfiguration }Service.ImportStatCycleShort(input)
```

[v0.60.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.59.0..v0.60.0