# [v0.68.0]

## BREAKING CHANGE

### AMS

The following model(s) has been updated.

- Rename required property from `CommandLine` into `CommandLineArguments` on `APIDevelopmentServerConfigurationCreateRequest` model.
- Rename required property from `CommandLine` into `CommandLineArguments` on `ApiDevelopmentServerConfigurationGetResponse` model.
- New required property `OnDemand` on `ApiFleetGetResponse` model.
- New required property `OnDemand` on `ApiFleetListItemResponse` model.
- New required property `OnDemand` on `ApiFleetParameters` model.
- Operation `DevelopmentServerConfigurationList` return type changed from `[]*amsclientmodels.APIDevelopmentServerConfigurationGetResponse` into `*amsclientmodels.APIDevelopmentServerConfigurationListResponse`.


[v0.68.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.67.0..v0.68.0