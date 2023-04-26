<a name="v0.43.0"></a>

## [v0.43.0] - 2023-04-26

### BREAKING CHANGE

#### Following changes in OpenAPI spec:

1. **Lobby Service**
   - Removed `lobby-sdk/pkg/lobbyclient/chat/*.go`
   - Removed `services-api/pkg/lobby/chat.go`

2. **Platform Service**
   - Renamed `{ map[string][]RegionDataItem -> map[string][]RegionDataItemDTO }` in `platform-sdk/pkg/platformclientmodels/item_create.go`

3. **UGC Service**
   - Renamed `{ *ugcclientmodels.ModelsUpdateContentRequest -> *ugcclientmodels.ModelsAdminUpdateContentRequest }` in `ugc-sdk/pkg/ugcclient/admin_content/admin_update_content_s3_parameters.go`
   - - Renamed `{ *ugcclientmodels.ModelsUpdateContentRequest -> *ugcclientmodels.ModelsAdminUpdateContentRequest }` in `ugc-sdk/pkg/ugcclient/admin_content/single_admin_update_content_s3_parameters.go`