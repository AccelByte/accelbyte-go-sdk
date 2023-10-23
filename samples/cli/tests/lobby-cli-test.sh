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
echo "1..97"

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
    --limit '22' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "dfcK1EwwKrUJjBzw", "friendPublicId": "0XnytjaOnc1ue7tq"}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "H7elGaKKfCLDlGFN"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "hLSSYqLvXPyXAaBy"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "ryIteneRr68QFn2O"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'KedOn7HUDFJs0C3i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "JjzgtR3Wt3jmemsK"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'CNskxwAyTJg4gKwu' \
    --body '{"friendIds": ["hlCQSLZ3z91MJz3t", "8Xl19eetEKnzkURx", "m0yBqVRiAlIru4uz"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace $AB_NAMESPACE \
    --userId 'hEbqVT1G2zP2zxWb' \
    --body '{"friendIds": ["RORGcxTa6EzIvwRx", "llm0k3e6xgWaomDZ", "wcPjcLKsCy2ClB04"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
samples/cli/sample-apps Lobby syncNativeFriends \
    --namespace $AB_NAMESPACE \
    --body '[{"isLogin": true, "platformId": "suvMEsYqm7v3lkaO", "platformToken": "1aYb0Rw934Oiuywa", "psnEnv": "bKl0FA11ccvDvI2U"}, {"isLogin": true, "platformId": "hTkpXmTO5QvTNgyM", "platformToken": "TYRr4z3UA9YYlD63", "psnEnv": "wT4yld5hAj3by4K0"}, {"isLogin": true, "platformId": "bxSGgPQNWF6CMLOJ", "platformToken": "MOf3w1ddJHwzn4tW", "psnEnv": "oHFg4Hu4HdcD95AO"}]' \
    > test.out 2>&1
eval_tap $? 16 'SyncNativeFriends' test.out

#- 17 AdminGetAllConfigV1
samples/cli/sample-apps Lobby adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigV1' test.out

#- 18 AdminGetConfigV1
samples/cli/sample-apps Lobby adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigV1' test.out

#- 19 AdminUpdateConfigV1
samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 80, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 60, "chatRateLimitDuration": 75, "concurrentUsersLimit": 15, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "CBUzb5JY8pqnD4Vq", "generalRateLimitBurst": 39, "generalRateLimitDuration": 98, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 4, "maxFriendsLimit": 74, "maxPartyMember": 1, "profanityFilter": false, "readyConsentTimeout": 90, "unregisterDelay": 93}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigV1' test.out

#- 20 AdminExportConfigV1
samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminExportConfigV1' test.out

#- 21 AdminImportConfigV1
samples/cli/sample-apps Lobby adminImportConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'AdminImportConfigV1' test.out

#- 22 GetListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace $AB_NAMESPACE \
    --userId 'dau3sK4sfekvBCpL' \
    --friendId 'vA9xCWNzqF39WDkp' \
    --limit '59' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 22 'GetListOfFriends' test.out

#- 23 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId '8bnckPd8RcrRniH1' \
    --friendId 'qWbqy3kGmZ8TzX3o' \
    --limit '71' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 23 'GetIncomingFriendRequests' test.out

#- 24 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId '63QmuS0Q7Ym0ZaGx' \
    --limit '61' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 24 'GetOutgoingFriendRequests' test.out

#- 25 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "YzgEhITx3yZqmAtE", "topicName": "uWVH2akDy8a3bkd6", "userIds": ["VxYtTCqVGW6DSvHO", "wDNTIGeolEWoY1Oa", "aoBGG6uZQrjFE2iR"]}' \
    > test.out 2>&1
eval_tap $? 25 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 26 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "qOfB60KPWeALo6Nf", "topicName": "wHTEeC5l3I6QNuSL"}' \
    > test.out 2>&1
eval_tap $? 26 'SendUsersFreeformNotificationV1Admin' test.out

#- 27 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'FiWdNexSJE1RULOM' \
    --body '{"message": "uBwhAJ7TX8JQYcRm", "topicName": "1src6UgL9JQ5r0KF"}' \
    > test.out 2>&1
eval_tap $? 27 'SendPartyFreeformNotificationV1Admin' test.out

#- 28 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'FEoLuwpLm1V65E6k' \
    --body '{"templateContext": {"EuTVosKv9A51cyKC": "NU9SH8FCVdDnfMj1", "HgV2Cw2yRrcumtE8": "MIzF3XAotsKfeOuY", "hYorPqbWnyID0wFt": "6MtAowzd7nKMoFd6"}, "templateLanguage": "xMpcaYtdvit2n8l9", "templateSlug": "Y2kLSM5peEDLPm8Y", "topicName": "dHMeSpY2zdmcHmun"}' \
    > test.out 2>&1
eval_tap $? 28 'SendPartyTemplatedNotificationV1Admin' test.out

#- 29 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetAllNotificationTemplatesV1Admin' test.out

#- 30 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "NzuOWbiEe4MwGkXt", "templateLanguage": "Ha3A4ENpZwD0slEK", "templateSlug": "zcAUdZiq1173egxe"}' \
    > test.out 2>&1
eval_tap $? 30 'CreateNotificationTemplateV1Admin' test.out

#- 31 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"ZCS2j4vZiRluQ1k7": "twnD25VpmVIAeoEP", "Y3ixxEQmYacizuGM": "i74WjoTYeTKu70Oc", "poGhdmXBklmOyk3Q": "9eqOtBlBbYctP5A0"}, "templateLanguage": "mFSXehUEhk1q9Ez1", "templateSlug": "a1ccRgcSkMkKBTLa", "topicName": "aC0An2tMdeq65bNy"}' \
    > test.out 2>&1
eval_tap $? 31 'SendUsersTemplatedNotificationV1Admin' test.out

#- 32 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'biLtmThikUElK7D8' \
    --after 'ztklEAhl3aq9S7q2' \
    --before '4DBWBiQhZjk4mpJb' \
    --limit '92' \
    > test.out 2>&1
eval_tap $? 32 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 33 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'tXCONvJTUwrYQSKu' \
    > test.out 2>&1
eval_tap $? 33 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 34 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 't7bhcTjhaeGCGhMD' \
    --templateSlug 'lTrjKnF7fUUvm6yR' \
    > test.out 2>&1
eval_tap $? 34 'GetSingleTemplateLocalizationV1Admin' test.out

#- 35 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'bCuNKWMol5nJSaFJ' \
    --templateSlug '4br3gpArTraTSBPk' \
    --body '{"templateContent": "tcbG2Dp7DhHxTFwC"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateTemplateLocalizationV1Admin' test.out

#- 36 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'WBqWAirjcGC5B4jr' \
    --templateSlug 'AyDX6F893CGNYVvZ' \
    > test.out 2>&1
eval_tap $? 36 'DeleteTemplateLocalizationV1Admin' test.out

#- 37 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'e9rberuRd0e6MkOh' \
    --templateSlug 'huCvqmaS2ROcJAPu' \
    > test.out 2>&1
eval_tap $? 37 'PublishTemplateLocalizationV1Admin' test.out

#- 38 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after 'lkSovcFPu3GWq8lt' \
    --before 'rc6M25HXZAKwxoKQ' \
    --limit '44' \
    > test.out 2>&1
eval_tap $? 38 'GetAllNotificationTopicsV1Admin' test.out

#- 39 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "2B79CEp9sdOPtrmc", "topicName": "X7Qo4tQbKL5EyeYp"}' \
    > test.out 2>&1
eval_tap $? 39 'CreateNotificationTopicV1Admin' test.out

#- 40 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'd5cIreyHL5WiC5kY' \
    > test.out 2>&1
eval_tap $? 40 'GetNotificationTopicV1Admin' test.out

#- 41 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'Ffd4j9nKOH5zv4V6' \
    --body '{"description": "JS2VSxW6pdIWYDlO"}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateNotificationTopicV1Admin' test.out

#- 42 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'In8kR8JjUJ0sAySd' \
    > test.out 2>&1
eval_tap $? 42 'DeleteNotificationTopicV1Admin' test.out

#- 43 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'XcLTNC0xBeYieDxy' \
    --body '{"message": "SqmdoJnHOWrXBdwo", "topicName": "bK3cvpt5VMTVSO7N"}' \
    > test.out 2>&1
eval_tap $? 43 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 44 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'eKbIUJcEfqGV36s6' \
    --body '{"templateContext": {"JKt3NE0oGXfFYsa7": "vDffScuSABsuVSqG", "ZPWcS1ylA3WwHSlT": "kLXAafBEdMVJtNSM", "HYMj1hFoXKWO1jYw": "Fp8Gznm4CdzjbQIP"}, "templateLanguage": "rdpYJXfgYFRDBoVs", "templateSlug": "g1lqEOT2gf6pWJaR", "topicName": "GoPdhvYumzdS3Wy7"}' \
    > test.out 2>&1
eval_tap $? 44 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 45 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'GLITBnaJ7CvTPax4' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPartyDataV1' test.out

#- 46 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'PQkSoHvByK3TrrUb' \
    --body '{"custom_attribute": {"Zf3AYVeZLSfRTEvB": {}, "GEbkOPnGx2EG36c2": {}, "EoCJjxOPzP9GNHx6": {}}, "updatedAt": 50}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdatePartyAttributesV1' test.out

#- 47 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId '4gWbHsjzaYbbLeLh' \
    --userId 'm1VoUmVIvoVe1fXk' \
    > test.out 2>&1
eval_tap $? 47 'AdminJoinPartyV1' test.out

#- 48 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId 'R300oUrFREOIlSOC' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserPartyV1' test.out

#- 49 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetLobbyCCU' test.out

#- 50 AdminGetBulkPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetBulkPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"listBlockedUserId": ["FN6JgvOGrdNZx6Br", "sOl5je7zhrkKvqeJ", "w8W2LzNU4PsAt90W"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 51 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'ky303BJGt9tUQjx8' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetAllPlayerSessionAttribute' test.out

#- 52 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId '9rFd38eX9gGe7sKk' \
    --body '{"attributes": {"Rrv6CBebXroEBoyG": "mrze7goR5gINozca", "uWkkjKRstbr8mSpH": "MYLI7Dj9PNneza8O", "nLyAFUbTZDOfOz8Y": "GGevUZFn1jLUl0HH"}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminSetPlayerSessionAttribute' test.out

#- 53 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'jiLvOCSNIVYA8B72' \
    --namespace $AB_NAMESPACE \
    --userId 'VfNDYGgjzc2O9XOx' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetPlayerSessionAttribute' test.out

#- 54 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qHqCAcJLUyJu8QrK' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerBlockedPlayersV1' test.out

#- 55 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'iMfFXSyRg9FDVo6d' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 56 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pgUm5T6Bmo35vPs9' \
    --body '{"listBlockedUserId": ["TaVmkYuavSzgdX1Y", "seY4fh005Kbg2fKS", "lmK0uOiWg4HYnq5p"]}' \
    > test.out 2>&1
eval_tap $? 56 'AdminBulkBlockPlayersV1' test.out

#- 57 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "nFQ4ICDfV1zyB0sW"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminDebugProfanityFilters' test.out

#- 58 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list 'AHIy9suPOGdwkLIA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminGetProfanityListFiltersV1' test.out

#- 59 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list 'MvrCHTyj9XLJTF8i' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "CvUZL5UyVnmXJ5Sa", "note": "9aML0G9kocGYuljY"}' \
    > test.out 2>&1
eval_tap $? 59 'AdminAddProfanityFilterIntoList' test.out

#- 60 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list 'tVGZBfBMUUnKex3i' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "TyE8oMLUYaCXv37I", "note": "gibjh4I587DvvTuQ"}, {"filter": "JJ9xijuc0tFPa7fQ", "note": "7jQTvpXDQuBeMJ0s"}, {"filter": "K7S50HT1rogp2jTg", "note": "ARAZRWNozjB73cXU"}]}' \
    > test.out 2>&1
eval_tap $? 60 'AdminAddProfanityFilters' test.out

#- 61 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list 'jmP1vqWsv4LSY18q' \
    --namespace $AB_NAMESPACE \
    --body '[14, 37, 55]' \
    > test.out 2>&1
eval_tap $? 61 'AdminImportProfanityFiltersFromFile' test.out

#- 62 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list 'd1o5qhnx6fKmh2Jh' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "MbVazGAb2ot7rBOp"}' \
    > test.out 2>&1
eval_tap $? 62 'AdminDeleteProfanityFilter' test.out

#- 63 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'AdminGetProfanityLists' test.out

#- 64 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": false, "isMandatory": false, "name": "99OsgFkQUA1ziHrv"}' \
    > test.out 2>&1
eval_tap $? 64 'AdminCreateProfanityList' test.out

#- 65 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'Uio0D4MsE2c2yRqN' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": false, "isMandatory": false, "newName": "0HyDEYOAcSjtp5Ay"}' \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateProfanityList' test.out

#- 66 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'G9xbXtOGtSKwt2Xw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'AdminDeleteProfanityList' test.out

#- 67 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'AdminGetProfanityRule' test.out

#- 68 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"rule": "3ZUC2SM8e5LiPZre"}' \
    > test.out 2>&1
eval_tap $? 68 'AdminSetProfanityRuleForNamespace' test.out

#- 69 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "LAtExxT30CDHOO0B", "profanityLevel": "S96FsFdcjG8PNK7v"}' \
    > test.out 2>&1
eval_tap $? 69 'AdminVerifyMessageProfanityResponse' test.out

#- 70 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'AdminGetThirdPartyConfig' test.out

#- 71 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "PydKKczpDwplBuNQ"}' \
    > test.out 2>&1
eval_tap $? 71 'AdminUpdateThirdPartyConfig' test.out

#- 72 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "nMtU9JKAFdsD7btU"}' \
    > test.out 2>&1
eval_tap $? 72 'AdminCreateThirdPartyConfig' test.out

#- 73 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'AdminDeleteThirdPartyConfig' test.out

#- 74 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 74 'PublicGetMessages' test.out

#- 75 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'ByeQ2miF6np49azi' \
    > test.out 2>&1
eval_tap $? 75 'PublicGetPartyDataV1' test.out

#- 76 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'qCsHZPg6KLjys5si' \
    --body '{"custom_attribute": {"0LWt85aCBvM268u1": {}, "C05MRW1xFTCtfa1l": {}, "tYEWMkocI7QdCD4m": {}}, "updatedAt": 13}' \
    > test.out 2>&1
eval_tap $? 76 'PublicUpdatePartyAttributesV1' test.out

#- 77 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'ToqKeF8RUpjZsMn2' \
    --body '{"limit": 39}' \
    > test.out 2>&1
eval_tap $? 77 'PublicSetPartyLimitV1' test.out

#- 78 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'PublicGetPlayerBlockedPlayersV1' test.out

#- 79 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 80 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'true' \
    --userIds '9z2MX8OJebW6qv2m' \
    > test.out 2>&1
eval_tap $? 80 'UsersPresenceHandlerV1' test.out

#- 81 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "36DKOE9HYhbSp292", "topic": "TjlnB0ASL9atPytS"}' \
    > test.out 2>&1
eval_tap $? 81 'FreeFormNotification' test.out

#- 82 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"sFmK6WiveZ4aUV9S": "X6YMnFtVxLn8bf4u", "95BXx1WmUdR4GuzG": "gzJrGFV6zjn5xhef", "Qws9NYC5srG7dKEs": "L2XHKVpz81Nn9MMo"}, "templateLanguage": "ULjRUky5uVFQSaGT", "templateSlug": "9Qjb5b8AyCru95RK", "topic": "CXHupSSrVKzoyvzM"}' \
    > test.out 2>&1
eval_tap $? 82 'NotificationWithTemplate' test.out

#- 83 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'GetGameTemplate' test.out

#- 84 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "IIbXU5YgpBpGePEp", "templateLanguage": "VSI9EWvX121fIfpk", "templateSlug": "1WoOseAjmL76Jt2B"}' \
    > test.out 2>&1
eval_tap $? 84 'CreateTemplate' test.out

#- 85 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'pARmaMspaBj2j2wT' \
    --after 'seNED7q81V2dRCGT' \
    --before '2zQ8rpewiwxkvr90' \
    --limit '16' \
    > test.out 2>&1
eval_tap $? 85 'GetSlugTemplate' test.out

#- 86 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'vidYlB2X7GklLKyi' \
    > test.out 2>&1
eval_tap $? 86 'DeleteTemplateSlug' test.out

#- 87 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'QrdCt4Ng1OgqmzOh' \
    --templateSlug 'bPiEPxzGpj6mhERd' \
    > test.out 2>&1
eval_tap $? 87 'GetLocalizationTemplate' test.out

#- 88 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'fZ3jJxViAT884iPP' \
    --templateSlug '2rL51UfdXuRl3r1a' \
    --body '{"templateContent": "Hut7b46lHYDfNsAw"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateLocalizationTemplate' test.out

#- 89 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'DrexHSoDcbV1Wi9C' \
    --templateSlug 'RVBWb69ZMmfVVMXb' \
    > test.out 2>&1
eval_tap $? 89 'DeleteTemplateLocalization' test.out

#- 90 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'ouP0IpUyFLBl6UVA' \
    --templateSlug 'yv8cZxg0FeTXVEW7' \
    > test.out 2>&1
eval_tap $? 90 'PublishTemplate' test.out

#- 91 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'YZOGmgjlRvEcAmmr' \
    --before 'BwcjmECyMdYVXDJa' \
    --limit '21' \
    > test.out 2>&1
eval_tap $? 91 'GetTopicByNamespace' test.out

#- 92 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "wfUzBlBibybWKJKA", "topic": "Q6oxnRFTO8cqZRUf"}' \
    > test.out 2>&1
eval_tap $? 92 'CreateTopic' test.out

#- 93 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'UDGi0dcbyQk63Ri4' \
    > test.out 2>&1
eval_tap $? 93 'GetTopicByTopicName' test.out

#- 94 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'UmGvWQuNBPk8GtO6' \
    --body '{"description": "nnigHgP7uwCp9P8F"}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateTopicByTopicName' test.out

#- 95 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'RiEv2NwgJhc3rOAZ' \
    > test.out 2>&1
eval_tap $? 95 'DeleteTopicByTopicName' test.out

#- 96 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'L46WuCykrtuNOoJA' \
    --body '{"message": "YnaalbV3Irc5Fg3u", "topic": "lvh10cwqILnBscmc"}' \
    > test.out 2>&1
eval_tap $? 96 'FreeFormNotificationByUserID' test.out

#- 97 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId '73WN5FXM5pXoRtIb' \
    --body '{"templateContext": {"cWyqlS3rzh95Qmj5": "PklLlpUW8fyNgmHx", "MU574VydvyIRFJpG": "1Nqbay2dJoM2V1pd", "iPAI5XJ6momslYyW": "H4WjnUlAL0knlYoM"}, "templateLanguage": "V1GjV2aNF1IcM1KB", "templateSlug": "IFsS3Akx8FbBIn2B", "topic": "fKBNTLOrmZlR2pi2"}' \
    > test.out 2>&1
eval_tap $? 97 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE