#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: go-cli-unit-test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

export JUSTICE_BASE_URL="$AB_BASE_URL"
export APP_CLIENT_ID="$AB_CLIENT_ID"
export APP_CLIENT_SECRET="$AB_CLIENT_SECRET"

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

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_TOKEN="/tmp/justice-sample-apps/userData"

echo "TAP version 13"
echo "1..91"

#- 1 Login
rm -f $TEMP_TOKEN \
    && mkdir -p $(dirname $TEMP_TOKEN) \
    && echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
eval_tap 0 1 'Login # SKIP not tested' test.out

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
    --body '{"friendId": "kTrd8IDc"}' \
    --namespace 'V2zXnTKj' \
    > test.out 2>&1
eval_tap $? 5 'UserRequestFriend' test.out

#- 6 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --body '{"friendId": "XY1bPqam"}' \
    --namespace 'iBxx9Cs1' \
    > test.out 2>&1
eval_tap $? 6 'UserAcceptFriendRequest' test.out

#- 7 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --body '{"friendId": "8EY84ekI"}' \
    --namespace 'tqRzHU1o' \
    > test.out 2>&1
eval_tap $? 7 'UserCancelFriendRequest' test.out

#- 8 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --body '{"friendId": "h570KQBV"}' \
    --namespace 'aewc72kr' \
    > test.out 2>&1
eval_tap $? 8 'UserRejectFriendRequest' test.out

#- 9 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'Sha68n3Y' \
    --namespace 'nozp1C2K' \
    > test.out 2>&1
eval_tap $? 9 'UserGetFriendshipStatus' test.out

#- 10 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --body '{"friendId": "mIQTuBdN"}' \
    --namespace 'EUsxFb8C' \
    > test.out 2>&1
eval_tap $? 10 'UserUnfriendRequest' test.out

#- 11 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --body '{"friendIds": ["J17M7DJZ"]}' \
    --namespace 'aMSxECbZ' \
    --userId 'bygyoarO' \
    > test.out 2>&1
eval_tap $? 11 'AddFriendsWithoutConfirmation' test.out

#- 12 PersonalChatHistory
samples/cli/sample-apps Lobby personalChatHistory \
    --friendId 'RoeNHSb8' \
    --namespace 'Rh3kgs9q' \
    --userId 'qJbnQsoB' \
    > test.out 2>&1
eval_tap $? 12 'PersonalChatHistory' test.out

#- 13 AdminChatHistory
samples/cli/sample-apps Lobby adminChatHistory \
    --friendId 'giVpP8Cm' \
    --namespace '3yvASUox' \
    --userId 'dxxFqmAG' \
    > test.out 2>&1
eval_tap $? 13 'AdminChatHistory' test.out

#- 14 AdminGetAllConfigV1
samples/cli/sample-apps Lobby adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 14 'AdminGetAllConfigV1' test.out

#- 15 AdminGetConfigV1
samples/cli/sample-apps Lobby adminGetConfigV1 \
    --namespace 'TJ8IEdag' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetConfigV1' test.out

#- 16 AdminUpdateConfigV1
samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --body '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 44, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 4, "chatRateLimitDuration": 87, "concurrentUsersLimit": 98, "disableInvitationOnJoinParty": true, "enableChat": true, "entitlementCheck": false, "entitlementItemID": "kP8npLEK", "generalRateLimitBurst": 76, "generalRateLimitDuration": 11, "keepPresenceActivityOnDisconnect": false, "maxPartyMember": 16, "profanityFilter": false, "readyConsentTimeout": 31}' \
    --namespace 'kVZk3IaQ' \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateConfigV1' test.out

#- 17 AdminExportConfigV1
samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace 'YEmqGodO' \
    > test.out 2>&1
eval_tap $? 17 'AdminExportConfigV1' test.out

#- 18 AdminImportConfigV1
samples/cli/sample-apps Lobby adminImportConfigV1 \
    --namespace 'EGt9gPOj' \
    > test.out 2>&1
eval_tap $? 18 'AdminImportConfigV1' test.out

#- 19 GetListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace '0c6i0Jkv' \
    --userId 'Ias73ucY' \
    --limit '27' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 19 'GetListOfFriends' test.out

#- 20 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --body '{"message": "AJ3DK5T4", "topicName": "Eogg0Y39", "userIds": ["UoYlpv5b"]}' \
    --namespace 'VAgtsDhU' \
    > test.out 2>&1
eval_tap $? 20 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 21 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --body '{"message": "TDUscbQD", "topicName": "jbTQuPMz"}' \
    --namespace '2PTRlkyU' \
    > test.out 2>&1
eval_tap $? 21 'SendUsersFreeformNotificationV1Admin' test.out

#- 22 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --body '{"message": "89ZPOw6z", "topicName": "PFJ42cwm"}' \
    --namespace 'zBBSMNco' \
    --partyId 'AAOjKNjf' \
    > test.out 2>&1
eval_tap $? 22 'SendPartyFreeformNotificationV1Admin' test.out

#- 23 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --body '{"templateContext": {"cYHm093a": "YgBU1sqj"}, "templateLanguage": "yK0XH45P", "templateSlug": "aRSOFQBt", "topicName": "u23REZ8h"}' \
    --namespace 'RVX7LGOv' \
    --partyId 'DdYiQS9i' \
    > test.out 2>&1
eval_tap $? 23 'SendPartyTemplatedNotificationV1Admin' test.out

#- 24 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace '7mV1C91p' \
    > test.out 2>&1
eval_tap $? 24 'GetAllNotificationTemplatesV1Admin' test.out

#- 25 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --body '{"templateContent": "jG9gpxL6", "templateLanguage": "ycTQdvln", "templateSlug": "2LAuSQWE"}' \
    --namespace 'XL6LFE1Y' \
    > test.out 2>&1
eval_tap $? 25 'CreateNotificationTemplateV1Admin' test.out

#- 26 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --body '{"templateContext": {"Ho9m126Z": "Wc8hHtWv"}, "templateLanguage": "bNYqgUqs", "templateSlug": "lArFPiHU", "topicName": "IvaCv8kU"}' \
    --namespace '9dBBpdsJ' \
    > test.out 2>&1
eval_tap $? 26 'SendUsersTemplatedNotificationV1Admin' test.out

#- 27 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace 'LhsVyExr' \
    --templateSlug 'kxoot0B7' \
    --after 'WOfercZd' \
    --before 'pMci37Ds' \
    --limit '88' \
    > test.out 2>&1
eval_tap $? 27 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 28 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace 'fExaI3uz' \
    --templateSlug 'LteMbFAl' \
    > test.out 2>&1
eval_tap $? 28 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 29 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace 't4hr7HmO' \
    --templateLanguage 'YiBA5ltA' \
    --templateSlug 'OXmlG6eh' \
    > test.out 2>&1
eval_tap $? 29 'GetSingleTemplateLocalizationV1Admin' test.out

#- 30 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --body '{"templateContent": "1dTdoTFp"}' \
    --namespace 'BIcuC1dQ' \
    --templateLanguage 'Y93OJnJ6' \
    --templateSlug 'Te9vD8ld' \
    > test.out 2>&1
eval_tap $? 30 'UpdateTemplateLocalizationV1Admin' test.out

#- 31 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace 'z7Hu8AD7' \
    --templateLanguage '9kdWunvi' \
    --templateSlug 'zU0q1pHy' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTemplateLocalizationV1Admin' test.out

#- 32 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace 'hhERoGgd' \
    --templateLanguage 'rysMizBG' \
    --templateSlug 'SRdP2l7D' \
    > test.out 2>&1
eval_tap $? 32 'PublishTemplateLocalizationV1Admin' test.out

#- 33 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace 'NSZ8Aq0X' \
    --after 'iPLQXSe0' \
    --before '7ZddOGTM' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 33 'GetAllNotificationTopicsV1Admin' test.out

#- 34 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --body '{"description": "JjBwj9HJ", "topicName": "HQKseEdS"}' \
    --namespace 'XRDSvgua' \
    > test.out 2>&1
eval_tap $? 34 'CreateNotificationTopicV1Admin' test.out

#- 35 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace 'uw1xT7eM' \
    --topicName 'wSl9MLH0' \
    > test.out 2>&1
eval_tap $? 35 'GetNotificationTopicV1Admin' test.out

#- 36 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --body '{"description": "NnTJ2ulN"}' \
    --namespace 'zBvwJaQa' \
    --topicName '547JllvA' \
    > test.out 2>&1
eval_tap $? 36 'UpdateNotificationTopicV1Admin' test.out

#- 37 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace '8RWSpabU' \
    --topicName 't7xk6Qxy' \
    > test.out 2>&1
eval_tap $? 37 'DeleteNotificationTopicV1Admin' test.out

#- 38 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --body '{"message": "WhfqoWfJ", "topicName": "w2o8oWUq"}' \
    --namespace 'vPCZ2HzT' \
    --userId '7NXmWDlX' \
    > test.out 2>&1
eval_tap $? 38 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 39 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --body '{"templateContext": {"suNIdQJR": "5lsNOlvk"}, "templateLanguage": "fwaSbnsu", "templateSlug": "LCgToxuV", "topicName": "TekJgvg6"}' \
    --namespace 'h5HIpH0D' \
    --userId 'viplEk4v' \
    > test.out 2>&1
eval_tap $? 39 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 40 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace 'j3LDp4yq' \
    --partyId 'Dt8QUZDp' \
    > test.out 2>&1
eval_tap $? 40 'AdminGetPartyDataV1' test.out

#- 41 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --body '{"custom_attribute": {"xlHasinG": {}}, "updatedAt": 5}' \
    --namespace 'jrkmRMtt' \
    --partyId 'gjDSaIVB' \
    > test.out 2>&1
eval_tap $? 41 'AdminUpdatePartyAttributesV1' test.out

#- 42 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace 'mft3Udg7' \
    --partyId 'p9PGmY2H' \
    --userId '5kX4Msis' \
    > test.out 2>&1
eval_tap $? 42 'AdminJoinPartyV1' test.out

#- 43 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace 'SX28nARx' \
    --userId 'WRpv5ou5' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetUserPartyV1' test.out

#- 44 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace 'xtvd28OU' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetLobbyCCU' test.out

#- 45 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace 'fCt8UJC5' \
    --userId 'flNyj6Hs' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllPlayerSessionAttribute' test.out

#- 46 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --body '{"attributes": {"TtX8P3ll": "naaS9lqy"}}' \
    --namespace 'ygPcfkJI' \
    --userId 'xfQZza8k' \
    > test.out 2>&1
eval_tap $? 46 'AdminSetPlayerSessionAttribute' test.out

#- 47 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'NVbDxVMq' \
    --namespace '7HJk0F89' \
    --userId 'xAc3YVfa' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerSessionAttribute' test.out

#- 48 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace 'ENtrl0pT' \
    --userId 'KZTXqzHu' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerBlockedPlayersV1' test.out

#- 49 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace 'BMYQSA2j' \
    --userId 'z1ZOpdOj' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 50 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --body '{"listBlockedUserId": ["SyMddB41"]}' \
    --namespace 'JuMf7RUy' \
    --userId 'BHRj8IiR' \
    > test.out 2>&1
eval_tap $? 50 'AdminBulkBlockPlayersV1' test.out

#- 51 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --body '{"text": "imRllHT6"}' \
    --namespace 'Dc40vFFA' \
    > test.out 2>&1
eval_tap $? 51 'AdminDebugProfanityFilters' test.out

#- 52 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list '6gpU7EW3' \
    --namespace 'x1dCpm55' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetProfanityListFiltersV1' test.out

#- 53 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --body '{"filter": "gOeqQIqc", "note": "JVKmBM1J"}' \
    --list '1IbuTrrk' \
    --namespace 'bmuT1whO' \
    > test.out 2>&1
eval_tap $? 53 'AdminAddProfanityFilterIntoList' test.out

#- 54 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --body '{"filters": [{"filter": "qmEnDXIW", "note": "rBPlSay4"}]}' \
    --list '6mv71BAZ' \
    --namespace 'AOjtFJ2v' \
    > test.out 2>&1
eval_tap $? 54 'AdminAddProfanityFilters' test.out

#- 55 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --body '[25]' \
    --list 'Tj7tT7TZ' \
    --namespace 'HWDdCkIs' \
    > test.out 2>&1
eval_tap $? 55 'AdminImportProfanityFiltersFromFile' test.out

#- 56 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --body '{"filter": "ZoArWwPH"}' \
    --list 'cyFAdAtY' \
    --namespace 'ciLIgRwF' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteProfanityFilter' test.out

#- 57 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace 'Rr0gwB9t' \
    > test.out 2>&1
eval_tap $? 57 'AdminGetProfanityLists' test.out

#- 58 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --body '{"isEnabled": true, "isMandatory": true, "name": "p99XVlV8"}' \
    --namespace 'rK3tE6n0' \
    > test.out 2>&1
eval_tap $? 58 'AdminCreateProfanityList' test.out

#- 59 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --body '{"isEnabled": true, "isMandatory": false, "newName": "ip1tw3L7"}' \
    --list 'cUd9pqtv' \
    --namespace '6JfPZwcC' \
    > test.out 2>&1
eval_tap $? 59 'AdminUpdateProfanityList' test.out

#- 60 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'VOXcVa80' \
    --namespace 'TmCwtD2l' \
    > test.out 2>&1
eval_tap $? 60 'AdminDeleteProfanityList' test.out

#- 61 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace 'AH01o6Nd' \
    > test.out 2>&1
eval_tap $? 61 'AdminGetProfanityRule' test.out

#- 62 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --body '{"rule": "cBIgzrDy"}' \
    --namespace 'WpFBYGmm' \
    > test.out 2>&1
eval_tap $? 62 'AdminSetProfanityRuleForNamespace' test.out

#- 63 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --body '{"message": "BawMyoKy", "profanityLevel": "NpdAasm8"}' \
    --namespace 'xwUfzOlQ' \
    > test.out 2>&1
eval_tap $? 63 'AdminVerifyMessageProfanityResponse' test.out

#- 64 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace 'iZY4NbOQ' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetThirdPartyConfig' test.out

#- 65 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --body '{"apiKey": "XJ7uOTzN"}' \
    --namespace 'Mvuq2tNl' \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateThirdPartyConfig' test.out

#- 66 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --body '{"apiKey": "4CX4IjiK"}' \
    --namespace '4DEUJRVK' \
    > test.out 2>&1
eval_tap $? 66 'AdminCreateThirdPartyConfig' test.out

#- 67 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace '3l9Eb0R1' \
    > test.out 2>&1
eval_tap $? 67 'AdminDeleteThirdPartyConfig' test.out

#- 68 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 68 'PublicGetMessages' test.out

#- 69 GetPersonalChatHistoryV1Public
samples/cli/sample-apps Lobby getPersonalChatHistoryV1Public \
    --friendId 'XRb0RH8v' \
    --namespace 'S1smeOln' \
    > test.out 2>&1
eval_tap $? 69 'GetPersonalChatHistoryV1Public' test.out

#- 70 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace 'grdTXCza' \
    --partyId 'PBtkZMio' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetPartyDataV1' test.out

#- 71 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --body '{"custom_attribute": {"4wcyhloV": {}}, "updatedAt": 88}' \
    --namespace '3rYp8Qtc' \
    --partyId 'EmCEVc75' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdatePartyAttributesV1' test.out

#- 72 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace 'UfeypWjD' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetPlayerBlockedPlayersV1' test.out

#- 73 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace 'NhzCL5sW' \
    > test.out 2>&1
eval_tap $? 73 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 74 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace 'S2qwO763' \
    --countOnly 'False' \
    --userIds 'EklkzLm8' \
    > test.out 2>&1
eval_tap $? 74 'UsersPresenceHandlerV1' test.out

#- 75 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --body '{"message": "8LpLuYRO", "topic": "3C55yHpw"}' \
    --namespace 'K2JaqenD' \
    > test.out 2>&1
eval_tap $? 75 'FreeFormNotification' test.out

#- 76 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --body '{"templateContext": {"Gn7a2NUp": "lWiLjq06"}, "templateLanguage": "n6a0rW8E", "templateSlug": "fkpaXtwY", "topic": "ZJaQ4Wbw"}' \
    --namespace 'NmsFYetj' \
    > test.out 2>&1
eval_tap $? 76 'NotificationWithTemplate' test.out

#- 77 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace 'EurH8elo' \
    > test.out 2>&1
eval_tap $? 77 'GetGameTemplate' test.out

#- 78 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --body '{"templateContent": "JzNKtRUa", "templateLanguage": "Tz1ETdsm", "templateSlug": "wzjkkn9o"}' \
    --namespace 'iQl05g7c' \
    > test.out 2>&1
eval_tap $? 78 'CreateTemplate' test.out

#- 79 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace 'O3ZMb6Oj' \
    --templateSlug 'lo6DMNpP' \
    --after '2qMrTQ1U' \
    --before 'pjfU6wJh' \
    --limit '49' \
    > test.out 2>&1
eval_tap $? 79 'GetSlugTemplate' test.out

#- 80 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace '1jOVkkUl' \
    --templateSlug 'S79527EZ' \
    > test.out 2>&1
eval_tap $? 80 'DeleteTemplateSlug' test.out

#- 81 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace '25Ia8uCe' \
    --templateLanguage 'ZFlLtEVp' \
    --templateSlug 'DAEbA82j' \
    > test.out 2>&1
eval_tap $? 81 'GetLocalizationTemplate' test.out

#- 82 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --body '{"templateContent": "y74lq0pD"}' \
    --namespace 'E5xRwh5b' \
    --templateLanguage '45ebpcM7' \
    --templateSlug 'ScSs3UOp' \
    > test.out 2>&1
eval_tap $? 82 'UpdateLocalizationTemplate' test.out

#- 83 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace 'AwIp9rRt' \
    --templateLanguage 'n1PcCxdb' \
    --templateSlug 'umeYgOdE' \
    > test.out 2>&1
eval_tap $? 83 'DeleteTemplateLocalization' test.out

#- 84 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace 'BWRQiW3K' \
    --templateLanguage 'FfU8icH4' \
    --templateSlug '081gRB1G' \
    > test.out 2>&1
eval_tap $? 84 'PublishTemplate' test.out

#- 85 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace 'yLfLg4RY' \
    --after 'uEbgUDEc' \
    --before 'JyIvsPwO' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 85 'GetTopicByNamespace' test.out

#- 86 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --body '{"description": "0BmV5iFv", "topic": "fwFjTSmI"}' \
    --namespace 'EqoLyLeU' \
    > test.out 2>&1
eval_tap $? 86 'CreateTopic' test.out

#- 87 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace 'GmomGX9s' \
    --topic 'XTZ0v8pq' \
    > test.out 2>&1
eval_tap $? 87 'GetTopicByTopicName' test.out

#- 88 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --body '{"description": "Lfc5SwGn"}' \
    --namespace 'ReUULDX4' \
    --topic 'QUIbb5nh' \
    > test.out 2>&1
eval_tap $? 88 'UpdateTopicByTopicName' test.out

#- 89 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace '68ZnyUtR' \
    --topic 'vW9hNBSF' \
    > test.out 2>&1
eval_tap $? 89 'DeleteTopicByTopicName' test.out

#- 90 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --body '{"message": "TtFrOmjk", "topic": "FrFVA8t0"}' \
    --namespace 'xF34Xpt6' \
    --userId 'ZlTTic0k' \
    > test.out 2>&1
eval_tap $? 90 'FreeFormNotificationByUserID' test.out

#- 91 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --body '{"templateContext": {"r2a0nI2o": "o7UHCJK5"}, "templateLanguage": "sp0aCvIq", "templateSlug": "3aHVYIle", "topic": "wLRuHY83"}' \
    --namespace 'bGj0HTee' \
    --userId 'WXlIcRid' \
    > test.out 2>&1
eval_tap $? 91 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE