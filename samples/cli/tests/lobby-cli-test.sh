#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..96"

#- 1 Login
samples/cli/sample-apps login \
    -u 'admin' \
    -p 'admin' \
    > test.out 2>&1
eval_tap $? 1 'Login' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 GetUserFriendsUpdated
samples/cli/sample-apps Lobby getUserFriendsUpdated \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "Q4hrynph6dJR6tl4", "friendPublicId": "npi7cZk1upJfBerE"}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "qt6m9UW6mbiRFotO"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "kPqgT4UMJYF4o8pm"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "OhALrfBXMZeEMKLP"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'cMD61eBrSd8cbplf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "lHOnqlj6TFd1yiiT"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId '1plbxxdXADXiad5k' \
    --body '{"friendIds": ["3toXIvRs0DGNOCH4", "solxjJfWsg7zXzc1", "ow3pgo1IeJirtP5L"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace $AB_NAMESPACE \
    --userId 'BPvErjdYRUXeJysT' \
    --body '{"friendIds": ["d5kDqgR1bmm85LuM", "8FUweg6ICQ9hiLU9", "AtNvVuOHLG7CabwW"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 AdminGetAllConfigV1
samples/cli/sample-apps Lobby adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 16 'AdminGetAllConfigV1' test.out

#- 17 AdminGetConfigV1
samples/cli/sample-apps Lobby adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetConfigV1' test.out

#- 18 AdminUpdateConfigV1
samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 69, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 2, "chatRateLimitDuration": 74, "concurrentUsersLimit": 69, "disableInvitationOnJoinParty": true, "enableChat": true, "entitlementCheck": true, "entitlementItemID": "XXyOVPlFEJaHkZbu", "generalRateLimitBurst": 19, "generalRateLimitDuration": 84, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 90, "maxFriendsLimit": 40, "maxPartyMember": 50, "profanityFilter": true, "readyConsentTimeout": 9, "unregisterDelay": 11}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateConfigV1' test.out

#- 19 AdminExportConfigV1
samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'AdminExportConfigV1' test.out

#- 20 AdminImportConfigV1
samples/cli/sample-apps Lobby adminImportConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 20 'AdminImportConfigV1' test.out

#- 21 GetListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace $AB_NAMESPACE \
    --userId 'TiJyBrIyGRWxdmKr' \
    --friendId 'TkFxC5lqAY4raTjd' \
    --limit '86' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 21 'GetListOfFriends' test.out

#- 22 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'I2CkZRz9bpf3S6RG' \
    --friendId '6V9LohlNo6hPFVnN' \
    --limit '57' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 22 'GetIncomingFriendRequests' test.out

#- 23 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'QkrX8JPVg4tNtm5d' \
    --limit '48' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 23 'GetOutgoingFriendRequests' test.out

#- 24 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "FCAt1lIJFrk7ScLX", "topicName": "jysgXu1KMfs6XxTx", "userIds": ["8TtC7Sejri8aDKiK", "YzuHfeOiDYRbxgbf", "OudMlLpSZndkQUTR"]}' \
    > test.out 2>&1
eval_tap $? 24 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 25 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "rXxZXJTTN77khrIg", "topicName": "d4eyhA1YYTp1Xfzl"}' \
    > test.out 2>&1
eval_tap $? 25 'SendUsersFreeformNotificationV1Admin' test.out

#- 26 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId '64iicUiD3VHqrGuH' \
    --body '{"message": "bAtVdJiu33NZTGX5", "topicName": "VHN9Na1B0QyH3gCa"}' \
    > test.out 2>&1
eval_tap $? 26 'SendPartyFreeformNotificationV1Admin' test.out

#- 27 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'qMlnhefSq7CdYueu' \
    --body '{"templateContext": {"h7La6YXUDiYmhorw": "7pqYmnQr3y5EA9fx", "yoD4Z94c2rHQ6coO": "wRx79sMfEZamoJis", "LOgF8PB6F6vf1Arx": "R0Fa5X7kG4oQlqZG"}, "templateLanguage": "vfv0YJDrpINcpjPY", "templateSlug": "OQ4PGnHtrBRAiqGs", "topicName": "58yUdeA95EUzg63p"}' \
    > test.out 2>&1
eval_tap $? 27 'SendPartyTemplatedNotificationV1Admin' test.out

#- 28 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllNotificationTemplatesV1Admin' test.out

#- 29 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "09IIIwlugTrotqKY", "templateLanguage": "e6Qh3kiMv2f0EmH0", "templateSlug": "FsUuYSkWpA1lAZ0m"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateNotificationTemplateV1Admin' test.out

#- 30 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"WpmXb4KrkrsyGAtu": "Qi6Trj8JAoArKaT9", "hFQ6vR4a2ZlwiHBS": "56siLfNg9zBmPgqj", "C91R6WoshpL1dbQP": "B6uCo8i5hXl3qjiN"}, "templateLanguage": "YIOjWroWvF144VKR", "templateSlug": "0RstAf0l0n1yLjyH", "topicName": "DxvGxDLMiUkKf97F"}' \
    > test.out 2>&1
eval_tap $? 30 'SendUsersTemplatedNotificationV1Admin' test.out

#- 31 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'eGQezRkF5SuVze8s' \
    --after 'oK8thn8jTE5ACOmp' \
    --before 'XssD92O1Ooy6rM0i' \
    --limit '43' \
    > test.out 2>&1
eval_tap $? 31 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 32 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug '1Wgsnk2AHNhauot4' \
    > test.out 2>&1
eval_tap $? 32 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 33 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'IUtlIAyr3Hg5uYOY' \
    --templateSlug 'x8SMpRLM3Ls1liB5' \
    > test.out 2>&1
eval_tap $? 33 'GetSingleTemplateLocalizationV1Admin' test.out

#- 34 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage '0upNjOcTQwKa0Xrv' \
    --templateSlug 'GkajCxGnXeQzpXOQ' \
    --body '{"templateContent": "i5ZOm3MdmLdfmrg6"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateTemplateLocalizationV1Admin' test.out

#- 35 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'D0CHkaueIdPFs6yb' \
    --templateSlug 'MQfwlR8JPycp9Jix' \
    > test.out 2>&1
eval_tap $? 35 'DeleteTemplateLocalizationV1Admin' test.out

#- 36 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'T5uzjhmNW3w0jSGy' \
    --templateSlug '7oidb6u7OJdtohdB' \
    > test.out 2>&1
eval_tap $? 36 'PublishTemplateLocalizationV1Admin' test.out

#- 37 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after 'wbSTLwGO36I9Q7VC' \
    --before 'ZLFue3CFok92oFTa' \
    --limit '21' \
    > test.out 2>&1
eval_tap $? 37 'GetAllNotificationTopicsV1Admin' test.out

#- 38 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "biLAXsAg8qEAuull", "topicName": "rJ37c46ruFdc7YyJ"}' \
    > test.out 2>&1
eval_tap $? 38 'CreateNotificationTopicV1Admin' test.out

#- 39 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'yfIcQDKqKw3JpsWX' \
    > test.out 2>&1
eval_tap $? 39 'GetNotificationTopicV1Admin' test.out

#- 40 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'K8pBVHOwxmHYkDzy' \
    --body '{"description": "3Epu0KUkaZ3rHotu"}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateNotificationTopicV1Admin' test.out

#- 41 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'E1ElnyzhctUXb8iA' \
    > test.out 2>&1
eval_tap $? 41 'DeleteNotificationTopicV1Admin' test.out

#- 42 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'H9scz0UYzt7UV35q' \
    --body '{"message": "n3qoGydfmWqVuk8S", "topicName": "kRVEB6dhDhDJOj4y"}' \
    > test.out 2>&1
eval_tap $? 42 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 43 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'AbfMuFFvpK3gqYHO' \
    --body '{"templateContext": {"1nblKtRXnPRl0l72": "8ZyFf6qNtV84sgT4", "meOHVW5FNfV26hYm": "sBKabzRCe2yFRORz", "DbxSMBE2SggBujl4": "M0F0S1V5zvhKp7g0"}, "templateLanguage": "9LEx5Q0tsZfYUGu3", "templateSlug": "ipQbNVVX6YAS6eU4", "topicName": "diSx6n3qeCRry3Jf"}' \
    > test.out 2>&1
eval_tap $? 43 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 44 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'OTjt1L6mg5GRFJBj' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPartyDataV1' test.out

#- 45 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'PZFybohA9UXXN0Qe' \
    --body '{"custom_attribute": {"VbbgINe1W0EoHPNf": {}, "LfZPpO8ejpR4Vio5": {}, "hZg6TvHzkO5VPnlL": {}}, "updatedAt": 99}' \
    > test.out 2>&1
eval_tap $? 45 'AdminUpdatePartyAttributesV1' test.out

#- 46 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'AokqGbeO1pNvBbZe' \
    --userId '2LOyFA8pW8W35OgE' \
    > test.out 2>&1
eval_tap $? 46 'AdminJoinPartyV1' test.out

#- 47 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId 'QXgkK1nz7LEPXV2x' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetUserPartyV1' test.out

#- 48 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'AdminGetLobbyCCU' test.out

#- 49 AdminGetBulkPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetBulkPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"listBlockedUserId": ["ZsUqVYLXxi4mXIRp", "W8rpexXe0MnS0MsM", "q25RtZBu1BAbJCw8"]}' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 50 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'BF1RTCSfH7wCGvQZ' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllPlayerSessionAttribute' test.out

#- 51 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'tj0XcG2Vq2HjyOf5' \
    --body '{"attributes": {"EJDphyNqqmCKJ7Ni": "QPS7pfJtdo2uwqpS", "8pKPxlEeAfPh96wW": "pg9JXlZWTvKrgxDz", "dZ8w721AoByzdMno": "FpWxUcm28hyeQUry"}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSetPlayerSessionAttribute' test.out

#- 52 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'la3soQ4r76px9vJs' \
    --namespace $AB_NAMESPACE \
    --userId 'YoVBHZIE0vUBMeEr' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPlayerSessionAttribute' test.out

#- 53 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'aUdnetnWuLZ52NGG' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetPlayerBlockedPlayersV1' test.out

#- 54 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'BNKSx2kmgNIEif70' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 55 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ErlRuuYub3RgZuJ4' \
    --body '{"listBlockedUserId": ["7DV73S2hC3vRZGkY", "iMiunEjVy2lzzt5o", "RJkY9Yblr5jiqlGZ"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminBulkBlockPlayersV1' test.out

#- 56 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "nbk8J2Ts4F9S3x0l"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminDebugProfanityFilters' test.out

#- 57 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list 'MCn6hHTXXh00UpMk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'AdminGetProfanityListFiltersV1' test.out

#- 58 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list 'a2bckSQh4n9ukA9o' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "mAH8cUGVUU5VAq1W", "note": "Vx9pClSiMQgUFuTv"}' \
    > test.out 2>&1
eval_tap $? 58 'AdminAddProfanityFilterIntoList' test.out

#- 59 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list 'mVYDpTKA3KQ376P6' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "xG3y8rlPEdORVgVy", "note": "fHmSAKotRt4DVUKn"}, {"filter": "vZmLFqvMXTacYuJt", "note": "jxOaorNM18dGdEuV"}, {"filter": "nbwPi6ujuHhtIb7I", "note": "zufseJP4KgGoOFDU"}]}' \
    > test.out 2>&1
eval_tap $? 59 'AdminAddProfanityFilters' test.out

#- 60 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list 'IPt2T547TK3UI2pd' \
    --namespace $AB_NAMESPACE \
    --body '[59, 54, 15]' \
    > test.out 2>&1
eval_tap $? 60 'AdminImportProfanityFiltersFromFile' test.out

#- 61 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list 'g2caCAY22KGY6NAc' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "Cl1PV1vTS4PKgOmw"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminDeleteProfanityFilter' test.out

#- 62 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'AdminGetProfanityLists' test.out

#- 63 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": false, "name": "Tfw3LCxoYkNvUJ9A"}' \
    > test.out 2>&1
eval_tap $? 63 'AdminCreateProfanityList' test.out

#- 64 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'SQ5HlDTCXKFpf4xt' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": true, "newName": "FJbzMjT4YrtfMA6Z"}' \
    > test.out 2>&1
eval_tap $? 64 'AdminUpdateProfanityList' test.out

#- 65 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'wKYDoiMIXONTKKhQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AdminDeleteProfanityList' test.out

#- 66 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'AdminGetProfanityRule' test.out

#- 67 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"rule": "rDvQYPCSU6TfkStE"}' \
    > test.out 2>&1
eval_tap $? 67 'AdminSetProfanityRuleForNamespace' test.out

#- 68 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "HHN538SORYiBBD8b", "profanityLevel": "LCwhFy0XGtLCSxkF"}' \
    > test.out 2>&1
eval_tap $? 68 'AdminVerifyMessageProfanityResponse' test.out

#- 69 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'AdminGetThirdPartyConfig' test.out

#- 70 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "8dSZk9EKTXuZdkGs"}' \
    > test.out 2>&1
eval_tap $? 70 'AdminUpdateThirdPartyConfig' test.out

#- 71 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "ODQ67Ffiqu4NaIOi"}' \
    > test.out 2>&1
eval_tap $? 71 'AdminCreateThirdPartyConfig' test.out

#- 72 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'AdminDeleteThirdPartyConfig' test.out

#- 73 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 73 'PublicGetMessages' test.out

#- 74 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'SWE4BlVryRTo2jis' \
    > test.out 2>&1
eval_tap $? 74 'PublicGetPartyDataV1' test.out

#- 75 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'ibjbtY8U7wpTSn16' \
    --body '{"custom_attribute": {"2hzF4FojaO8f3qCZ": {}, "amvBI0s3MAq0L2iC": {}, "cEY1HpJHRJYChIEN": {}}, "updatedAt": 39}' \
    > test.out 2>&1
eval_tap $? 75 'PublicUpdatePartyAttributesV1' test.out

#- 76 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'rz7m4emlNQlryJF9' \
    --body '{"limit": 98}' \
    > test.out 2>&1
eval_tap $? 76 'PublicSetPartyLimitV1' test.out

#- 77 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'PublicGetPlayerBlockedPlayersV1' test.out

#- 78 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 79 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'true' \
    --userIds '1B92DcMjg8wrQwgZ' \
    > test.out 2>&1
eval_tap $? 79 'UsersPresenceHandlerV1' test.out

#- 80 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "sC7EFb7zLLdkr7h6", "topic": "PcK9xu8HZzDr1o3B"}' \
    > test.out 2>&1
eval_tap $? 80 'FreeFormNotification' test.out

#- 81 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"eHeLDYJrKcFVUWBJ": "3fCHdeohaJVEX69b", "pAHkM8u5xkdzWpXy": "PFzbSzv83IrgXvgJ", "kNhOzrvorqtmjH4d": "L0GoVfIM50Ub4WsJ"}, "templateLanguage": "ksKuQ9Ag9XmeCqSC", "templateSlug": "Qm3cEgw8lXUVZRlw", "topic": "k5s0yhUvay6OECYP"}' \
    > test.out 2>&1
eval_tap $? 81 'NotificationWithTemplate' test.out

#- 82 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'GetGameTemplate' test.out

#- 83 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "cPZHBzm2B0vfQog4", "templateLanguage": "flIBHLndPX48rsoX", "templateSlug": "GP4W2sq3kvg5CXsF"}' \
    > test.out 2>&1
eval_tap $? 83 'CreateTemplate' test.out

#- 84 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'b1379z0deAevpAVq' \
    --after 'jbgCGCvCOgQCKuim' \
    --before 'IEhrMQdqHdLgkM4G' \
    --limit '48' \
    > test.out 2>&1
eval_tap $? 84 'GetSlugTemplate' test.out

#- 85 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'f1DIAHoglpLlmevX' \
    > test.out 2>&1
eval_tap $? 85 'DeleteTemplateSlug' test.out

#- 86 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'FD6oIMcOot6kgsX2' \
    --templateSlug 'TGhL6ZZO0Tcdx6Ya' \
    > test.out 2>&1
eval_tap $? 86 'GetLocalizationTemplate' test.out

#- 87 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'GYSjxEVw3m4fRIcQ' \
    --templateSlug '4T3wFc8xzkVRRmDC' \
    --body '{"templateContent": "xbOp9lpgGpGB87un"}' \
    > test.out 2>&1
eval_tap $? 87 'UpdateLocalizationTemplate' test.out

#- 88 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage '4grN80NHDrrFalKA' \
    --templateSlug '5wgYpAd2mKW0oKt1' \
    > test.out 2>&1
eval_tap $? 88 'DeleteTemplateLocalization' test.out

#- 89 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'Ig83RGNbteW490vQ' \
    --templateSlug 'JyzolEJG5frnj85k' \
    > test.out 2>&1
eval_tap $? 89 'PublishTemplate' test.out

#- 90 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'AkW6c20xH90dP7Jf' \
    --before 's7YpLRlGOT0bnvJY' \
    --limit '30' \
    > test.out 2>&1
eval_tap $? 90 'GetTopicByNamespace' test.out

#- 91 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "2Jj80eTHwhudUe2o", "topic": "vWOVSHIJKqc10b5c"}' \
    > test.out 2>&1
eval_tap $? 91 'CreateTopic' test.out

#- 92 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'DRVfoUhK6vgrwqLw' \
    > test.out 2>&1
eval_tap $? 92 'GetTopicByTopicName' test.out

#- 93 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic '6eCtvjKv5JoKbAPs' \
    --body '{"description": "0hc6R7nRzuGlz7Bu"}' \
    > test.out 2>&1
eval_tap $? 93 'UpdateTopicByTopicName' test.out

#- 94 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'mbfaFExiE9nWnqQL' \
    > test.out 2>&1
eval_tap $? 94 'DeleteTopicByTopicName' test.out

#- 95 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'lrl1Eap5su8pjLT4' \
    --body '{"message": "filZnMMHNavJgp58", "topic": "4GWA5Ici16FwC9el"}' \
    > test.out 2>&1
eval_tap $? 95 'FreeFormNotificationByUserID' test.out

#- 96 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'PJDE2367W7D0yxoP' \
    --body '{"templateContext": {"CAsto72qFLBt8IOW": "cEvFqzJODXRn2mwi", "iKkOcylG3KvUTSGy": "1bvKJMVJhaMV9cDo", "e9A76sawiWNLCUZy": "cNwU1aLyB6Xoh5A6"}, "templateLanguage": "ji9VYnQgCnR0rt7N", "templateSlug": "QH0kLomZGT3Z7xAR", "topic": "nzy4pm3bHoOWaiw2"}' \
    > test.out 2>&1
eval_tap $? 96 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE