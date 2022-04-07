# Eventlog Service Index

&nbsp;

## Operations

### Event Descriptions Wrapper:  [EventDescriptions](../services-api/pkg/service/eventlog/eventDescriptions.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/event/descriptions/agentType` | GET | AgentTypeDescriptionHandlerShort | [AgentTypeDescriptionHandlerShort](../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [AgentTypeDescriptionHandlerShort](../services-api/pkg/service/eventlog/eventDescriptions.go) |
| `/event/descriptions/agentType/listByAgentTypes` | GET | SpecificAgentTypeDescriptionHandlerShort | [SpecificAgentTypeDescriptionHandlerShort](../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [SpecificAgentTypeDescriptionHandlerShort](../services-api/pkg/service/eventlog/eventDescriptions.go) |
| `/event/descriptions/eventId` | GET | EventIDDescriptionHandlerShort | [EventIDDescriptionHandlerShort](../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [EventIDDescriptionHandlerShort](../services-api/pkg/service/eventlog/eventDescriptions.go) |
| `/event/descriptions/eventId/listByEventIds` | GET | SpecificEventIDDescriptionHandlerShort | [SpecificEventIDDescriptionHandlerShort](../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [SpecificEventIDDescriptionHandlerShort](../services-api/pkg/service/eventlog/eventDescriptions.go) |
| `/event/descriptions/eventLevel` | GET | EventLevelDescriptionHandlerShort | [EventLevelDescriptionHandlerShort](../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [EventLevelDescriptionHandlerShort](../services-api/pkg/service/eventlog/eventDescriptions.go) |
| `/event/descriptions/eventLevel/listByEventLevels` | GET | SpecificEventLevelDescriptionHandlerShort | [SpecificEventLevelDescriptionHandlerShort](../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [SpecificEventLevelDescriptionHandlerShort](../services-api/pkg/service/eventlog/eventDescriptions.go) |
| `/event/descriptions/eventType` | GET | EventTypeDescriptionHandlerShort | [EventTypeDescriptionHandlerShort](../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [EventTypeDescriptionHandlerShort](../services-api/pkg/service/eventlog/eventDescriptions.go) |
| `/event/descriptions/eventType/listByEventTypes` | GET | SpecificEventTypeDescriptionHandlerShort | [SpecificEventTypeDescriptionHandlerShort](../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [SpecificEventTypeDescriptionHandlerShort](../services-api/pkg/service/eventlog/eventDescriptions.go) |
| `/event/descriptions/ux` | GET | UXNameDescriptionHandlerShort | [UXNameDescriptionHandlerShort](../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [UXNameDescriptionHandlerShort](../services-api/pkg/service/eventlog/eventDescriptions.go) |
| `/event/descriptions/ux/listByUx` | GET | SpecificUXDescriptionHandlerShort | [SpecificUXDescriptionHandlerShort](../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [SpecificUXDescriptionHandlerShort](../services-api/pkg/service/eventlog/eventDescriptions.go) |

### Event Wrapper:  [Event](../services-api/pkg/service/eventlog/event.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/event/namespaces/{namespace}` | GET | GetEventByNamespaceHandlerShort | [GetEventByNamespaceHandlerShort](../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByNamespaceHandlerShort](../services-api/pkg/service/eventlog/event.go) |
| `/event/namespaces/{namespace}` | POST | PostEventHandlerShort | [PostEventHandlerShort](../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [PostEventHandlerShort](../services-api/pkg/service/eventlog/event.go) |
| `/event/namespaces/{namespace}/eventId/{eventId}` | GET | GetEventByEventIDHandlerShort | [GetEventByEventIDHandlerShort](../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByEventIDHandlerShort](../services-api/pkg/service/eventlog/event.go) |
| `/event/namespaces/{namespace}/eventType/{eventType}` | GET | GetEventByEventTypeHandlerShort | [GetEventByEventTypeHandlerShort](../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByEventTypeHandlerShort](../services-api/pkg/service/eventlog/event.go) |
| `/event/namespaces/{namespace}/eventType/{eventType}/eventId/{eventId}` | GET | GetEventByEventTypeAndEventIDHandlerShort | [GetEventByEventTypeAndEventIDHandlerShort](../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByEventTypeAndEventIDHandlerShort](../services-api/pkg/service/eventlog/event.go) |
| `/event/namespaces/{namespace}/users/{userId}` | GET | GetEventByUserIDHandlerShort | [GetEventByUserIDHandlerShort](../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByUserIDHandlerShort](../services-api/pkg/service/eventlog/event.go) |
| `/event/namespaces/{namespace}/users/{userId}/eventId/{eventId}` | GET | GetEventByUserIDAndEventIDHandlerShort | [GetEventByUserIDAndEventIDHandlerShort](../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByUserIDAndEventIDHandlerShort](../services-api/pkg/service/eventlog/event.go) |
| `/event/namespaces/{namespace}/users/{userId}/eventType/{eventType}` | GET | GetEventByUserIDAndEventTypeHandlerShort | [GetEventByUserIDAndEventTypeHandlerShort](../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByUserIDAndEventTypeHandlerShort](../services-api/pkg/service/eventlog/event.go) |
| `/event/namespaces/{namespace}/users/{userId}/eventType/{eventType}/eventId/{eventId}` | GET | GetEventByUserEventIDAndEventTypeHandlerShort | [GetEventByUserEventIDAndEventTypeHandlerShort](../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByUserEventIDAndEventTypeHandlerShort](../services-api/pkg/service/eventlog/event.go) |

### User Information Wrapper:  [UserInformation](../services-api/pkg/service/eventlog/userInformation.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/event/namespaces/{namespace}/users/{userId}/activities` | GET | GetUserActivitiesHandlerShort | [GetUserActivitiesHandlerShort](../eventlog-sdk/pkg/eventlogclient/user_information/user_information_client.go) | [GetUserActivitiesHandlerShort](../services-api/pkg/service/eventlog/userInformation.go) |
| `/event/namespaces/{namespace}/users/{userId}/activities` | DELETE | DeleteUserActivitiesHandlerShort | [DeleteUserActivitiesHandlerShort](../eventlog-sdk/pkg/eventlogclient/user_information/user_information_client.go) | [DeleteUserActivitiesHandlerShort](../services-api/pkg/service/eventlog/userInformation.go) |
| `/event/namespaces/{namespace}/users/{userId}/lastActivityTime` | GET | LastUserActivityTimeHandlerShort | [LastUserActivityTimeHandlerShort](../eventlog-sdk/pkg/eventlogclient/user_information/user_information_client.go) | [LastUserActivityTimeHandlerShort](../services-api/pkg/service/eventlog/userInformation.go) |

### Event Registry Wrapper:  [EventRegistry](../services-api/pkg/service/eventlog/eventRegistry.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/event/registry/eventIds` | GET | GetRegisteredEventsHandlerShort | [GetRegisteredEventsHandlerShort](../eventlog-sdk/pkg/eventlogclient/event_registry/event_registry_client.go) | [GetRegisteredEventsHandlerShort](../services-api/pkg/service/eventlog/eventRegistry.go) |
| `/event/registry/eventIds` | POST | RegisterEventHandlerShort | [RegisterEventHandlerShort](../eventlog-sdk/pkg/eventlogclient/event_registry/event_registry_client.go) | [RegisterEventHandlerShort](../services-api/pkg/service/eventlog/eventRegistry.go) |
| `/event/registry/eventIds/{eventId}` | GET | GetRegisteredEventIDHandlerShort | [GetRegisteredEventIDHandlerShort](../eventlog-sdk/pkg/eventlogclient/event_registry/event_registry_client.go) | [GetRegisteredEventIDHandlerShort](../services-api/pkg/service/eventlog/eventRegistry.go) |
| `/event/registry/eventIds/{eventId}` | POST | UpdateEventRegistryHandlerShort | [UpdateEventRegistryHandlerShort](../eventlog-sdk/pkg/eventlogclient/event_registry/event_registry_client.go) | [UpdateEventRegistryHandlerShort](../services-api/pkg/service/eventlog/eventRegistry.go) |
| `/event/registry/eventIds/{eventId}` | DELETE | UnregisterEventIDHandlerShort | [UnregisterEventIDHandlerShort](../eventlog-sdk/pkg/eventlogclient/event_registry/event_registry_client.go) | [UnregisterEventIDHandlerShort](../services-api/pkg/service/eventlog/eventRegistry.go) |
| `/event/registry/eventTypes/{eventType}` | GET | GetRegisteredEventsByEventTypeHandlerShort | [GetRegisteredEventsByEventTypeHandlerShort](../eventlog-sdk/pkg/eventlogclient/event_registry/event_registry_client.go) | [GetRegisteredEventsByEventTypeHandlerShort](../services-api/pkg/service/eventlog/eventRegistry.go) |

### Event V2 Wrapper:  [EventV2](../services-api/pkg/service/eventlog/eventV2.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/event/v2/admin/namespaces/{namespace}/query` | POST | QueryEventStreamHandlerShort | [QueryEventStreamHandlerShort](../eventlog-sdk/pkg/eventlogclient/event_v2/event_v2_client.go) | [QueryEventStreamHandlerShort](../services-api/pkg/service/eventlog/eventV2.go) |
| `/event/v2/admin/namespaces/{namespace}/users/{userId}/event` | GET | GetEventSpecificUserV2HandlerShort | [GetEventSpecificUserV2HandlerShort](../eventlog-sdk/pkg/eventlogclient/event_v2/event_v2_client.go) | [GetEventSpecificUserV2HandlerShort](../services-api/pkg/service/eventlog/eventV2.go) |
| `/event/v2/public/namespaces/{namespace}/users/{userId}/edithistory` | GET | GetPublicEditHistoryShort | [GetPublicEditHistoryShort](../eventlog-sdk/pkg/eventlogclient/event_v2/event_v2_client.go) | [GetPublicEditHistoryShort](../services-api/pkg/service/eventlog/eventV2.go) |
| `/event/v2/public/namespaces/{namespace}/users/{userId}/event` | GET | GetUserEventsV2PublicShort | [GetUserEventsV2PublicShort](../eventlog-sdk/pkg/eventlogclient/event_v2/event_v2_client.go) | [GetUserEventsV2PublicShort](../services-api/pkg/service/eventlog/eventV2.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `models.AgentType` | [ModelsAgentType ](../eventlog-sdk/pkg/eventlogclientmodels/models_agent_type.go) |
| `models.Event` | [ModelsEvent ](../eventlog-sdk/pkg/eventlogclientmodels/models_event.go) |
| `models.EventID` | [ModelsEventID ](../eventlog-sdk/pkg/eventlogclientmodels/models_event_id.go) |
| `models.EventLevel` | [ModelsEventLevel ](../eventlog-sdk/pkg/eventlogclientmodels/models_event_level.go) |
| `models.EventRegistry` | [ModelsEventRegistry ](../eventlog-sdk/pkg/eventlogclientmodels/models_event_registry.go) |
| `models.EventResponse` | [ModelsEventResponse ](../eventlog-sdk/pkg/eventlogclientmodels/models_event_response.go) |
| `models.EventResponseV2` | [ModelsEventResponseV2 ](../eventlog-sdk/pkg/eventlogclientmodels/models_event_response_v2.go) |
| `models.EventType` | [ModelsEventType ](../eventlog-sdk/pkg/eventlogclientmodels/models_event_type.go) |
| `models.EventV2` | [ModelsEventV2 ](../eventlog-sdk/pkg/eventlogclientmodels/models_event_v2.go) |
| `models.GenericQueryPayload` | [ModelsGenericQueryPayload ](../eventlog-sdk/pkg/eventlogclientmodels/models_generic_query_payload.go) |
| `models.MultipleAgentType` | [ModelsMultipleAgentType ](../eventlog-sdk/pkg/eventlogclientmodels/models_multiple_agent_type.go) |
| `models.MultipleEventID` | [ModelsMultipleEventID ](../eventlog-sdk/pkg/eventlogclientmodels/models_multiple_event_id.go) |
| `models.MultipleEventLevel` | [ModelsMultipleEventLevel ](../eventlog-sdk/pkg/eventlogclientmodels/models_multiple_event_level.go) |
| `models.MultipleEventType` | [ModelsMultipleEventType ](../eventlog-sdk/pkg/eventlogclientmodels/models_multiple_event_type.go) |
| `models.MultipleUX` | [ModelsMultipleUX ](../eventlog-sdk/pkg/eventlogclientmodels/models_multiple_ux.go) |
| `models.Pagination` | [ModelsPagination ](../eventlog-sdk/pkg/eventlogclientmodels/models_pagination.go) |
| `models.Paging` | [ModelsPaging ](../eventlog-sdk/pkg/eventlogclientmodels/models_paging.go) |
| `models.UX` | [ModelsUX ](../eventlog-sdk/pkg/eventlogclientmodels/models_ux.go) |
| `models.UserLastActivity` | [ModelsUserLastActivity ](../eventlog-sdk/pkg/eventlogclientmodels/models_user_last_activity.go) |
