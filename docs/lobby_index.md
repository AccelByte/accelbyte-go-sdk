# Lobby Service Index

&nbsp;

## Operations

### friends Wrapper:  [Friends](../services-api/pkg/service/lobby/friends.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/friends/namespaces/{namespace}/me` | GET | GetUserFriendsUpdatedShort | [GetUserFriendsUpdatedShort](../lobby-sdk/pkg/lobbyclient/friends/friends_client.go) | [GetUserFriendsUpdatedShort](../services-api/pkg/service/lobby/friends.go) |
| `/friends/namespaces/{namespace}/me/incoming` | GET | GetUserIncomingFriendsShort | [GetUserIncomingFriendsShort](../lobby-sdk/pkg/lobbyclient/friends/friends_client.go) | [GetUserIncomingFriendsShort](../services-api/pkg/service/lobby/friends.go) |
| `/friends/namespaces/{namespace}/me/outgoing` | GET | GetUserOutgoingFriendsShort | [GetUserOutgoingFriendsShort](../lobby-sdk/pkg/lobbyclient/friends/friends_client.go) | [GetUserOutgoingFriendsShort](../services-api/pkg/service/lobby/friends.go) |
| `/friends/namespaces/{namespace}/me/request` | POST | UserRequestFriendShort | [UserRequestFriendShort](../lobby-sdk/pkg/lobbyclient/friends/friends_client.go) | [UserRequestFriendShort](../services-api/pkg/service/lobby/friends.go) |
| `/friends/namespaces/{namespace}/me/request/accept` | POST | UserAcceptFriendRequestShort | [UserAcceptFriendRequestShort](../lobby-sdk/pkg/lobbyclient/friends/friends_client.go) | [UserAcceptFriendRequestShort](../services-api/pkg/service/lobby/friends.go) |
| `/friends/namespaces/{namespace}/me/request/cancel` | POST | UserCancelFriendRequestShort | [UserCancelFriendRequestShort](../lobby-sdk/pkg/lobbyclient/friends/friends_client.go) | [UserCancelFriendRequestShort](../services-api/pkg/service/lobby/friends.go) |
| `/friends/namespaces/{namespace}/me/request/reject` | POST | UserRejectFriendRequestShort | [UserRejectFriendRequestShort](../lobby-sdk/pkg/lobbyclient/friends/friends_client.go) | [UserRejectFriendRequestShort](../services-api/pkg/service/lobby/friends.go) |
| `/friends/namespaces/{namespace}/me/status/{friendId}` | GET | UserGetFriendshipStatusShort | [UserGetFriendshipStatusShort](../lobby-sdk/pkg/lobbyclient/friends/friends_client.go) | [UserGetFriendshipStatusShort](../services-api/pkg/service/lobby/friends.go) |
| `/friends/namespaces/{namespace}/me/unfriend` | POST | UserUnfriendRequestShort | [UserUnfriendRequestShort](../lobby-sdk/pkg/lobbyclient/friends/friends_client.go) | [UserUnfriendRequestShort](../services-api/pkg/service/lobby/friends.go) |
| `/friends/namespaces/{namespace}/users/{userId}/add/bulk` | POST | AddFriendsWithoutConfirmationShort | [AddFriendsWithoutConfirmationShort](../lobby-sdk/pkg/lobbyclient/friends/friends_client.go) | [AddFriendsWithoutConfirmationShort](../services-api/pkg/service/lobby/friends.go) |
| `/lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}` | GET | GetListOfFriendsShort | [GetListOfFriendsShort](../lobby-sdk/pkg/lobbyclient/friends/friends_client.go) | [GetListOfFriendsShort](../services-api/pkg/service/lobby/friends.go) |

### chat Wrapper:  [Chat](../services-api/pkg/service/lobby/chat.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/lobby/chat/namespaces/{namespace}/users/{userId}/friend/{friendId}` | GET | PersonalChatHistoryShort | [PersonalChatHistoryShort](../lobby-sdk/pkg/lobbyclient/chat/chat_client.go) | [PersonalChatHistoryShort](../services-api/pkg/service/lobby/chat.go) |
| `/lobby/v1/admin/chat/namespaces/{namespace}/users/{userId}/friends/{friendId}` | GET | AdminChatHistoryShort | [AdminChatHistoryShort](../lobby-sdk/pkg/lobbyclient/chat/chat_client.go) | [AdminChatHistoryShort](../services-api/pkg/service/lobby/chat.go) |
| `/lobby/v1/public/chat/namespaces/{namespace}/users/me/friends/{friendId}` | GET | GetPersonalChatHistoryV1PublicShort | [GetPersonalChatHistoryV1PublicShort](../lobby-sdk/pkg/lobbyclient/chat/chat_client.go) | [GetPersonalChatHistoryV1PublicShort](../services-api/pkg/service/lobby/chat.go) |

### config Wrapper:  [Config](../services-api/pkg/service/lobby/config.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/lobby/v1/admin/config` | GET | AdminGetAllConfigV1Short | [AdminGetAllConfigV1Short](../lobby-sdk/pkg/lobbyclient/config/config_client.go) | [AdminGetAllConfigV1Short](../services-api/pkg/service/lobby/config.go) |
| `/lobby/v1/admin/config/namespaces/{namespace}` | GET | AdminGetConfigV1Short | [AdminGetConfigV1Short](../lobby-sdk/pkg/lobbyclient/config/config_client.go) | [AdminGetConfigV1Short](../services-api/pkg/service/lobby/config.go) |
| `/lobby/v1/admin/config/namespaces/{namespace}` | PUT | AdminUpdateConfigV1Short | [AdminUpdateConfigV1Short](../lobby-sdk/pkg/lobbyclient/config/config_client.go) | [AdminUpdateConfigV1Short](../services-api/pkg/service/lobby/config.go) |
| `/lobby/v1/admin/config/namespaces/{namespace}/export` | GET | AdminExportConfigV1Short | [AdminExportConfigV1Short](../lobby-sdk/pkg/lobbyclient/config/config_client.go) | [AdminExportConfigV1Short](../services-api/pkg/service/lobby/config.go) |
| `/lobby/v1/admin/config/namespaces/{namespace}/import` | POST | AdminImportConfigV1Short | [AdminImportConfigV1Short](../lobby-sdk/pkg/lobbyclient/config/config_client.go) | [AdminImportConfigV1Short](../services-api/pkg/service/lobby/config.go) |

### notification Wrapper:  [Notification](../services-api/pkg/service/lobby/notification.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/lobby/v1/admin/notification/namespaces/{namespace}/bulkUsers/freeform/notify` | POST | SendMultipleUsersFreeformNotificationV1AdminShort | [SendMultipleUsersFreeformNotificationV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [SendMultipleUsersFreeformNotificationV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/freeform/notify` | POST | SendUsersFreeformNotificationV1AdminShort | [SendUsersFreeformNotificationV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [SendUsersFreeformNotificationV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/freeform/notify` | POST | SendPartyFreeformNotificationV1AdminShort | [SendPartyFreeformNotificationV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [SendPartyFreeformNotificationV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/templates/notify` | POST | SendPartyTemplatedNotificationV1AdminShort | [SendPartyTemplatedNotificationV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [SendPartyTemplatedNotificationV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/templates` | GET | GetAllNotificationTemplatesV1AdminShort | [GetAllNotificationTemplatesV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [GetAllNotificationTemplatesV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/templates` | POST | CreateNotificationTemplateV1AdminShort | [CreateNotificationTemplateV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [CreateNotificationTemplateV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/templates/notify` | POST | SendUsersTemplatedNotificationV1AdminShort | [SendUsersTemplatedNotificationV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [SendUsersTemplatedNotificationV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}` | GET | GetTemplateSlugLocalizationsTemplateV1AdminShort | [GetTemplateSlugLocalizationsTemplateV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [GetTemplateSlugLocalizationsTemplateV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}` | DELETE | DeleteNotificationTemplateSlugV1AdminShort | [DeleteNotificationTemplateSlugV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [DeleteNotificationTemplateSlugV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}` | GET | GetSingleTemplateLocalizationV1AdminShort | [GetSingleTemplateLocalizationV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [GetSingleTemplateLocalizationV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}` | PUT | UpdateTemplateLocalizationV1AdminShort | [UpdateTemplateLocalizationV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [UpdateTemplateLocalizationV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}` | DELETE | DeleteTemplateLocalizationV1AdminShort | [DeleteTemplateLocalizationV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [DeleteTemplateLocalizationV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish` | POST | PublishTemplateLocalizationV1AdminShort | [PublishTemplateLocalizationV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [PublishTemplateLocalizationV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/topics` | GET | GetAllNotificationTopicsV1AdminShort | [GetAllNotificationTopicsV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [GetAllNotificationTopicsV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/topics` | POST | CreateNotificationTopicV1AdminShort | [CreateNotificationTopicV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [CreateNotificationTopicV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}` | GET | GetNotificationTopicV1AdminShort | [GetNotificationTopicV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [GetNotificationTopicV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}` | PUT | UpdateNotificationTopicV1AdminShort | [UpdateNotificationTopicV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [UpdateNotificationTopicV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}` | DELETE | DeleteNotificationTopicV1AdminShort | [DeleteNotificationTopicV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [DeleteNotificationTopicV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/freeform/notify` | POST | SendSpecificUserFreeformNotificationV1AdminShort | [SendSpecificUserFreeformNotificationV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [SendSpecificUserFreeformNotificationV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/templates/notify` | POST | SendSpecificUserTemplatedNotificationV1AdminShort | [SendSpecificUserTemplatedNotificationV1AdminShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [SendSpecificUserTemplatedNotificationV1AdminShort](../services-api/pkg/service/lobby/notification.go) |
| `/notification/namespaces/{namespace}/freeform` | POST | FreeFormNotificationShort | [FreeFormNotificationShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [FreeFormNotificationShort](../services-api/pkg/service/lobby/notification.go) |
| `/notification/namespaces/{namespace}/templated` | POST | NotificationWithTemplateShort | [NotificationWithTemplateShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [NotificationWithTemplateShort](../services-api/pkg/service/lobby/notification.go) |
| `/notification/namespaces/{namespace}/templates` | GET | GetGameTemplateShort | [GetGameTemplateShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [GetGameTemplateShort](../services-api/pkg/service/lobby/notification.go) |
| `/notification/namespaces/{namespace}/templates` | POST | CreateTemplateShort | [CreateTemplateShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [CreateTemplateShort](../services-api/pkg/service/lobby/notification.go) |
| `/notification/namespaces/{namespace}/templates/{templateSlug}` | GET | GetSlugTemplateShort | [GetSlugTemplateShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [GetSlugTemplateShort](../services-api/pkg/service/lobby/notification.go) |
| `/notification/namespaces/{namespace}/templates/{templateSlug}` | DELETE | DeleteTemplateSlugShort | [DeleteTemplateSlugShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [DeleteTemplateSlugShort](../services-api/pkg/service/lobby/notification.go) |
| `/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}` | GET | GetLocalizationTemplateShort | [GetLocalizationTemplateShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [GetLocalizationTemplateShort](../services-api/pkg/service/lobby/notification.go) |
| `/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}` | PUT | UpdateLocalizationTemplateShort | [UpdateLocalizationTemplateShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [UpdateLocalizationTemplateShort](../services-api/pkg/service/lobby/notification.go) |
| `/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}` | DELETE | DeleteTemplateLocalizationShort | [DeleteTemplateLocalizationShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [DeleteTemplateLocalizationShort](../services-api/pkg/service/lobby/notification.go) |
| `/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish` | POST | PublishTemplateShort | [PublishTemplateShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [PublishTemplateShort](../services-api/pkg/service/lobby/notification.go) |
| `/notification/namespaces/{namespace}/topics` | GET | GetTopicByNamespaceShort | [GetTopicByNamespaceShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [GetTopicByNamespaceShort](../services-api/pkg/service/lobby/notification.go) |
| `/notification/namespaces/{namespace}/topics` | POST | CreateTopicShort | [CreateTopicShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [CreateTopicShort](../services-api/pkg/service/lobby/notification.go) |
| `/notification/namespaces/{namespace}/topics/{topic}` | GET | GetTopicByTopicNameShort | [GetTopicByTopicNameShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [GetTopicByTopicNameShort](../services-api/pkg/service/lobby/notification.go) |
| `/notification/namespaces/{namespace}/topics/{topic}` | PUT | UpdateTopicByTopicNameShort | [UpdateTopicByTopicNameShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [UpdateTopicByTopicNameShort](../services-api/pkg/service/lobby/notification.go) |
| `/notification/namespaces/{namespace}/topics/{topic}` | DELETE | DeleteTopicByTopicNameShort | [DeleteTopicByTopicNameShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [DeleteTopicByTopicNameShort](../services-api/pkg/service/lobby/notification.go) |
| `/notification/namespaces/{namespace}/users/{userId}/freeform` | POST | FreeFormNotificationByUserIDShort | [FreeFormNotificationByUserIDShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [FreeFormNotificationByUserIDShort](../services-api/pkg/service/lobby/notification.go) |
| `/notification/namespaces/{namespace}/users/{userId}/templated` | POST | NotificationWithTemplateByUserIDShort | [NotificationWithTemplateByUserIDShort](../lobby-sdk/pkg/lobbyclient/notification/notification_client.go) | [NotificationWithTemplateByUserIDShort](../services-api/pkg/service/lobby/notification.go) |

### party Wrapper:  [Party](../services-api/pkg/service/lobby/party.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}` | GET | AdminGetPartyDataV1Short | [AdminGetPartyDataV1Short](../lobby-sdk/pkg/lobbyclient/party/party_client.go) | [AdminGetPartyDataV1Short](../services-api/pkg/service/lobby/party.go) |
| `/lobby/v1/admin/party/namespaces/{namespace}/users/{userId}/party` | GET | AdminGetUserPartyV1Short | [AdminGetUserPartyV1Short](../lobby-sdk/pkg/lobbyclient/party/party_client.go) | [AdminGetUserPartyV1Short](../services-api/pkg/service/lobby/party.go) |
| `/lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}` | GET | PublicGetPartyDataV1Short | [PublicGetPartyDataV1Short](../lobby-sdk/pkg/lobbyclient/party/party_client.go) | [PublicGetPartyDataV1Short](../services-api/pkg/service/lobby/party.go) |
| `/lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/attributes` | PUT | PublicUpdatePartyAttributesV1Short | [PublicUpdatePartyAttributesV1Short](../lobby-sdk/pkg/lobbyclient/party/party_client.go) | [PublicUpdatePartyAttributesV1Short](../services-api/pkg/service/lobby/party.go) |

### Lobby Operations Wrapper:  [LobbyOperations](../services-api/pkg/service/lobby/lobbyOperations.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/attributes` | PUT | AdminUpdatePartyAttributesV1Short | [AdminUpdatePartyAttributesV1Short](../lobby-sdk/pkg/lobbyclient/lobby_operations/lobby_operations_client.go) | [AdminUpdatePartyAttributesV1Short](../services-api/pkg/service/lobby/lobbyOperations.go) |
| `/lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/join/{userId}` | POST | AdminJoinPartyV1Short | [AdminJoinPartyV1Short](../lobby-sdk/pkg/lobbyclient/lobby_operations/lobby_operations_client.go) | [AdminJoinPartyV1Short](../services-api/pkg/service/lobby/lobbyOperations.go) |
| `/lobby/v1/messages` | GET | PublicGetMessagesShort | [PublicGetMessagesShort](../lobby-sdk/pkg/lobbyclient/lobby_operations/lobby_operations_client.go) | [PublicGetMessagesShort](../services-api/pkg/service/lobby/lobbyOperations.go) |

### player Wrapper:  [Player](../services-api/pkg/service/lobby/player.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/lobby/v1/admin/player/namespaces/{namespace}/ccu` | GET | AdminGetLobbyCCUShort | [AdminGetLobbyCCUShort](../lobby-sdk/pkg/lobbyclient/player/player_client.go) | [AdminGetLobbyCCUShort](../services-api/pkg/service/lobby/player.go) |
| `/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes` | GET | AdminGetAllPlayerSessionAttributeShort | [AdminGetAllPlayerSessionAttributeShort](../lobby-sdk/pkg/lobbyclient/player/player_client.go) | [AdminGetAllPlayerSessionAttributeShort](../services-api/pkg/service/lobby/player.go) |
| `/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes` | PUT | AdminSetPlayerSessionAttributeShort | [AdminSetPlayerSessionAttributeShort](../lobby-sdk/pkg/lobbyclient/player/player_client.go) | [AdminSetPlayerSessionAttributeShort](../services-api/pkg/service/lobby/player.go) |
| `/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes/{attribute}` | GET | AdminGetPlayerSessionAttributeShort | [AdminGetPlayerSessionAttributeShort](../lobby-sdk/pkg/lobbyclient/player/player_client.go) | [AdminGetPlayerSessionAttributeShort](../services-api/pkg/service/lobby/player.go) |
| `/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked` | GET | AdminGetPlayerBlockedPlayersV1Short | [AdminGetPlayerBlockedPlayersV1Short](../lobby-sdk/pkg/lobbyclient/player/player_client.go) | [AdminGetPlayerBlockedPlayersV1Short](../services-api/pkg/service/lobby/player.go) |
| `/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked-by` | GET | AdminGetPlayerBlockedByPlayersV1Short | [AdminGetPlayerBlockedByPlayersV1Short](../lobby-sdk/pkg/lobbyclient/player/player_client.go) | [AdminGetPlayerBlockedByPlayersV1Short](../services-api/pkg/service/lobby/player.go) |
| `/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/block` | POST | AdminBulkBlockPlayersV1Short | [AdminBulkBlockPlayersV1Short](../lobby-sdk/pkg/lobbyclient/player/player_client.go) | [AdminBulkBlockPlayersV1Short](../services-api/pkg/service/lobby/player.go) |
| `/lobby/v1/public/player/namespaces/{namespace}/users/me/blocked` | GET | PublicGetPlayerBlockedPlayersV1Short | [PublicGetPlayerBlockedPlayersV1Short](../lobby-sdk/pkg/lobbyclient/player/player_client.go) | [PublicGetPlayerBlockedPlayersV1Short](../services-api/pkg/service/lobby/player.go) |
| `/lobby/v1/public/player/namespaces/{namespace}/users/me/blocked-by` | GET | PublicGetPlayerBlockedByPlayersV1Short | [PublicGetPlayerBlockedByPlayersV1Short](../lobby-sdk/pkg/lobbyclient/player/player_client.go) | [PublicGetPlayerBlockedByPlayersV1Short](../services-api/pkg/service/lobby/player.go) |

### profanity Wrapper:  [Profanity](../services-api/pkg/service/lobby/profanity.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/lobby/v1/admin/profanity/namespaces/{namespace}/filters/debug` | POST | AdminDebugProfanityFiltersShort | [AdminDebugProfanityFiltersShort](../lobby-sdk/pkg/lobbyclient/profanity/profanity_client.go) | [AdminDebugProfanityFiltersShort](../services-api/pkg/service/lobby/profanity.go) |
| `/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters` | GET | AdminGetProfanityListFiltersV1Short | [AdminGetProfanityListFiltersV1Short](../lobby-sdk/pkg/lobbyclient/profanity/profanity_client.go) | [AdminGetProfanityListFiltersV1Short](../services-api/pkg/service/lobby/profanity.go) |
| `/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters` | POST | AdminAddProfanityFilterIntoListShort | [AdminAddProfanityFilterIntoListShort](../lobby-sdk/pkg/lobbyclient/profanity/profanity_client.go) | [AdminAddProfanityFilterIntoListShort](../services-api/pkg/service/lobby/profanity.go) |
| `/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk` | POST | AdminAddProfanityFiltersShort | [AdminAddProfanityFiltersShort](../lobby-sdk/pkg/lobbyclient/profanity/profanity_client.go) | [AdminAddProfanityFiltersShort](../services-api/pkg/service/lobby/profanity.go) |
| `/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk-file` | POST | AdminImportProfanityFiltersFromFileShort | [AdminImportProfanityFiltersFromFileShort](../lobby-sdk/pkg/lobbyclient/profanity/profanity_client.go) | [AdminImportProfanityFiltersFromFileShort](../services-api/pkg/service/lobby/profanity.go) |
| `/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/delete` | POST | AdminDeleteProfanityFilterShort | [AdminDeleteProfanityFilterShort](../lobby-sdk/pkg/lobbyclient/profanity/profanity_client.go) | [AdminDeleteProfanityFilterShort](../services-api/pkg/service/lobby/profanity.go) |
| `/lobby/v1/admin/profanity/namespaces/{namespace}/lists` | GET | AdminGetProfanityListsShort | [AdminGetProfanityListsShort](../lobby-sdk/pkg/lobbyclient/profanity/profanity_client.go) | [AdminGetProfanityListsShort](../services-api/pkg/service/lobby/profanity.go) |
| `/lobby/v1/admin/profanity/namespaces/{namespace}/lists` | POST | AdminCreateProfanityListShort | [AdminCreateProfanityListShort](../lobby-sdk/pkg/lobbyclient/profanity/profanity_client.go) | [AdminCreateProfanityListShort](../services-api/pkg/service/lobby/profanity.go) |
| `/lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}` | POST | AdminUpdateProfanityListShort | [AdminUpdateProfanityListShort](../lobby-sdk/pkg/lobbyclient/profanity/profanity_client.go) | [AdminUpdateProfanityListShort](../services-api/pkg/service/lobby/profanity.go) |
| `/lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}` | DELETE | AdminDeleteProfanityListShort | [AdminDeleteProfanityListShort](../lobby-sdk/pkg/lobbyclient/profanity/profanity_client.go) | [AdminDeleteProfanityListShort](../services-api/pkg/service/lobby/profanity.go) |
| `/lobby/v1/admin/profanity/namespaces/{namespace}/rule` | GET | AdminGetProfanityRuleShort | [AdminGetProfanityRuleShort](../lobby-sdk/pkg/lobbyclient/profanity/profanity_client.go) | [AdminGetProfanityRuleShort](../services-api/pkg/service/lobby/profanity.go) |
| `/lobby/v1/admin/profanity/namespaces/{namespace}/rule` | POST | AdminSetProfanityRuleForNamespaceShort | [AdminSetProfanityRuleForNamespaceShort](../lobby-sdk/pkg/lobbyclient/profanity/profanity_client.go) | [AdminSetProfanityRuleForNamespaceShort](../services-api/pkg/service/lobby/profanity.go) |
| `/lobby/v1/admin/profanity/namespaces/{namespace}/verify` | POST | AdminVerifyMessageProfanityResponseShort | [AdminVerifyMessageProfanityResponseShort](../lobby-sdk/pkg/lobbyclient/profanity/profanity_client.go) | [AdminVerifyMessageProfanityResponseShort](../services-api/pkg/service/lobby/profanity.go) |

### thirdParty Wrapper:  [ThirdParty](../services-api/pkg/service/lobby/thirdParty.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam` | GET | AdminGetThirdPartyConfigShort | [AdminGetThirdPartyConfigShort](../lobby-sdk/pkg/lobbyclient/third_party/third_party_client.go) | [AdminGetThirdPartyConfigShort](../services-api/pkg/service/lobby/thirdParty.go) |
| `/lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam` | PUT | AdminUpdateThirdPartyConfigShort | [AdminUpdateThirdPartyConfigShort](../lobby-sdk/pkg/lobbyclient/third_party/third_party_client.go) | [AdminUpdateThirdPartyConfigShort](../services-api/pkg/service/lobby/thirdParty.go) |
| `/lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam` | POST | AdminCreateThirdPartyConfigShort | [AdminCreateThirdPartyConfigShort](../lobby-sdk/pkg/lobbyclient/third_party/third_party_client.go) | [AdminCreateThirdPartyConfigShort](../services-api/pkg/service/lobby/thirdParty.go) |
| `/lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam` | DELETE | AdminDeleteThirdPartyConfigShort | [AdminDeleteThirdPartyConfigShort](../lobby-sdk/pkg/lobbyclient/third_party/third_party_client.go) | [AdminDeleteThirdPartyConfigShort](../services-api/pkg/service/lobby/thirdParty.go) |

### presence Wrapper:  [Presence](../services-api/pkg/service/lobby/presence.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/lobby/v1/public/presence/namespaces/{namespace}/users/presence` | GET | UsersPresenceHandlerV1Short | [UsersPresenceHandlerV1Short](../lobby-sdk/pkg/lobbyclient/presence/presence_client.go) | [UsersPresenceHandlerV1Short](../services-api/pkg/service/lobby/presence.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `handlers.GetUsersPresenceResponse` | [HandlersGetUsersPresenceResponse ](../lobby-sdk/pkg/lobbyclientmodels/handlers_get_users_presence_response.go) |
| `handlers.UserPresence` | [HandlersUserPresence ](../lobby-sdk/pkg/lobbyclientmodels/handlers_user_presence.go) |
| `log.AppMessageDeclaration` | [LogAppMessageDeclaration ](../lobby-sdk/pkg/lobbyclientmodels/log_app_message_declaration.go) |
| `model.BulkAddFriendsRequest` | [ModelBulkAddFriendsRequest ](../lobby-sdk/pkg/lobbyclientmodels/model_bulk_add_friends_request.go) |
| `model.BulkUsersFreeFormNotificationRequestV1` | [ModelBulkUsersFreeFormNotificationRequestV1 ](../lobby-sdk/pkg/lobbyclientmodels/model_bulk_users_free_form_notification_request_v1.go) |
| `model.ChatMessageResponse` | [ModelChatMessageResponse ](../lobby-sdk/pkg/lobbyclientmodels/model_chat_message_response.go) |
| `model.CreateTemplateRequest` | [ModelCreateTemplateRequest ](../lobby-sdk/pkg/lobbyclientmodels/model_create_template_request.go) |
| `model.CreateTopicRequest` | [ModelCreateTopicRequest ](../lobby-sdk/pkg/lobbyclientmodels/model_create_topic_request.go) |
| `model.CreateTopicRequestV1` | [ModelCreateTopicRequestV1 ](../lobby-sdk/pkg/lobbyclientmodels/model_create_topic_request_v1.go) |
| `model.FreeFormNotificationRequest` | [ModelFreeFormNotificationRequest ](../lobby-sdk/pkg/lobbyclientmodels/model_free_form_notification_request.go) |
| `model.FreeFormNotificationRequestV1` | [ModelFreeFormNotificationRequestV1 ](../lobby-sdk/pkg/lobbyclientmodels/model_free_form_notification_request_v1.go) |
| `model.GetAllNotificationTemplateSlugResp` | [ModelGetAllNotificationTemplateSlugResp ](../lobby-sdk/pkg/lobbyclientmodels/model_get_all_notification_template_slug_resp.go) |
| `model.GetAllNotificationTopicsResponse` | [ModelGetAllNotificationTopicsResponse ](../lobby-sdk/pkg/lobbyclientmodels/model_get_all_notification_topics_response.go) |
| `model.GetFriendsResponse` | [ModelGetFriendsResponse ](../lobby-sdk/pkg/lobbyclientmodels/model_get_friends_response.go) |
| `model.GetUserFriendsResponse` | [ModelGetUserFriendsResponse ](../lobby-sdk/pkg/lobbyclientmodels/model_get_user_friends_response.go) |
| `model.GetUserIncomingFriendsResponse` | [ModelGetUserIncomingFriendsResponse ](../lobby-sdk/pkg/lobbyclientmodels/model_get_user_incoming_friends_response.go) |
| `model.GetUserOutgoingFriendsResponse` | [ModelGetUserOutgoingFriendsResponse ](../lobby-sdk/pkg/lobbyclientmodels/model_get_user_outgoing_friends_response.go) |
| `model.Localization` | [ModelLocalization ](../lobby-sdk/pkg/lobbyclientmodels/model_localization.go) |
| `model.NotificationTemplateResponse` | [ModelNotificationTemplateResponse ](../lobby-sdk/pkg/lobbyclientmodels/model_notification_template_response.go) |
| `model.NotificationTopicResponse` | [ModelNotificationTopicResponse ](../lobby-sdk/pkg/lobbyclientmodels/model_notification_topic_response.go) |
| `model.NotificationTopicResponseV1` | [ModelNotificationTopicResponseV1 ](../lobby-sdk/pkg/lobbyclientmodels/model_notification_topic_response_v1.go) |
| `model.NotificationWithTemplateRequest` | [ModelNotificationWithTemplateRequest ](../lobby-sdk/pkg/lobbyclientmodels/model_notification_with_template_request.go) |
| `model.NotificationWithTemplateRequestV1` | [ModelNotificationWithTemplateRequestV1 ](../lobby-sdk/pkg/lobbyclientmodels/model_notification_with_template_request_v1.go) |
| `model.Pagination` | [ModelPagination ](../lobby-sdk/pkg/lobbyclientmodels/model_pagination.go) |
| `model.RequestFriendsRequest` | [ModelRequestFriendsRequest ](../lobby-sdk/pkg/lobbyclientmodels/model_request_friends_request.go) |
| `model.TemplateContent` | [ModelTemplateContent ](../lobby-sdk/pkg/lobbyclientmodels/model_template_content.go) |
| `model.TemplateLocalization` | [ModelTemplateLocalization ](../lobby-sdk/pkg/lobbyclientmodels/model_template_localization.go) |
| `model.TemplateLocalizationResponse` | [ModelTemplateLocalizationResponse ](../lobby-sdk/pkg/lobbyclientmodels/model_template_localization_response.go) |
| `model.TemplateResponse` | [ModelTemplateResponse ](../lobby-sdk/pkg/lobbyclientmodels/model_template_response.go) |
| `model.TopicByNamespacesResponse` | [ModelTopicByNamespacesResponse ](../lobby-sdk/pkg/lobbyclientmodels/model_topic_by_namespaces_response.go) |
| `model.UpdateTemplateRequest` | [ModelUpdateTemplateRequest ](../lobby-sdk/pkg/lobbyclientmodels/model_update_template_request.go) |
| `model.UpdateTopicRequest` | [ModelUpdateTopicRequest ](../lobby-sdk/pkg/lobbyclientmodels/model_update_topic_request.go) |
| `model.UserAcceptFriendRequest` | [ModelUserAcceptFriendRequest ](../lobby-sdk/pkg/lobbyclientmodels/model_user_accept_friend_request.go) |
| `model.UserCancelFriendRequest` | [ModelUserCancelFriendRequest ](../lobby-sdk/pkg/lobbyclientmodels/model_user_cancel_friend_request.go) |
| `model.UserGetFriendshipStatusResponse` | [ModelUserGetFriendshipStatusResponse ](../lobby-sdk/pkg/lobbyclientmodels/model_user_get_friendship_status_response.go) |
| `model.UserRejectFriendRequest` | [ModelUserRejectFriendRequest ](../lobby-sdk/pkg/lobbyclientmodels/model_user_reject_friend_request.go) |
| `model.UserUnfriendRequest` | [ModelUserUnfriendRequest ](../lobby-sdk/pkg/lobbyclientmodels/model_user_unfriend_request.go) |
| `models.AdminAddProfanityFilterIntoListRequest` | [ModelsAdminAddProfanityFilterIntoListRequest ](../lobby-sdk/pkg/lobbyclientmodels/models_admin_add_profanity_filter_into_list_request.go) |
| `models.AdminAddProfanityFiltersFilterRequest` | [ModelsAdminAddProfanityFiltersFilterRequest ](../lobby-sdk/pkg/lobbyclientmodels/models_admin_add_profanity_filters_filter_request.go) |
| `models.AdminAddProfanityFiltersRequest` | [ModelsAdminAddProfanityFiltersRequest ](../lobby-sdk/pkg/lobbyclientmodels/models_admin_add_profanity_filters_request.go) |
| `models.AdminCreateProfanityListRequest` | [ModelsAdminCreateProfanityListRequest ](../lobby-sdk/pkg/lobbyclientmodels/models_admin_create_profanity_list_request.go) |
| `models.AdminDeleteProfanityFilterRequest` | [ModelsAdminDeleteProfanityFilterRequest ](../lobby-sdk/pkg/lobbyclientmodels/models_admin_delete_profanity_filter_request.go) |
| `models.AdminGetProfanityListFiltersV1Response` | [ModelsAdminGetProfanityListFiltersV1Response ](../lobby-sdk/pkg/lobbyclientmodels/models_admin_get_profanity_list_filters_v1_response.go) |
| `models.AdminGetProfanityListsListResponse` | [ModelsAdminGetProfanityListsListResponse ](../lobby-sdk/pkg/lobbyclientmodels/models_admin_get_profanity_lists_list_response.go) |
| `models.AdminSetProfanityRuleForNamespaceRequest` | [ModelsAdminSetProfanityRuleForNamespaceRequest ](../lobby-sdk/pkg/lobbyclientmodels/models_admin_set_profanity_rule_for_namespace_request.go) |
| `models.AdminUpdateProfanityList` | [ModelsAdminUpdateProfanityList ](../lobby-sdk/pkg/lobbyclientmodels/models_admin_update_profanity_list.go) |
| `models.AdminVerifyMessageProfanityRequest` | [ModelsAdminVerifyMessageProfanityRequest ](../lobby-sdk/pkg/lobbyclientmodels/models_admin_verify_message_profanity_request.go) |
| `models.AdminVerifyMessageProfanityResponse` | [ModelsAdminVerifyMessageProfanityResponse ](../lobby-sdk/pkg/lobbyclientmodels/models_admin_verify_message_profanity_response.go) |
| `models.BlockedByPlayerData` | [ModelsBlockedByPlayerData ](../lobby-sdk/pkg/lobbyclientmodels/models_blocked_by_player_data.go) |
| `models.BlockedPlayerData` | [ModelsBlockedPlayerData ](../lobby-sdk/pkg/lobbyclientmodels/models_blocked_player_data.go) |
| `models.Config` | [ModelsConfig ](../lobby-sdk/pkg/lobbyclientmodels/models_config.go) |
| `models.ConfigExport` | [ModelsConfigExport ](../lobby-sdk/pkg/lobbyclientmodels/models_config_export.go) |
| `models.ConfigList` | [ModelsConfigList ](../lobby-sdk/pkg/lobbyclientmodels/models_config_list.go) |
| `models.ConfigReq` | [ModelsConfigReq ](../lobby-sdk/pkg/lobbyclientmodels/models_config_req.go) |
| `models.CreateConfigRequest` | [ModelsCreateConfigRequest ](../lobby-sdk/pkg/lobbyclientmodels/models_create_config_request.go) |
| `models.CreateConfigResponse` | [ModelsCreateConfigResponse ](../lobby-sdk/pkg/lobbyclientmodels/models_create_config_response.go) |
| `models.DebugProfanityFilterRequest` | [ModelsDebugProfanityFilterRequest ](../lobby-sdk/pkg/lobbyclientmodels/models_debug_profanity_filter_request.go) |
| `models.GetAllPlayerBlockedByUsersResponse` | [ModelsGetAllPlayerBlockedByUsersResponse ](../lobby-sdk/pkg/lobbyclientmodels/models_get_all_player_blocked_by_users_response.go) |
| `models.GetAllPlayerBlockedUsersResponse` | [ModelsGetAllPlayerBlockedUsersResponse ](../lobby-sdk/pkg/lobbyclientmodels/models_get_all_player_blocked_users_response.go) |
| `models.GetAllPlayerSessionAttributeResponse` | [ModelsGetAllPlayerSessionAttributeResponse ](../lobby-sdk/pkg/lobbyclientmodels/models_get_all_player_session_attribute_response.go) |
| `models.GetConfigResponse` | [ModelsGetConfigResponse ](../lobby-sdk/pkg/lobbyclientmodels/models_get_config_response.go) |
| `models.GetLobbyCcuResponse` | [ModelsGetLobbyCcuResponse ](../lobby-sdk/pkg/lobbyclientmodels/models_get_lobby_ccu_response.go) |
| `models.GetPlayerSessionAttributeResponse` | [ModelsGetPlayerSessionAttributeResponse ](../lobby-sdk/pkg/lobbyclientmodels/models_get_player_session_attribute_response.go) |
| `models.ImportConfigResponse` | [ModelsImportConfigResponse ](../lobby-sdk/pkg/lobbyclientmodels/models_import_config_response.go) |
| `models.ListBlockedPlayerRequest` | [ModelsListBlockedPlayerRequest ](../lobby-sdk/pkg/lobbyclientmodels/models_list_blocked_player_request.go) |
| `models.PartyData` | [ModelsPartyData ](../lobby-sdk/pkg/lobbyclientmodels/models_party_data.go) |
| `models.PartyPUTCustomAttributesRequest` | [ModelsPartyPUTCustomAttributesRequest ](../lobby-sdk/pkg/lobbyclientmodels/models_party_put_custom_attributes_request.go) |
| `models.ProfanityFilter` | [ModelsProfanityFilter ](../lobby-sdk/pkg/lobbyclientmodels/models_profanity_filter.go) |
| `models.ProfanityRule` | [ModelsProfanityRule ](../lobby-sdk/pkg/lobbyclientmodels/models_profanity_rule.go) |
| `models.SetPlayerSessionAttributeRequest` | [ModelsSetPlayerSessionAttributeRequest ](../lobby-sdk/pkg/lobbyclientmodels/models_set_player_session_attribute_request.go) |
| `models.UpdateConfigRequest` | [ModelsUpdateConfigRequest ](../lobby-sdk/pkg/lobbyclientmodels/models_update_config_request.go) |
| `models.UpdateConfigResponse` | [ModelsUpdateConfigResponse ](../lobby-sdk/pkg/lobbyclientmodels/models_update_config_response.go) |
| `response.Error` | [ResponseError ](../lobby-sdk/pkg/lobbyclientmodels/response_error.go) |
| `restapi.ErrorResponseBody` | [RestapiErrorResponseBody ](../lobby-sdk/pkg/lobbyclientmodels/restapi_error_response_body.go) |
| `restapi.ErrorResponseV1` | [RestapiErrorResponseV1 ](../lobby-sdk/pkg/lobbyclientmodels/restapi_error_response_v1.go) |
