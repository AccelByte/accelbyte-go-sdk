# [v0.72.0]

## BREAKING CHANGE

### BREAKING CHANGE

### Dslogmanager

The following operation(s) has been updated.
- Operation `ListMetadataServers`
    - `data` is changed from `ModelsNotifPayloadServerStatusChange` to `ModelsNotifPayloadServerStatusChangeResponse`
- Operation `ListMetadataServers`
  - `servers` is changed `ModelsServer` to `ModelsServerResponse`

### DSMC

The following operation(s) has been updated.
- Operation `GetImageDetail`
  - `data` is changed `ModelsImageRecord` to `ModelsImageRecordResponse`
- Operation `GetImagePatches`
  - `images` is changed `ModelsPatchImageRecord` to `ModelsPatchImageRecordResponse`
- Operation `ListImages`
  - `images` is changed `ModelsImageRecord` to `ModelsImageRecordResponse`
- Operation `ListLocalServer`
  - `images` is changed `ModelsServer` to `ModelsServerDetailsResponse`
- Operation `ExportImages` is removed
- Operation `ImportImages` is removed

### IAM

- Model `AccountcommonAllowedPermission`
  - field `AllowedActions` type change from `[]int64` to `[]int32`

- Model `AccountcommonClientSelectedGroup`
  - field `AllowedActions` type change from `[]int64` to `[]int32`

### Session History

The following operation(s) has been updated.
- Model `ModelsMatch`
  - field `Tickets ` type change from `[]*ModelsTicket` to `[]*ModelsMatchTicket`.


[v0.72.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.71.0..v0.72.0