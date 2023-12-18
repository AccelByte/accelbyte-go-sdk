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
echo "1..100"

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
    --limit '49' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "UcIJpqQP64PqxZmw", "friendPublicId": "Bg7kFK6YIZ4LPy4W"}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "kW6pUbTboGmPqQaR"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "7i7owL2QYuiqiny4"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "yNN0bncmot3rNvov"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'a4k90HiM9Jif7v0G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "ekVOodPDeErs1mKE"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'KjXJRNv50SiOjhzJ' \
    --body '{"friendIds": ["vcJUuodBsEpHrcxx", "J9NzTqoUiXU8gwmV", "Is2wpMifPpU7OBYD"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace $AB_NAMESPACE \
    --userId '62NJbPjUKp6MA1P9' \
    --body '{"friendIds": ["w0Nb6ZqbEIAvITs0", "zed5yknFdwu7ChKk", "O1wIIRHAmygeOcdR"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
samples/cli/sample-apps Lobby syncNativeFriends \
    --namespace $AB_NAMESPACE \
    --body '[{"isLogin": false, "platformId": "rz9kQnkKDrc1Xb1s", "platformToken": "D2GiIgmTNoLD4LOJ", "psnEnv": "YhmpxY964rVWSZM9"}, {"isLogin": false, "platformId": "iHg0XGuyxEtZyR0N", "platformToken": "wOxtBJ53rjhXyF2l", "psnEnv": "mMAPG20FG5gEI9cW"}, {"isLogin": false, "platformId": "JsdOPPCuAx7K90Ro", "platformToken": "NTeIOb1K2D5U9lAS", "psnEnv": "0u3PVvSPDV81tndS"}]' \
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
    --body '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 53, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 66, "chatRateLimitDuration": 0, "concurrentUsersLimit": 87, "disableInvitationOnJoinParty": false, "enableChat": true, "entitlementCheck": false, "entitlementItemID": "GNv1q0DjCfXA7DwE", "generalRateLimitBurst": 22, "generalRateLimitDuration": 80, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 70, "maxFriendsLimit": 4, "maxPartyMember": 71, "profanityFilter": true, "readyConsentTimeout": 94, "unregisterDelay": 3}' \
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
    --userId 'FlOH1UgTWQsjW8lN' \
    --friendId 'WhF5bbd7sI2p70xE' \
    --limit '28' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 22 'GetListOfFriends' test.out

#- 23 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'Dqp9hWxtGU7VJSbb' \
    --friendId 'OiAq07kTKHLGgEBJ' \
    --limit '38' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 23 'GetIncomingFriendRequests' test.out

#- 24 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'c9ItFACeuWbke6gh' \
    --limit '30' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 24 'GetOutgoingFriendRequests' test.out

#- 25 AdminGetGlobalConfig
samples/cli/sample-apps Lobby adminGetGlobalConfig \
    > test.out 2>&1
eval_tap $? 25 'AdminGetGlobalConfig' test.out

#- 26 AdminUpdateGlobalConfig
samples/cli/sample-apps Lobby adminUpdateGlobalConfig \
    --body '{"regionRetryMapping": {"lzWlvSwUbbYn8aaT": ["H4VOQ0Ig5zk0vPuj", "iAxRocIa67yTrXA4", "OrfGdA8MhR79JI4T"], "NUbsC9bkbmzQUmaC": ["UOk8rRZgsbCEJlEn", "VNGsiuJWhInIQL6x", "MeZOvi9qJChI3OIp"], "qw4o4JopVWU6Bz3N": ["Glzx5gxnEXYUZ0qE", "M2llJUDXw5OqUeyb", "pROIv4ur0BOgswJ9"]}, "regionURLMapping": ["ngAAgX1gEAKKfoxa", "1lJDg380Ktcw0TwM", "BvQ3C2Ckh8rZjHW5"], "testGameMode": "X49Pi2onaYX4QNFi", "testRegionURLMapping": ["hyOXfA8JbB2GuRSR", "osImQ8f4TbyHFSRp", "TynbuYbjx9RdVAlQ"], "testTargetUserIDs": ["hCssH7VCnEn2ccXN", "1TnJE91UMJNfYjH8", "d9LVKynePv3KS2JX"]}' \
    > test.out 2>&1
eval_tap $? 26 'AdminUpdateGlobalConfig' test.out

#- 27 AdminDeleteGlobalConfig
samples/cli/sample-apps Lobby adminDeleteGlobalConfig \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGlobalConfig' test.out

#- 28 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "glWaqssMFnGxcuqP", "topicName": "h1cZONhCGF0ZEtvl", "userIds": ["JbLLL6IXkMm3IaDI", "rrHclKZgNyIOpZyx", "MGGO9mYYfdQXre52"]}' \
    > test.out 2>&1
eval_tap $? 28 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 29 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "u2Ty0O1GFzHwakHK", "topicName": "GaLDa4MVTdsNeE4E"}' \
    > test.out 2>&1
eval_tap $? 29 'SendUsersFreeformNotificationV1Admin' test.out

#- 30 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'AY2B0X9WChCb6thv' \
    --body '{"message": "BF17BLkyy1cD9vnQ", "topicName": "bJGTm7EQmVStV9ZM"}' \
    > test.out 2>&1
eval_tap $? 30 'SendPartyFreeformNotificationV1Admin' test.out

#- 31 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'g3ZVpBkb3RUUvlkO' \
    --body '{"templateContext": {"l0BPGsRd24zjPgoG": "n62AQeRtXJCCNSnx", "NbCxTuEpUoXpKVRW": "gz0tVJHZBzZOFW7s", "kLB1jwe9TxY2ba6n": "GSdObxx2rKei8wIz"}, "templateLanguage": "l2sGyqlTk9DH9yZO", "templateSlug": "pZ0lXUD9zNpebXLW", "topicName": "fGedjTLGe2Xx1NiT"}' \
    > test.out 2>&1
eval_tap $? 31 'SendPartyTemplatedNotificationV1Admin' test.out

#- 32 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetAllNotificationTemplatesV1Admin' test.out

#- 33 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "EDbLaw5B1laMHdgc", "templateLanguage": "DUE4CU0hFUze3bu4", "templateSlug": "LLxK18KEb6G94n9q"}' \
    > test.out 2>&1
eval_tap $? 33 'CreateNotificationTemplateV1Admin' test.out

#- 34 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"8YHSpztGufFB0Ncr": "xyyasVZIrO6ZoblK", "eVZnZVXC0nC18IIn": "lbxlEZt0JzrS7nNT", "QGewheNnEvsHkYs5": "Qd7f18CgOSXL2u2w"}, "templateLanguage": "UffbgGNJUQUNIoXt", "templateSlug": "n9iwJmGIllLG8zRZ", "topicName": "tKkaFEjovW6IvsVQ"}' \
    > test.out 2>&1
eval_tap $? 34 'SendUsersTemplatedNotificationV1Admin' test.out

#- 35 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'htjrEshPcC8JEbRy' \
    --after 'pfghADI8CPsxl0uD' \
    --before 'SYHvWe76LOvw7sHm' \
    --limit '92' \
    > test.out 2>&1
eval_tap $? 35 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 36 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'KQCHkjCwzAL9tkdp' \
    > test.out 2>&1
eval_tap $? 36 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 37 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'Y4S6kNBkMvW7E1WR' \
    --templateSlug 'DOsbdNThtwa3Gz4P' \
    > test.out 2>&1
eval_tap $? 37 'GetSingleTemplateLocalizationV1Admin' test.out

#- 38 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'TbaiZtzDYEnqvPB0' \
    --templateSlug 'gs3Y9AYQVIwtLB0c' \
    --body '{"templateContent": "yqQ2Pk8XDQgZfkj1"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateTemplateLocalizationV1Admin' test.out

#- 39 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage '2nWxneZzAYSlAgFi' \
    --templateSlug 'VtL85AFWpQ2QWM4X' \
    > test.out 2>&1
eval_tap $? 39 'DeleteTemplateLocalizationV1Admin' test.out

#- 40 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'QJTJzCfECKlQLYbB' \
    --templateSlug '9NHijUhseaVv2C8f' \
    > test.out 2>&1
eval_tap $? 40 'PublishTemplateLocalizationV1Admin' test.out

#- 41 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after 'HD0S5gW41ysDk0xy' \
    --before 'db4xAr8bYquKFxPr' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 41 'GetAllNotificationTopicsV1Admin' test.out

#- 42 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "1RyeEPcFFQ1lq295", "topicName": "qN1uxyctid8TF9wS"}' \
    > test.out 2>&1
eval_tap $? 42 'CreateNotificationTopicV1Admin' test.out

#- 43 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'w6r09uAa7UUltLYI' \
    > test.out 2>&1
eval_tap $? 43 'GetNotificationTopicV1Admin' test.out

#- 44 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'uY0F8Q9tQRXyMPW1' \
    --body '{"description": "yHGRdz3S9A8gUL7r"}' \
    > test.out 2>&1
eval_tap $? 44 'UpdateNotificationTopicV1Admin' test.out

#- 45 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'FGcwfdEUOsxZIUcq' \
    > test.out 2>&1
eval_tap $? 45 'DeleteNotificationTopicV1Admin' test.out

#- 46 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'zWYkv8fjNK4yLafb' \
    --body '{"message": "YZDEWlWJrOU2TXyD", "topicName": "jzBhi2AnffRXFYh3"}' \
    > test.out 2>&1
eval_tap $? 46 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 47 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId '0M2d6QcoiFliIkq7' \
    --body '{"templateContext": {"rDtdxNyuZVe40MZA": "PsR3hr4LkVWYDNnz", "aDws0XyvGAwP4uJ5": "UTTnADvVBgsAjDdu", "LiXvWTHCKmqEVxCP": "ywZSVwFB3mXqvU3t"}, "templateLanguage": "kong3A6ZWjMuGMvX", "templateSlug": "vulF97uXphXVl88X", "topicName": "PjdR27l0O2ol2UMN"}' \
    > test.out 2>&1
eval_tap $? 47 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 48 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'c0ZdTScuvYpdWdlo' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPartyDataV1' test.out

#- 49 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'gFpYWFMAmr4rsUvQ' \
    --body '{"custom_attribute": {"mfNrwuar0CZuojrT": {}, "MomYAczAWAE3BvX3": {}, "Zbz7mjAaUcUKA0YT": {}}, "updatedAt": 99}' \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdatePartyAttributesV1' test.out

#- 50 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'B1FZboSIPVjAM4Cc' \
    --userId 'inBNF3aEmnrNLBxh' \
    > test.out 2>&1
eval_tap $? 50 'AdminJoinPartyV1' test.out

#- 51 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId 'JtJaf3jPkfIR3GQs' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetUserPartyV1' test.out

#- 52 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'AdminGetLobbyCCU' test.out

#- 53 AdminGetBulkPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetBulkPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"listBlockedUserId": ["5Q97BVDoJFBHKehr", "LFpsBsRukzr5Z3pu", "jhoIagsBdUSqoKMV"]}' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 54 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'N1ftIFD3g3MOqppS' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetAllPlayerSessionAttribute' test.out

#- 55 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'LvlbUs23a31r669w' \
    --body '{"attributes": {"m640AODDYw2k90UL": "NBW4Utwa3SXFluHA", "aGqdmOfCNk6zwiFX": "WruD5wkbMllu3L7H", "1RI95LMSwu0U8Ar9": "f6WXFggaRbzyq8nX"}}' \
    > test.out 2>&1
eval_tap $? 55 'AdminSetPlayerSessionAttribute' test.out

#- 56 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute '2ZOJhykGrB0XMhwV' \
    --namespace $AB_NAMESPACE \
    --userId 'i5RW87CmM15vX1S1' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerSessionAttribute' test.out

#- 57 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eyr6zfCI0l5zr171' \
    > test.out 2>&1
eval_tap $? 57 'AdminGetPlayerBlockedPlayersV1' test.out

#- 58 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'cIS9oirMr7Xtoqcv' \
    > test.out 2>&1
eval_tap $? 58 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 59 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'bj51hGlM2Y9JbVAo' \
    --body '{"listBlockedUserId": ["NCFTCAqLm2QVlsVp", "fDwtlnLs3zG7vQSK", "dCnT2Fft6kqbMFTL"]}' \
    > test.out 2>&1
eval_tap $? 59 'AdminBulkBlockPlayersV1' test.out

#- 60 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "bLaIlJmlqXutX5zT"}' \
    > test.out 2>&1
eval_tap $? 60 'AdminDebugProfanityFilters' test.out

#- 61 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list 'JTirClcYZ7WVe0qa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'AdminGetProfanityListFiltersV1' test.out

#- 62 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list '3kN83ojJ1Qw5ZRvk' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "XRblXj694mHlxT3t", "note": "KxQBAvoTmeVEO1sM"}' \
    > test.out 2>&1
eval_tap $? 62 'AdminAddProfanityFilterIntoList' test.out

#- 63 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list '7J5RnYUX54uNAAH8' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "LZU1pkVUBTPmTYh5", "note": "izbFcRMaTYvIQwmu"}, {"filter": "64ssbcDamNzPgFdX", "note": "K7Afe9sG1x3rZi7m"}, {"filter": "XDLXA0JgbMrsHIrw", "note": "bJMfRrJNcr9W0mRC"}]}' \
    > test.out 2>&1
eval_tap $? 63 'AdminAddProfanityFilters' test.out

#- 64 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list '3zJeec1LbFb3t6hT' \
    --namespace $AB_NAMESPACE \
    --body '[10, 7, 16]' \
    > test.out 2>&1
eval_tap $? 64 'AdminImportProfanityFiltersFromFile' test.out

#- 65 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list 'jZAZrbiakg96VGiD' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "9F8y5AhMcHxWKe94"}' \
    > test.out 2>&1
eval_tap $? 65 'AdminDeleteProfanityFilter' test.out

#- 66 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'AdminGetProfanityLists' test.out

#- 67 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": true, "name": "YQ6I0gwBlbCfvfiv"}' \
    > test.out 2>&1
eval_tap $? 67 'AdminCreateProfanityList' test.out

#- 68 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'xdakDFcdABjZn8lI' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": false, "isMandatory": true, "newName": "L1UoyspV1hOvyUpm"}' \
    > test.out 2>&1
eval_tap $? 68 'AdminUpdateProfanityList' test.out

#- 69 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list '0JD8rRKNOBq5iclF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'AdminDeleteProfanityList' test.out

#- 70 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'AdminGetProfanityRule' test.out

#- 71 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"rule": "JhILTqrDXIdLEPhZ"}' \
    > test.out 2>&1
eval_tap $? 71 'AdminSetProfanityRuleForNamespace' test.out

#- 72 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "WAlEsO0TJB7roI0F", "profanityLevel": "Iwe8gAwj6IYaBmex"}' \
    > test.out 2>&1
eval_tap $? 72 'AdminVerifyMessageProfanityResponse' test.out

#- 73 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'AdminGetThirdPartyConfig' test.out

#- 74 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "Xii9Meqpu3ApQGPe"}' \
    > test.out 2>&1
eval_tap $? 74 'AdminUpdateThirdPartyConfig' test.out

#- 75 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "CmJ5ddrG2Jp0LP09"}' \
    > test.out 2>&1
eval_tap $? 75 'AdminCreateThirdPartyConfig' test.out

#- 76 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'AdminDeleteThirdPartyConfig' test.out

#- 77 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 77 'PublicGetMessages' test.out

#- 78 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'xcS2JbKw2OOnzenB' \
    > test.out 2>&1
eval_tap $? 78 'PublicGetPartyDataV1' test.out

#- 79 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'vnQVzZwP9M4W5D9E' \
    --body '{"custom_attribute": {"CUxxOiHagvbCE9hp": {}, "uBJR3youlpZavVfl": {}, "OCIEx0i9FsnFMRry": {}}, "updatedAt": 32}' \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdatePartyAttributesV1' test.out

#- 80 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId '7nL3g1b0oHBVUYbO' \
    --body '{"limit": 85}' \
    > test.out 2>&1
eval_tap $? 80 'PublicSetPartyLimitV1' test.out

#- 81 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'PublicGetPlayerBlockedPlayersV1' test.out

#- 82 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 83 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'false' \
    --userIds 'kf2XgrrFC82DUo33' \
    > test.out 2>&1
eval_tap $? 83 'UsersPresenceHandlerV1' test.out

#- 84 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "TEXUIKt4TKzFw9JJ", "topic": "5iwXvIv6gjbPt4Au"}' \
    > test.out 2>&1
eval_tap $? 84 'FreeFormNotification' test.out

#- 85 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"e6Uf6yMv5WDxwgry": "Hsky4cJ5BgvlFovw", "j4ERkID7N0oPhTEN": "XS1XnXLWi88qYGXv", "GRTsUmQLymIDAFoZ": "yAI99vAJjUbukmQg"}, "templateLanguage": "2eIB7w2rIWpHghLv", "templateSlug": "TeYcRVYcnfDCeA0c", "topic": "Zi4yxduY34LG9Wt2"}' \
    > test.out 2>&1
eval_tap $? 85 'NotificationWithTemplate' test.out

#- 86 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 86 'GetGameTemplate' test.out

#- 87 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "5fgVQXkz3UvTrrXE", "templateLanguage": "JYVz5ZH08YwzkEwo", "templateSlug": "UonDnwaEa4iyoO7w"}' \
    > test.out 2>&1
eval_tap $? 87 'CreateTemplate' test.out

#- 88 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'dYy1JU32eiuXfw77' \
    --after 'Lmz2vLvVSOyFcBjf' \
    --before '2OMGO1O8aTUxjE7U' \
    --limit '0' \
    > test.out 2>&1
eval_tap $? 88 'GetSlugTemplate' test.out

#- 89 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'sDuE5g0e8PRnj03d' \
    > test.out 2>&1
eval_tap $? 89 'DeleteTemplateSlug' test.out

#- 90 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'UL6a9dEeVD89rCyD' \
    --templateSlug 'QRgaUEk5YJLFBujC' \
    > test.out 2>&1
eval_tap $? 90 'GetLocalizationTemplate' test.out

#- 91 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage '0emt1zsEe5UzrDVE' \
    --templateSlug '4YZp3QxbJKIFZL09' \
    --body '{"templateContent": "FjvHmhwro9jmfY37"}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateLocalizationTemplate' test.out

#- 92 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'Fh4EwIBQXe2BPk9b' \
    --templateSlug 'cw2Dv6x6PcbtbZU5' \
    > test.out 2>&1
eval_tap $? 92 'DeleteTemplateLocalization' test.out

#- 93 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 't8BrXY48GcZbguUz' \
    --templateSlug 'rRqDJAOpicLlsx2o' \
    > test.out 2>&1
eval_tap $? 93 'PublishTemplate' test.out

#- 94 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'vva7iHw26p3QjkJ8' \
    --before '8zsClKqtknvJPsv3' \
    --limit '59' \
    > test.out 2>&1
eval_tap $? 94 'GetTopicByNamespace' test.out

#- 95 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "DP4X12U7so1LL0YF", "topic": "t70oPdYwtr2VgQQ7"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateTopic' test.out

#- 96 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'tQFzEKQ4jVZpJBP7' \
    > test.out 2>&1
eval_tap $? 96 'GetTopicByTopicName' test.out

#- 97 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'htADkXwZRyyAUcwM' \
    --body '{"description": "ORjLWln25F8K42JL"}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateTopicByTopicName' test.out

#- 98 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'QiMZTGZobPwrjFTW' \
    > test.out 2>&1
eval_tap $? 98 'DeleteTopicByTopicName' test.out

#- 99 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'eDSuDG23Dmk3OM1g' \
    --body '{"message": "Dl9YXwJdWWn6fquh", "topic": "BwAFaCrL6Y8HLcQ7"}' \
    > test.out 2>&1
eval_tap $? 99 'FreeFormNotificationByUserID' test.out

#- 100 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'K4qCeyFltlwv4BY7' \
    --body '{"templateContext": {"4DB6AiWyhisYPQlj": "Vszi3iB2Ae2RGaDu", "b5IkzOBadYqiYU7u": "WVB3Tnlah1Imxt5N", "wPRAlHSwq5eGKGfm": "lHf9RCcE2OK83D4P"}, "templateLanguage": "AYvdVygV686DxQRN", "templateSlug": "kDZCtKOfc3FLLgmT", "topic": "3JTZGB8qgl6zrzsb"}' \
    > test.out 2>&1
eval_tap $? 100 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE