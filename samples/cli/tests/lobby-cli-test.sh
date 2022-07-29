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
echo "1..92"

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
    --namespace 'ajJSBkVx' \
    --limit '21' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace 'YSvmNhns' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace 'cVlxkmqW' \
    > test.out 2>&1
eval_tap $? 4 'GetUserOutgoingFriends' test.out

#- 5 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --body '{"friendId": "YHrqKj3w", "friendPublicId": "JH5dHlwr"}' \
    --namespace 'zNLLSXQK' \
    > test.out 2>&1
eval_tap $? 5 'UserRequestFriend' test.out

#- 6 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --body '{"friendId": "mWPirKZ1"}' \
    --namespace 'hgImsBGq' \
    > test.out 2>&1
eval_tap $? 6 'UserAcceptFriendRequest' test.out

#- 7 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --body '{"friendId": "3kkv7gd5"}' \
    --namespace 'ZpxO91Kz' \
    > test.out 2>&1
eval_tap $? 7 'UserCancelFriendRequest' test.out

#- 8 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --body '{"friendId": "o2F0COYS"}' \
    --namespace 'EKtpYPfp' \
    > test.out 2>&1
eval_tap $? 8 'UserRejectFriendRequest' test.out

#- 9 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'asmBi2OY' \
    --namespace '9ig9HATn' \
    > test.out 2>&1
eval_tap $? 9 'UserGetFriendshipStatus' test.out

#- 10 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --body '{"friendId": "qYrTUKUE"}' \
    --namespace 'yXfVrlW4' \
    > test.out 2>&1
eval_tap $? 10 'UserUnfriendRequest' test.out

#- 11 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --body '{"friendIds": ["Uwurv1AD", "Smqh5jLM", "aFxq2JBm"]}' \
    --namespace 'nFmJnpDQ' \
    --userId 'F4W2nE4i' \
    > test.out 2>&1
eval_tap $? 11 'AddFriendsWithoutConfirmation' test.out

#- 12 PersonalChatHistory
samples/cli/sample-apps Lobby personalChatHistory \
    --friendId 'isiEokVS' \
    --namespace 'CoGNFXo8' \
    --userId 'D0y4Qi0L' \
    > test.out 2>&1
eval_tap $? 12 'PersonalChatHistory' test.out

#- 13 AdminChatHistory
samples/cli/sample-apps Lobby adminChatHistory \
    --friendId 'pkaVroJf' \
    --namespace 'DK0tPIQX' \
    --userId 'xyDMB4RI' \
    > test.out 2>&1
eval_tap $? 13 'AdminChatHistory' test.out

#- 14 AdminGetAllConfigV1
samples/cli/sample-apps Lobby adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 14 'AdminGetAllConfigV1' test.out

#- 15 AdminGetConfigV1
samples/cli/sample-apps Lobby adminGetConfigV1 \
    --namespace '5b9BkT1B' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetConfigV1' test.out

#- 16 AdminUpdateConfigV1
samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --body '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 66, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 21, "chatRateLimitDuration": 77, "concurrentUsersLimit": 71, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "fGwsozkH", "generalRateLimitBurst": 87, "generalRateLimitDuration": 89, "keepPresenceActivityOnDisconnect": true, "maxPartyMember": 91, "profanityFilter": false, "readyConsentTimeout": 35}' \
    --namespace 'kqOcjya8' \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateConfigV1' test.out

#- 17 AdminExportConfigV1
samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace 'FJv22cI8' \
    > test.out 2>&1
eval_tap $? 17 'AdminExportConfigV1' test.out

#- 18 AdminImportConfigV1
samples/cli/sample-apps Lobby adminImportConfigV1 \
    --file 'tmp.dat' \
    --namespace 'bmHlUqxn' \
    > test.out 2>&1
eval_tap $? 18 'AdminImportConfigV1' test.out

#- 19 GetListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace 'JHSs7BkZ' \
    --userId 'iGfpl9j0' \
    --limit '37' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 19 'GetListOfFriends' test.out

#- 20 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --body '{"message": "js7VBqwb", "topicName": "lOIeW0rx", "userIds": ["zoI8hOsC", "u2ZJCkAm", "Ak6UYS4G"]}' \
    --namespace 'K40BUPWW' \
    > test.out 2>&1
eval_tap $? 20 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 21 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --body '{"message": "07f8gf7d", "topicName": "gfgwSDjI"}' \
    --namespace 'qbqTCKc2' \
    > test.out 2>&1
eval_tap $? 21 'SendUsersFreeformNotificationV1Admin' test.out

#- 22 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --body '{"message": "RXZDDsFa", "topicName": "eTxHNCnC"}' \
    --namespace 'idiN7LoF' \
    --partyId '3nzK9mgm' \
    > test.out 2>&1
eval_tap $? 22 'SendPartyFreeformNotificationV1Admin' test.out

#- 23 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --body '{"templateContext": {"W6TsKL0Y": "APRr1nWJ", "G1Cb5klv": "cS3OwDbl", "qv2d3NUP": "OYMbDiUV"}, "templateLanguage": "2ez9BQj4", "templateSlug": "hUTfm3Kc", "topicName": "RgsNM43y"}' \
    --namespace 'rHRc81RN' \
    --partyId 'fTbgRaAd' \
    > test.out 2>&1
eval_tap $? 23 'SendPartyTemplatedNotificationV1Admin' test.out

#- 24 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace '5Yq2nGmy' \
    > test.out 2>&1
eval_tap $? 24 'GetAllNotificationTemplatesV1Admin' test.out

#- 25 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --body '{"templateContent": "eVGXlGfQ", "templateLanguage": "JLeHwNXU", "templateSlug": "k9Y5I4aG"}' \
    --namespace 'Bkw9soN0' \
    > test.out 2>&1
eval_tap $? 25 'CreateNotificationTemplateV1Admin' test.out

#- 26 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --body '{"templateContext": {"B9vXCz9N": "kRGZ4SED", "AdPfwB8e": "MoMz2ufn", "N53SDq9o": "gvJGCh8u"}, "templateLanguage": "9ASs9wZ5", "templateSlug": "CDBeQHXb", "topicName": "zHenIyHs"}' \
    --namespace 'LkL3Kxwa' \
    > test.out 2>&1
eval_tap $? 26 'SendUsersTemplatedNotificationV1Admin' test.out

#- 27 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace 'UWA2Gtlj' \
    --templateSlug '4sFWbech' \
    --after 'GasOlncy' \
    --before 'VOTEQoDq' \
    --limit '87' \
    > test.out 2>&1
eval_tap $? 27 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 28 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace 'Nv7ts8t4' \
    --templateSlug 'FtGuGKcM' \
    > test.out 2>&1
eval_tap $? 28 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 29 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace 'HjaqR2aA' \
    --templateLanguage 'xMu9onG6' \
    --templateSlug 'VtP6BY4Z' \
    > test.out 2>&1
eval_tap $? 29 'GetSingleTemplateLocalizationV1Admin' test.out

#- 30 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --body '{"templateContent": "5jpVleIt"}' \
    --namespace 'dToRo8Qs' \
    --templateLanguage 'JxU2Urwi' \
    --templateSlug 'l4jcx2wu' \
    > test.out 2>&1
eval_tap $? 30 'UpdateTemplateLocalizationV1Admin' test.out

#- 31 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace '4SLWdXp0' \
    --templateLanguage 'GdNtDE9i' \
    --templateSlug '6JiXot3t' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTemplateLocalizationV1Admin' test.out

#- 32 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace 'KyagM6Rb' \
    --templateLanguage 'UQJkMHgW' \
    --templateSlug 'qXvW3zDK' \
    > test.out 2>&1
eval_tap $? 32 'PublishTemplateLocalizationV1Admin' test.out

#- 33 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace 'KICoac6E' \
    --after 'yfuoYhv5' \
    --before 'jnj3ZDvl' \
    --limit '15' \
    > test.out 2>&1
eval_tap $? 33 'GetAllNotificationTopicsV1Admin' test.out

#- 34 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --body '{"description": "wqJnC1kL", "topicName": "x7czKiwC"}' \
    --namespace 'KLCT4V0k' \
    > test.out 2>&1
eval_tap $? 34 'CreateNotificationTopicV1Admin' test.out

#- 35 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace 'pXRmUVau' \
    --topicName '1LbJTAK4' \
    > test.out 2>&1
eval_tap $? 35 'GetNotificationTopicV1Admin' test.out

#- 36 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --body '{"description": "J69CDonO"}' \
    --namespace '8QJ38hpB' \
    --topicName '5Brpzk0s' \
    > test.out 2>&1
eval_tap $? 36 'UpdateNotificationTopicV1Admin' test.out

#- 37 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace 'Smfw8aUw' \
    --topicName 'KgrghX3g' \
    > test.out 2>&1
eval_tap $? 37 'DeleteNotificationTopicV1Admin' test.out

#- 38 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --body '{"message": "oy0hxnwQ", "topicName": "AeDRL2vZ"}' \
    --namespace 'l6KdPYQv' \
    --userId '676KPXpG' \
    > test.out 2>&1
eval_tap $? 38 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 39 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --body '{"templateContext": {"4Rq7tVxK": "AJLnr3nn", "8yluNjh3": "S5tJkqZP", "Z9HRB5xb": "lndKtj22"}, "templateLanguage": "B10oRQUx", "templateSlug": "7azH26vX", "topicName": "UJmNvDzh"}' \
    --namespace 'HogB6mJp' \
    --userId 'BJ3JQtM9' \
    > test.out 2>&1
eval_tap $? 39 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 40 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace 'g6fwum4u' \
    --partyId 'BQHGGr2d' \
    > test.out 2>&1
eval_tap $? 40 'AdminGetPartyDataV1' test.out

#- 41 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --body '{"custom_attribute": {"6NMXhya3": {}, "x1twFdlY": {}, "PKAMjazB": {}}, "updatedAt": 0}' \
    --namespace 'wq7R35JV' \
    --partyId '937CWfFZ' \
    > test.out 2>&1
eval_tap $? 41 'AdminUpdatePartyAttributesV1' test.out

#- 42 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace 'KNnBdUwQ' \
    --partyId 'ZZULwgex' \
    --userId 'XaCTlQ9Z' \
    > test.out 2>&1
eval_tap $? 42 'AdminJoinPartyV1' test.out

#- 43 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace 'kzzqmdl1' \
    --userId 'Pyt6iXnu' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetUserPartyV1' test.out

#- 44 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace 'NxvTj94B' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetLobbyCCU' test.out

#- 45 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace 'RXAhdcS3' \
    --userId 'mGB8thCE' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllPlayerSessionAttribute' test.out

#- 46 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --body '{"attributes": {"NTBeRN4Y": "ESs7jJ75", "UXeYv1ma": "JcqqRbno", "wQuevk7O": "AqK00Bvf"}}' \
    --namespace 'lSRqJLOi' \
    --userId 'D8f5NQL7' \
    > test.out 2>&1
eval_tap $? 46 'AdminSetPlayerSessionAttribute' test.out

#- 47 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'OrWjiv6Y' \
    --namespace 'hqMDB0Uj' \
    --userId '1KgSnre1' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerSessionAttribute' test.out

#- 48 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace '1CSxrxz9' \
    --userId 'u4c1fZXl' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerBlockedPlayersV1' test.out

#- 49 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace 'FXZXa72p' \
    --userId 'kbkUUsV0' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 50 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --body '{"listBlockedUserId": ["GyYcJdcj", "PC525ITV", "tO7hIhr2"]}' \
    --namespace 'u50YXivM' \
    --userId 'vboGEfqa' \
    > test.out 2>&1
eval_tap $? 50 'AdminBulkBlockPlayersV1' test.out

#- 51 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --body '{"text": "ZVvvefyE"}' \
    --namespace 'BrXbKIj2' \
    > test.out 2>&1
eval_tap $? 51 'AdminDebugProfanityFilters' test.out

#- 52 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list 'EFCGsklr' \
    --namespace 'c1o42nhH' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetProfanityListFiltersV1' test.out

#- 53 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --body '{"filter": "hPjfR36Y", "note": "29y1gYom"}' \
    --list 'OeZEE3Bj' \
    --namespace 'SoMmaGjg' \
    > test.out 2>&1
eval_tap $? 53 'AdminAddProfanityFilterIntoList' test.out

#- 54 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --body '{"filters": [{"filter": "KzC0pnde", "note": "JL2PkJem"}, {"filter": "uJ9ACNpW", "note": "5zWxpF8w"}, {"filter": "X7bZRtdv", "note": "UQucpf0q"}]}' \
    --list 'icZXMnmR' \
    --namespace '1wATDaiU' \
    > test.out 2>&1
eval_tap $? 54 'AdminAddProfanityFilters' test.out

#- 55 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --body '[67, 76, 55]' \
    --list '5ziftg9J' \
    --namespace 'k89HkqJL' \
    > test.out 2>&1
eval_tap $? 55 'AdminImportProfanityFiltersFromFile' test.out

#- 56 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --body '{"filter": "JqldckLg"}' \
    --list 'dRmC2Ke2' \
    --namespace 'Ni5wmyeI' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteProfanityFilter' test.out

#- 57 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace 'nH6WOZoH' \
    > test.out 2>&1
eval_tap $? 57 'AdminGetProfanityLists' test.out

#- 58 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --body '{"isEnabled": false, "isMandatory": true, "name": "vF0jInQl"}' \
    --namespace 'FG2pxchn' \
    > test.out 2>&1
eval_tap $? 58 'AdminCreateProfanityList' test.out

#- 59 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --body '{"isEnabled": true, "isMandatory": true, "newName": "puV7QORq"}' \
    --list 'NlC6KhEY' \
    --namespace '5MStPhMw' \
    > test.out 2>&1
eval_tap $? 59 'AdminUpdateProfanityList' test.out

#- 60 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'Pd5kTs5I' \
    --namespace '9b6BKwk2' \
    > test.out 2>&1
eval_tap $? 60 'AdminDeleteProfanityList' test.out

#- 61 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace '2UOAolSG' \
    > test.out 2>&1
eval_tap $? 61 'AdminGetProfanityRule' test.out

#- 62 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --body '{"rule": "wp5xEJ20"}' \
    --namespace 'sHMGYCkq' \
    > test.out 2>&1
eval_tap $? 62 'AdminSetProfanityRuleForNamespace' test.out

#- 63 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --body '{"message": "w6C2ttXQ", "profanityLevel": "w3vfqIRS"}' \
    --namespace 'MHBlKqmc' \
    > test.out 2>&1
eval_tap $? 63 'AdminVerifyMessageProfanityResponse' test.out

#- 64 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace '3Dy3w6t6' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetThirdPartyConfig' test.out

#- 65 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --body '{"apiKey": "AtyazjiE"}' \
    --namespace 'deNq0WiK' \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateThirdPartyConfig' test.out

#- 66 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --body '{"apiKey": "c1jLKxTo"}' \
    --namespace 'PLhyHOZV' \
    > test.out 2>&1
eval_tap $? 66 'AdminCreateThirdPartyConfig' test.out

#- 67 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace '7IeBk9dW' \
    > test.out 2>&1
eval_tap $? 67 'AdminDeleteThirdPartyConfig' test.out

#- 68 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 68 'PublicGetMessages' test.out

#- 69 GetPersonalChatHistoryV1Public
samples/cli/sample-apps Lobby getPersonalChatHistoryV1Public \
    --friendId 'wHDVISy6' \
    --namespace 'DNLSmVyh' \
    > test.out 2>&1
eval_tap $? 69 'GetPersonalChatHistoryV1Public' test.out

#- 70 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace 'naEwjtzT' \
    --partyId '77hUKTE3' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetPartyDataV1' test.out

#- 71 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --body '{"custom_attribute": {"HoAh2vBA": {}, "sMoSPR2e": {}, "ZprELhiA": {}}, "updatedAt": 97}' \
    --namespace 'LSvpa2Q6' \
    --partyId 'N7935qjS' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdatePartyAttributesV1' test.out

#- 72 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --body '{"limit": 19}' \
    --namespace 'KUOxLewc' \
    --partyId 'BNXxbMXS' \
    > test.out 2>&1
eval_tap $? 72 'PublicSetPartyLimitV1' test.out

#- 73 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace 'VbBGEvqm' \
    > test.out 2>&1
eval_tap $? 73 'PublicGetPlayerBlockedPlayersV1' test.out

#- 74 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace '45l630KN' \
    > test.out 2>&1
eval_tap $? 74 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 75 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace 'HEnEUGpa' \
    --countOnly 'false' \
    --userIds 'uiVQRRZg' \
    > test.out 2>&1
eval_tap $? 75 'UsersPresenceHandlerV1' test.out

#- 76 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --body '{"message": "wOYnRymX", "topic": "RdGNDXJT"}' \
    --namespace 'Lw6ckXB8' \
    > test.out 2>&1
eval_tap $? 76 'FreeFormNotification' test.out

#- 77 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --body '{"templateContext": {"fdMtDKFq": "TMDenprs", "yxqXeWQs": "owc8UxZP", "sBOc28Ta": "fu8Zk6fU"}, "templateLanguage": "K7yODXd8", "templateSlug": "yokg2THx", "topic": "zoM1Bqzx"}' \
    --namespace 'b1kuZ38e' \
    > test.out 2>&1
eval_tap $? 77 'NotificationWithTemplate' test.out

#- 78 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace '2W1Gq7b9' \
    > test.out 2>&1
eval_tap $? 78 'GetGameTemplate' test.out

#- 79 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --body '{"templateContent": "RHfE18JW", "templateLanguage": "P80PbgmX", "templateSlug": "aSTlD6DK"}' \
    --namespace '1h6vTIUN' \
    > test.out 2>&1
eval_tap $? 79 'CreateTemplate' test.out

#- 80 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace 'DTE9C0sv' \
    --templateSlug 'f4Ktoyh4' \
    --after 'UOqMcnNX' \
    --before 'W7yZHIHd' \
    --limit '91' \
    > test.out 2>&1
eval_tap $? 80 'GetSlugTemplate' test.out

#- 81 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace 'e1UP0CNJ' \
    --templateSlug '09YHTUvK' \
    > test.out 2>&1
eval_tap $? 81 'DeleteTemplateSlug' test.out

#- 82 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace 'ck0U5hWm' \
    --templateLanguage 'BD3ECmad' \
    --templateSlug 'OxxsfWJ1' \
    > test.out 2>&1
eval_tap $? 82 'GetLocalizationTemplate' test.out

#- 83 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --body '{"templateContent": "tJmARIoE"}' \
    --namespace 'bVfUwusB' \
    --templateLanguage 'YYbEp427' \
    --templateSlug 'YUaH5tXK' \
    > test.out 2>&1
eval_tap $? 83 'UpdateLocalizationTemplate' test.out

#- 84 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace 'n1LZeWfJ' \
    --templateLanguage 'heYP9BpZ' \
    --templateSlug 'olFtDJJn' \
    > test.out 2>&1
eval_tap $? 84 'DeleteTemplateLocalization' test.out

#- 85 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace '34manmKG' \
    --templateLanguage '2d1hOYB8' \
    --templateSlug 'uxLlzkXt' \
    > test.out 2>&1
eval_tap $? 85 'PublishTemplate' test.out

#- 86 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace 'ICiSRJWj' \
    --after 'IrIt9bmt' \
    --before 'UXzX1tVp' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 86 'GetTopicByNamespace' test.out

#- 87 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --body '{"description": "isW81hHj", "topic": "YspqGW5I"}' \
    --namespace 'ULZSOETx' \
    > test.out 2>&1
eval_tap $? 87 'CreateTopic' test.out

#- 88 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace '6CrYenu8' \
    --topic 'Wiu9lHZR' \
    > test.out 2>&1
eval_tap $? 88 'GetTopicByTopicName' test.out

#- 89 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --body '{"description": "nMsFhCW8"}' \
    --namespace 'qB7m976D' \
    --topic 'qX9T2X56' \
    > test.out 2>&1
eval_tap $? 89 'UpdateTopicByTopicName' test.out

#- 90 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace 'he84no2d' \
    --topic 'YVaPwFMV' \
    > test.out 2>&1
eval_tap $? 90 'DeleteTopicByTopicName' test.out

#- 91 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --body '{"message": "4bhY4KJV", "topic": "tvFngI3F"}' \
    --namespace 'fnOsLHvF' \
    --userId '7VPam7ob' \
    > test.out 2>&1
eval_tap $? 91 'FreeFormNotificationByUserID' test.out

#- 92 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --body '{"templateContext": {"J7yzHykZ": "zrU24r9e", "sVoMgMPx": "Q6fXO6Y7", "edT129qt": "wfmXykp1"}, "templateLanguage": "fNse6XnK", "templateSlug": "e49ot8af", "topic": "6mEFsTy5"}' \
    --namespace 'wneB5dXZ' \
    --userId 'BuBWqT2s' \
    > test.out 2>&1
eval_tap $? 92 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE