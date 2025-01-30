# Loginqueue Service Index

&nbsp;

## Operations

### Admin V1 Wrapper:  [AdminV1](../../services-api/pkg/service/loginqueue/adminV1.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/login-queue/v1/admin/namespaces/{namespace}/config` | GET | AdminGetConfigurationShort | [AdminGetConfigurationShort](../../loginqueue-sdk/pkg/loginqueueclient/admin_v1/admin_v1_client.go) | [AdminGetConfigurationShort](../../services-api/pkg/service/loginqueue/adminV1.go) | [AdminGetConfigurationShort](../../samples/cli/cmd/loginqueue/adminV1/adminGetConfiguration.go) |
| `/login-queue/v1/admin/namespaces/{namespace}/config` | PUT | AdminUpdateConfigurationShort | [AdminUpdateConfigurationShort](../../loginqueue-sdk/pkg/loginqueueclient/admin_v1/admin_v1_client.go) | [AdminUpdateConfigurationShort](../../services-api/pkg/service/loginqueue/adminV1.go) | [AdminUpdateConfigurationShort](../../samples/cli/cmd/loginqueue/adminV1/adminUpdateConfiguration.go) |
| `/login-queue/v1/admin/namespaces/{namespace}/status` | GET | AdminGetStatusShort | [AdminGetStatusShort](../../loginqueue-sdk/pkg/loginqueueclient/admin_v1/admin_v1_client.go) | [AdminGetStatusShort](../../services-api/pkg/service/loginqueue/adminV1.go) | [AdminGetStatusShort](../../samples/cli/cmd/loginqueue/adminV1/adminGetStatus.go) |

### Ticket V1 Wrapper:  [TicketV1](../../services-api/pkg/service/loginqueue/ticketV1.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/login-queue/v1/namespaces/{namespace}/ticket` | GET | RefreshTicketShort | [RefreshTicketShort](../../loginqueue-sdk/pkg/loginqueueclient/ticket_v1/ticket_v1_client.go) | [RefreshTicketShort](../../services-api/pkg/service/loginqueue/ticketV1.go) | [RefreshTicketShort](../../samples/cli/cmd/loginqueue/ticketV1/refreshTicket.go) |
| `/login-queue/v1/namespaces/{namespace}/ticket` | DELETE | CancelTicketShort | [CancelTicketShort](../../loginqueue-sdk/pkg/loginqueueclient/ticket_v1/ticket_v1_client.go) | [CancelTicketShort](../../services-api/pkg/service/loginqueue/ticketV1.go) | [CancelTicketShort](../../samples/cli/cmd/loginqueue/ticketV1/cancelTicket.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `apimodels.ConfigurationRequest` | [ApimodelsConfigurationRequest ](../../loginqueue-sdk/pkg/loginqueueclientmodels/apimodels_configuration_request.go) |
| `apimodels.ConfigurationResponse` | [ApimodelsConfigurationResponse ](../../loginqueue-sdk/pkg/loginqueueclientmodels/apimodels_configuration_response.go) |
| `apimodels.Link` | [ApimodelsLink ](../../loginqueue-sdk/pkg/loginqueueclientmodels/apimodels_link.go) |
| `apimodels.QueueStatusResponse` | [ApimodelsQueueStatusResponse ](../../loginqueue-sdk/pkg/loginqueueclientmodels/apimodels_queue_status_response.go) |
| `apimodels.RefreshTicketResponse` | [ApimodelsRefreshTicketResponse ](../../loginqueue-sdk/pkg/loginqueueclientmodels/apimodels_refresh_ticket_response.go) |
| `response.Error` | [ResponseError ](../../loginqueue-sdk/pkg/loginqueueclientmodels/response_error.go) |
