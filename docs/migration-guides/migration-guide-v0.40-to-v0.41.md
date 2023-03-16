<a name="v0.41.0"></a>

## [v0.41.0] - 2023-03-28

### BREAKING CHANGE

#### Following changes in OpenAPI spec:

1. Platform Service
   - field `price` inside `RegionDataItem` definitions is removed from the `required` schema. So, SDK can use value directly without pointer.
2. Session Service
   - error response schema is removed from `204` response field. So, only one return response is needed for the wrapper.
