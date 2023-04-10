<a name="v0.42.0"></a>

## [v0.42.0] - 2023-04-10

### BREAKING CHANGE

#### Following changes in OpenAPI spec:

1. **Platform Service**
   - Renamed `services-api/pkg/service/platform.{ GetPaymentCallbackConfig1Short -> GetRevocationConfigShort }`
   - Renamed `platform-sdk/pkg/platformclient/revocation/.{ GetPaymentCallbackConfig1Params -> GetRevocationConfigParams }`

2. **UGC Service**
   - Renamed `ugc-sdk/pkg/ugcclientmodels.{ ModelsChannelRequest -> ModelsUpdateChannelRequest }`
   - Renamed `services-api/pkg/service/ugc.{ CreateChannelShort -> PublicCreateChannelShort }`
   - Renamed `services-api/pkg/service/ugc.{ CreateChannelParams -> PublicCreateChannelParams }`
   - Renamed `ugc-sdk/pkg/ugcclientmodels.{ ModelsCreateContentRequestS3 -> ModelsPublicCreateContentRequestS3 }`
   - Renamed `ugc-sdk/pkg/ugcclientmodels.{ ModelsContentRequest -> ModelsUpdateContentRequest }`