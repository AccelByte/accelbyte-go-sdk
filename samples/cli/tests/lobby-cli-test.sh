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
echo "1..109"

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
    --limit '48' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "3OTegUwWDcnN4iEY", "friendPublicId": "eXLe2xp3EI4PfgeH"}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "lV1xmwQkFMHVfrl4"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "8aC7y99DKOZ4oC4Z"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "zua7FaROCJWsFaSp"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'lTAcTAcMuj9kNT5X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "991CBnQzNY9QgUPs"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'D2ytOZsYPriIcOHQ' \
    --body '{"friendIds": ["yApArjNN08wuPajs", "XBpstg0GwMgJgEK0", "RSvnBEMT7gzBuaIW"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace $AB_NAMESPACE \
    --userId 'YUwN8mfX7Iv0fGyf' \
    --body '{"friendIds": ["viIA6XJ0kLWIXzlM", "z3aL4XdLmTq2f31Q", "jlJPL0sv85V61Pi0"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
samples/cli/sample-apps Lobby syncNativeFriends \
    --namespace $AB_NAMESPACE \
    --body '[{"isLogin": false, "platformId": "yuotho7eOxSv0qlC", "platformToken": "huJgR2VxcxiVJAqc", "psnEnv": "0G8cj28NWTfPUG2R"}, {"isLogin": true, "platformId": "xXp4QvlTqjLrdU4i", "platformToken": "z4LfGbBLCB3TwNhX", "psnEnv": "pDwHLtXU2npC7w7o"}, {"isLogin": false, "platformId": "K83v0lX3JOo07X8u", "platformToken": "Ic8JcD7D6oJ4Pbsa", "psnEnv": "z35I3gRHwthjvpUS"}]' \
    > test.out 2>&1
eval_tap $? 16 'SyncNativeFriends' test.out

#- 17 SyncNativeBlockedUser
samples/cli/sample-apps Lobby syncNativeBlockedUser \
    --namespace $AB_NAMESPACE \
    --body '[{"platformId": "UrvepWJ7zKjcUGiP", "psnEnv": "5v7AJX8lSY4zdK5U"}, {"platformId": "F5UXsLXn7UtUEZk9", "psnEnv": "g5EKzT47nGn44Xv7"}, {"platformId": "VrDJYQZ4nlTR94Y7", "psnEnv": "2v52veIGu5MJyLBu"}]' \
    > test.out 2>&1
eval_tap $? 17 'SyncNativeBlockedUser' test.out

#- 18 AdminGetAllConfigV1
samples/cli/sample-apps Lobby adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 18 'AdminGetAllConfigV1' test.out

#- 19 AdminGetLogConfig
samples/cli/sample-apps Lobby adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 19 'AdminGetLogConfig' test.out

#- 20 AdminPatchUpdateLogConfig
samples/cli/sample-apps Lobby adminPatchUpdateLogConfig \
    --body '{"logLevel": "panic", "logLevelDB": "panic", "slowQueryThreshold": 19, "socketLogEnabled": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminPatchUpdateLogConfig' test.out

#- 21 AdminGetConfigV1
samples/cli/sample-apps Lobby adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminGetConfigV1' test.out

#- 22 AdminUpdateConfigV1
samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 8, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 6, "chatRateLimitDuration": 88, "concurrentUsersLimit": 20, "disableInvitationOnJoinParty": true, "enableChat": true, "entitlementCheck": true, "entitlementItemID": "nBXlCF3CsdM4o060", "generalRateLimitBurst": 93, "generalRateLimitDuration": 0, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 91, "maxFriendsLimit": 61, "maxPartyMember": 12, "profanityFilter": true, "readyConsentTimeout": 67, "unregisterDelay": 11}' \
    > test.out 2>&1
eval_tap $? 22 'AdminUpdateConfigV1' test.out

#- 23 AdminExportConfigV1
samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminExportConfigV1' test.out

#- 24 AdminImportConfigV1
samples/cli/sample-apps Lobby adminImportConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 24 'AdminImportConfigV1' test.out

#- 25 GetListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace $AB_NAMESPACE \
    --userId 'Q9AGC8JYOToJTYBq' \
    --friendId '9npWWUUQnZogxObo' \
    --friendIds '["x7w6qxSyVeaSrvcl", "1wqtNrs8WqaKpEk9", "MFtd6mmGO5taTkZ7"]' \
    --limit '32' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 25 'GetListOfFriends' test.out

#- 26 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'kT4Puf3r5dPVw51e' \
    --friendId '1tV9QnHTq2tcoHXj' \
    --limit '34' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 26 'GetIncomingFriendRequests' test.out

#- 27 AdminListFriendsOfFriends
samples/cli/sample-apps Lobby adminListFriendsOfFriends \
    --namespace $AB_NAMESPACE \
    --userId 'wBnCsVYvxz2pgB7A' \
    --friendId 'vBmmTEpYl38w71jH' \
    --limit '39' \
    --nopaging 'true' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 27 'AdminListFriendsOfFriends' test.out

#- 28 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'me5fY76SiLFnkpCw' \
    --limit '27' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 28 'GetOutgoingFriendRequests' test.out

#- 29 AdminGetGlobalConfig
samples/cli/sample-apps Lobby adminGetGlobalConfig \
    > test.out 2>&1
eval_tap $? 29 'AdminGetGlobalConfig' test.out

#- 30 AdminUpdateGlobalConfig
samples/cli/sample-apps Lobby adminUpdateGlobalConfig \
    --body '{"regionRetryMapping": {"U0m9U6pWt7rSKpV3": ["KKCnZnXGIhfxqxUN", "xQW1W49Zbtcw8xGz", "i6ZFtShdPWs8FWcz"], "MmzcpymZ9wR1oJYm": ["21m0IOvr2N6youBQ", "AWSGVwIQ7lPb593X", "gR1938URqT6wzopX"], "rOTHyccdF9vElKYL": ["gue0DaPqcIvAkhpO", "P0VFXxKpziSajEeW", "TT6cr5J03W54n9S5"]}, "regionURLMapping": ["mPFwUom7BUiV4EDa", "LUYlEuTM7A558EZI", "vqpXNDASr7whUfOT"], "testGameMode": "Atlem3K6AFLb0DZV", "testRegionURLMapping": ["CObyDGfYEQZ1l8xJ", "1tDKK79PIBcaRgzp", "wnN94Ljx8IXNmc1a"], "testTargetUserIDs": ["mXhQzk4J869oGrXq", "nc5Dez9nMU78nwye", "gXJGzqyM3VdkvQV6"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateGlobalConfig' test.out

#- 31 AdminDeleteGlobalConfig
samples/cli/sample-apps Lobby adminDeleteGlobalConfig \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteGlobalConfig' test.out

#- 32 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "2VlQNbKRf8bwlfN7", "topicName": "NztrCIeQnbNnYpXr", "userIds": ["gm32MQUb7JRE08ba", "X32jLWe2et8Qenbh", "z1xmWDIO5GnEyLck"]}' \
    > test.out 2>&1
eval_tap $? 32 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 33 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "Bkpbmk7ygEKRE1WH", "topicName": "c56EImm0MsGklKi1"}' \
    > test.out 2>&1
eval_tap $? 33 'SendUsersFreeformNotificationV1Admin' test.out

#- 34 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'VuSS9TUsNyTh8rdY' \
    --body '{"message": "rRyHVbfdPAIudhDK", "topicName": "KgEh1eB8YMARmZ05"}' \
    > test.out 2>&1
eval_tap $? 34 'SendPartyFreeformNotificationV1Admin' test.out

#- 35 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId '56WTBuKkJAusRE3v' \
    --body '{"templateContext": {"EQpXsDKRgAWRPI21": "Wj590Abu87GRBOHA", "OywPOBunEVeW9vjs": "3IucNPEZ06lP1XY9", "T2uCZrOnaxP7FkMQ": "Z6CkL0jvk1e8sFg9"}, "templateLanguage": "V9OZ7ORc1xEuopTN", "templateSlug": "Pn9nPf9aQq09Uexh", "topicName": "orYrkCSUVlTdPCgl"}' \
    > test.out 2>&1
eval_tap $? 35 'SendPartyTemplatedNotificationV1Admin' test.out

#- 36 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'GetAllNotificationTemplatesV1Admin' test.out

#- 37 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "GAs0F4em3VAD8vlX", "templateLanguage": "hKN7iTPepLv6mOHZ", "templateSlug": "cUMXrmIopf7r7nQO"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateNotificationTemplateV1Admin' test.out

#- 38 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"LNjVd8SzrCK5TLFN": "YotXEfOJehCGwngJ", "C3kxbNmNfXmXeA0t": "xpkbUcZh0eMzJHb4", "WzypOxXQ6hfe6gYo": "mm8N3iR51f3eKgtr"}, "templateLanguage": "RiA7p0ePo6KhnTeh", "templateSlug": "zKSc447ZQisbjGLu", "topicName": "hKTi9BHYedhy7niZ"}' \
    > test.out 2>&1
eval_tap $? 38 'SendUsersTemplatedNotificationV1Admin' test.out

#- 39 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'A5VITfd7FPcMoZGD' \
    --after 'gskhE68Qa5ug6dNt' \
    --before 'KjQHCOpJhCbgHxI4' \
    --limit '67' \
    > test.out 2>&1
eval_tap $? 39 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 40 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'oTeYgsWzvwEqV9p4' \
    > test.out 2>&1
eval_tap $? 40 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 41 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'uwwWo01UVTndRuDu' \
    --templateSlug '9RaMZ1xaceXifuL3' \
    > test.out 2>&1
eval_tap $? 41 'GetSingleTemplateLocalizationV1Admin' test.out

#- 42 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'yjYwZkISmeiJ5VPQ' \
    --templateSlug 'c6Apj3hdKGIfLX2j' \
    --body '{"templateContent": "AUAQISubLAFrceCV"}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateTemplateLocalizationV1Admin' test.out

#- 43 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'tZDAQYphp6VXKvDc' \
    --templateSlug '3bDfsOGMyzCqTV3k' \
    > test.out 2>&1
eval_tap $? 43 'DeleteTemplateLocalizationV1Admin' test.out

#- 44 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'GeLgTuUWx0Dz4KZd' \
    --templateSlug 'UXkeehrG1ddognfx' \
    > test.out 2>&1
eval_tap $? 44 'PublishTemplateLocalizationV1Admin' test.out

#- 45 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after 'zGz5QGjhlVk67wuD' \
    --before 'tAAPl88Gzhw6tVfr' \
    --limit '85' \
    > test.out 2>&1
eval_tap $? 45 'GetAllNotificationTopicsV1Admin' test.out

#- 46 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "5mq0uQPRaKREgae9", "topicName": "nNl5ZFRJUG9JvJ3y"}' \
    > test.out 2>&1
eval_tap $? 46 'CreateNotificationTopicV1Admin' test.out

#- 47 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'iZCT3qD3kQqzyACz' \
    > test.out 2>&1
eval_tap $? 47 'GetNotificationTopicV1Admin' test.out

#- 48 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'c32hcZ5fq07vktsJ' \
    --body '{"description": "dcWMjq91eKZQJRAz"}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateNotificationTopicV1Admin' test.out

#- 49 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'LMCDb0BeKWjtuGeL' \
    > test.out 2>&1
eval_tap $? 49 'DeleteNotificationTopicV1Admin' test.out

#- 50 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'kloptCKO41lvYh86' \
    --body '{"message": "6yBGzmh2T4aQ5KNl", "topicName": "Fal8QZqHrKaVhgm7"}' \
    > test.out 2>&1
eval_tap $? 50 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 51 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'P0Xv2MxYWWobR7QW' \
    --body '{"templateContext": {"Vc9tvo0YJamfppu6": "EoXppZBLd93dhlCB", "lF0K85wQzRurLZbX": "UQ8nztWI2PEE61vp", "WHfUHdkciYUv0Eca": "quQ6UuCKPmJiYfrj"}, "templateLanguage": "za8yXMfOIPLZygDa", "templateSlug": "ky86joKIBXj3OTK0", "topicName": "Av5h2QKCWbdWPhUB"}' \
    > test.out 2>&1
eval_tap $? 51 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 52 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'pjdV3cU6GBt5mjPb' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPartyDataV1' test.out

#- 53 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'CLdd6WV2mDHMsaqq' \
    --body '{"custom_attribute": {"8muifalRKUWoGw1w": {}, "OW9ygpwz4AChtbAY": {}, "TbML5x7hedBqxasr": {}}, "updatedAt": 19}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdatePartyAttributesV1' test.out

#- 54 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'Ig0hn4bVnyDRJspK' \
    --userId 'vVC7JVrHyP3CH4Ou' \
    > test.out 2>&1
eval_tap $? 54 'AdminJoinPartyV1' test.out

#- 55 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId 'a3IIp2iXqQoGyrgp' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetUserPartyV1' test.out

#- 56 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'AdminGetLobbyCCU' test.out

#- 57 AdminGetBulkPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetBulkPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"listBlockedUserId": ["NSJaoKn3MxJcXwoU", "iE0SkUeALVirclWV", "6heKXodKTJnOnFQ5"]}' \
    > test.out 2>&1
eval_tap $? 57 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 58 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId '0McluNw83qrsjHXD' \
    > test.out 2>&1
eval_tap $? 58 'AdminGetAllPlayerSessionAttribute' test.out

#- 59 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'dfScNvFGiK8Tbjyi' \
    --body '{"attributes": {"7p7VcUNfBQbYrJ8z": "lVsRPC1tLvow8qtD", "70YodNEouhMBIr1L": "C0sfibb48g4nEWTg", "v69PHl93ritdYzMN": "6Igs5mGs7qrSPlm7"}}' \
    > test.out 2>&1
eval_tap $? 59 'AdminSetPlayerSessionAttribute' test.out

#- 60 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'w0pskBrxzyuQ86dK' \
    --namespace $AB_NAMESPACE \
    --userId '17WftVcr5m4v3Lor' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerSessionAttribute' test.out

#- 61 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId '4BMjFC2Yi9jUT5ZA' \
    > test.out 2>&1
eval_tap $? 61 'AdminGetPlayerBlockedPlayersV1' test.out

#- 62 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'upV5WCVziLvp1rcz' \
    > test.out 2>&1
eval_tap $? 62 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 63 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ivyuf8rqXO8QcO5N' \
    --body '{"listBlockedUserId": ["FfjnbPejJ3LOKSZ1", "9geoCBozflhh7mBE", "W18AEjJXq6qhyz9Q"]}' \
    > test.out 2>&1
eval_tap $? 63 'AdminBulkBlockPlayersV1' test.out

#- 64 AdminBulkUnblockPlayersV1
samples/cli/sample-apps Lobby adminBulkUnblockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'oRF3Md9FJNbesGsW' \
    --body '{"listUnblockUserId": ["zKslmEkLq58vJtZT", "HeydS3PgAJE45So6", "BYgxLzaH4S0KvRSk"]}' \
    > test.out 2>&1
eval_tap $? 64 'AdminBulkUnblockPlayersV1' test.out

#- 65 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "DR3cAclyqwuIa2Zx"}' \
    > test.out 2>&1
eval_tap $? 65 'AdminDebugProfanityFilters' test.out

#- 66 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list 'ghZaGOEcEKFpNzKX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'AdminGetProfanityListFiltersV1' test.out

#- 67 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list 'Wz0tctDzxnO1i8GE' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "xTH92aldeu2sqqhV", "note": "gDRbG8LYQnAG1nXQ"}' \
    > test.out 2>&1
eval_tap $? 67 'AdminAddProfanityFilterIntoList' test.out

#- 68 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list 'cN5eMKvEFsQYqrNl' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "hc5MTTfrLIkqgQpZ", "note": "FMqH4LTlkpiKSmyo"}, {"filter": "0PauiUHNYmGvRO37", "note": "vvQA4qQdDXgSfveu"}, {"filter": "z6vCKj8YRF3J0wgx", "note": "IfWP4gHxcnheHvgg"}]}' \
    > test.out 2>&1
eval_tap $? 68 'AdminAddProfanityFilters' test.out

#- 69 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list 'DJqlWIJR2v1rcNWq' \
    --namespace $AB_NAMESPACE \
    --body '[58, 4, 3]' \
    > test.out 2>&1
eval_tap $? 69 'AdminImportProfanityFiltersFromFile' test.out

#- 70 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list 'LZadoZWwvPWoiAGp' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "XW6ZeClWvh0tvTiR"}' \
    > test.out 2>&1
eval_tap $? 70 'AdminDeleteProfanityFilter' test.out

#- 71 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'AdminGetProfanityLists' test.out

#- 72 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": false, "isMandatory": false, "name": "r6kzVxpc7OlKydtq"}' \
    > test.out 2>&1
eval_tap $? 72 'AdminCreateProfanityList' test.out

#- 73 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'QKYGXxgYyoBLKqNX' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": false, "newName": "6zRw3lNEZ2gH4Lu8"}' \
    > test.out 2>&1
eval_tap $? 73 'AdminUpdateProfanityList' test.out

#- 74 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'DF4atrHHhOeeVqCQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'AdminDeleteProfanityList' test.out

#- 75 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'AdminGetProfanityRule' test.out

#- 76 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"rule": "LPxLQfh5NJH1uYBg"}' \
    > test.out 2>&1
eval_tap $? 76 'AdminSetProfanityRuleForNamespace' test.out

#- 77 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "tadJEEOB8O79P7Em", "profanityLevel": "1QigvEKsPiWaQ2kq"}' \
    > test.out 2>&1
eval_tap $? 77 'AdminVerifyMessageProfanityResponse' test.out

#- 78 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'AdminGetThirdPartyConfig' test.out

#- 79 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "wA2VkEGhyMECQkFJ"}' \
    > test.out 2>&1
eval_tap $? 79 'AdminUpdateThirdPartyConfig' test.out

#- 80 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "MAbWI6DkMcSqekMf"}' \
    > test.out 2>&1
eval_tap $? 80 'AdminCreateThirdPartyConfig' test.out

#- 81 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'AdminDeleteThirdPartyConfig' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out

#- 83 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'ccztPJ7AJH9DVvoG' \
    > test.out 2>&1
eval_tap $? 83 'PublicGetPartyDataV1' test.out

#- 84 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId '6VbCirFvyWiImyPw' \
    --body '{"custom_attribute": {"cW6sRIRqk5zmJXBC": {}, "vV93f7qW2MwKrUQV": {}, "HO1SsJhc4xChbPrE": {}}, "updatedAt": 83}' \
    > test.out 2>&1
eval_tap $? 84 'PublicUpdatePartyAttributesV1' test.out

#- 85 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'jUbLmwJqldjcZj7P' \
    --body '{"limit": 24}' \
    > test.out 2>&1
eval_tap $? 85 'PublicSetPartyLimitV1' test.out

#- 86 PublicPlayerBlockPlayersV1
samples/cli/sample-apps Lobby publicPlayerBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"blockedUserId": "I4PhE6Mc4G7J7T7c"}' \
    > test.out 2>&1
eval_tap $? 86 'PublicPlayerBlockPlayersV1' test.out

#- 87 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'PublicGetPlayerBlockedPlayersV1' test.out

#- 88 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 89 PublicUnblockPlayerV1
samples/cli/sample-apps Lobby publicUnblockPlayerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "ZZV3zqISa9bqarOc"}' \
    > test.out 2>&1
eval_tap $? 89 'PublicUnblockPlayerV1' test.out

#- 90 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'false' \
    --userIds 'TYC0IoKw08ATVrgm' \
    > test.out 2>&1
eval_tap $? 90 'UsersPresenceHandlerV1' test.out

#- 91 UsersPresenceHandlerV2
samples/cli/sample-apps Lobby usersPresenceHandlerV2 \
    --namespace $AB_NAMESPACE \
    --countOnly 'false' \
    --body '{"userIDs": ["JLZIq9tHMrVM0t82", "RSUEktOjaSbZlkrm", "zxMt5VW8dUqXWH6R"]}' \
    > test.out 2>&1
eval_tap $? 91 'UsersPresenceHandlerV2' test.out

#- 92 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "4dW0mgAXZUA7915V", "topic": "v9VesiJDGn7tYZFi"}' \
    > test.out 2>&1
eval_tap $? 92 'FreeFormNotification' test.out

#- 93 GetMyNotifications
samples/cli/sample-apps Lobby getMyNotifications \
    --namespace $AB_NAMESPACE \
    --endTime '84' \
    --limit '71' \
    --offset '35' \
    --startTime '92' \
    > test.out 2>&1
eval_tap $? 93 'GetMyNotifications' test.out

#- 94 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"D7ysYJzBkVn0f4bc": "Xe9kT2vexaGvpr6v", "OJcE4bxSJNUohYbV": "xNbDmMCqjLkwC3Ov", "zldMq52lFH7xNcwS": "9uY08lwb7DO9VBaQ"}, "templateLanguage": "FPkebCcZoXPY6qQR", "templateSlug": "jVD5nPxFRWaZV9N1", "topic": "SlyHpfTnWMNyDG1C"}' \
    > test.out 2>&1
eval_tap $? 94 'NotificationWithTemplate' test.out

#- 95 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'GetGameTemplate' test.out

#- 96 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "UPOUgHEtlTofviDZ", "templateLanguage": "iaMPFp8ssHRKCyeU", "templateSlug": "59rgx8kLNc0R4oN0"}' \
    > test.out 2>&1
eval_tap $? 96 'CreateTemplate' test.out

#- 97 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'KLZqxc3oMxfxHTtN' \
    --after 'jEI8liS841xScejz' \
    --before '0xzM4F4erdc25ccI' \
    --limit '25' \
    > test.out 2>&1
eval_tap $? 97 'GetSlugTemplate' test.out

#- 98 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'WPAL1Etd54piUuSS' \
    > test.out 2>&1
eval_tap $? 98 'DeleteTemplateSlug' test.out

#- 99 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage '8xL9XUmLl0mdbZNi' \
    --templateSlug 'iqEcapuO7b8xsfvA' \
    > test.out 2>&1
eval_tap $? 99 'GetLocalizationTemplate' test.out

#- 100 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'Y1NqKPGKjxbTBuww' \
    --templateSlug 'XdL61U8OtqhuPdJO' \
    --body '{"templateContent": "7g96pQ0QZOIUnqpX"}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateLocalizationTemplate' test.out

#- 101 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage '5fk8A49Teg8udiVU' \
    --templateSlug 'JbO7I5Z91AiDgOKR' \
    > test.out 2>&1
eval_tap $? 101 'DeleteTemplateLocalization' test.out

#- 102 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'hEfZJGKv3mfezzaP' \
    --templateSlug 'ja9smpV4Z9l71nBz' \
    > test.out 2>&1
eval_tap $? 102 'PublishTemplate' test.out

#- 103 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after '8YbFRgcl9lOmnNHD' \
    --before 'GuCLZmF4HNgJd3cG' \
    --limit '47' \
    > test.out 2>&1
eval_tap $? 103 'GetTopicByNamespace' test.out

#- 104 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "1AmfCF4AZUEj6ZH5", "topic": "rcXpsgo1YaCc7RMq"}' \
    > test.out 2>&1
eval_tap $? 104 'CreateTopic' test.out

#- 105 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'kjmMvnT5OwR5bHog' \
    > test.out 2>&1
eval_tap $? 105 'GetTopicByTopicName' test.out

#- 106 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'OkG2IjlSfMGmN8Ke' \
    --body '{"description": "O1IcdeZi73tkC5ok"}' \
    > test.out 2>&1
eval_tap $? 106 'UpdateTopicByTopicName' test.out

#- 107 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'tLhKWxfy2oDslYma' \
    > test.out 2>&1
eval_tap $? 107 'DeleteTopicByTopicName' test.out

#- 108 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'oRXJShew09AU5ts8' \
    --body '{"message": "t6d25EAPAtCsPFhK", "topic": "ouirnVGcZV0ayVII"}' \
    > test.out 2>&1
eval_tap $? 108 'FreeFormNotificationByUserID' test.out

#- 109 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'wYVbYDkZtZfO4A4q' \
    --body '{"templateContext": {"1X6S95FlTafSEez1": "mz7k6AmWYkmjyRH9", "rO7hh7NsRFBsT68b": "UMjxS8heyTtJKgKE", "ROx0InG95MgKs7T6": "urjDazAKDA4AhZ3B"}, "templateLanguage": "UAjbTCT7x1dITs39", "templateSlug": "WEgO7e53BJApm4hE", "topic": "xX4E0uUBC0v2Wg7H"}' \
    > test.out 2>&1
eval_tap $? 109 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE