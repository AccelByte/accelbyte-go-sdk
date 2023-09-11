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
echo "1..96"

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
    --limit '18' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "PQUCSO0ZghfRaZqS", "friendPublicId": "lSJ7JsssGdhDSrPN"}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "r3Guuez4GeN39biW"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "ZzzWOCwEO1zykx1N"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "cmYrHv1vTGmYPjFn"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'vhIUxL8Bbukotdmd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "CNNO7bFRcCnlrZ6d"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'tTzd60y2G063g2n9' \
    --body '{"friendIds": ["SjBKpZxhD2XSJxhQ", "xUNXZl4fKr3c06bC", "OJLgfpx1G4EvArse"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace $AB_NAMESPACE \
    --userId '5CQtRBHilBQ6bMQm' \
    --body '{"friendIds": ["XKKezSbcFb2zNjVs", "vrUjsKZEgZnuLIQr", "o9aM3JhFSCfmcJoi"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 AdminGetAllConfigV1
samples/cli/sample-apps Lobby adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 16 'AdminGetAllConfigV1' test.out

#- 17 AdminGetConfigV1
samples/cli/sample-apps Lobby adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetConfigV1' test.out

#- 18 AdminUpdateConfigV1
samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 40, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 100, "chatRateLimitDuration": 2, "concurrentUsersLimit": 9, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "K1P8MWZ14KGRXzpP", "generalRateLimitBurst": 97, "generalRateLimitDuration": 56, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 1, "maxFriendsLimit": 6, "maxPartyMember": 56, "profanityFilter": true, "readyConsentTimeout": 57, "unregisterDelay": 91}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateConfigV1' test.out

#- 19 AdminExportConfigV1
samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'AdminExportConfigV1' test.out

#- 20 AdminImportConfigV1
samples/cli/sample-apps Lobby adminImportConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 20 'AdminImportConfigV1' test.out

#- 21 GetListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace $AB_NAMESPACE \
    --userId 'dBrSqMq8Bs4Y7c1s' \
    --friendId 'QZ2buA01dAL1760S' \
    --limit '18' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 21 'GetListOfFriends' test.out

#- 22 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'nOyJBdAxWqmSprMU' \
    --friendId 'jSlFAKHucuJjeNer' \
    --limit '79' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 22 'GetIncomingFriendRequests' test.out

#- 23 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'MPUyvD442NQwGfuu' \
    --limit '52' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 23 'GetOutgoingFriendRequests' test.out

#- 24 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "K0uGR43mR5FvfPrS", "topicName": "p7bzzkrE1njBmxe1", "userIds": ["pKuikgqqXqEMr6Tw", "keqglHe42oKArn70", "iirLrZj7QpJeCib0"]}' \
    > test.out 2>&1
eval_tap $? 24 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 25 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "NDYb7ubQd0XimzAm", "topicName": "v7Oq0eb6JxLUvWEs"}' \
    > test.out 2>&1
eval_tap $? 25 'SendUsersFreeformNotificationV1Admin' test.out

#- 26 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'BY1xhvHpDhh3ANHQ' \
    --body '{"message": "rzEwiAFyCtwr6gVq", "topicName": "n1vsVvHs1vBXMyDr"}' \
    > test.out 2>&1
eval_tap $? 26 'SendPartyFreeformNotificationV1Admin' test.out

#- 27 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'wp1oWtlx37rN2q7u' \
    --body '{"templateContext": {"6btr3z3yX9k0N26q": "T7AnOXyjJFhiEAO8", "4e4bHnm5HDh5hwUC": "d0Exra3mohASGWBE", "bhLuMEozy9dEgR5f": "aWwB8jRmoX6gyOBR"}, "templateLanguage": "tAGHT3U0V0F5GRQq", "templateSlug": "nS5oNc5UIfGDOnMG", "topicName": "OS5TG4INR2iKjUCq"}' \
    > test.out 2>&1
eval_tap $? 27 'SendPartyTemplatedNotificationV1Admin' test.out

#- 28 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllNotificationTemplatesV1Admin' test.out

#- 29 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "lxlkyFuwCGC2tzK5", "templateLanguage": "zijYtWUYM6otblcz", "templateSlug": "qCHf5spXrXxwq8YX"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateNotificationTemplateV1Admin' test.out

#- 30 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"rnTxE3bvuJqVi4bu": "RwExiu0F450bjCO3", "PteAYgvHMLnf4L0d": "aq6ieGF0uDwPXbV8", "5X7b4YEooLrFQGzA": "xC5lZzel0b3IqOVO"}, "templateLanguage": "EyYkCWGmRILGpoDu", "templateSlug": "qRBe2ND0ybWYRXBv", "topicName": "2a3YPStJjHaC0CMc"}' \
    > test.out 2>&1
eval_tap $? 30 'SendUsersTemplatedNotificationV1Admin' test.out

#- 31 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'QpBI5OJrJBoYGXkC' \
    --after 'qUhU3YTrlccxXmZT' \
    --before 'FJp843jPnFRSXPv8' \
    --limit '91' \
    > test.out 2>&1
eval_tap $? 31 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 32 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'qKGc3z1sgiULTBzF' \
    > test.out 2>&1
eval_tap $? 32 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 33 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'R1CULV2pttDw5A6B' \
    --templateSlug 'Qs4V7sJInobIq2t1' \
    > test.out 2>&1
eval_tap $? 33 'GetSingleTemplateLocalizationV1Admin' test.out

#- 34 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'jRUibYxMbw2pbSYR' \
    --templateSlug 'kgAolwxZYyFE0ssa' \
    --body '{"templateContent": "PMAZBeUy89cBLZR3"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateTemplateLocalizationV1Admin' test.out

#- 35 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'jw00N3z77AFTVFMw' \
    --templateSlug 'H85JUre9Iike0Qqt' \
    > test.out 2>&1
eval_tap $? 35 'DeleteTemplateLocalizationV1Admin' test.out

#- 36 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'vrDxAO6MWKpwIhtG' \
    --templateSlug 'DseF5IBeJSUzmb6G' \
    > test.out 2>&1
eval_tap $? 36 'PublishTemplateLocalizationV1Admin' test.out

#- 37 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after 'rHqptEPuVTd4fmrC' \
    --before 'qmqzo1dJZj4kMOC5' \
    --limit '51' \
    > test.out 2>&1
eval_tap $? 37 'GetAllNotificationTopicsV1Admin' test.out

#- 38 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "tQAHchEg5scoSGBl", "topicName": "y6lnCujK8W33LFWY"}' \
    > test.out 2>&1
eval_tap $? 38 'CreateNotificationTopicV1Admin' test.out

#- 39 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'RDCduWGKCB2heGfb' \
    > test.out 2>&1
eval_tap $? 39 'GetNotificationTopicV1Admin' test.out

#- 40 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName '3p4YDEWKwd0nQ5qG' \
    --body '{"description": "a2qby7bDiILbHpRs"}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateNotificationTopicV1Admin' test.out

#- 41 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName '8H3Gi0xAd48qxlMt' \
    > test.out 2>&1
eval_tap $? 41 'DeleteNotificationTopicV1Admin' test.out

#- 42 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'Ob8svrNZRXFHFHlL' \
    --body '{"message": "aWXFNGbnWgu0VGe6", "topicName": "IbAAk1jPlypnl23d"}' \
    > test.out 2>&1
eval_tap $? 42 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 43 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'kK1O3Gv0bJkKI0zV' \
    --body '{"templateContext": {"q4qz5zKxn0zImuOA": "tRTs7OVUuONWyoIH", "Psr9EJw3D5qUSCzE": "F8Ms30qEtFMdGqrB", "Vr074EpFUvDLsaa6": "HdXucDIxjgCvGhpo"}, "templateLanguage": "duPUHIy7fkSwhFrf", "templateSlug": "hVg9o3Da9VXI5SoH", "topicName": "Vfeny5aLvE7EAmDF"}' \
    > test.out 2>&1
eval_tap $? 43 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 44 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'bSDzSoyglDc7ckYE' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPartyDataV1' test.out

#- 45 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId '4Dm6SWKpxw4nf8ep' \
    --body '{"custom_attribute": {"woqksU2ttEwyfdKk": {}, "sDvNthO3fIV6Oplx": {}, "fCEoyT28Ggn9w9Lj": {}}, "updatedAt": 78}' \
    > test.out 2>&1
eval_tap $? 45 'AdminUpdatePartyAttributesV1' test.out

#- 46 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'LzjkBhGc1AHJO7Qr' \
    --userId 'bOcpBnAYpHtgaKAL' \
    > test.out 2>&1
eval_tap $? 46 'AdminJoinPartyV1' test.out

#- 47 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ozXX10NKhCnc6SIy' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetUserPartyV1' test.out

#- 48 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'AdminGetLobbyCCU' test.out

#- 49 AdminGetBulkPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetBulkPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"listBlockedUserId": ["doRcoeIlkAwhi7t6", "8wnjJPOoOl9KCqfz", "vBiEQbnlAjx4dPsw"]}' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 50 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'WvgsjJoNvbGoomGm' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllPlayerSessionAttribute' test.out

#- 51 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId '5uQZHKgZ7MahsQc3' \
    --body '{"attributes": {"EyPZtQlYEtzSrfnm": "ET5GiDSLeuMEwmcB", "Hc5VDmdPTnnain0E": "yilHFZhNhmOUggh7", "0FoJKkjTR9vZ7IXG": "6A9PJ2Yocn5K5xkw"}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSetPlayerSessionAttribute' test.out

#- 52 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'se6ehuZdnNzvCend' \
    --namespace $AB_NAMESPACE \
    --userId 'Hvwf5mYzuSRHZKLs' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPlayerSessionAttribute' test.out

#- 53 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qF3vmGNJDQFhG9nS' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetPlayerBlockedPlayersV1' test.out

#- 54 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'bi8jIjbyU718dom6' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 55 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xh5fuopD4kAHmF8z' \
    --body '{"listBlockedUserId": ["YJK0cuSDCkoWTkz1", "RjvToj7YYLubL28Y", "H9thMbRNG4EmXzLa"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminBulkBlockPlayersV1' test.out

#- 56 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "2PrzKUflSzGjQ5DK"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminDebugProfanityFilters' test.out

#- 57 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list 'j8V2kBOguKsZE1iu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'AdminGetProfanityListFiltersV1' test.out

#- 58 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list 'WpH0XiMku4iNHFmj' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "TnefbYbH5zm2huP4", "note": "GdlF2JNDZbz3ukkC"}' \
    > test.out 2>&1
eval_tap $? 58 'AdminAddProfanityFilterIntoList' test.out

#- 59 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list '09pmF5LdNXFSvDaE' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "gcCJAZwrqsaFfC7W", "note": "zt1efLTJMTA3hkIs"}, {"filter": "Q3QEhVj8DDUzewbw", "note": "i1gqn7LHMu7Ou5SI"}, {"filter": "whZQEc1mki6QgzOo", "note": "TMr0MS7hIYATOyQF"}]}' \
    > test.out 2>&1
eval_tap $? 59 'AdminAddProfanityFilters' test.out

#- 60 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list 'enGNyKGkTW2oMrC3' \
    --namespace $AB_NAMESPACE \
    --body '[15, 64, 98]' \
    > test.out 2>&1
eval_tap $? 60 'AdminImportProfanityFiltersFromFile' test.out

#- 61 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list 'i7DrtnlGM1mKmbSe' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "OlSeuRe623YMuj7H"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminDeleteProfanityFilter' test.out

#- 62 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'AdminGetProfanityLists' test.out

#- 63 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": true, "name": "pE2HyRbPXFPCVsu4"}' \
    > test.out 2>&1
eval_tap $? 63 'AdminCreateProfanityList' test.out

#- 64 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'QTDeEt7varNbkhsq' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": false, "isMandatory": true, "newName": "0tk2yBXhmy2YydPi"}' \
    > test.out 2>&1
eval_tap $? 64 'AdminUpdateProfanityList' test.out

#- 65 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'qzQcce1O1DDzkJd2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AdminDeleteProfanityList' test.out

#- 66 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'AdminGetProfanityRule' test.out

#- 67 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"rule": "CTtmhKFgzpQcOY7w"}' \
    > test.out 2>&1
eval_tap $? 67 'AdminSetProfanityRuleForNamespace' test.out

#- 68 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "NiJ6ACsQNvCTwNzm", "profanityLevel": "92KcM6q52wAk1mLl"}' \
    > test.out 2>&1
eval_tap $? 68 'AdminVerifyMessageProfanityResponse' test.out

#- 69 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'AdminGetThirdPartyConfig' test.out

#- 70 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "NkLCxjx71FAfW6wo"}' \
    > test.out 2>&1
eval_tap $? 70 'AdminUpdateThirdPartyConfig' test.out

#- 71 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "LuSyVx6bwcWO1sog"}' \
    > test.out 2>&1
eval_tap $? 71 'AdminCreateThirdPartyConfig' test.out

#- 72 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'AdminDeleteThirdPartyConfig' test.out

#- 73 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 73 'PublicGetMessages' test.out

#- 74 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'F2BmmtSIWMffAVRC' \
    > test.out 2>&1
eval_tap $? 74 'PublicGetPartyDataV1' test.out

#- 75 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId '2n0pgyDbxlyurwOX' \
    --body '{"custom_attribute": {"9M9WHEa0yiUXnWwa": {}, "WHBUj672Z9VAgR2w": {}, "GXf9AjPFiYS3vdET": {}}, "updatedAt": 90}' \
    > test.out 2>&1
eval_tap $? 75 'PublicUpdatePartyAttributesV1' test.out

#- 76 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'SjzIybcryaRNk9UU' \
    --body '{"limit": 100}' \
    > test.out 2>&1
eval_tap $? 76 'PublicSetPartyLimitV1' test.out

#- 77 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'PublicGetPlayerBlockedPlayersV1' test.out

#- 78 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 79 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'true' \
    --userIds 'oxdvUJp51ubC0Bd3' \
    > test.out 2>&1
eval_tap $? 79 'UsersPresenceHandlerV1' test.out

#- 80 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "5dXxGd6ki9Ta1s4j", "topic": "AL3ylLg8gCBaZl5T"}' \
    > test.out 2>&1
eval_tap $? 80 'FreeFormNotification' test.out

#- 81 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"rPV5EjSQFlmxdGyb": "rGNHOeQIUnN5qDod", "vvdnj5FMsvBnLO1w": "4oaa6jpowpRCklRG", "6FHl6hvZx22hEjtn": "aqxAghWhR0ffA3ex"}, "templateLanguage": "LFgn0yOcx9Aq9IX3", "templateSlug": "qAe1h6BUCdfSzON5", "topic": "bKvcwpogVu3PG0HL"}' \
    > test.out 2>&1
eval_tap $? 81 'NotificationWithTemplate' test.out

#- 82 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'GetGameTemplate' test.out

#- 83 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "bmNQP3SQ7m9vI3K0", "templateLanguage": "k0YgT8wzp2MA8hyA", "templateSlug": "oKaLoizgVFY7ZXd9"}' \
    > test.out 2>&1
eval_tap $? 83 'CreateTemplate' test.out

#- 84 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug '4HzJPesHN7chzcSc' \
    --after 'Bj36KlWxM3ptSUnh' \
    --before 'fuC2yXeJ5rTGq1JO' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 84 'GetSlugTemplate' test.out

#- 85 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'dnVDpXt3n85fFNoi' \
    > test.out 2>&1
eval_tap $? 85 'DeleteTemplateSlug' test.out

#- 86 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'AAQ1ahpbPE9CndPh' \
    --templateSlug '7FCeFT02VGV5AK2F' \
    > test.out 2>&1
eval_tap $? 86 'GetLocalizationTemplate' test.out

#- 87 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'NlfubOfZXod8ueyd' \
    --templateSlug 'yQdy0TDbzblnYpGT' \
    --body '{"templateContent": "UUYGMvqX2DUoI3TO"}' \
    > test.out 2>&1
eval_tap $? 87 'UpdateLocalizationTemplate' test.out

#- 88 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage '3Jmz7AteesQxiAf8' \
    --templateSlug '123xjlEjbIjU5R07' \
    > test.out 2>&1
eval_tap $? 88 'DeleteTemplateLocalization' test.out

#- 89 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'LmNprLmj6FwkPCd3' \
    --templateSlug 'TNmth9OXTS8hO3cf' \
    > test.out 2>&1
eval_tap $? 89 'PublishTemplate' test.out

#- 90 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'L2ZkYI6DFto6FHwS' \
    --before 'ZVSgV5ygM2tTPWOO' \
    --limit '61' \
    > test.out 2>&1
eval_tap $? 90 'GetTopicByNamespace' test.out

#- 91 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "hc2vxEcVfZeoIOMk", "topic": "AlyHHF2ix7P1ESUg"}' \
    > test.out 2>&1
eval_tap $? 91 'CreateTopic' test.out

#- 92 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'JVFCQIuNzc3l4kB9' \
    > test.out 2>&1
eval_tap $? 92 'GetTopicByTopicName' test.out

#- 93 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'ESFkIVjBKvUw9KFL' \
    --body '{"description": "5b50z8KNyqj6MX0S"}' \
    > test.out 2>&1
eval_tap $? 93 'UpdateTopicByTopicName' test.out

#- 94 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'rdg0W1NJ9mqqmRPU' \
    > test.out 2>&1
eval_tap $? 94 'DeleteTopicByTopicName' test.out

#- 95 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'uh3yaIfP0imhwKzN' \
    --body '{"message": "4BkNDqYmuXZPhH75", "topic": "hOfmEj9BNybo7nxY"}' \
    > test.out 2>&1
eval_tap $? 95 'FreeFormNotificationByUserID' test.out

#- 96 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'pt07FFnvvPzrbMsz' \
    --body '{"templateContext": {"5362qqcozdEQgwOI": "Xq8ppeKD8gbA3G3A", "4sMukMctjLJj7rIF": "hi8TsZbRgDEl5W7K", "ljEMJW1SvzS48y8R": "9KlVHDPMpjzgkdOx"}, "templateLanguage": "m8nIFgCdFunRYxm1", "templateSlug": "rj7hTwXcIrDqzh2h", "topic": "C10ww6fJGWT8gAn5"}' \
    > test.out 2>&1
eval_tap $? 96 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE