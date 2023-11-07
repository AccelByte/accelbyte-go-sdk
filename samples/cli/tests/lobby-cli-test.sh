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
    --limit '93' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "puRyp5tebs6X7PMP", "friendPublicId": "dP1b7FhcMV8XIKqP"}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "61lg3PPyqr5UmKcJ"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "lOxCfHZAGXodoXmq"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "ZCDlaslQRAmsxcXI"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'T4gXHwzywc1R3QjL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "cuLhWLF8wb7YnkIJ"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'C7bPZ1JimWKkV9cY' \
    --body '{"friendIds": ["awG2sdeiQ90KSRJi", "7e4Da2S7Hvy58njs", "QIzdRkdXSj4WjDiB"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace $AB_NAMESPACE \
    --userId 'X0gkvIyXMgy6l0tj' \
    --body '{"friendIds": ["ZgNlD2X3kKqbe4sz", "QQIQeUWY5G6mVsSB", "FxjkydtdKsirCP3s"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
samples/cli/sample-apps Lobby syncNativeFriends \
    --namespace $AB_NAMESPACE \
    --body '[{"isLogin": true, "platformId": "J6tAgWHJduCB2P9V", "platformToken": "M7mpEuwSdA5UDQkn", "psnEnv": "nh6thCJcLZjXrgLT"}, {"isLogin": false, "platformId": "L0uLRfj5kk8RO9EM", "platformToken": "9elGvslC91p7qRUb", "psnEnv": "SgTj91JHwBN1dx9H"}, {"isLogin": true, "platformId": "IiKo2rBiCSosAusL", "platformToken": "fI6lLR5BRzhcDqJV", "psnEnv": "JejcyMoOA2e5krM2"}]' \
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
    --body '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 39, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 24, "chatRateLimitDuration": 55, "concurrentUsersLimit": 79, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "mk36FOsKQIuhWrnb", "generalRateLimitBurst": 92, "generalRateLimitDuration": 60, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 34, "maxFriendsLimit": 41, "maxPartyMember": 6, "profanityFilter": true, "readyConsentTimeout": 91, "unregisterDelay": 31}' \
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
    --userId 'h9fEutBP3ZYMCMdO' \
    --friendId 'W7dtzfc0zNJ1RnV4' \
    --limit '92' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 22 'GetListOfFriends' test.out

#- 23 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'D9EWLvIzrinzBdaS' \
    --friendId 'K9FK4VKjQ6Ztf2Ez' \
    --limit '12' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 23 'GetIncomingFriendRequests' test.out

#- 24 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'nECsF9p04ViUfaF1' \
    --limit '12' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 24 'GetOutgoingFriendRequests' test.out

#- 25 AdminGetGlobalConfig
samples/cli/sample-apps Lobby adminGetGlobalConfig \
    > test.out 2>&1
eval_tap $? 25 'AdminGetGlobalConfig' test.out

#- 26 AdminUpdateGlobalConfig
samples/cli/sample-apps Lobby adminUpdateGlobalConfig \
    --body '{"regionRetryMapping": {"yRHOfErPALG9V6K4": ["5GSbnqhdxPQ59KMY", "mvKjS7S56nF8ayQH", "M11I5G5HXIlA1K0x"], "GPsdUjuqzpWuvXTh": ["Et2Bbt9iuIJVez3p", "CdX7Be01Dl9QgXul", "4HtxaWqi2YZFpVMb"], "raEnhdHsvAAKzrFN": ["vZmiK2VXsoKcLNUH", "73GySR3vZmKLWyNc", "Zh6GQ1gdLGN2TCYs"]}, "regionURLMapping": ["OiXhdZ77hwGVTu0G", "DhWp4mV3URJiDgWy", "uhk1xxzR23bcc9ns"], "testGameMode": "0PnuJrcJU0s0005D", "testRegionURLMapping": ["4vC8y2v3HMpKXXqm", "hxP4c9IyLyn5g4op", "qbD7KTQ0lkPyd8Ix"], "testTargetUserIDs": ["re3xYT71VElTBv0n", "19h7IfuSfTE8U1C7", "qb3zkEPsabqwfdO8"]}' \
    > test.out 2>&1
eval_tap $? 26 'AdminUpdateGlobalConfig' test.out

#- 27 AdminDeleteGlobalConfig
samples/cli/sample-apps Lobby adminDeleteGlobalConfig \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGlobalConfig' test.out

#- 28 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "52yy69yaClpChNWK", "topicName": "KGF3H2GbOjlgmbCN", "userIds": ["RgprBLQJXlM0SrVO", "8C8zqlgAMGOaPXSB", "s01kBY8NhRzs3tII"]}' \
    > test.out 2>&1
eval_tap $? 28 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 29 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "sIIBLrtgWtzI1n7O", "topicName": "pOF2z2hsThvFSRLK"}' \
    > test.out 2>&1
eval_tap $? 29 'SendUsersFreeformNotificationV1Admin' test.out

#- 30 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'mixWq0OOIMy1GSdA' \
    --body '{"message": "sEtYQhZeMqURIdg5", "topicName": "jVdE2xTw9iMQsH3R"}' \
    > test.out 2>&1
eval_tap $? 30 'SendPartyFreeformNotificationV1Admin' test.out

#- 31 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId '5OAzjWP3MMmnsagI' \
    --body '{"templateContext": {"isWJ8uAj1zAYKrMP": "A4VhyQfYi0C92knt", "rvoSaYocuGRJeNPA": "8fOPWqexncBUvWTj", "8drQ7cTpoe7GSZHd": "OHEOOCoeQ1EIMkUv"}, "templateLanguage": "f0oiwhewCccoAqMR", "templateSlug": "FKToBy6RIjBggMha", "topicName": "cDJBAvKnyG4WsQzt"}' \
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
    --body '{"templateContent": "Fj11OklwgYB4AcGg", "templateLanguage": "8gyz0nWRPVNOznNh", "templateSlug": "RFgZop9hmA2NcOfC"}' \
    > test.out 2>&1
eval_tap $? 33 'CreateNotificationTemplateV1Admin' test.out

#- 34 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"vcTVICCRosF1Bv2H": "tpzaujnzVWg2ICxg", "ObGZHUwARqBQ25Vd": "r45wTMJxkRwAFKDx", "FSGYye4RZr2H6p2e": "uPECcUvWc0qop0Dk"}, "templateLanguage": "KHNABQneVe8bYShs", "templateSlug": "tlmrflUh4YVm72a7", "topicName": "zODk7hBGV20ifT3V"}' \
    > test.out 2>&1
eval_tap $? 34 'SendUsersTemplatedNotificationV1Admin' test.out

#- 35 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'Rd1L7kxQQtj4Mvj0' \
    --after 'BiBBEhQmQGNUXNQd' \
    --before 'iiOjKChMTlYmf4S2' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 35 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 36 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'Os3Z8S63nnGpY24O' \
    > test.out 2>&1
eval_tap $? 36 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 37 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'wqnIX74pExKzfqlx' \
    --templateSlug 'PbFbA0SztkqxYPDT' \
    > test.out 2>&1
eval_tap $? 37 'GetSingleTemplateLocalizationV1Admin' test.out

#- 38 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'jRCodXAlRwxgwbGK' \
    --templateSlug 'ucruXMgAQKBlztdY' \
    --body '{"templateContent": "jf3zqtC0AhwWpPQ4"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateTemplateLocalizationV1Admin' test.out

#- 39 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'FuXOof8OFmrnptYT' \
    --templateSlug '93kMQLPgg74aBqlp' \
    > test.out 2>&1
eval_tap $? 39 'DeleteTemplateLocalizationV1Admin' test.out

#- 40 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage '5frNWufS8TU40hWc' \
    --templateSlug 'k0C9ilKlJpq6z6AJ' \
    > test.out 2>&1
eval_tap $? 40 'PublishTemplateLocalizationV1Admin' test.out

#- 41 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after 'xTD5OHmpAgl7zacT' \
    --before '3RRmv3BBLM40oSKP' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 41 'GetAllNotificationTopicsV1Admin' test.out

#- 42 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "PsLQ6eD2q41lI729", "topicName": "iclXUQPwF50X9jTA"}' \
    > test.out 2>&1
eval_tap $? 42 'CreateNotificationTopicV1Admin' test.out

#- 43 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'hGMuhp2jmExepeLc' \
    > test.out 2>&1
eval_tap $? 43 'GetNotificationTopicV1Admin' test.out

#- 44 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'vfZza8ufqHMgwQuk' \
    --body '{"description": "2G6X1V3IuKUlbRit"}' \
    > test.out 2>&1
eval_tap $? 44 'UpdateNotificationTopicV1Admin' test.out

#- 45 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'IEyqqJBlTEJ48fnM' \
    > test.out 2>&1
eval_tap $? 45 'DeleteNotificationTopicV1Admin' test.out

#- 46 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'Lf3IUaPYwyUdh9NG' \
    --body '{"message": "KHHq8TcMNHeSn1Vp", "topicName": "0H7JOnI0sqeB5naj"}' \
    > test.out 2>&1
eval_tap $? 46 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 47 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'h4H3nPPNDYZOdim7' \
    --body '{"templateContext": {"eT8rtK1U2HLi8Bg6": "z1In1iS5FvSNQlzL", "mGO5SCnuOohUYlmf": "QLzBzwtZdHWcO8i8", "FXk14QZR5t9hsnwY": "hCOMsElulFPLV6L3"}, "templateLanguage": "OfS7exPrj1Z4UTSV", "templateSlug": "mPksFoCdiBDwX9vL", "topicName": "yl4nU1P0b5WyVFdL"}' \
    > test.out 2>&1
eval_tap $? 47 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 48 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId '5dQVzuT4LWJKvaFM' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPartyDataV1' test.out

#- 49 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId '9GzFNApHif8kvEej' \
    --body '{"custom_attribute": {"SGaWN5EFnFCr9S6R": {}, "po3RFZkYwzYvSlme": {}, "CrobtTEt9rUwiyhQ": {}}, "updatedAt": 9}' \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdatePartyAttributesV1' test.out

#- 50 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'G7MSTeHNAcpaltae' \
    --userId 'cxVUJsO0tbrIyK42' \
    > test.out 2>&1
eval_tap $? 50 'AdminJoinPartyV1' test.out

#- 51 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId 'JgGJZDUZbWYHoMTm' \
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
    --body '{"listBlockedUserId": ["78ztk9REa2qpbwwu", "BB976gTg4Yel78be", "PqAgK5SRptfP8TWz"]}' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 54 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId '9UGTmlLnEdSSZ2jU' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetAllPlayerSessionAttribute' test.out

#- 55 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'qb2ZM5iB3c310JKa' \
    --body '{"attributes": {"uRBw6xzmmHAc2RAs": "I3H34rwBAIhPVs4m", "byZ2SdwtMA4CbAKu": "wptFnWsOmrCrwtNm", "l3bb5cHgTaxyfUBd": "kRTQ7dvdowQNv2ms"}}' \
    > test.out 2>&1
eval_tap $? 55 'AdminSetPlayerSessionAttribute' test.out

#- 56 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'sGwF4hLBoV39UpsU' \
    --namespace $AB_NAMESPACE \
    --userId 'O03xw5U3qJea8ox4' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerSessionAttribute' test.out

#- 57 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'I0KPhnWOv135xGsJ' \
    > test.out 2>&1
eval_tap $? 57 'AdminGetPlayerBlockedPlayersV1' test.out

#- 58 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xLZiIjIee8FdkKYP' \
    > test.out 2>&1
eval_tap $? 58 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 59 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId '4Ttq0QvPYubSEw6C' \
    --body '{"listBlockedUserId": ["V5YTNHPwAuTdGNdw", "DwPWqgE20Y0iRU2v", "ImVmr4tnugj2UK4w"]}' \
    > test.out 2>&1
eval_tap $? 59 'AdminBulkBlockPlayersV1' test.out

#- 60 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "dCbuyeAFRItRLX1Z"}' \
    > test.out 2>&1
eval_tap $? 60 'AdminDebugProfanityFilters' test.out

#- 61 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list 'g9YsglfnSfPpMtPj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'AdminGetProfanityListFiltersV1' test.out

#- 62 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list 'CiPhgzAAX3smB9pf' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "4F9jaxyit4UqkZf3", "note": "YxOBSZyFxx81ET3C"}' \
    > test.out 2>&1
eval_tap $? 62 'AdminAddProfanityFilterIntoList' test.out

#- 63 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list 'PV5R51jPbM5dWsSF' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "IhPsaJQzkE23hCnq", "note": "4jQEgz0QGgRtZFOd"}, {"filter": "48MJZuAjnuJuHlEF", "note": "0qvj0lUN2GEesrEw"}, {"filter": "PYA5gJ9pZjEvg0Q0", "note": "92zgjf9JdDrsdYtt"}]}' \
    > test.out 2>&1
eval_tap $? 63 'AdminAddProfanityFilters' test.out

#- 64 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list 'XOb8X8uWreD2eWXg' \
    --namespace $AB_NAMESPACE \
    --body '[35, 64, 100]' \
    > test.out 2>&1
eval_tap $? 64 'AdminImportProfanityFiltersFromFile' test.out

#- 65 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list 'NNVlJhAKvzAIkAX4' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "CHH70SzbpD6CkU0t"}' \
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
    --body '{"isEnabled": false, "isMandatory": true, "name": "Znrda8mGSIMda9lj"}' \
    > test.out 2>&1
eval_tap $? 67 'AdminCreateProfanityList' test.out

#- 68 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'oCOeuK6tg5p2dW6g' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": false, "isMandatory": false, "newName": "3pAPsMEO2RGOqbjg"}' \
    > test.out 2>&1
eval_tap $? 68 'AdminUpdateProfanityList' test.out

#- 69 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'iDJB9vUBvkxdwOFv' \
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
    --body '{"rule": "p0y3DFPRFWVGWcvv"}' \
    > test.out 2>&1
eval_tap $? 71 'AdminSetProfanityRuleForNamespace' test.out

#- 72 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "CCBka1f4nhVONHyy", "profanityLevel": "OvHu4dCc141RDUV7"}' \
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
    --body '{"apiKey": "PgIJM1haJMGFLIXk"}' \
    > test.out 2>&1
eval_tap $? 74 'AdminUpdateThirdPartyConfig' test.out

#- 75 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "bAnqk9i6sEWuQkBK"}' \
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
    --partyId 'IjmBlpj2Vg9KHzSy' \
    > test.out 2>&1
eval_tap $? 78 'PublicGetPartyDataV1' test.out

#- 79 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'o4stnBkZxEDvO2Tt' \
    --body '{"custom_attribute": {"3ZlJcMHyz1X4CgFz": {}, "6CcqHUllwour7c7i": {}, "0CFlUVEIEMIRGCt1": {}}, "updatedAt": 94}' \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdatePartyAttributesV1' test.out

#- 80 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'HOhP538RHTOkEuHi' \
    --body '{"limit": 20}' \
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
    --countOnly 'true' \
    --userIds 'TTzmX6UsS3VFmqer' \
    > test.out 2>&1
eval_tap $? 83 'UsersPresenceHandlerV1' test.out

#- 84 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "MM7rsqYnwBpObMrT", "topic": "WfFSdgSbldJPPckH"}' \
    > test.out 2>&1
eval_tap $? 84 'FreeFormNotification' test.out

#- 85 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"tpJ9VZj3D8gJut9A": "9s6BBSyvFjo8r74d", "ZhVuO5rN6UbMo8o1": "L0ZqkLWNJXWjwLJO", "kRGWk0vPcXM3Ck67": "TtIRkgvK9cXp13J1"}, "templateLanguage": "vzthmfcPKiMReo9Q", "templateSlug": "bn0U2OF0QvGyvdPL", "topic": "wskCsWBYnlHPzTET"}' \
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
    --body '{"templateContent": "pEB3YHFLVrOHchQD", "templateLanguage": "Dmen49aVwBO6562p", "templateSlug": "HUK46zG1MTDHXcAH"}' \
    > test.out 2>&1
eval_tap $? 87 'CreateTemplate' test.out

#- 88 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'TluDVXiyhpZldtyR' \
    --after '4r9wvAcNWGFSpPcI' \
    --before 'zKnnXdcczLmbCb2y' \
    --limit '68' \
    > test.out 2>&1
eval_tap $? 88 'GetSlugTemplate' test.out

#- 89 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'hI0pyyEpj2sUjdMc' \
    > test.out 2>&1
eval_tap $? 89 'DeleteTemplateSlug' test.out

#- 90 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'VO4s34jFhIyRx2Yv' \
    --templateSlug 'MxMi2rR1dwNXOeqv' \
    > test.out 2>&1
eval_tap $? 90 'GetLocalizationTemplate' test.out

#- 91 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'NChYDw4spn4vy2ud' \
    --templateSlug 'sagPRQAU6pODo1z1' \
    --body '{"templateContent": "NF2S62DSdAkBh5v4"}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateLocalizationTemplate' test.out

#- 92 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'woTQxPNzddkx1cfY' \
    --templateSlug 'QIHz0zC6plYeffoA' \
    > test.out 2>&1
eval_tap $? 92 'DeleteTemplateLocalization' test.out

#- 93 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'xSBd7XoRomoLb5hw' \
    --templateSlug 'pCtV5Il4BHm2e5Sj' \
    > test.out 2>&1
eval_tap $? 93 'PublishTemplate' test.out

#- 94 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'd4FbaY5BelMRMA64' \
    --before 'Gxf2JnBxpnW0DCqH' \
    --limit '84' \
    > test.out 2>&1
eval_tap $? 94 'GetTopicByNamespace' test.out

#- 95 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "CkkwZF5QidPsfHDH", "topic": "mmzaUq3BPTvXih78"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateTopic' test.out

#- 96 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'f7r3rKCXLGmfLEgl' \
    > test.out 2>&1
eval_tap $? 96 'GetTopicByTopicName' test.out

#- 97 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'V7TnR2Mm5t362SYY' \
    --body '{"description": "IeSlUSYnlItVavxu"}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateTopicByTopicName' test.out

#- 98 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'jTF70d8UKov04Xct' \
    > test.out 2>&1
eval_tap $? 98 'DeleteTopicByTopicName' test.out

#- 99 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId '11WDLAWEKxHilh9R' \
    --body '{"message": "mH0IwkFn5Nl0qFQU", "topic": "mRFnJZofzR4BuoJx"}' \
    > test.out 2>&1
eval_tap $? 99 'FreeFormNotificationByUserID' test.out

#- 100 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'kL6WdMRIM1zrH2qW' \
    --body '{"templateContext": {"OmNvbt6JDEIRWN8Y": "vCuI1HTMEosKtV1l", "qbCgIAXUpffdNnbn": "tpxww94Ct80u5Ev8", "1ysdBLKQAvtri3ne": "4cv2SwlgGjj6ULWO"}, "templateLanguage": "LpjKICXPluw07gCH", "templateSlug": "4u0uAP3kR3fIDmaV", "topic": "bIjHrxGfccwifyRf"}' \
    > test.out 2>&1
eval_tap $? 100 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE