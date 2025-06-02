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
    --limit '1' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "O1i5CQliPkIQPTpg", "friendPublicId": "kj44ioSvT86pINcI", "metadata": {"lZtCOuzMG2VmOPoc": "Dav419LaLlwCy0fZ", "MZufrbISwdgdrnfs": "jVU44TZR4CobHB77", "ZnFi5ePxRdV1gzFK": "xBxIN3NLYykwMGN1"}}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "MWfxdbtpf5nahr7z"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "EM71zTBHKPnBPUPX"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "sZJLM7RdmgtWXFrk"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'nRpIZ9c1KM6c5DFK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "4oBF3vxxaaPWIqoL"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId '2VPmZGeznHgDSVjn' \
    --body '{"friendIds": ["gErf3bGlgGW3naXv", "kx2vJrgErcu8ie9V", "pQrQ38bL0Viu88hz"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace $AB_NAMESPACE \
    --userId 'fOWwstAYGfGlMwbZ' \
    --body '{"friendIds": ["b545yLG25DxmBCpT", "bF0SuU4RzmPzcS8W", "jU4mh5qtYIxX8qJM"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
samples/cli/sample-apps Lobby syncNativeFriends \
    --namespace $AB_NAMESPACE \
    --body '[{"isLogin": true, "platformId": "HSLnnBIbdtakSRcH", "platformToken": "9Wqwx4rD0P8ylS2l", "psnEnv": "XGPYyZ92Jjg8HTKV"}, {"isLogin": true, "platformId": "L34WLM4mc3zoH2wY", "platformToken": "usuad5K5pEVeHkXB", "psnEnv": "3vmkjrx3O9zuM4UK"}, {"isLogin": true, "platformId": "vcl1zS33q71qnVw1", "platformToken": "kRdwLxz591UeMlHq", "psnEnv": "RAaJqlmjwXPg4tBQ"}]' \
    > test.out 2>&1
eval_tap $? 16 'SyncNativeFriends' test.out

#- 17 SyncNativeBlockedUser
samples/cli/sample-apps Lobby syncNativeBlockedUser \
    --namespace $AB_NAMESPACE \
    --body '[{"platformId": "yvxUvrQYYJlnur2L", "psnEnv": "n0geYfrecUMWflHg"}, {"platformId": "xMTspuZvIZKGtKJJ", "psnEnv": "08560N7IHF3anYz4"}, {"platformId": "xi920k3g1Bci8LkZ", "psnEnv": "xA8VG3VYaqYhSn2z"}]' \
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
    --body '{"logLevel": "warning", "logLevelDB": "panic", "slowQueryThreshold": 12, "socketLogEnabled": true}' \
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
    --body '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 19, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 10, "chatRateLimitDuration": 67, "concurrentUsersLimit": 31, "disableInvitationOnJoinParty": false, "enableChat": true, "entitlementCheck": true, "entitlementItemID": "rEDNHTTdFDwRGgOX", "generalRateLimitBurst": 82, "generalRateLimitDuration": 78, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 38, "maxFriendsLimit": 79, "maxPartyMember": 23, "profanityFilter": true, "readyConsentTimeout": 4, "requestMetadataMaxSize": 26, "unregisterDelay": 63}' \
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
    --userId 'jGexGAQPjpOLFG58' \
    --friendId 'C3ArHuCdMV3HqDkm' \
    --friendIds '["IbDM3wo6tkK4fe54", "UDZIKuR9zyH1Hm8M", "aV1kn3FugwGF9qHz"]' \
    --limit '45' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 25 'GetListOfFriends' test.out

#- 26 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'izG9Bu0cqjjBQQru' \
    --friendId 'uUFQ9Rrm6bvuVZbp' \
    --limit '77' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 26 'GetIncomingFriendRequests' test.out

#- 27 AdminListFriendsOfFriends
samples/cli/sample-apps Lobby adminListFriendsOfFriends \
    --namespace $AB_NAMESPACE \
    --userId '7IIuVwAJBHdzUWUP' \
    --friendId 'zQ1sMM0mDlUTFERz' \
    --limit '2' \
    --nopaging 'true' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 27 'AdminListFriendsOfFriends' test.out

#- 28 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'XuobggUamOHN4fEw' \
    --limit '10' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 28 'GetOutgoingFriendRequests' test.out

#- 29 AdminGetGlobalConfig
eval_tap 0 29 'AdminGetGlobalConfig # SKIP deprecated' test.out

#- 30 AdminUpdateGlobalConfig
eval_tap 0 30 'AdminUpdateGlobalConfig # SKIP deprecated' test.out

#- 31 AdminDeleteGlobalConfig
eval_tap 0 31 'AdminDeleteGlobalConfig # SKIP deprecated' test.out

#- 32 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "GCGGfMkF0aHvsWEC", "topicName": "F7vVsQEdsEmAbC09", "userIds": ["fO3kSOtBNZNG62xI", "ExsPltL778V4SdBc", "qse3BM1ia45v93zj"]}' \
    > test.out 2>&1
eval_tap $? 32 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 33 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "JCaMgmzBI9C5jdev", "topicName": "Rb74ZZ44QC0IrD0X"}' \
    > test.out 2>&1
eval_tap $? 33 'SendUsersFreeformNotificationV1Admin' test.out

#- 34 SendPartyFreeformNotificationV1Admin
eval_tap 0 34 'SendPartyFreeformNotificationV1Admin # SKIP deprecated' test.out

#- 35 SendPartyTemplatedNotificationV1Admin
eval_tap 0 35 'SendPartyTemplatedNotificationV1Admin # SKIP deprecated' test.out

#- 36 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'GetAllNotificationTemplatesV1Admin' test.out

#- 37 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "XxiXxHyzFfxFK1Iw", "templateLanguage": "nGowABRqgTArPb2W", "templateSlug": "CP1FKdE6i7n5cywJ"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateNotificationTemplateV1Admin' test.out

#- 38 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"vi5I41NZit0jucGg": "1NPP6GO9qkidHOx7", "ahSuhBgedx7SmPlC": "BKFKYhj8fxOWk2N1", "yMLWuAfj7faR6MgT": "nNi2WLYljj5xMy6N"}, "templateLanguage": "kA3xtZehU2ktX9NX", "templateSlug": "R8AbibBBRhrP66ao", "topicName": "4IrM6QyrllGIqEs3"}' \
    > test.out 2>&1
eval_tap $? 38 'SendUsersTemplatedNotificationV1Admin' test.out

#- 39 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'tiCIWvWZ4Lx3M54v' \
    --after 'lKFJlCyZZyuU5E2l' \
    --before '9t0kAm6LSXdflPeG' \
    --limit '89' \
    > test.out 2>&1
eval_tap $? 39 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 40 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug '1vm91GVl0ENCKZts' \
    > test.out 2>&1
eval_tap $? 40 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 41 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'uHfjAKd2NaYSpMip' \
    --templateSlug '2335fd62ex1K7hzp' \
    > test.out 2>&1
eval_tap $? 41 'GetSingleTemplateLocalizationV1Admin' test.out

#- 42 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'JbWoRWwLycViBUBv' \
    --templateSlug 'Ub6NMWgy9jdwDwxc' \
    --body '{"templateContent": "PkbY2Ob32WZ6bqq5"}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateTemplateLocalizationV1Admin' test.out

#- 43 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage '5r74D92t0m7Mw0R0' \
    --templateSlug 'tRzezhTYs7SIDPAn' \
    > test.out 2>&1
eval_tap $? 43 'DeleteTemplateLocalizationV1Admin' test.out

#- 44 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'CaNog2HXi9KLuO1G' \
    --templateSlug 'Yk8RxmxLZqoKjgm8' \
    > test.out 2>&1
eval_tap $? 44 'PublishTemplateLocalizationV1Admin' test.out

#- 45 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after '9wY9XU41dIe8w5yB' \
    --before '971ziwOQXANoWih1' \
    --limit '55' \
    > test.out 2>&1
eval_tap $? 45 'GetAllNotificationTopicsV1Admin' test.out

#- 46 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "MXnkGoALa6iavcvG", "topicName": "b8TZh2Udjux9ApsK"}' \
    > test.out 2>&1
eval_tap $? 46 'CreateNotificationTopicV1Admin' test.out

#- 47 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'BvWaa28KCwijUm2o' \
    > test.out 2>&1
eval_tap $? 47 'GetNotificationTopicV1Admin' test.out

#- 48 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'lhjtcx314o3tTLYb' \
    --body '{"description": "HocHkNB7cnMjZF8l"}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateNotificationTopicV1Admin' test.out

#- 49 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'vhB4ZwdBx1n6kZRp' \
    > test.out 2>&1
eval_tap $? 49 'DeleteNotificationTopicV1Admin' test.out

#- 50 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'EcF5UgsqCeedsUsV' \
    --body '{"message": "tC3p3ikOVJaXZ3a4", "topicName": "Nk6CRwOisJcUsh2O"}' \
    > test.out 2>&1
eval_tap $? 50 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 51 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'AILXboW59TPSQWln' \
    --body '{"templateContext": {"MhIyovYP49Nj0ODS": "s80mucXPG589Ropb", "ArxToSUGlfg1UiFk": "HxyeXU5Q6PR3UrTe", "FVWJtLxUbcCy9Ogp": "rtxbDx9jhSGOPAz3"}, "templateLanguage": "aBYMdyJStqs3Wdi2", "templateSlug": "g8RZ81rmbtuhpRRp", "topicName": "DWGmr1ssbBSymb4K"}' \
    > test.out 2>&1
eval_tap $? 51 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 52 AdminGetPartyDataV1
eval_tap 0 52 'AdminGetPartyDataV1 # SKIP deprecated' test.out

#- 53 AdminUpdatePartyAttributesV1
eval_tap 0 53 'AdminUpdatePartyAttributesV1 # SKIP deprecated' test.out

#- 54 AdminJoinPartyV1
eval_tap 0 54 'AdminJoinPartyV1 # SKIP deprecated' test.out

#- 55 AdminGetUserPartyV1
eval_tap 0 55 'AdminGetUserPartyV1 # SKIP deprecated' test.out

#- 56 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'AdminGetLobbyCCU' test.out

#- 57 AdminGetBulkPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetBulkPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"listBlockedUserId": ["yLpGz2Dk29uvqKbs", "dq1eoq6RuXm04eQR", "wPuS1bysu27AEbw1"]}' \
    > test.out 2>&1
eval_tap $? 57 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 58 AdminGetAllPlayerSessionAttribute
eval_tap 0 58 'AdminGetAllPlayerSessionAttribute # SKIP deprecated' test.out

#- 59 AdminSetPlayerSessionAttribute
eval_tap 0 59 'AdminSetPlayerSessionAttribute # SKIP deprecated' test.out

#- 60 AdminGetPlayerSessionAttribute
eval_tap 0 60 'AdminGetPlayerSessionAttribute # SKIP deprecated' test.out

#- 61 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pYn5wHDlknRpjWfJ' \
    > test.out 2>&1
eval_tap $? 61 'AdminGetPlayerBlockedPlayersV1' test.out

#- 62 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'SPh1jlgQmKCphBd3' \
    > test.out 2>&1
eval_tap $? 62 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 63 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'i1nTViBstdiDsk44' \
    --body '{"listBlockedUserId": ["5BAbLTH2sSFfy7uq", "uA3Z4tEWqQ8SuBf7", "a28cm3cF1DL1wckP"]}' \
    > test.out 2>&1
eval_tap $? 63 'AdminBulkBlockPlayersV1' test.out

#- 64 AdminBulkUnblockPlayersV1
samples/cli/sample-apps Lobby adminBulkUnblockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId '5e85pMsBIm3xqlKA' \
    --body '{"listUnblockUserId": ["uxNv06l6jZ5mR383", "lfeT0wiS8arDnCxv", "MfyZPEzYkSf45gZE"]}' \
    > test.out 2>&1
eval_tap $? 64 'AdminBulkUnblockPlayersV1' test.out

#- 65 AdminDebugProfanityFilters
eval_tap 0 65 'AdminDebugProfanityFilters # SKIP deprecated' test.out

#- 66 AdminGetProfanityListFiltersV1
eval_tap 0 66 'AdminGetProfanityListFiltersV1 # SKIP deprecated' test.out

#- 67 AdminAddProfanityFilterIntoList
eval_tap 0 67 'AdminAddProfanityFilterIntoList # SKIP deprecated' test.out

#- 68 AdminAddProfanityFilters
eval_tap 0 68 'AdminAddProfanityFilters # SKIP deprecated' test.out

#- 69 AdminImportProfanityFiltersFromFile
eval_tap 0 69 'AdminImportProfanityFiltersFromFile # SKIP deprecated' test.out

#- 70 AdminDeleteProfanityFilter
eval_tap 0 70 'AdminDeleteProfanityFilter # SKIP deprecated' test.out

#- 71 AdminGetProfanityLists
eval_tap 0 71 'AdminGetProfanityLists # SKIP deprecated' test.out

#- 72 AdminCreateProfanityList
eval_tap 0 72 'AdminCreateProfanityList # SKIP deprecated' test.out

#- 73 AdminUpdateProfanityList
eval_tap 0 73 'AdminUpdateProfanityList # SKIP deprecated' test.out

#- 74 AdminDeleteProfanityList
eval_tap 0 74 'AdminDeleteProfanityList # SKIP deprecated' test.out

#- 75 AdminGetProfanityRule
eval_tap 0 75 'AdminGetProfanityRule # SKIP deprecated' test.out

#- 76 AdminSetProfanityRuleForNamespace
eval_tap 0 76 'AdminSetProfanityRuleForNamespace # SKIP deprecated' test.out

#- 77 AdminVerifyMessageProfanityResponse
eval_tap 0 77 'AdminVerifyMessageProfanityResponse # SKIP deprecated' test.out

#- 78 AdminGetThirdPartyConfig
eval_tap 0 78 'AdminGetThirdPartyConfig # SKIP deprecated' test.out

#- 79 AdminUpdateThirdPartyConfig
eval_tap 0 79 'AdminUpdateThirdPartyConfig # SKIP deprecated' test.out

#- 80 AdminCreateThirdPartyConfig
eval_tap 0 80 'AdminCreateThirdPartyConfig # SKIP deprecated' test.out

#- 81 AdminDeleteThirdPartyConfig
eval_tap 0 81 'AdminDeleteThirdPartyConfig # SKIP deprecated' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out

#- 83 PublicGetPartyDataV1
eval_tap 0 83 'PublicGetPartyDataV1 # SKIP deprecated' test.out

#- 84 PublicUpdatePartyAttributesV1
eval_tap 0 84 'PublicUpdatePartyAttributesV1 # SKIP deprecated' test.out

#- 85 PublicSetPartyLimitV1
eval_tap 0 85 'PublicSetPartyLimitV1 # SKIP deprecated' test.out

#- 86 PublicPlayerBlockPlayersV1
samples/cli/sample-apps Lobby publicPlayerBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"blockedUserId": "yGraWUbVvnK9CV72"}' \
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
    --body '{"userId": "AVtN1hjEpjHoFgPv"}' \
    > test.out 2>&1
eval_tap $? 89 'PublicUnblockPlayerV1' test.out

#- 90 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'false' \
    --userIds 'KycxgXM20PK9XPUW' \
    > test.out 2>&1
eval_tap $? 90 'UsersPresenceHandlerV1' test.out

#- 91 UsersPresenceHandlerV2
samples/cli/sample-apps Lobby usersPresenceHandlerV2 \
    --namespace $AB_NAMESPACE \
    --countOnly 'false' \
    --body '{"userIDs": ["P0r7b9dJXk09ZhdK", "fNEoOH1lth4gfg4D", "e7dVMmJNUJMdH4dc"]}' \
    > test.out 2>&1
eval_tap $? 91 'UsersPresenceHandlerV2' test.out

#- 92 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "K6WCb9TtFRjWvpcf", "topic": "SxiFyDxCdmyLBLtq"}' \
    > test.out 2>&1
eval_tap $? 92 'FreeFormNotification' test.out

#- 93 GetMyNotifications
samples/cli/sample-apps Lobby getMyNotifications \
    --namespace $AB_NAMESPACE \
    --endTime '15' \
    --limit '4' \
    --offset '24' \
    --startTime '100' \
    > test.out 2>&1
eval_tap $? 93 'GetMyNotifications' test.out

#- 94 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"srYpdHHmNRZXpTMD": "zEaC2uPR8iHx4Ndi", "GrtI4ZDf8Lb9WEeh": "gVcjFW8QercBMHvp", "FLHmyx01bltiB5gG": "OZ9aWvqzXgyeX6Jw"}, "templateLanguage": "XVm4Dxs4Uuq30rqD", "templateSlug": "qXLRelizcCURt7uf", "topic": "12WgEWJgCWKjNESq"}' \
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
    --body '{"templateContent": "MZTpd28gLEhnlJ8E", "templateLanguage": "xS0FCQrEmGmzTJt2", "templateSlug": "0HjDTiq4RqzXH7VL"}' \
    > test.out 2>&1
eval_tap $? 96 'CreateTemplate' test.out

#- 97 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'jqd4K03dXxwm7qPj' \
    --after 'oVluve6KHYLH7v9n' \
    --before 'EoGQz69e2iLeMhng' \
    --limit '40' \
    > test.out 2>&1
eval_tap $? 97 'GetSlugTemplate' test.out

#- 98 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug '7nGvDycTz1SElXV0' \
    > test.out 2>&1
eval_tap $? 98 'DeleteTemplateSlug' test.out

#- 99 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'Eg7b10izVOODQZgB' \
    --templateSlug 'DQsjiVaDb3UkbT4R' \
    > test.out 2>&1
eval_tap $? 99 'GetLocalizationTemplate' test.out

#- 100 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'TyrxcEjuX9R9cDD1' \
    --templateSlug 'VQJUsRWyHROJaeP7' \
    --body '{"templateContent": "vfiNNOB5v3ziXNmO"}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateLocalizationTemplate' test.out

#- 101 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage '3dxMYzI2PPrrZkhU' \
    --templateSlug 'aXARelnV1EG6zR6V' \
    > test.out 2>&1
eval_tap $? 101 'DeleteTemplateLocalization' test.out

#- 102 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'oqBBCszODbxz6wPx' \
    --templateSlug 'DH4jmHFLjcreLU99' \
    > test.out 2>&1
eval_tap $? 102 'PublishTemplate' test.out

#- 103 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'gtqbWhH9aXywUhPN' \
    --before 'MEsDebqkryyJpLsO' \
    --limit '15' \
    > test.out 2>&1
eval_tap $? 103 'GetTopicByNamespace' test.out

#- 104 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "woRobZSsHdWBBzZo", "topic": "S8nb4aadn16jZe7p"}' \
    > test.out 2>&1
eval_tap $? 104 'CreateTopic' test.out

#- 105 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'CfREyyMZHP7uqXPa' \
    > test.out 2>&1
eval_tap $? 105 'GetTopicByTopicName' test.out

#- 106 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic '7HbsjyhMKgDJSdtp' \
    --body '{"description": "Ja1cww5BoBzGYkdV"}' \
    > test.out 2>&1
eval_tap $? 106 'UpdateTopicByTopicName' test.out

#- 107 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'RIUSKSJ4xBYcx00p' \
    > test.out 2>&1
eval_tap $? 107 'DeleteTopicByTopicName' test.out

#- 108 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'x8ODYGIe6YTpa18A' \
    --body '{"message": "HoEmYOGfcHbGKOHD", "topic": "kJKxh87Wfc9hoeHs"}' \
    > test.out 2>&1
eval_tap $? 108 'FreeFormNotificationByUserID' test.out

#- 109 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'Kwz5h6rbkiTuiWUH' \
    --body '{"templateContext": {"3QyhutyrgWSwu5QW": "veH00zmbqUIhwKtd", "SzGSRTaowlVVjnNM": "kD3oqiQfbt1oQwYY", "UdcrjRLnkkZfVwSk": "zi8VQDmgdgbIm6Bj"}, "templateLanguage": "ViWiZEP8b9dVOTjV", "templateSlug": "NdtB1J2t0MpXL2I1", "topic": "BXNKFn3BwsRI2Z6t"}' \
    > test.out 2>&1
eval_tap $? 109 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE