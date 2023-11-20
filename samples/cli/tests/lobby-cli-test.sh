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
    --limit '20' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "gg33yjDz3JZ9lyWL", "friendPublicId": "d9SZj3zITrL8PMMi"}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "STqTBiJFWe9wk17w"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "4PzsQa1PmeAf0hWA"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "qsZcnCR4PLSEYQXL"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'pgYMZbyrrHaBXnH3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "axB0ydsCkWDdQNaJ"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'NaB46bNVvkXWitPI' \
    --body '{"friendIds": ["a6iqKDSfBBXCM6et", "MAeIvjYjz1xJkJsq", "MezHKD6opBTHTdZy"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace $AB_NAMESPACE \
    --userId 'R4krEIdvgh8Im92K' \
    --body '{"friendIds": ["FvOpf5ZpCtVehpEP", "w56AgYEfOIRk0Bhv", "gVkkHfLFGtyoOkmI"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
samples/cli/sample-apps Lobby syncNativeFriends \
    --namespace $AB_NAMESPACE \
    --body '[{"isLogin": true, "platformId": "AeItzq9NBnbNSFlW", "platformToken": "nIlQdNoiT6wSGzya", "psnEnv": "yJ3HfmRvxULMlXRT"}, {"isLogin": true, "platformId": "s5IMhlWKgb46pd6p", "platformToken": "CFJfUT1wunu3bkEM", "psnEnv": "llwgBlMe57QbRYTp"}, {"isLogin": false, "platformId": "mbV8Dv1N4gJ9lups", "platformToken": "HjsTQUYj69SOirsG", "psnEnv": "fj0mGERSfWUXXQ1B"}]' \
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
    --body '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 28, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 67, "chatRateLimitDuration": 77, "concurrentUsersLimit": 58, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "W0R8c4r7hrTRDTEZ", "generalRateLimitBurst": 90, "generalRateLimitDuration": 35, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 15, "maxFriendsLimit": 84, "maxPartyMember": 91, "profanityFilter": true, "readyConsentTimeout": 73, "unregisterDelay": 69}' \
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
    --userId 'l73oeezBWD8zK6jN' \
    --friendId 'ynEYmxGuMPc1QgaU' \
    --limit '48' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 22 'GetListOfFriends' test.out

#- 23 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'cSboQ9I4j6yChTbR' \
    --friendId '7U6r5bidmPdHrweo' \
    --limit '43' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 23 'GetIncomingFriendRequests' test.out

#- 24 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'qVbWtHYfX62gqCFp' \
    --limit '30' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 24 'GetOutgoingFriendRequests' test.out

#- 25 AdminGetGlobalConfig
samples/cli/sample-apps Lobby adminGetGlobalConfig \
    > test.out 2>&1
eval_tap $? 25 'AdminGetGlobalConfig' test.out

#- 26 AdminUpdateGlobalConfig
samples/cli/sample-apps Lobby adminUpdateGlobalConfig \
    --body '{"regionRetryMapping": {"5xmsGdTWZaFxiEgf": ["19wsIbCAHzqnU99l", "qp1Wkb6jFFVxfL8K", "eAm62rL92KzGnzma"], "fqnyqennDKOBbGvR": ["ULAl0u58JTHXApxR", "Bd15YYXMZ5t8lrO5", "jKDjAk1eUfjVleBq"], "Hu3FzdPaugtgQ9oh": ["pWpAilsIxHQkzc7n", "r1eF6A1XwgXmB5WZ", "riMxBnwTGK07HV56"]}, "regionURLMapping": ["yGhgtXUfGdGC4rtT", "FahRTCFz2m78fU0i", "RzrYOTb9Jzt2LWrI"], "testGameMode": "N9HWVNmJv59oQ1Ra", "testRegionURLMapping": ["YqEJtzF2EYJsxwnR", "RIarxW4HDkfvmSgY", "yEVQ8073PNbTC8rn"], "testTargetUserIDs": ["XyhsO6Q4IMUoBmum", "nd3lTuCXNCFsDADp", "7BnFeYcjBLL4kTlu"]}' \
    > test.out 2>&1
eval_tap $? 26 'AdminUpdateGlobalConfig' test.out

#- 27 AdminDeleteGlobalConfig
samples/cli/sample-apps Lobby adminDeleteGlobalConfig \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGlobalConfig' test.out

#- 28 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "XUdjgrVKjTo7pvSu", "topicName": "2EVmAIFUaHAGfzYN", "userIds": ["hwF7bvYs1PJp5aPt", "sbysXNCUZu3zE0Ug", "rFDCcgLK8v2pItiz"]}' \
    > test.out 2>&1
eval_tap $? 28 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 29 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "PzSxiyPxNVuc5M3b", "topicName": "SCEToBrm83PSnP6Z"}' \
    > test.out 2>&1
eval_tap $? 29 'SendUsersFreeformNotificationV1Admin' test.out

#- 30 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'vb1BuIYITK18zNSe' \
    --body '{"message": "8CGf7njupvkp9JO5", "topicName": "s428lwJU0ZA6xm7W"}' \
    > test.out 2>&1
eval_tap $? 30 'SendPartyFreeformNotificationV1Admin' test.out

#- 31 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'yaImyyQw7WLqbyx8' \
    --body '{"templateContext": {"nN8eI1cO1EDmyWL0": "O7SZ5vgR1MDqnMyG", "ZxHvQgMEMpkUakhv": "ZGeHQH2Reg6Gy8SS", "BwyPWus87fV9rjZs": "OpvTdDbhjOPFfx4F"}, "templateLanguage": "CPvAkchw4cCMT4rl", "templateSlug": "RfctjcILsq6c2XaM", "topicName": "CLFrVyDlHkSIdPQi"}' \
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
    --body '{"templateContent": "k0J6QwTOJwJ0YBrh", "templateLanguage": "nBf5lYLR3ZpV5ECO", "templateSlug": "Vk4caL1vbls546F3"}' \
    > test.out 2>&1
eval_tap $? 33 'CreateNotificationTemplateV1Admin' test.out

#- 34 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"17hc8428TIok0Vws": "1QHAuUxo6RI5x34M", "fm7Kw7oFLyBMFTxD": "z2Tv9Tf0EZKW4FAB", "UcfyWxxP3x4drFir": "l41kORNlQpCB09b4"}, "templateLanguage": "LS3or2yKzMqsIXXn", "templateSlug": "MxHB1vuWPiCezMOS", "topicName": "hOHgPDGUbAt5Y5uD"}' \
    > test.out 2>&1
eval_tap $? 34 'SendUsersTemplatedNotificationV1Admin' test.out

#- 35 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'H5CinV1pXshAU6Z1' \
    --after 'ykFRFadfXzSIo7db' \
    --before 'wM9UOv9bn6VBJfq9' \
    --limit '83' \
    > test.out 2>&1
eval_tap $? 35 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 36 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'tgB3sBhXvG1bb7Pc' \
    > test.out 2>&1
eval_tap $? 36 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 37 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'pKa5mfsXWPBMWC0Z' \
    --templateSlug 'AC3NgpQF7BadI5FM' \
    > test.out 2>&1
eval_tap $? 37 'GetSingleTemplateLocalizationV1Admin' test.out

#- 38 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'fl89n3aZHDpe6Nfg' \
    --templateSlug 'acO0sG64KmMt7bmw' \
    --body '{"templateContent": "9nrvLgmV21eMn998"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateTemplateLocalizationV1Admin' test.out

#- 39 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'lrPJPI3o14d6FUIx' \
    --templateSlug '3BKaDdpSCIMEH5o4' \
    > test.out 2>&1
eval_tap $? 39 'DeleteTemplateLocalizationV1Admin' test.out

#- 40 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'Q4UZvCNixHwsjnFD' \
    --templateSlug 'GMKzae4xR6H52MuN' \
    > test.out 2>&1
eval_tap $? 40 'PublishTemplateLocalizationV1Admin' test.out

#- 41 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after '43IPhjHHx5gnAKa7' \
    --before 'seNlfvJJYN9HO0qq' \
    --limit '86' \
    > test.out 2>&1
eval_tap $? 41 'GetAllNotificationTopicsV1Admin' test.out

#- 42 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "PeM4WUDRbgtx91v4", "topicName": "rZspT6QphbBiZAi2"}' \
    > test.out 2>&1
eval_tap $? 42 'CreateNotificationTopicV1Admin' test.out

#- 43 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'jIPY9iDPbJIY5PfQ' \
    > test.out 2>&1
eval_tap $? 43 'GetNotificationTopicV1Admin' test.out

#- 44 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'bmlgelAv9fc7RylI' \
    --body '{"description": "FLS711tovaSt2fSM"}' \
    > test.out 2>&1
eval_tap $? 44 'UpdateNotificationTopicV1Admin' test.out

#- 45 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'fkyzhnaTorQreTJS' \
    > test.out 2>&1
eval_tap $? 45 'DeleteNotificationTopicV1Admin' test.out

#- 46 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'mYw1UFMeAacfoBSd' \
    --body '{"message": "dT4GLpN2nwYFxC3R", "topicName": "0lsDMDrzM5K1uigu"}' \
    > test.out 2>&1
eval_tap $? 46 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 47 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'WpHyvCuvUKhq7kwX' \
    --body '{"templateContext": {"TzhDjulxizl9uT8G": "IOUbSvyACOiIMAIw", "Rid5xa7CEyRrOYwT": "yXSYKRCNlXkfpcdb", "t9B7dYcP3KhRFrLm": "islPmcCBm0gtPoTx"}, "templateLanguage": "MLosHTckGG3XgxDh", "templateSlug": "V3gVJMDXY48nRYVl", "topicName": "YRriqAEOaVclP7uh"}' \
    > test.out 2>&1
eval_tap $? 47 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 48 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'guiLKNsC34yJLxOr' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPartyDataV1' test.out

#- 49 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'a1YbdZIdCNVSzAyq' \
    --body '{"custom_attribute": {"JkK1uCpwtXfemHTT": {}, "VQh5budVpn9JH0Ek": {}, "uGKagABkv5WMCUwi": {}}, "updatedAt": 16}' \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdatePartyAttributesV1' test.out

#- 50 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId '06ByjjBZ5NTabIxJ' \
    --userId 'dE5d3lZcqBnEKEXS' \
    > test.out 2>&1
eval_tap $? 50 'AdminJoinPartyV1' test.out

#- 51 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId 'khfVTljhkOgvaCQp' \
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
    --body '{"listBlockedUserId": ["DA0TZbeYrHBKM3iX", "QIJGXHclEtQVhMSK", "qw1gsb3sFh0qvo3i"]}' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 54 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId '2wrZXEYrDZtvstc5' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetAllPlayerSessionAttribute' test.out

#- 55 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'TMgbaEYupu2pBFK3' \
    --body '{"attributes": {"7ZowkOjXUZz6HwA7": "zoFMyJhq4ThZ5pyd", "vYNLJvzYfT2ZIIOJ": "4wsuazMbHrOOwI4c", "lxqMK3AVb32ke31i": "JhfnsqUulSiuwokE"}}' \
    > test.out 2>&1
eval_tap $? 55 'AdminSetPlayerSessionAttribute' test.out

#- 56 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'VBRfhRt1Sj65YWRj' \
    --namespace $AB_NAMESPACE \
    --userId '6hCxyV8tOGiAbwLm' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerSessionAttribute' test.out

#- 57 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId '4DAe7XXmrRsIML1D' \
    > test.out 2>&1
eval_tap $? 57 'AdminGetPlayerBlockedPlayersV1' test.out

#- 58 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'VXA8NP13fMUzPapS' \
    > test.out 2>&1
eval_tap $? 58 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 59 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'O2UivWcQd2EI3EN2' \
    --body '{"listBlockedUserId": ["GJEDx9wCtlRA0jin", "WF1L6XCzPXUVsNRn", "5OmPuJ7nmWgJus2k"]}' \
    > test.out 2>&1
eval_tap $? 59 'AdminBulkBlockPlayersV1' test.out

#- 60 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "0diZjdeAiuwLNIXX"}' \
    > test.out 2>&1
eval_tap $? 60 'AdminDebugProfanityFilters' test.out

#- 61 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list '8QFMqTOu89AMWSc6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'AdminGetProfanityListFiltersV1' test.out

#- 62 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list 'DeIIINscFxcJ0AdL' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "PC7uHglvhS6QaTLN", "note": "b6yLLECgIa0YI7fb"}' \
    > test.out 2>&1
eval_tap $? 62 'AdminAddProfanityFilterIntoList' test.out

#- 63 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list '6GJyenGzc9vN3u0S' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "c5sONWcYpWKYC9Ii", "note": "s3yYXkfl98p8qvZy"}, {"filter": "dDQ4mWuBRcYscy2l", "note": "vFRIZOG8Vv2UOTP1"}, {"filter": "6fIzKCELRMBrhElu", "note": "4aArfcnHg7r19PZG"}]}' \
    > test.out 2>&1
eval_tap $? 63 'AdminAddProfanityFilters' test.out

#- 64 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list 'D8tN4K0Xb6N9t7fs' \
    --namespace $AB_NAMESPACE \
    --body '[12, 26, 27]' \
    > test.out 2>&1
eval_tap $? 64 'AdminImportProfanityFiltersFromFile' test.out

#- 65 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list 'VWi8tYETidad4G2G' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "y2IwJJ306MejEmMY"}' \
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
    --body '{"isEnabled": true, "isMandatory": false, "name": "QBb8nvsrL9wgoNMN"}' \
    > test.out 2>&1
eval_tap $? 67 'AdminCreateProfanityList' test.out

#- 68 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'SNFc74YeZQII9dPe' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": false, "isMandatory": true, "newName": "AxSQAGhX9oUGbBWp"}' \
    > test.out 2>&1
eval_tap $? 68 'AdminUpdateProfanityList' test.out

#- 69 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'aih1RRwrCs9JZ9K1' \
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
    --body '{"rule": "6eZEoA3Y3WWWK2b5"}' \
    > test.out 2>&1
eval_tap $? 71 'AdminSetProfanityRuleForNamespace' test.out

#- 72 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "NaSlNWr143rufJU2", "profanityLevel": "Nktu2xzmVk4hzAsZ"}' \
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
    --body '{"apiKey": "n0ivHzMMvyAgpwvu"}' \
    > test.out 2>&1
eval_tap $? 74 'AdminUpdateThirdPartyConfig' test.out

#- 75 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "pxALVJElV2z5pRFZ"}' \
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
    --partyId 'nVj0RH1wEZXU6jaw' \
    > test.out 2>&1
eval_tap $? 78 'PublicGetPartyDataV1' test.out

#- 79 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'OhY64XBQZrQpfr1O' \
    --body '{"custom_attribute": {"rbwMtUyTdbri9LMM": {}, "hYc1aejcqbbQDPwa": {}, "Dct7bqhNVQplPpR8": {}}, "updatedAt": 27}' \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdatePartyAttributesV1' test.out

#- 80 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'EwI3K0m68Zp0Siex' \
    --body '{"limit": 9}' \
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
    --userIds 'BFmDoFw8w2YRj2OY' \
    > test.out 2>&1
eval_tap $? 83 'UsersPresenceHandlerV1' test.out

#- 84 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "UfJ7CefTs7se5jkA", "topic": "7cDgAGX1OIxpXEOj"}' \
    > test.out 2>&1
eval_tap $? 84 'FreeFormNotification' test.out

#- 85 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"HrLajvHBYp6Usjcr": "TGUYOTY2fMJhjab9", "uOqR3157yzsoeX36": "ZwhQEKeYZBEgZXh0", "eAhbRaBXGdArRFDj": "dfQI8FPv10G56PTO"}, "templateLanguage": "8sYZXgupmLgycO12", "templateSlug": "WDqUmElEg5A2rEjR", "topic": "paJCI9MEBBRCvLAR"}' \
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
    --body '{"templateContent": "fho1E7KFCneYAENB", "templateLanguage": "VqTMHL4tIODjOxHZ", "templateSlug": "jXmY03GWWcYwm4ZH"}' \
    > test.out 2>&1
eval_tap $? 87 'CreateTemplate' test.out

#- 88 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug '6wUMQmgIAXapQmLW' \
    --after 'Lf9XuvP1lwgW6xpX' \
    --before 'AjViMnzwy8EEO9SU' \
    --limit '56' \
    > test.out 2>&1
eval_tap $? 88 'GetSlugTemplate' test.out

#- 89 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'lK665jIutslcBFHn' \
    > test.out 2>&1
eval_tap $? 89 'DeleteTemplateSlug' test.out

#- 90 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'rgdF6kW8Z2YFW5KE' \
    --templateSlug 'REsVoGs1fK1jKy34' \
    > test.out 2>&1
eval_tap $? 90 'GetLocalizationTemplate' test.out

#- 91 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'qjHOlAWaxmANqAu4' \
    --templateSlug 'Y0XwI1i1WkqMt9li' \
    --body '{"templateContent": "PWJjwQTP8CYChlFW"}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateLocalizationTemplate' test.out

#- 92 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'Z5s0Bcze5tLUNDgX' \
    --templateSlug 'HQl7E2gimx80Ael7' \
    > test.out 2>&1
eval_tap $? 92 'DeleteTemplateLocalization' test.out

#- 93 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'UZGmbHUk7km6KoHv' \
    --templateSlug 'MKEZ8SvynvFzKSRK' \
    > test.out 2>&1
eval_tap $? 93 'PublishTemplate' test.out

#- 94 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'R2pVZp4hVVEHFU8I' \
    --before 'mZoCshPaLMAi1pXX' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 94 'GetTopicByNamespace' test.out

#- 95 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "qJoFBVfQawBmhE38", "topic": "6KJ5vrRGkCN2C1lN"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateTopic' test.out

#- 96 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'PrBuJg0HUmpOWQuT' \
    > test.out 2>&1
eval_tap $? 96 'GetTopicByTopicName' test.out

#- 97 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic '1scsFqM7PzFEnAa5' \
    --body '{"description": "RjHi0dyLvnUfE5ST"}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateTopicByTopicName' test.out

#- 98 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'NkaWcMQrrbyCKPZJ' \
    > test.out 2>&1
eval_tap $? 98 'DeleteTopicByTopicName' test.out

#- 99 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'kDfLrOpyZRdbaWSG' \
    --body '{"message": "ud9N1xeYla2xm2if", "topic": "bvS49UeWxVZF4CdD"}' \
    > test.out 2>&1
eval_tap $? 99 'FreeFormNotificationByUserID' test.out

#- 100 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'y8wCYXnZiWlD09Z8' \
    --body '{"templateContext": {"SFCRizmILzFSKLzg": "XhVW1jurSgvuVF3r", "6lwKftVgv6tCpFEx": "i2e3iKLuUPb98Zyg", "b3rk5kaPlHg7U7oi": "Gx8OvTlo3F4tDvCx"}, "templateLanguage": "psJ7e2GIgt2qu0n1", "templateSlug": "Uqo7fxXUi9pXSqPc", "topic": "qeXF1ro5087Z6CC3"}' \
    > test.out 2>&1
eval_tap $? 100 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE