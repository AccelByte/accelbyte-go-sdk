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
echo "1..95"

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
    --limit '97' \
    --offset '62' \
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

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "GZW0PNz5XlT7ISu9", "friendPublicId": "yyOxpahJXpPeuwTS"}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "S2ecif1nYtqvQIPu"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "E7K3HNdnH0GKA7St"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "99Svr6KlWB1aNNRN"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'v4fHXECAbViHlUdy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "f9GKCsr5B9k1QTkE"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'Da0Rni1XFXNUMjtO' \
    --body '{"friendIds": ["gZe8rBJM5uHxP9Wd", "wZzxP1Ss192xevjt", "R9ZLTKq3GBc67gaq"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 AdminGetAllConfigV1
samples/cli/sample-apps Lobby adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigV1' test.out

#- 16 AdminGetConfigV1
samples/cli/sample-apps Lobby adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigV1' test.out

#- 17 AdminUpdateConfigV1
samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 91, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 47, "chatRateLimitDuration": 37, "concurrentUsersLimit": 38, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "rXgkHNF1xcHmac2q", "generalRateLimitBurst": 7, "generalRateLimitDuration": 79, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 28, "maxPartyMember": 25, "profanityFilter": false, "readyConsentTimeout": 20, "unregisterDelay": 84}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigV1' test.out

#- 18 AdminExportConfigV1
samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminExportConfigV1' test.out

#- 19 AdminImportConfigV1
samples/cli/sample-apps Lobby adminImportConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 19 'AdminImportConfigV1' test.out

#- 20 GetListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace $AB_NAMESPACE \
    --userId '7grZiTLU8hM50TBi' \
    --limit '12' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 20 'GetListOfFriends' test.out

#- 21 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'qy1r4hYu9HTSlvJH' \
    --limit '6' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 21 'GetIncomingFriendRequests' test.out

#- 22 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'TefRjChfjnifyzEF' \
    --limit '47' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 22 'GetOutgoingFriendRequests' test.out

#- 23 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "IJMkFTCVa0t4WiZA", "topicName": "IJOdyfkTW6KEyTvc", "userIds": ["HwH15kMUtO5fzqIW", "La73k6FNsd61hVZf", "xVKYOSN4fOebIHea"]}' \
    > test.out 2>&1
eval_tap $? 23 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 24 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "IABkiykzNP6j6fHJ", "topicName": "iD9GqJdIRuGd3fRr"}' \
    > test.out 2>&1
eval_tap $? 24 'SendUsersFreeformNotificationV1Admin' test.out

#- 25 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId '4l7oSZG0pHk3UgAF' \
    --body '{"message": "lWqWbAlvdPVPtkqw", "topicName": "E5qIAHBEIHD1RN67"}' \
    > test.out 2>&1
eval_tap $? 25 'SendPartyFreeformNotificationV1Admin' test.out

#- 26 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'QyigUmWVKXWfP645' \
    --body '{"templateContext": {"YOev31tYH2WOc4ZV": "I2ikW1t0INFEUxYs", "GK6LnOGPNVEyDVyv": "TOOmbPtAXYbkvxsO", "bltmNOSux84GAAze": "xkemzpu2cRHn1mb6"}, "templateLanguage": "wZlqZ2W8kSFkQPvF", "templateSlug": "neVdgemYPbofZ32O", "topicName": "OFZhLpyjFlMNl33f"}' \
    > test.out 2>&1
eval_tap $? 26 'SendPartyTemplatedNotificationV1Admin' test.out

#- 27 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllNotificationTemplatesV1Admin' test.out

#- 28 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "1XuXoiaQljOAa3Eq", "templateLanguage": "Z1pyVXMr6l7NCh7s", "templateSlug": "V9O12dhnW9QGbJeE"}' \
    > test.out 2>&1
eval_tap $? 28 'CreateNotificationTemplateV1Admin' test.out

#- 29 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"Gvl9FPwDwOngmASU": "dK35lGGm79chH4Sn", "uqyIQqITvmHsu2iv": "Z8pZDwA4rAl0bA7H", "ZGxixQnesC0Xt1cB": "OwJRHSFqTgHkmpxj"}, "templateLanguage": "Ppv1S9NaBQSTDARv", "templateSlug": "Gv4PLr0G1HW5q7hb", "topicName": "fRrN6TqTsGnLhGx3"}' \
    > test.out 2>&1
eval_tap $? 29 'SendUsersTemplatedNotificationV1Admin' test.out

#- 30 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'bnXZIIcjy0Ai84Bi' \
    --after 'wTPDaHdqpDasgic5' \
    --before 'quA1uw6xLS5X2rCW' \
    --limit '42' \
    > test.out 2>&1
eval_tap $? 30 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 31 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'JmtpGlGrfaeTlrT5' \
    > test.out 2>&1
eval_tap $? 31 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 32 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage '12HmeAZbOCpZSIoU' \
    --templateSlug '8AxZP0tDNuad6aWX' \
    > test.out 2>&1
eval_tap $? 32 'GetSingleTemplateLocalizationV1Admin' test.out

#- 33 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'kQxrTzjoWLf7Ca6J' \
    --templateSlug 'vsAvMdtjsHxCNYLt' \
    --body '{"templateContent": "hdQgNiZCku5JsErq"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTemplateLocalizationV1Admin' test.out

#- 34 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'vv6JUhmY7n5MV5TZ' \
    --templateSlug '8cPtWva35P2qGBDm' \
    > test.out 2>&1
eval_tap $? 34 'DeleteTemplateLocalizationV1Admin' test.out

#- 35 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'DvNZPFkxhx4sLPGt' \
    --templateSlug '8LjgexG2qcPlV8pH' \
    > test.out 2>&1
eval_tap $? 35 'PublishTemplateLocalizationV1Admin' test.out

#- 36 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after 'u2Uenlqhb0zI1Ysb' \
    --before '5iAGN66VFS3AKfCO' \
    --limit '8' \
    > test.out 2>&1
eval_tap $? 36 'GetAllNotificationTopicsV1Admin' test.out

#- 37 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "puOIGceSBNYUb8Uz", "topicName": "JalwAWzJISIoD9g9"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateNotificationTopicV1Admin' test.out

#- 38 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'DSLcbMcdVPcCCu15' \
    > test.out 2>&1
eval_tap $? 38 'GetNotificationTopicV1Admin' test.out

#- 39 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'w5z24R8ASpTYWuvv' \
    --body '{"description": "AnrXctefydkVGZhH"}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateNotificationTopicV1Admin' test.out

#- 40 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'Yk0rWRX0uZoJgPvr' \
    > test.out 2>&1
eval_tap $? 40 'DeleteNotificationTopicV1Admin' test.out

#- 41 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'lkpWMJgBEWJjEpDT' \
    --body '{"message": "H6SKM9dQSaVJ73HX", "topicName": "jKTtar0lcpzVvEiU"}' \
    > test.out 2>&1
eval_tap $? 41 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 42 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'PmibnCxBdcG3sBXY' \
    --body '{"templateContext": {"014TVa1Tw9vfKvjm": "ddg1mhVzorRuS20u", "ukVZh10i1t9HdKq4": "vmpOqEDvjxVPWVX1", "yJznuVx37pUx6eV0": "6RZR5yVmHoLt6oD0"}, "templateLanguage": "d6muArlzP8nBd0aE", "templateSlug": "41hdB2AO7HwG18XS", "topicName": "qajWefoH9pdiYuhH"}' \
    > test.out 2>&1
eval_tap $? 42 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 43 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'coyzo1fwV0GPQiEo' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetPartyDataV1' test.out

#- 44 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 's7Ew7UnTIGOQtAsR' \
    --body '{"custom_attribute": {"HExctbcy3QdvUl06": {}, "MpR8lF1Qaqio0FfU": {}, "oF1xWXRYonBivUKE": {}}, "updatedAt": 26}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUpdatePartyAttributesV1' test.out

#- 45 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId '4Az7ZlKt7kjzz2lX' \
    --userId 'cU7WnN5v8F0otXzM' \
    > test.out 2>&1
eval_tap $? 45 'AdminJoinPartyV1' test.out

#- 46 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId 'w7JNsi33WuArssjB' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetUserPartyV1' test.out

#- 47 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'AdminGetLobbyCCU' test.out

#- 48 AdminGetBulkPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetBulkPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"listBlockedUserId": ["II2jKEb9v2ceu1lq", "5d9FqsgxrnRN32CO", "364TMnFnVCuu1JXl"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 49 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'es6w9UxylFWKvCQD' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetAllPlayerSessionAttribute' test.out

#- 50 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'GJGe4QajwGcUkSjU' \
    --body '{"attributes": {"ZjHlcTaXr8uZJSRd": "zRHpwAqel3euvZxL", "TUnDcbku7fxvpGFv": "DCDB4yXLsHCAkLRx", "rJsKsfNk279oAJxd": "beAxdynkhwmpy3b0"}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminSetPlayerSessionAttribute' test.out

#- 51 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'LPEOwv97nffsdefX' \
    --namespace $AB_NAMESPACE \
    --userId 'l542HgPNzzwFGLQz' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetPlayerSessionAttribute' test.out

#- 52 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pVqQqroLZM09ySST' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPlayerBlockedPlayersV1' test.out

#- 53 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId '3oXbva5MXgiJ5PeL' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 54 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'L1hqdiB6IInSTn0W' \
    --body '{"listBlockedUserId": ["KvJsUocmEK6t2jkw", "157knM0c7Z2tG3Gf", "5oOO5SbrPjl8LcUR"]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminBulkBlockPlayersV1' test.out

#- 55 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "k4ugHAE4zFhd13xb"}' \
    > test.out 2>&1
eval_tap $? 55 'AdminDebugProfanityFilters' test.out

#- 56 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list '0C6CTQHm3mluaAax' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'AdminGetProfanityListFiltersV1' test.out

#- 57 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list 'xi8cvqEfcu1khnd0' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "hk2eRQ0ohGn8mxmK", "note": "ZnxvzwhsXQvWH1El"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminAddProfanityFilterIntoList' test.out

#- 58 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list 'wMRPWZPCRBh1U2BA' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "aFaLgQlxsavrsjNs", "note": "1ZYx1eLrPaMrgV5M"}, {"filter": "HuxJNl5P0nCsR5Ar", "note": "Wpc6nnD9uBfwaJWK"}, {"filter": "lOHQUgCX8UIi5JbF", "note": "lQuD4LwNw9tGPrTM"}]}' \
    > test.out 2>&1
eval_tap $? 58 'AdminAddProfanityFilters' test.out

#- 59 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list '2o8AJRmCaRDQgxg1' \
    --namespace $AB_NAMESPACE \
    --body '[21, 77, 80]' \
    > test.out 2>&1
eval_tap $? 59 'AdminImportProfanityFiltersFromFile' test.out

#- 60 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list '9LZ4DRPMQKtkuZo8' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "JNGbneTv5P22uDX4"}' \
    > test.out 2>&1
eval_tap $? 60 'AdminDeleteProfanityFilter' test.out

#- 61 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'AdminGetProfanityLists' test.out

#- 62 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": false, "isMandatory": false, "name": "K9Tj6D8SXCj1u7yj"}' \
    > test.out 2>&1
eval_tap $? 62 'AdminCreateProfanityList' test.out

#- 63 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'C07z24rPFDBkIQwe' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": false, "isMandatory": false, "newName": "8NS9RKHRR4lkxgdh"}' \
    > test.out 2>&1
eval_tap $? 63 'AdminUpdateProfanityList' test.out

#- 64 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'TB8UxT6OMCSjTWHv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'AdminDeleteProfanityList' test.out

#- 65 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AdminGetProfanityRule' test.out

#- 66 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"rule": "vHlMkq6waG2aoc4A"}' \
    > test.out 2>&1
eval_tap $? 66 'AdminSetProfanityRuleForNamespace' test.out

#- 67 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "fGze0jN3POouYn7Y", "profanityLevel": "X3hAU7LZ4CRgOsML"}' \
    > test.out 2>&1
eval_tap $? 67 'AdminVerifyMessageProfanityResponse' test.out

#- 68 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'AdminGetThirdPartyConfig' test.out

#- 69 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "oG7bgf8f9MUsGH53"}' \
    > test.out 2>&1
eval_tap $? 69 'AdminUpdateThirdPartyConfig' test.out

#- 70 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "XFZkUxx2iP1ErAeD"}' \
    > test.out 2>&1
eval_tap $? 70 'AdminCreateThirdPartyConfig' test.out

#- 71 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'AdminDeleteThirdPartyConfig' test.out

#- 72 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 72 'PublicGetMessages' test.out

#- 73 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'f2AgdMV3PaQQc27Z' \
    > test.out 2>&1
eval_tap $? 73 'PublicGetPartyDataV1' test.out

#- 74 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'hjopHdCdAc8EUW2U' \
    --body '{"custom_attribute": {"x0rjxKTvPkKlKpgt": {}, "qBCDBoueqXsfJbqq": {}, "yJEhMw7rTxdGzkIN": {}}, "updatedAt": 19}' \
    > test.out 2>&1
eval_tap $? 74 'PublicUpdatePartyAttributesV1' test.out

#- 75 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'FnAnpT1zY0QqDym8' \
    --body '{"limit": 62}' \
    > test.out 2>&1
eval_tap $? 75 'PublicSetPartyLimitV1' test.out

#- 76 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'PublicGetPlayerBlockedPlayersV1' test.out

#- 77 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 78 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'false' \
    --userIds '0h2Pqf1MnASsG2JR' \
    > test.out 2>&1
eval_tap $? 78 'UsersPresenceHandlerV1' test.out

#- 79 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "NqYqEqbmRChlCpvD", "topic": "KWD9dHTPaL65Unln"}' \
    > test.out 2>&1
eval_tap $? 79 'FreeFormNotification' test.out

#- 80 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"41YT0X4YUdJE8jW0": "qlnBC8pTjMui34Cs", "F1p4NpYDIUGlqMUd": "E97pY0oeRHUafAHe", "9blt7IleGOIZ1RPH": "GAJHj8VPt0fKKHu5"}, "templateLanguage": "kJKIdVRE2GZcFmym", "templateSlug": "CSW1pNw2Tukv3oBV", "topic": "iuaTvu8VzeWGEBp6"}' \
    > test.out 2>&1
eval_tap $? 80 'NotificationWithTemplate' test.out

#- 81 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'GetGameTemplate' test.out

#- 82 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "XsXNDRW2E90SQe0Q", "templateLanguage": "qEMdj1oe1ECOaYBa", "templateSlug": "brDXVeeoSymgojT3"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateTemplate' test.out

#- 83 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'vKCBc0Md3NgGpwB7' \
    --after 'UdGx92lhcxzMuDBb' \
    --before 'Bx0R5dUfaXQpAL0l' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 83 'GetSlugTemplate' test.out

#- 84 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'jAxw1WBQdqnOzRZp' \
    > test.out 2>&1
eval_tap $? 84 'DeleteTemplateSlug' test.out

#- 85 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'A1KUlJ67fAmSCPN5' \
    --templateSlug 'Yn91knHCDr8DEwhz' \
    > test.out 2>&1
eval_tap $? 85 'GetLocalizationTemplate' test.out

#- 86 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'lUnF17RFQGxKP3jb' \
    --templateSlug 'Pcy9FCGsPn6kWtWz' \
    --body '{"templateContent": "vLlk1tx0Kdw8gGNq"}' \
    > test.out 2>&1
eval_tap $? 86 'UpdateLocalizationTemplate' test.out

#- 87 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'KTG8igEmTDeENwOt' \
    --templateSlug '9oicq0RydRzb1Jaj' \
    > test.out 2>&1
eval_tap $? 87 'DeleteTemplateLocalization' test.out

#- 88 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'i3FSL1hoGhMZeL7s' \
    --templateSlug '2MHOoKcLfAxQWhrc' \
    > test.out 2>&1
eval_tap $? 88 'PublishTemplate' test.out

#- 89 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'FWVyAHfaeGgWjjA8' \
    --before 'HCGrMJVnKPsYMLYK' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 89 'GetTopicByNamespace' test.out

#- 90 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "vrH5cKiklUMV11SL", "topic": "y5k1eJlglKInXsus"}' \
    > test.out 2>&1
eval_tap $? 90 'CreateTopic' test.out

#- 91 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 's9mj3qOuZnUkuNMr' \
    > test.out 2>&1
eval_tap $? 91 'GetTopicByTopicName' test.out

#- 92 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'z59JrzA30FuK2iMc' \
    --body '{"description": "C8qYdmNHt1dzNwA2"}' \
    > test.out 2>&1
eval_tap $? 92 'UpdateTopicByTopicName' test.out

#- 93 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'C2hOEGpMy7pOBGfF' \
    > test.out 2>&1
eval_tap $? 93 'DeleteTopicByTopicName' test.out

#- 94 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'pQNHiFqroThX3bQm' \
    --body '{"message": "WlcjBgsn7ejKxObX", "topic": "0tlmpyvQzmNWsFKV"}' \
    > test.out 2>&1
eval_tap $? 94 'FreeFormNotificationByUserID' test.out

#- 95 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId '613zuNhuLEnLabG7' \
    --body '{"templateContext": {"51u9WwBYpxCcQa9U": "U5aeMLDJPVgYmxbi", "t4W1u2nzXMI2L54e": "BludTnuZqzfxFL1a", "01BwWT9qmCPDoKR6": "6BfKjcjD4ecZ1s5F"}, "templateLanguage": "Evwh7J6nx0pyCgOx", "templateSlug": "mDUuS3eKaxbDkwWc", "topic": "Mphu62gRUuxROnE7"}' \
    > test.out 2>&1
eval_tap $? 95 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE