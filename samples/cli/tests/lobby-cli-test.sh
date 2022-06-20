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
    --namespace 'FtBxyZcD' \
    --limit '98' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace 'pGlsQuJu' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace '8vMf0IsJ' \
    > test.out 2>&1
eval_tap $? 4 'GetUserOutgoingFriends' test.out

#- 5 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --body '{"friendId": "kTrd8IDc", "friendPublicId": "V2zXnTKj"}' \
    --namespace 'XY1bPqam' \
    > test.out 2>&1
eval_tap $? 5 'UserRequestFriend' test.out

#- 6 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --body '{"friendId": "iBxx9Cs1"}' \
    --namespace '8EY84ekI' \
    > test.out 2>&1
eval_tap $? 6 'UserAcceptFriendRequest' test.out

#- 7 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --body '{"friendId": "tqRzHU1o"}' \
    --namespace 'h570KQBV' \
    > test.out 2>&1
eval_tap $? 7 'UserCancelFriendRequest' test.out

#- 8 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --body '{"friendId": "aewc72kr"}' \
    --namespace 'Sha68n3Y' \
    > test.out 2>&1
eval_tap $? 8 'UserRejectFriendRequest' test.out

#- 9 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'nozp1C2K' \
    --namespace 'mIQTuBdN' \
    > test.out 2>&1
eval_tap $? 9 'UserGetFriendshipStatus' test.out

#- 10 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --body '{"friendId": "EUsxFb8C"}' \
    --namespace 'J17M7DJZ' \
    > test.out 2>&1
eval_tap $? 10 'UserUnfriendRequest' test.out

#- 11 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --body '{"friendIds": ["aMSxECbZ"]}' \
    --namespace 'bygyoarO' \
    --userId 'RoeNHSb8' \
    > test.out 2>&1
eval_tap $? 11 'AddFriendsWithoutConfirmation' test.out

#- 12 PersonalChatHistory
samples/cli/sample-apps Lobby personalChatHistory \
    --friendId 'Rh3kgs9q' \
    --namespace 'qJbnQsoB' \
    --userId 'giVpP8Cm' \
    > test.out 2>&1
eval_tap $? 12 'PersonalChatHistory' test.out

#- 13 AdminChatHistory
samples/cli/sample-apps Lobby adminChatHistory \
    --friendId '3yvASUox' \
    --namespace 'dxxFqmAG' \
    --userId 'TJ8IEdag' \
    > test.out 2>&1
eval_tap $? 13 'AdminChatHistory' test.out

#- 14 AdminGetAllConfigV1
samples/cli/sample-apps Lobby adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 14 'AdminGetAllConfigV1' test.out

#- 15 AdminGetConfigV1
samples/cli/sample-apps Lobby adminGetConfigV1 \
    --namespace 'Etp4w29K' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetConfigV1' test.out

#- 16 AdminUpdateConfigV1
samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --body '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 33, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 20, "chatRateLimitDuration": 82, "concurrentUsersLimit": 26, "disableInvitationOnJoinParty": false, "enableChat": true, "entitlementCheck": false, "entitlementItemID": "jiX7jpkV", "generalRateLimitBurst": 21, "generalRateLimitDuration": 69, "keepPresenceActivityOnDisconnect": false, "maxPartyMember": 84, "profanityFilter": true, "readyConsentTimeout": 24}' \
    --namespace 'qGodOEGt' \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateConfigV1' test.out

#- 17 AdminExportConfigV1
samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace '9gPOj0c6' \
    > test.out 2>&1
eval_tap $? 17 'AdminExportConfigV1' test.out

#- 18 AdminImportConfigV1
samples/cli/sample-apps Lobby adminImportConfigV1 \
    --file 'tmp.dat' \
    --namespace 'i0JkvIas' \
    > test.out 2>&1
eval_tap $? 18 'AdminImportConfigV1' test.out

#- 19 GetListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace '73ucYnFA' \
    --userId 'J3DK5T4E' \
    --limit '28' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 19 'GetListOfFriends' test.out

#- 20 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --body '{"message": "g0Y39UoY", "topicName": "lpv5bVAg", "userIds": ["tsDhUTDU"]}' \
    --namespace 'scbQDjbT' \
    > test.out 2>&1
eval_tap $? 20 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 21 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --body '{"message": "QuPMz2PT", "topicName": "RlkyU89Z"}' \
    --namespace 'POw6zPFJ' \
    > test.out 2>&1
eval_tap $? 21 'SendUsersFreeformNotificationV1Admin' test.out

#- 22 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --body '{"message": "42cwmzBB", "topicName": "SMNcoAAO"}' \
    --namespace 'jKNjfcYH' \
    --partyId 'm093aYgB' \
    > test.out 2>&1
eval_tap $? 22 'SendPartyFreeformNotificationV1Admin' test.out

#- 23 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --body '{"templateContext": {"U1sqjyK0": "XH45PaRS"}, "templateLanguage": "OFQBtu23", "templateSlug": "REZ8hRVX", "topicName": "7LGOvDdY"}' \
    --namespace 'iQS9i7mV' \
    --partyId '1C91pjG9' \
    > test.out 2>&1
eval_tap $? 23 'SendPartyTemplatedNotificationV1Admin' test.out

#- 24 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace 'gpxL6ycT' \
    > test.out 2>&1
eval_tap $? 24 'GetAllNotificationTemplatesV1Admin' test.out

#- 25 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --body '{"templateContent": "Qdvln2LA", "templateLanguage": "uSQWEXL6", "templateSlug": "LFE1YHo9"}' \
    --namespace 'm126ZWc8' \
    > test.out 2>&1
eval_tap $? 25 'CreateNotificationTemplateV1Admin' test.out

#- 26 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --body '{"templateContext": {"hHtWvbNY": "qgUqslAr"}, "templateLanguage": "FPiHUIva", "templateSlug": "Cv8kU9dB", "topicName": "BpdsJLhs"}' \
    --namespace 'VyExrkxo' \
    > test.out 2>&1
eval_tap $? 26 'SendUsersTemplatedNotificationV1Admin' test.out

#- 27 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace 'ot0B7WOf' \
    --templateSlug 'ercZdpMc' \
    --after 'i37Ds7YS' \
    --before 'fExaI3uz' \
    --limit '74' \
    > test.out 2>&1
eval_tap $? 27 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 28 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace 'teMbFAlt' \
    --templateSlug '4hr7HmOY' \
    > test.out 2>&1
eval_tap $? 28 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 29 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace 'iBA5ltAO' \
    --templateLanguage 'XmlG6eh1' \
    --templateSlug 'dTdoTFpB' \
    > test.out 2>&1
eval_tap $? 29 'GetSingleTemplateLocalizationV1Admin' test.out

#- 30 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --body '{"templateContent": "IcuC1dQY"}' \
    --namespace '93OJnJ6T' \
    --templateLanguage 'e9vD8ldz' \
    --templateSlug '7Hu8AD79' \
    > test.out 2>&1
eval_tap $? 30 'UpdateTemplateLocalizationV1Admin' test.out

#- 31 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace 'kdWunviz' \
    --templateLanguage 'U0q1pHyh' \
    --templateSlug 'hERoGgdr' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTemplateLocalizationV1Admin' test.out

#- 32 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace 'ysMizBGS' \
    --templateLanguage 'RdP2l7DN' \
    --templateSlug 'SZ8Aq0Xi' \
    > test.out 2>&1
eval_tap $? 32 'PublishTemplateLocalizationV1Admin' test.out

#- 33 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace 'PLQXSe07' \
    --after 'ZddOGTMl' \
    --before 'JjBwj9HJ' \
    --limit '66' \
    > test.out 2>&1
eval_tap $? 33 'GetAllNotificationTopicsV1Admin' test.out

#- 34 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --body '{"description": "QKseEdSX", "topicName": "RDSvguau"}' \
    --namespace 'w1xT7eMw' \
    > test.out 2>&1
eval_tap $? 34 'CreateNotificationTopicV1Admin' test.out

#- 35 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace 'Sl9MLH0N' \
    --topicName 'nTJ2ulNz' \
    > test.out 2>&1
eval_tap $? 35 'GetNotificationTopicV1Admin' test.out

#- 36 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --body '{"description": "BvwJaQa5"}' \
    --namespace '47JllvA8' \
    --topicName 'RWSpabUt' \
    > test.out 2>&1
eval_tap $? 36 'UpdateNotificationTopicV1Admin' test.out

#- 37 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace '7xk6QxyW' \
    --topicName 'hfqoWfJw' \
    > test.out 2>&1
eval_tap $? 37 'DeleteNotificationTopicV1Admin' test.out

#- 38 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --body '{"message": "2o8oWUqv", "topicName": "PCZ2HzT7"}' \
    --namespace 'NXmWDlXs' \
    --userId 'uNIdQJR5' \
    > test.out 2>&1
eval_tap $? 38 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 39 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --body '{"templateContext": {"lsNOlvkf": "waSbnsuL"}, "templateLanguage": "CgToxuVT", "templateSlug": "ekJgvg6h", "topicName": "5HIpH0Dv"}' \
    --namespace 'iplEk4vj' \
    --userId '3LDp4yqD' \
    > test.out 2>&1
eval_tap $? 39 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 40 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace 't8QUZDpx' \
    --partyId 'lHasinGc' \
    > test.out 2>&1
eval_tap $? 40 'AdminGetPartyDataV1' test.out

#- 41 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --body '{"custom_attribute": {"jrkmRMtt": {}}, "updatedAt": 12}' \
    --namespace 'jDSaIVBm' \
    --partyId 'ft3Udg7p' \
    > test.out 2>&1
eval_tap $? 41 'AdminUpdatePartyAttributesV1' test.out

#- 42 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace '9PGmY2H5' \
    --partyId 'kX4MsisS' \
    --userId 'X28nARxW' \
    > test.out 2>&1
eval_tap $? 42 'AdminJoinPartyV1' test.out

#- 43 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace 'Rpv5ou5x' \
    --userId 'tvd28OUf' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetUserPartyV1' test.out

#- 44 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace 'Ct8UJC5f' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetLobbyCCU' test.out

#- 45 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace 'lNyj6HsT' \
    --userId 'tX8P3lln' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllPlayerSessionAttribute' test.out

#- 46 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --body '{"attributes": {"aaS9lqyy": "gPcfkJIx"}}' \
    --namespace 'fQZza8kN' \
    --userId 'VbDxVMq7' \
    > test.out 2>&1
eval_tap $? 46 'AdminSetPlayerSessionAttribute' test.out

#- 47 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'HJk0F89x' \
    --namespace 'Ac3YVfaE' \
    --userId 'Ntrl0pTK' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerSessionAttribute' test.out

#- 48 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace 'ZTXqzHuB' \
    --userId 'MYQSA2jz' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerBlockedPlayersV1' test.out

#- 49 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace '1ZOpdOjS' \
    --userId 'yMddB41J' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 50 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --body '{"listBlockedUserId": ["uMf7RUyB"]}' \
    --namespace 'HRj8IiRi' \
    --userId 'mRllHT6D' \
    > test.out 2>&1
eval_tap $? 50 'AdminBulkBlockPlayersV1' test.out

#- 51 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --body '{"text": "c40vFFA6"}' \
    --namespace 'gpU7EW3x' \
    > test.out 2>&1
eval_tap $? 51 'AdminDebugProfanityFilters' test.out

#- 52 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list '1dCpm55g' \
    --namespace 'OeqQIqcJ' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetProfanityListFiltersV1' test.out

#- 53 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --body '{"filter": "VKmBM1J1", "note": "IbuTrrkb"}' \
    --list 'muT1whOq' \
    --namespace 'mEnDXIWr' \
    > test.out 2>&1
eval_tap $? 53 'AdminAddProfanityFilterIntoList' test.out

#- 54 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --body '{"filters": [{"filter": "BPlSay46", "note": "mv71BAZA"}]}' \
    --list 'OjtFJ2vm' \
    --namespace 'Tj7tT7TZ' \
    > test.out 2>&1
eval_tap $? 54 'AdminAddProfanityFilters' test.out

#- 55 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --body '[67]' \
    --list 'WDdCkIsZ' \
    --namespace 'oArWwPHc' \
    > test.out 2>&1
eval_tap $? 55 'AdminImportProfanityFiltersFromFile' test.out

#- 56 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --body '{"filter": "yFAdAtYc"}' \
    --list 'iLIgRwFR' \
    --namespace 'r0gwB9tz' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteProfanityFilter' test.out

#- 57 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace '3vp99XVl' \
    > test.out 2>&1
eval_tap $? 57 'AdminGetProfanityLists' test.out

#- 58 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --body '{"isEnabled": true, "isMandatory": true, "name": "E6n0smip"}' \
    --namespace '1tw3L7cU' \
    > test.out 2>&1
eval_tap $? 58 'AdminCreateProfanityList' test.out

#- 59 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --body '{"isEnabled": false, "isMandatory": false, "newName": "qtv6JfPZ"}' \
    --list 'wcCVOXcV' \
    --namespace 'a80TmCwt' \
    > test.out 2>&1
eval_tap $? 59 'AdminUpdateProfanityList' test.out

#- 60 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'D2lAH01o' \
    --namespace '6NdcBIgz' \
    > test.out 2>&1
eval_tap $? 60 'AdminDeleteProfanityList' test.out

#- 61 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace 'rDyWpFBY' \
    > test.out 2>&1
eval_tap $? 61 'AdminGetProfanityRule' test.out

#- 62 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --body '{"rule": "GmmBawMy"}' \
    --namespace 'oKyNpdAa' \
    > test.out 2>&1
eval_tap $? 62 'AdminSetProfanityRuleForNamespace' test.out

#- 63 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --body '{"message": "sm8xwUfz", "profanityLevel": "OlQiZY4N"}' \
    --namespace 'bOQXJ7uO' \
    > test.out 2>&1
eval_tap $? 63 'AdminVerifyMessageProfanityResponse' test.out

#- 64 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace 'TzNMvuq2' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetThirdPartyConfig' test.out

#- 65 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --body '{"apiKey": "tNl4CX4I"}' \
    --namespace 'jiK4DEUJ' \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateThirdPartyConfig' test.out

#- 66 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --body '{"apiKey": "RVK3l9Eb"}' \
    --namespace '0R1XRb0R' \
    > test.out 2>&1
eval_tap $? 66 'AdminCreateThirdPartyConfig' test.out

#- 67 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace 'H8vS1sme' \
    > test.out 2>&1
eval_tap $? 67 'AdminDeleteThirdPartyConfig' test.out

#- 68 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 68 'PublicGetMessages' test.out

#- 69 GetPersonalChatHistoryV1Public
samples/cli/sample-apps Lobby getPersonalChatHistoryV1Public \
    --friendId 'OlngrdTX' \
    --namespace 'CzaPBtkZ' \
    > test.out 2>&1
eval_tap $? 69 'GetPersonalChatHistoryV1Public' test.out

#- 70 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace 'Mio4wcyh' \
    --partyId 'loVS3rYp' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetPartyDataV1' test.out

#- 71 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --body '{"custom_attribute": {"8QtcEmCE": {}}, "updatedAt": 95}' \
    --namespace 'c75Ufeyp' \
    --partyId 'WjDNhzCL' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdatePartyAttributesV1' test.out

#- 72 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --body '{"limit": 36}' \
    --namespace 'WS2qwO76' \
    --partyId '3iEklkzL' \
    > test.out 2>&1
eval_tap $? 72 'PublicSetPartyLimitV1' test.out

#- 73 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace 'm88LpLuY' \
    > test.out 2>&1
eval_tap $? 73 'PublicGetPlayerBlockedPlayersV1' test.out

#- 74 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace 'RO3C55yH' \
    > test.out 2>&1
eval_tap $? 74 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 75 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace 'pwK2Jaqe' \
    --countOnly 'False' \
    --userIds 'DGn7a2NU' \
    > test.out 2>&1
eval_tap $? 75 'UsersPresenceHandlerV1' test.out

#- 76 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --body '{"message": "plWiLjq0", "topic": "6n6a0rW8"}' \
    --namespace 'EfkpaXtw' \
    > test.out 2>&1
eval_tap $? 76 'FreeFormNotification' test.out

#- 77 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --body '{"templateContext": {"YZJaQ4Wb": "wNmsFYet"}, "templateLanguage": "jEurH8el", "templateSlug": "oJzNKtRU", "topic": "aTz1ETds"}' \
    --namespace 'mwzjkkn9' \
    > test.out 2>&1
eval_tap $? 77 'NotificationWithTemplate' test.out

#- 78 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace 'oiQl05g7' \
    > test.out 2>&1
eval_tap $? 78 'GetGameTemplate' test.out

#- 79 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --body '{"templateContent": "cO3ZMb6O", "templateLanguage": "jlo6DMNp", "templateSlug": "P2qMrTQ1"}' \
    --namespace 'UpjfU6wJ' \
    > test.out 2>&1
eval_tap $? 79 'CreateTemplate' test.out

#- 80 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace 'hy1jOVkk' \
    --templateSlug 'UlS79527' \
    --after 'EZ25Ia8u' \
    --before 'CeZFlLtE' \
    --limit '95' \
    > test.out 2>&1
eval_tap $? 80 'GetSlugTemplate' test.out

#- 81 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace 'pDAEbA82' \
    --templateSlug 'jy74lq0p' \
    > test.out 2>&1
eval_tap $? 81 'DeleteTemplateSlug' test.out

#- 82 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace 'DE5xRwh5' \
    --templateLanguage 'b45ebpcM' \
    --templateSlug '7ScSs3UO' \
    > test.out 2>&1
eval_tap $? 82 'GetLocalizationTemplate' test.out

#- 83 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --body '{"templateContent": "pAwIp9rR"}' \
    --namespace 'tn1PcCxd' \
    --templateLanguage 'bumeYgOd' \
    --templateSlug 'EBWRQiW3' \
    > test.out 2>&1
eval_tap $? 83 'UpdateLocalizationTemplate' test.out

#- 84 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace 'KFfU8icH' \
    --templateLanguage '4081gRB1' \
    --templateSlug 'GyLfLg4R' \
    > test.out 2>&1
eval_tap $? 84 'DeleteTemplateLocalization' test.out

#- 85 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace 'YuEbgUDE' \
    --templateLanguage 'cJyIvsPw' \
    --templateSlug 'Or0BmV5i' \
    > test.out 2>&1
eval_tap $? 85 'PublishTemplate' test.out

#- 86 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace 'FvfwFjTS' \
    --after 'mIEqoLyL' \
    --before 'eUGmomGX' \
    --limit '36' \
    > test.out 2>&1
eval_tap $? 86 'GetTopicByNamespace' test.out

#- 87 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --body '{"description": "XTZ0v8pq", "topic": "Lfc5SwGn"}' \
    --namespace 'ReUULDX4' \
    > test.out 2>&1
eval_tap $? 87 'CreateTopic' test.out

#- 88 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace 'QUIbb5nh' \
    --topic '68ZnyUtR' \
    > test.out 2>&1
eval_tap $? 88 'GetTopicByTopicName' test.out

#- 89 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --body '{"description": "vW9hNBSF"}' \
    --namespace 'TtFrOmjk' \
    --topic 'FrFVA8t0' \
    > test.out 2>&1
eval_tap $? 89 'UpdateTopicByTopicName' test.out

#- 90 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace 'xF34Xpt6' \
    --topic 'ZlTTic0k' \
    > test.out 2>&1
eval_tap $? 90 'DeleteTopicByTopicName' test.out

#- 91 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --body '{"message": "r2a0nI2o", "topic": "o7UHCJK5"}' \
    --namespace 'sp0aCvIq' \
    --userId '3aHVYIle' \
    > test.out 2>&1
eval_tap $? 91 'FreeFormNotificationByUserID' test.out

#- 92 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --body '{"templateContext": {"wLRuHY83": "bGj0HTee"}, "templateLanguage": "WXlIcRid", "templateSlug": "qctDpygY", "topic": "0ax476ED"}' \
    --namespace '4MMO9Tw2' \
    --userId 'JH0qhWIw' \
    > test.out 2>&1
eval_tap $? 92 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE