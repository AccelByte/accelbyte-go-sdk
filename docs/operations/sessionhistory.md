# Sessionhistory Service Index

&nbsp;

## Operations

### XRay Wrapper:  [XRay](../../services-api/pkg/service/sessionhistory/xRay.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets` | POST | CreateXrayTicketObservabilityShort | [CreateXrayTicketObservabilityShort](../../sessionhistory-sdk/pkg/sessionhistoryclient/x_ray/x_ray_client.go) | [CreateXrayTicketObservabilityShort](../../services-api/pkg/service/sessionhistory/xRay.go) | [CreateXrayTicketObservabilityShort](../../samples/cli/cmd/sessionhistory/xRay/createXrayTicketObservability.go) |
| `/sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/bulk` | POST | CreateXrayBulkTicketObservabilityShort | [CreateXrayBulkTicketObservabilityShort](../../sessionhistory-sdk/pkg/sessionhistoryclient/x_ray/x_ray_client.go) | [CreateXrayBulkTicketObservabilityShort](../../services-api/pkg/service/sessionhistory/xRay.go) | [CreateXrayBulkTicketObservabilityShort](../../samples/cli/cmd/sessionhistory/xRay/createXrayBulkTicketObservability.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `apimodels.XRayBulkTicketObservabilityRequest` | [ApimodelsXRayBulkTicketObservabilityRequest ](../../sessionhistory-sdk/pkg/sessionhistoryclientmodels/apimodels_x_ray_bulk_ticket_observability_request.go) |
| `apimodels.XRayBulkTicketObservabilityResponse` | [ApimodelsXRayBulkTicketObservabilityResponse ](../../sessionhistory-sdk/pkg/sessionhistoryclientmodels/apimodels_x_ray_bulk_ticket_observability_response.go) |
| `apimodels.XRayTicketObservabilityRequest` | [ApimodelsXRayTicketObservabilityRequest ](../../sessionhistory-sdk/pkg/sessionhistoryclientmodels/apimodels_x_ray_ticket_observability_request.go) |
| `apimodels.XRayTicketObservabilityResponse` | [ApimodelsXRayTicketObservabilityResponse ](../../sessionhistory-sdk/pkg/sessionhistoryclientmodels/apimodels_x_ray_ticket_observability_response.go) |
| `models.AllianceRule` | [ModelsAllianceRule ](../../sessionhistory-sdk/pkg/sessionhistoryclientmodels/models_alliance_rule.go) |
| `models.MatchingRule` | [ModelsMatchingRule ](../../sessionhistory-sdk/pkg/sessionhistoryclientmodels/models_matching_rule.go) |
| `response.Error` | [ResponseError ](../../sessionhistory-sdk/pkg/sessionhistoryclientmodels/response_error.go) |
