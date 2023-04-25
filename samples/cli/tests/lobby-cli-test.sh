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
echo "1..91"

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
    --limit '5' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "hLscO2i6CMIRuSfu", "friendPublicId": "AfB4TMMxKQlRtzKG"}' \
    > test.out 2>&1
eval_tap $? 7 'UserRequestFriend' test.out

#- 8 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "Pk021WqyMg6RsbK6"}' \
    > test.out 2>&1
eval_tap $? 8 'UserAcceptFriendRequest' test.out

#- 9 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "LtGzuJNzh9947XwH"}' \
    > test.out 2>&1
eval_tap $? 9 'UserCancelFriendRequest' test.out

#- 10 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "Bo1qGTuyTUpsbtty"}' \
    > test.out 2>&1
eval_tap $? 10 'UserRejectFriendRequest' test.out

#- 11 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'lSzo5JiMQLtGTppu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'UserGetFriendshipStatus' test.out

#- 12 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "CjQO0QBLMBfw2shV"}' \
    > test.out 2>&1
eval_tap $? 12 'UserUnfriendRequest' test.out

#- 13 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'Xjh7CD3Il3dP0ot0' \
    --body '{"friendIds": ["0uEr7VaKutkQpv1e", "jywujUp0rvGYKU6L", "itX2M466ktwVh6ts"]}' \
    > test.out 2>&1
eval_tap $? 13 'AddFriendsWithoutConfirmation' test.out

#- 14 AdminGetAllConfigV1
samples/cli/sample-apps Lobby adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 14 'AdminGetAllConfigV1' test.out

#- 15 AdminGetConfigV1
samples/cli/sample-apps Lobby adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetConfigV1' test.out

#- 16 AdminUpdateConfigV1
samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 53, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 1, "chatRateLimitDuration": 45, "concurrentUsersLimit": 55, "disableInvitationOnJoinParty": true, "enableChat": true, "entitlementCheck": false, "entitlementItemID": "gPjy7pTzjBCYsWW7", "generalRateLimitBurst": 57, "generalRateLimitDuration": 25, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 100, "maxPartyMember": 64, "profanityFilter": false, "readyConsentTimeout": 100, "unregisterDelay": 18}' \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateConfigV1' test.out

#- 17 AdminExportConfigV1
samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminExportConfigV1' test.out

#- 18 AdminImportConfigV1
samples/cli/sample-apps Lobby adminImportConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 18 'AdminImportConfigV1' test.out

#- 19 GetListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace $AB_NAMESPACE \
    --userId 'sVJNr52FfdNSdGMI' \
    --limit '47' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 19 'GetListOfFriends' test.out

#- 20 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "3c8mTBhgX8xg85pW", "topicName": "7JVsw0DAxz7g6MUc", "userIds": ["63Ayl8xrY51yBJsr", "6ggE04ko6iqvKuWR", "19ZXrA6M0ER3wD3q"]}' \
    > test.out 2>&1
eval_tap $? 20 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 21 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "iWrLd4eicVa4DwA8", "topicName": "Pgu4duTba1Dl7zci"}' \
    > test.out 2>&1
eval_tap $? 21 'SendUsersFreeformNotificationV1Admin' test.out

#- 22 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId '3Z1Djr5uHpq1qsa2' \
    --body '{"message": "KxyufY9hLzxJakxn", "topicName": "XBtPQdn3lpuTi3Be"}' \
    > test.out 2>&1
eval_tap $? 22 'SendPartyFreeformNotificationV1Admin' test.out

#- 23 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'swXrLovtVPLbLLyH' \
    --body '{"templateContext": {"qhjfDCQEUcihugkQ": "Z1tXxeRNlwMaFGjh", "tpUY2BjNkOSDk0ZL": "YoFHgLEBfLo81Xm3", "GCbklqXn5ATryros": "skH5ZLhe4HgDiLec"}, "templateLanguage": "VJTI2HShWDgkdC8f", "templateSlug": "Bj8b9GkB9DVkq0z9", "topicName": "qGQERdGxrA5g6FQA"}' \
    > test.out 2>&1
eval_tap $? 23 'SendPartyTemplatedNotificationV1Admin' test.out

#- 24 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetAllNotificationTemplatesV1Admin' test.out

#- 25 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "49XBbWOwvWzhXTiA", "templateLanguage": "mfFarDITqHUKbyrn", "templateSlug": "BdR31j0xumlmNonH"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateNotificationTemplateV1Admin' test.out

#- 26 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"QQlIv1KN1XP6M94Y": "9QAMmnHh5ErWh4w4", "QmmO6nLxaCC8sO77": "n2Sv2aMHQ1z7sma8", "C2s7BnEGqVy2Enlo": "AM4wXzUQrlv4FX18"}, "templateLanguage": "2jeTSFKdx6AMP9KT", "templateSlug": "J5OgfIJoHtRHVmrf", "topicName": "FTjdTb9LdGBCDYPD"}' \
    > test.out 2>&1
eval_tap $? 26 'SendUsersTemplatedNotificationV1Admin' test.out

#- 27 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug '0LVp6Zk3iBFnMMIv' \
    --after 'ibmsDwSwQQgw3may' \
    --before 'Z1xGqY0o3VfDr4DT' \
    --limit '10' \
    > test.out 2>&1
eval_tap $? 27 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 28 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'i0xOa6GXEoKnJOji' \
    > test.out 2>&1
eval_tap $? 28 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 29 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage '4hUihhBetd4nd7Ho' \
    --templateSlug 'vVRQRtXaclFrSsGx' \
    > test.out 2>&1
eval_tap $? 29 'GetSingleTemplateLocalizationV1Admin' test.out

#- 30 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'Y6bcqf28tcAX92TM' \
    --templateSlug 'FVGXhF1k9p0ZzokN' \
    --body '{"templateContent": "giNJGyfI0XtGvu61"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateTemplateLocalizationV1Admin' test.out

#- 31 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'DYoPmoF5qlFKGk9a' \
    --templateSlug '9Q1DWGI3xIR4Bx74' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTemplateLocalizationV1Admin' test.out

#- 32 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'b0iZ17GckeMsvVaw' \
    --templateSlug 'ulHRrSXbRdE4GozQ' \
    > test.out 2>&1
eval_tap $? 32 'PublishTemplateLocalizationV1Admin' test.out

#- 33 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after '8EKIxmsyvbMjYPRp' \
    --before 'QptPp1IEPNW0kZ9u' \
    --limit '4' \
    > test.out 2>&1
eval_tap $? 33 'GetAllNotificationTopicsV1Admin' test.out

#- 34 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "R7H0x58jftgKtSN3", "topicName": "zqUaxnXcffgL1NTj"}' \
    > test.out 2>&1
eval_tap $? 34 'CreateNotificationTopicV1Admin' test.out

#- 35 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'NXEK6k3hDMQ8mVU7' \
    > test.out 2>&1
eval_tap $? 35 'GetNotificationTopicV1Admin' test.out

#- 36 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'wPZdTDJDUIWCTJOT' \
    --body '{"description": "ti71XI6iRQZaTFwb"}' \
    > test.out 2>&1
eval_tap $? 36 'UpdateNotificationTopicV1Admin' test.out

#- 37 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName '38bqSB0U6vtTnzCz' \
    > test.out 2>&1
eval_tap $? 37 'DeleteNotificationTopicV1Admin' test.out

#- 38 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId '6wFAa3MHMJt0yZr6' \
    --body '{"message": "LX31ricDR2OPWTEb", "topicName": "cSOGHn6a6FDNzChm"}' \
    > test.out 2>&1
eval_tap $? 38 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 39 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId '6pqGiCRhzUpQmiGG' \
    --body '{"templateContext": {"6lEulBuZjRv3fiFb": "gk6bC31l2Sb9N5dI", "0CDw68iwY0UhxVOg": "roZqmijxHXzybCc0", "ExXmYoijQCnQ2BQE": "ssUVZOlX2d7oB21v"}, "templateLanguage": "tSMn5ZqcHhuYMx6F", "templateSlug": "lH1MMxTxRA3GtI7X", "topicName": "HanQIIKVJkZ8vnmy"}' \
    > test.out 2>&1
eval_tap $? 39 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 40 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId '2fTi2Bwoa0kD4WAH' \
    > test.out 2>&1
eval_tap $? 40 'AdminGetPartyDataV1' test.out

#- 41 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'SlSSF4fFCbNz7XpA' \
    --body '{"custom_attribute": {"JBRjHr1YOMNQUW0e": {}, "2IcglYVoFZnOxNWh": {}, "Ttk81kgBTdCUAlix": {}}, "updatedAt": 38}' \
    > test.out 2>&1
eval_tap $? 41 'AdminUpdatePartyAttributesV1' test.out

#- 42 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'rMstDX0rkfsdui6q' \
    --userId 'mNSqxGAQWbQYmVEN' \
    > test.out 2>&1
eval_tap $? 42 'AdminJoinPartyV1' test.out

#- 43 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId '9nFRLhEldEAbM7FF' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetUserPartyV1' test.out

#- 44 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'AdminGetLobbyCCU' test.out

#- 45 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'yRpifD4qZJ2gSiEo' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllPlayerSessionAttribute' test.out

#- 46 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'FkLjSB7QFyf5I4Si' \
    --body '{"attributes": {"aA5AOb40qbkKV8w1": "qNhpkolOAHN6y9kY", "Sh7BxzOR5qtr0uPj": "I7ed42uVLwu7ygF7", "pGnOl2rghsO5yUlv": "cQc3BVAgPMbVra1O"}}' \
    > test.out 2>&1
eval_tap $? 46 'AdminSetPlayerSessionAttribute' test.out

#- 47 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'ywRn101zyhF5ka4T' \
    --namespace $AB_NAMESPACE \
    --userId 'asb1fT5FR2mMmglM' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerSessionAttribute' test.out

#- 48 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LqdFsINoworqFYqF' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerBlockedPlayersV1' test.out

#- 49 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'VhUezkKx1oTOb6CE' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 50 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId '57XNJC67bpNwNvbw' \
    --body '{"listBlockedUserId": ["lDnzcRwefi6pKMZ7", "gYpZOGlpFnZO3bCC", "NFFHso65yaRPVHKq"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminBulkBlockPlayersV1' test.out

#- 51 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "ku1CTh5pGIzh1Fui"}' \
    > test.out 2>&1
eval_tap $? 51 'AdminDebugProfanityFilters' test.out

#- 52 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list '7IBElKiwhR3ygZoN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'AdminGetProfanityListFiltersV1' test.out

#- 53 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list 'Nv4NLxursyGG68Tj' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "lGzchyg1fG3DEhcv", "note": "DQLtrrZGiHtfaTR3"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminAddProfanityFilterIntoList' test.out

#- 54 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list 'IVtFclFrnjReNcTs' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "BLAGva8e1mYVOCWb", "note": "tZzsajTnHozspZkj"}, {"filter": "9UpcqmbOlxP9vjyp", "note": "cZZvDd3gq695cnEE"}, {"filter": "uuE50TzvxFmwydm2", "note": "ettgpRNVc6PoEkGk"}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminAddProfanityFilters' test.out

#- 55 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list 'JjbrmBE8bdoIn4VY' \
    --namespace $AB_NAMESPACE \
    --body '[3, 38, 92]' \
    > test.out 2>&1
eval_tap $? 55 'AdminImportProfanityFiltersFromFile' test.out

#- 56 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list 'yBJ0do4wWdRIIOf5' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "T3iiBtAJNiX5mDSa"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteProfanityFilter' test.out

#- 57 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'AdminGetProfanityLists' test.out

#- 58 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": true, "name": "1K4D6LRfEb0tdPwb"}' \
    > test.out 2>&1
eval_tap $? 58 'AdminCreateProfanityList' test.out

#- 59 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'Z0kJX4rhbHPwRrxD' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": false, "newName": "PGebVLhSINBpQJU8"}' \
    > test.out 2>&1
eval_tap $? 59 'AdminUpdateProfanityList' test.out

#- 60 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'IH9WMhdqwhgR92Kx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'AdminDeleteProfanityList' test.out

#- 61 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'AdminGetProfanityRule' test.out

#- 62 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"rule": "fG8OD41ZEMAk3JFF"}' \
    > test.out 2>&1
eval_tap $? 62 'AdminSetProfanityRuleForNamespace' test.out

#- 63 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "aq58KfJGJW43oQg6", "profanityLevel": "c6kitaIOhCwMK4xa"}' \
    > test.out 2>&1
eval_tap $? 63 'AdminVerifyMessageProfanityResponse' test.out

#- 64 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'AdminGetThirdPartyConfig' test.out

#- 65 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "9ZQ0NM1fyVCYQAIO"}' \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateThirdPartyConfig' test.out

#- 66 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "tmmWPvPgpB07kuy6"}' \
    > test.out 2>&1
eval_tap $? 66 'AdminCreateThirdPartyConfig' test.out

#- 67 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'AdminDeleteThirdPartyConfig' test.out

#- 68 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 68 'PublicGetMessages' test.out

#- 69 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'nzD7jDSxtMdjJRtG' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetPartyDataV1' test.out

#- 70 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'LgucuQjgxhGSDX7H' \
    --body '{"custom_attribute": {"u051LALaEeZF9DSh": {}, "GQLlRaPjDaSkyTRj": {}, "cTXZcAolyQog5ST8": {}}, "updatedAt": 64}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdatePartyAttributesV1' test.out

#- 71 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'h0rbrCwapVkn8njq' \
    --body '{"limit": 87}' \
    > test.out 2>&1
eval_tap $? 71 'PublicSetPartyLimitV1' test.out

#- 72 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'PublicGetPlayerBlockedPlayersV1' test.out

#- 73 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 74 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'true' \
    --userIds 'UQHCjKTsPVz6pcqf' \
    > test.out 2>&1
eval_tap $? 74 'UsersPresenceHandlerV1' test.out

#- 75 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "DN6HuEA3EwBernIS", "topic": "OVwSpka2MsH1wZP9"}' \
    > test.out 2>&1
eval_tap $? 75 'FreeFormNotification' test.out

#- 76 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"WbrzHSnbcmKRmH1W": "dQnx1I6yJnqv7xgQ", "s0cLuSrHODzGhiBx": "uSNj96ufQWEtCgXD", "MEldvcUTZFV8hbo2": "eo5kSZgrv5HY4lX5"}, "templateLanguage": "4LGNIybuHUIxpFqw", "templateSlug": "fBFMC4vP91VsuvFt", "topic": "MfkPKxu8vUeQFOaB"}' \
    > test.out 2>&1
eval_tap $? 76 'NotificationWithTemplate' test.out

#- 77 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'GetGameTemplate' test.out

#- 78 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "SCPKqr9mDSI1HsZv", "templateLanguage": "vJ0g3x8qlm464kx6", "templateSlug": "KCgoY9v2V8Vf0fJ1"}' \
    > test.out 2>&1
eval_tap $? 78 'CreateTemplate' test.out

#- 79 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'y2Hw50h6KworyRU5' \
    --after '2Dk36KNPF6QR8ihd' \
    --before 't43o1ieFqFliFgPp' \
    --limit '21' \
    > test.out 2>&1
eval_tap $? 79 'GetSlugTemplate' test.out

#- 80 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'eVzijdQwrnEApDf0' \
    > test.out 2>&1
eval_tap $? 80 'DeleteTemplateSlug' test.out

#- 81 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'LGJx3tiWfcT7WAeP' \
    --templateSlug '6LfeiC2onIjXC0J8' \
    > test.out 2>&1
eval_tap $? 81 'GetLocalizationTemplate' test.out

#- 82 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'DDqYrC9RTDsb3fZk' \
    --templateSlug 'WSebJ5WT4Skj0ENK' \
    --body '{"templateContent": "cG6Onp1ce6oEclMz"}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateLocalizationTemplate' test.out

#- 83 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'JFfc62NrMkgID2B1' \
    --templateSlug 'TttmBbqOkTpDLLW4' \
    > test.out 2>&1
eval_tap $? 83 'DeleteTemplateLocalization' test.out

#- 84 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'jly1rTfEb6Di8OYf' \
    --templateSlug 'IfXNoHyaQZ30m6AR' \
    > test.out 2>&1
eval_tap $? 84 'PublishTemplate' test.out

#- 85 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'E9uJBPF7IsL83xoc' \
    --before 'GE6FJ7xTThVUbetE' \
    --limit '6' \
    > test.out 2>&1
eval_tap $? 85 'GetTopicByNamespace' test.out

#- 86 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "IiEs0Kq2tgrDu3Zd", "topic": "nryYI5DLtC3B8LJB"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateTopic' test.out

#- 87 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic '9rlYl7AmKV6MzrhD' \
    > test.out 2>&1
eval_tap $? 87 'GetTopicByTopicName' test.out

#- 88 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic '5aHGdW9KVjLrchvc' \
    --body '{"description": "bptYIgjHDKjeUt6G"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateTopicByTopicName' test.out

#- 89 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'twj5HITwqqWTcqbJ' \
    > test.out 2>&1
eval_tap $? 89 'DeleteTopicByTopicName' test.out

#- 90 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'BIuarysMIJ1Y9zzn' \
    --body '{"message": "BTJjncFEHYNYcdeq", "topic": "IQv1KfCxizxIgyZG"}' \
    > test.out 2>&1
eval_tap $? 90 'FreeFormNotificationByUserID' test.out

#- 91 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'PZOwILaoOVrFYhTh' \
    --body '{"templateContext": {"mx9SBAgyxR5bAEJM": "0EkpCQmm0TLkbQD6", "EyrEXmcg0soqUGJt": "deJ3Q1wMwLiU08Wg", "sx8xKVPNJ9EfB5WD": "XNyKxPoJwa8mvVVt"}, "templateLanguage": "DTvSqBmHSkiviqvk", "templateSlug": "2cq9iePTY4IR9Qog", "topic": "Af1EWnoJXU64X6Hl"}' \
    > test.out 2>&1
eval_tap $? 91 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE