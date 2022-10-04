# Eventlog Service Index

&nbsp;

## Operations

### Event Descriptions Wrapper:  [EventDescriptions](../../services-api/pkg/service/eventlog/eventDescriptions.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/event/descriptions/agentType` | GET | AgentTypeDescriptionHandlerShort | [AgentTypeDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [AgentTypeDescriptionHandlerShort](../../services-api/pkg/service/eventlog/eventDescriptions.go) | [AgentTypeDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/agentTypeDescriptionHandler.go) |
| `/event/descriptions/agentType/listByAgentTypes` | GET | SpecificAgentTypeDescriptionHandlerShort | [SpecificAgentTypeDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [SpecificAgentTypeDescriptionHandlerShort](../../services-api/pkg/service/eventlog/eventDescriptions.go) | [SpecificAgentTypeDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/specificAgentTypeDescriptionHandler.go) |
| `/event/descriptions/eventId` | GET | EventIDDescriptionHandlerShort | [EventIDDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [EventIDDescriptionHandlerShort](../../services-api/pkg/service/eventlog/eventDescriptions.go) | [EventIDDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/eventIDDescriptionHandler.go) |
| `/event/descriptions/eventId/listByEventIds` | GET | SpecificEventIDDescriptionHandlerShort | [SpecificEventIDDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [SpecificEventIDDescriptionHandlerShort](../../services-api/pkg/service/eventlog/eventDescriptions.go) | [SpecificEventIDDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/specificEventIDDescriptionHandler.go) |
| `/event/descriptions/eventLevel` | GET | EventLevelDescriptionHandlerShort | [EventLevelDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [EventLevelDescriptionHandlerShort](../../services-api/pkg/service/eventlog/eventDescriptions.go) | [EventLevelDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/eventLevelDescriptionHandler.go) |
| `/event/descriptions/eventLevel/listByEventLevels` | GET | SpecificEventLevelDescriptionHandlerShort | [SpecificEventLevelDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [SpecificEventLevelDescriptionHandlerShort](../../services-api/pkg/service/eventlog/eventDescriptions.go) | [SpecificEventLevelDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/specificEventLevelDescriptionHandler.go) |
| `/event/descriptions/eventType` | GET | EventTypeDescriptionHandlerShort | [EventTypeDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [EventTypeDescriptionHandlerShort](../../services-api/pkg/service/eventlog/eventDescriptions.go) | [EventTypeDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/eventTypeDescriptionHandler.go) |
| `/event/descriptions/eventType/listByEventTypes` | GET | SpecificEventTypeDescriptionHandlerShort | [SpecificEventTypeDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [SpecificEventTypeDescriptionHandlerShort](../../services-api/pkg/service/eventlog/eventDescriptions.go) | [SpecificEventTypeDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/specificEventTypeDescriptionHandler.go) |
| `/event/descriptions/ux` | GET | UXNameDescriptionHandlerShort | [UXNameDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [UXNameDescriptionHandlerShort](../../services-api/pkg/service/eventlog/eventDescriptions.go) | [UXNameDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/uxNameDescriptionHandler.go) |
| `/event/descriptions/ux/listByUx` | GET | SpecificUXDescriptionHandlerShort | [SpecificUXDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [SpecificUXDescriptionHandlerShort](../../services-api/pkg/service/eventlog/eventDescriptions.go) | [SpecificUXDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/specificUXDescriptionHandler.go) |

### Event Wrapper:  [Event](../../services-api/pkg/service/eventlog/event.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/event/namespaces/{namespace}` | GET | GetEventByNamespaceHandlerShort | [GetEventByNamespaceHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByNamespaceHandlerShort](../../services-api/pkg/service/eventlog/event.go) | [GetEventByNamespaceHandlerShort](../../samples/cli/cmd/eventlog/event/getEventByNamespaceHandler.go) |
| `/event/namespaces/{namespace}` | POST | PostEventHandlerShort | [PostEventHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [PostEventHandlerShort](../../services-api/pkg/service/eventlog/event.go) | [PostEventHandlerShort](../../samples/cli/cmd/eventlog/event/postEventHandler.go) |
| `/event/namespaces/{namespace}/eventId/{eventId}` | GET | GetEventByEventIDHandlerShort | [GetEventByEventIDHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByEventIDHandlerShort](../../services-api/pkg/service/eventlog/event.go) | [GetEventByEventIDHandlerShort](../../samples/cli/cmd/eventlog/event/getEventByEventIDHandler.go) |
| `/event/namespaces/{namespace}/eventType/{eventType}` | GET | GetEventByEventTypeHandlerShort | [GetEventByEventTypeHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByEventTypeHandlerShort](../../services-api/pkg/service/eventlog/event.go) | [GetEventByEventTypeHandlerShort](../../samples/cli/cmd/eventlog/event/getEventByEventTypeHandler.go) |
| `/event/namespaces/{namespace}/eventType/{eventType}/eventId/{eventId}` | GET | GetEventByEventTypeAndEventIDHandlerShort | [GetEventByEventTypeAndEventIDHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByEventTypeAndEventIDHandlerShort](../../services-api/pkg/service/eventlog/event.go) | [GetEventByEventTypeAndEventIDHandlerShort](../../samples/cli/cmd/eventlog/event/getEventByEventTypeAndEventIDHandler.go) |
| `/event/namespaces/{namespace}/users/{userId}` | GET | GetEventByUserIDHandlerShort | [GetEventByUserIDHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByUserIDHandlerShort](../../services-api/pkg/service/eventlog/event.go) | [GetEventByUserIDHandlerShort](../../samples/cli/cmd/eventlog/event/getEventByUserIDHandler.go) |
| `/event/namespaces/{namespace}/users/{userId}/eventId/{eventId}` | GET | GetEventByUserIDAndEventIDHandlerShort | [GetEventByUserIDAndEventIDHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByUserIDAndEventIDHandlerShort](../../services-api/pkg/service/eventlog/event.go) | [GetEventByUserIDAndEventIDHandlerShort](../../samples/cli/cmd/eventlog/event/getEventByUserIDAndEventIDHandler.go) |
| `/event/namespaces/{namespace}/users/{userId}/eventType/{eventType}` | GET | GetEventByUserIDAndEventTypeHandlerShort | [GetEventByUserIDAndEventTypeHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByUserIDAndEventTypeHandlerShort](../../services-api/pkg/service/eventlog/event.go) | [GetEventByUserIDAndEventTypeHandlerShort](../../samples/cli/cmd/eventlog/event/getEventByUserIDAndEventTypeHandler.go) |
| `/event/namespaces/{namespace}/users/{userId}/eventType/{eventType}/eventId/{eventId}` | GET | GetEventByUserEventIDAndEventTypeHandlerShort | [GetEventByUserEventIDAndEventTypeHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByUserEventIDAndEventTypeHandlerShort](../../services-api/pkg/service/eventlog/event.go) | [GetEventByUserEventIDAndEventTypeHandlerShort](../../samples/cli/cmd/eventlog/event/getEventByUserEventIDAndEventTypeHandler.go) |

### User Information Wrapper:  [UserInformation](../../services-api/pkg/service/eventlog/userInformation.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/event/namespaces/{namespace}/users/{userId}/activities` | GET | GetUserActivitiesHandlerShort | [GetUserActivitiesHandlerShort](../../eventlog-sdk/pkg/eventlogclient/user_information/user_information_client.go) | [GetUserActivitiesHandlerShort](../../services-api/pkg/service/eventlog/userInformation.go) | [GetUserActivitiesHandlerShort](../../samples/cli/cmd/eventlog/userInformation/getUserActivitiesHandler.go) |
| `/event/namespaces/{namespace}/users/{userId}/activities` | DELETE | DeleteUserActivitiesHandlerShort | [DeleteUserActivitiesHandlerShort](../../eventlog-sdk/pkg/eventlogclient/user_information/user_information_client.go) | [DeleteUserActivitiesHandlerShort](../../services-api/pkg/service/eventlog/userInformation.go) | [DeleteUserActivitiesHandlerShort](../../samples/cli/cmd/eventlog/userInformation/deleteUserActivitiesHandler.go) |
| `/event/namespaces/{namespace}/users/{userId}/lastActivityTime` | GET | LastUserActivityTimeHandlerShort | [LastUserActivityTimeHandlerShort](../../eventlog-sdk/pkg/eventlogclient/user_information/user_information_client.go) | [LastUserActivityTimeHandlerShort](../../services-api/pkg/service/eventlog/userInformation.go) | [LastUserActivityTimeHandlerShort](../../samples/cli/cmd/eventlog/userInformation/lastUserActivityTimeHandler.go) |

### Event Registry Wrapper:  [EventRegistry](../../services-api/pkg/service/eventlog/eventRegistry.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/event/registry/eventIds` | GET | GetRegisteredEventsHandlerShort | [GetRegisteredEventsHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_registry/event_registry_client.go) | [GetRegisteredEventsHandlerShort](../../services-api/pkg/service/eventlog/eventRegistry.go) | [GetRegisteredEventsHandlerShort](../../samples/cli/cmd/eventlog/eventRegistry/getRegisteredEventsHandler.go) |
| `/event/registry/eventIds` | POST | RegisterEventHandlerShort | [RegisterEventHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_registry/event_registry_client.go) | [RegisterEventHandlerShort](../../services-api/pkg/service/eventlog/eventRegistry.go) | [RegisterEventHandlerShort](../../samples/cli/cmd/eventlog/eventRegistry/registerEventHandler.go) |
| `/event/registry/eventIds/{eventId}` | GET | GetRegisteredEventIDHandlerShort | [GetRegisteredEventIDHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_registry/event_registry_client.go) | [GetRegisteredEventIDHandlerShort](../../services-api/pkg/service/eventlog/eventRegistry.go) | [GetRegisteredEventIDHandlerShort](../../samples/cli/cmd/eventlog/eventRegistry/getRegisteredEventIDHandler.go) |
| `/event/registry/eventIds/{eventId}` | POST | UpdateEventRegistryHandlerShort | [UpdateEventRegistryHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_registry/event_registry_client.go) | [UpdateEventRegistryHandlerShort](../../services-api/pkg/service/eventlog/eventRegistry.go) | [UpdateEventRegistryHandlerShort](../../samples/cli/cmd/eventlog/eventRegistry/updateEventRegistryHandler.go) |
| `/event/registry/eventIds/{eventId}` | DELETE | UnregisterEventIDHandlerShort | [UnregisterEventIDHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_registry/event_registry_client.go) | [UnregisterEventIDHandlerShort](../../services-api/pkg/service/eventlog/eventRegistry.go) | [UnregisterEventIDHandlerShort](../../samples/cli/cmd/eventlog/eventRegistry/unregisterEventIDHandler.go) |
| `/event/registry/eventTypes/{eventType}` | GET | GetRegisteredEventsByEventTypeHandlerShort | [GetRegisteredEventsByEventTypeHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_registry/event_registry_client.go) | [GetRegisteredEventsByEventTypeHandlerShort](../../services-api/pkg/service/eventlog/eventRegistry.go) | [GetRegisteredEventsByEventTypeHandlerShort](../../samples/cli/cmd/eventlog/eventRegistry/getRegisteredEventsByEventTypeHandler.go) |

### Event V2 Wrapper:  [EventV2](../../services-api/pkg/service/eventlog/eventV2.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/event/v2/admin/namespaces/{namespace}/query` | POST | QueryEventStreamHandlerShort | [QueryEventStreamHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_v2/event_v2_client.go) | [QueryEventStreamHandlerShort](../../services-api/pkg/service/eventlog/eventV2.go) | [QueryEventStreamHandlerShort](../../samples/cli/cmd/eventlog/eventV2/queryEventStreamHandler.go) |
| `/event/v2/admin/namespaces/{namespace}/users/{userId}/event` | GET | GetEventSpecificUserV2HandlerShort | [GetEventSpecificUserV2HandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_v2/event_v2_client.go) | [GetEventSpecificUserV2HandlerShort](../../services-api/pkg/service/eventlog/eventV2.go) | [GetEventSpecificUserV2HandlerShort](../../samples/cli/cmd/eventlog/eventV2/getEventSpecificUserV2Handler.go) |
| `/event/v2/public/namespaces/{namespace}/users/{userId}/edithistory` | GET | GetPublicEditHistoryShort | [GetPublicEditHistoryShort](../../eventlog-sdk/pkg/eventlogclient/event_v2/event_v2_client.go) | [GetPublicEditHistoryShort](../../services-api/pkg/service/eventlog/eventV2.go) | [GetPublicEditHistoryShort](../../samples/cli/cmd/eventlog/eventV2/getPublicEditHistory.go) |
| `/event/v2/public/namespaces/{namespace}/users/{userId}/event` | GET | GetUserEventsV2PublicShort | [GetUserEventsV2PublicShort](../../eventlog-sdk/pkg/eventlogclient/event_v2/event_v2_client.go) | [GetUserEventsV2PublicShort](../../services-api/pkg/service/eventlog/eventV2.go) | [GetUserEventsV2PublicShort](../../samples/cli/cmd/eventlog/eventV2/getUserEventsV2Public.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `models.AgentType` | [ModelsAgentType ](../../eventlog-sdk/pkg/eventlogclientmodels/models_agent_type.go) |
| `models.Event` | [ModelsEvent ](../../eventlog-sdk/pkg/eventlogclientmodels/models_event.go) |
| `models.EventID` | [ModelsEventID ](../../eventlog-sdk/pkg/eventlogclientmodels/models_event_id.go) |
| `models.EventLevel` | [ModelsEventLevel ](../../eventlog-sdk/pkg/eventlogclientmodels/models_event_level.go) |
| `models.EventRegistry` | [ModelsEventRegistry ](../../eventlog-sdk/pkg/eventlogclientmodels/models_event_registry.go) |
| `models.EventResponse` | [ModelsEventResponse ](../../eventlog-sdk/pkg/eventlogclientmodels/models_event_response.go) |
| `models.EventResponseV2` | [ModelsEventResponseV2 ](../../eventlog-sdk/pkg/eventlogclientmodels/models_event_response_v2.go) |
| `models.EventType` | [ModelsEventType ](../../eventlog-sdk/pkg/eventlogclientmodels/models_event_type.go) |
| `models.EventV2` | [ModelsEventV2 ](../../eventlog-sdk/pkg/eventlogclientmodels/models_event_v2.go) |
| `models.GenericQueryPayload` | [ModelsGenericQueryPayload ](../../eventlog-sdk/pkg/eventlogclientmodels/models_generic_query_payload.go) |
| `models.MultipleAgentType` | [ModelsMultipleAgentType ](../../eventlog-sdk/pkg/eventlogclientmodels/models_multiple_agent_type.go) |
| `models.MultipleEventID` | [ModelsMultipleEventID ](../../eventlog-sdk/pkg/eventlogclientmodels/models_multiple_event_id.go) |
| `models.MultipleEventLevel` | [ModelsMultipleEventLevel ](../../eventlog-sdk/pkg/eventlogclientmodels/models_multiple_event_level.go) |
| `models.MultipleEventType` | [ModelsMultipleEventType ](../../eventlog-sdk/pkg/eventlogclientmodels/models_multiple_event_type.go) |
| `models.MultipleUX` | [ModelsMultipleUX ](../../eventlog-sdk/pkg/eventlogclientmodels/models_multiple_ux.go) |
| `models.Pagination` | [ModelsPagination ](../../eventlog-sdk/pkg/eventlogclientmodels/models_pagination.go) |
| `models.Paging` | [ModelsPaging ](../../eventlog-sdk/pkg/eventlogclientmodels/models_paging.go) |
| `models.UX` | [ModelsUX ](../../eventlog-sdk/pkg/eventlogclientmodels/models_ux.go) |
| `models.UserLastActivity` | [ModelsUserLastActivity ](../../eventlog-sdk/pkg/eventlogclientmodels/models_user_last_activity.go) |
