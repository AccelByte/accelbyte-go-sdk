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
echo "1..107"

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
    --limit '78' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "5BKQfL1HBhgtf7YX", "friendPublicId": "W0Xeq5vQEUCi6wwh"}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "JbZTT6jkcnA3qmoT"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "yggEh7vckPAXGRDr"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "v9HYz9tYKyUPwUcJ"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'ZHz30t9L4F8W1sg2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "XBZdvGV5oS49y15S"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'gdbe5vSSwDtUKJ9D' \
    --body '{"friendIds": ["SuCOOZMP8AAW9J5g", "LLRKdYm7dioWmjYf", "sWUajPKWWLOIIxpn"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace $AB_NAMESPACE \
    --userId 'cqPBWUMYXnmP6hJw' \
    --body '{"friendIds": ["CFdjZBMnKtf2QkQa", "KkVR9ofqyw6tUlUf", "BI0kVSyMPr3NFxkl"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
samples/cli/sample-apps Lobby syncNativeFriends \
    --namespace $AB_NAMESPACE \
    --body '[{"isLogin": false, "platformId": "Yl7pxXYcGgXMAPV7", "platformToken": "4U3rXdGIByJ5OBz5", "psnEnv": "Z7xxVHLIJx3yVcvG"}, {"isLogin": true, "platformId": "Lw6ELzl7UQGUDuSn", "platformToken": "3oEAJsikkOq0d5aQ", "psnEnv": "JvDNCWC7N9FqQnPI"}, {"isLogin": true, "platformId": "ycLAuXX6Jk1UHHmb", "platformToken": "3jjBoA12E5aEKSGm", "psnEnv": "spswG9SitJPsmZeP"}]' \
    > test.out 2>&1
eval_tap $? 16 'SyncNativeFriends' test.out

#- 17 SyncNativeBlockedUser
samples/cli/sample-apps Lobby syncNativeBlockedUser \
    --namespace $AB_NAMESPACE \
    --body '[{"platformId": "c1dFvH6KBtTjt3ep", "psnEnv": "cXwe4wUGaKKF5bUX"}, {"platformId": "G8P0oS1JUTUWzKEj", "psnEnv": "cTLYoVABeRgroHao"}, {"platformId": "gm3iMQCku5ZQtyWa", "psnEnv": "X4exyWx7Qjo0zAfl"}]' \
    > test.out 2>&1
eval_tap $? 17 'SyncNativeBlockedUser' test.out

#- 18 AdminGetAllConfigV1
samples/cli/sample-apps Lobby adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 18 'AdminGetAllConfigV1' test.out

#- 19 AdminGetLogConfig
samples/cli/sample-apps Lobby adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 19 'AdminGetLogConfig' test.out

#- 20 AdminPatchUpdateLogConfig
samples/cli/sample-apps Lobby adminPatchUpdateLogConfig \
    --body '{"logLevel": "error", "socketLogEnabled": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminPatchUpdateLogConfig' test.out

#- 21 AdminGetConfigV1
samples/cli/sample-apps Lobby adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminGetConfigV1' test.out

#- 22 AdminUpdateConfigV1
samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 23, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 87, "chatRateLimitDuration": 46, "concurrentUsersLimit": 81, "disableInvitationOnJoinParty": true, "enableChat": true, "entitlementCheck": true, "entitlementItemID": "la99CZ2xLpcPBrMn", "generalRateLimitBurst": 87, "generalRateLimitDuration": 15, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 7, "maxFriendsLimit": 32, "maxPartyMember": 21, "profanityFilter": true, "readyConsentTimeout": 56, "unregisterDelay": 37}' \
    > test.out 2>&1
eval_tap $? 22 'AdminUpdateConfigV1' test.out

#- 23 AdminExportConfigV1
samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminExportConfigV1' test.out

#- 24 AdminImportConfigV1
samples/cli/sample-apps Lobby adminImportConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 24 'AdminImportConfigV1' test.out

#- 25 GetListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace $AB_NAMESPACE \
    --userId 'cIqWSufrYmCkPtyK' \
    --friendId 'AHDd5rmKEpzzSFIL' \
    --friendIds '["SAm7xkHQFffTMD1y", "OiqlM21193qEhEJx", "uB5fYU59gvK8Lemt"]' \
    --limit '57' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 25 'GetListOfFriends' test.out

#- 26 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId '4vAOhSMj1HBwRyoy' \
    --friendId 'e0L7n8qOfFhFKUAh' \
    --limit '54' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 26 'GetIncomingFriendRequests' test.out

#- 27 AdminListFriendsOfFriends
samples/cli/sample-apps Lobby adminListFriendsOfFriends \
    --namespace $AB_NAMESPACE \
    --userId 'NC9WXB0MFjjBetk7' \
    --friendId '6Eoci99Wubz1RIOl' \
    --limit '48' \
    --nopaging 'true' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 27 'AdminListFriendsOfFriends' test.out

#- 28 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'VjaE50vqIcmVok1v' \
    --limit '79' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 28 'GetOutgoingFriendRequests' test.out

#- 29 AdminGetGlobalConfig
samples/cli/sample-apps Lobby adminGetGlobalConfig \
    > test.out 2>&1
eval_tap $? 29 'AdminGetGlobalConfig' test.out

#- 30 AdminUpdateGlobalConfig
samples/cli/sample-apps Lobby adminUpdateGlobalConfig \
    --body '{"regionRetryMapping": {"ExqIDKamnRf878n4": ["lA0mO3wl9P0m97RB", "6RQPqZowt1qKs58F", "gxYbiq0lz0tWrS1y"], "eL0tx7zUCA8YtqNk": ["ANGtO0nDNle6WJLR", "orP89uYJOxkAUdGr", "rjJ4X3tCNM7UHCr6"], "vHWBufTv0n3FflN8": ["AHJkc2pTUtlt4zCN", "jzqEUQ7yKsD6wSzK", "K0O5NQVnY4zdJp01"]}, "regionURLMapping": ["ejT9olhj4UAuzdQ3", "AC371fpes8INVWjM", "IbGuJDLar7hkczgL"], "testGameMode": "UUwrKBLk2tA9tMIV", "testRegionURLMapping": ["spD0mBwlYcgPSBlG", "uOAIcAZqMrK3Kh4C", "wq1hLe0wfEBMylg2"], "testTargetUserIDs": ["L35IVWshX2cfjQ2o", "DPLWi56V4ngawNGW", "WAEXyXPTR12txzNH"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateGlobalConfig' test.out

#- 31 AdminDeleteGlobalConfig
samples/cli/sample-apps Lobby adminDeleteGlobalConfig \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteGlobalConfig' test.out

#- 32 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "x0rtMIx18j0YIt5O", "topicName": "FR8wbr2uoCtK14ap", "userIds": ["iOgoGd8QttAeWwcv", "4XgekrbawPn1isxo", "0Sh0U4MnatmzQG3n"]}' \
    > test.out 2>&1
eval_tap $? 32 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 33 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "fVE0ztadih8lVXyE", "topicName": "oF9hEJ18EtcKGvbg"}' \
    > test.out 2>&1
eval_tap $? 33 'SendUsersFreeformNotificationV1Admin' test.out

#- 34 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'oGXnntjRrlRNkWn4' \
    --body '{"message": "XnCf8xCPp1oDVQy2", "topicName": "Bv3oS05ZkzGVro0U"}' \
    > test.out 2>&1
eval_tap $? 34 'SendPartyFreeformNotificationV1Admin' test.out

#- 35 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'dvAU4yPEWXzeklKW' \
    --body '{"templateContext": {"YqqMax46cVX24yYB": "Vc5Ydzo8XdiBvav7", "1xZcei2p7oYvhPNI": "rOVpHKjoQygqFWsi", "RbHQIFRdBBj50W9S": "dsfsLZuVPK9e9Ybs"}, "templateLanguage": "ZqoaPlpIUwiOW88q", "templateSlug": "vT34xnviVnDGVgRK", "topicName": "oQ0A4zsnx6bi4lb8"}' \
    > test.out 2>&1
eval_tap $? 35 'SendPartyTemplatedNotificationV1Admin' test.out

#- 36 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'GetAllNotificationTemplatesV1Admin' test.out

#- 37 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "HidJlZSs6ECQKJ60", "templateLanguage": "DQg7JmdzBq8QQEb9", "templateSlug": "zm2hy5bYSVhU9gI9"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateNotificationTemplateV1Admin' test.out

#- 38 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"n9UGsw8oq6wPDcIN": "uPGaa4cxXnU805BN", "v77iAs4425sEqijA": "sGfr3hfScnJVQa1P", "Srua1IUy6QntaRbQ": "MYYxX6DMVcJgJFWL"}, "templateLanguage": "YNoty8YSUWcG68JA", "templateSlug": "kHD2jZvtEuWKg8oP", "topicName": "GYn5by4khN3QLmZc"}' \
    > test.out 2>&1
eval_tap $? 38 'SendUsersTemplatedNotificationV1Admin' test.out

#- 39 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'PGHgT9XkEJHbaHc5' \
    --after 'KqbhLHbmnPfOY96g' \
    --before 'kg43mgdvTJywUvyp' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 39 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 40 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'AuS5fCyiJRKS6f5w' \
    > test.out 2>&1
eval_tap $? 40 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 41 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage '34NNLvjFdwLSwrQj' \
    --templateSlug 'evhVrCc6EWyTPjGe' \
    > test.out 2>&1
eval_tap $? 41 'GetSingleTemplateLocalizationV1Admin' test.out

#- 42 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'uG83u6nCPlmhdrKn' \
    --templateSlug '7hn9FNwbnROf6RJb' \
    --body '{"templateContent": "NaVrugoOToLtZAUa"}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateTemplateLocalizationV1Admin' test.out

#- 43 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage '5UCG9Wg9QEzJFcyv' \
    --templateSlug 'RmdFdvVePVYuWUWg' \
    > test.out 2>&1
eval_tap $? 43 'DeleteTemplateLocalizationV1Admin' test.out

#- 44 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'Javk5uipEDdtoOrj' \
    --templateSlug '6n2VSiIJYKbCoZuy' \
    > test.out 2>&1
eval_tap $? 44 'PublishTemplateLocalizationV1Admin' test.out

#- 45 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after 'snEjbGhJhuosdsi0' \
    --before 'fLLtVoTnWiIBrRj4' \
    --limit '8' \
    > test.out 2>&1
eval_tap $? 45 'GetAllNotificationTopicsV1Admin' test.out

#- 46 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "sjfDoxfc60dCG0q0", "topicName": "Fhna1hrwO48RfCDN"}' \
    > test.out 2>&1
eval_tap $? 46 'CreateNotificationTopicV1Admin' test.out

#- 47 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'AlbCagf4JtDNEqHT' \
    > test.out 2>&1
eval_tap $? 47 'GetNotificationTopicV1Admin' test.out

#- 48 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'fOoM4rWx24E7iaBP' \
    --body '{"description": "5sZ18HP6Q0p1eYyc"}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateNotificationTopicV1Admin' test.out

#- 49 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'c04q7suQHrymaR7H' \
    > test.out 2>&1
eval_tap $? 49 'DeleteNotificationTopicV1Admin' test.out

#- 50 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'Z2sqhlg7wb1O4cC7' \
    --body '{"message": "riTW6arhwS7XUHJX", "topicName": "0kC1bgwhxHp2l0p7"}' \
    > test.out 2>&1
eval_tap $? 50 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 51 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId '38axC0eCvFOCKRES' \
    --body '{"templateContext": {"HCzOlKsI2BMYGQ5D": "mTaIcNRWqm0FwgxJ", "AlvkQqa6Ta6slqq6": "XhKet8cG3n0btxao", "814CYxmvkuQBbCYF": "MuNTlimKuMkmsJ4v"}, "templateLanguage": "6YkILVmsUavPvSLa", "templateSlug": "h9GaDCZvk1J9eIXH", "topicName": "iepIIN9H26rS5fCJ"}' \
    > test.out 2>&1
eval_tap $? 51 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 52 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'EqFZQ4wutqVqb1H8' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPartyDataV1' test.out

#- 53 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'yXGsPMbS7cc5fL1J' \
    --body '{"custom_attribute": {"5ohjMw77xdqfwgOi": {}, "fBBW5VKZ7M3m4New": {}, "tTMbYQ6ZQcuO9uVo": {}}, "updatedAt": 97}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdatePartyAttributesV1' test.out

#- 54 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'rrzjxznCZL178DAN' \
    --userId 'YsiIFHPkVhtnS8Tn' \
    > test.out 2>&1
eval_tap $? 54 'AdminJoinPartyV1' test.out

#- 55 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId '0Orn3noaPwnthJT4' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetUserPartyV1' test.out

#- 56 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'AdminGetLobbyCCU' test.out

#- 57 AdminGetBulkPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetBulkPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"listBlockedUserId": ["VCdYU0BSIAq8tUpO", "H1ioW0TpHKbrIc6S", "lJwAuEhkvEMznYpV"]}' \
    > test.out 2>&1
eval_tap $? 57 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 58 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'wrxZxbdxXrRUduHJ' \
    > test.out 2>&1
eval_tap $? 58 'AdminGetAllPlayerSessionAttribute' test.out

#- 59 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'cmiPwMkhWvJ4cZN3' \
    --body '{"attributes": {"5wnWIesnVy4AMio4": "JwFHSzJ8IzRpF5hb", "5VvQOPC399uPnUpl": "FUJb7LvXmvuX7FMv", "LnTte3nurkK98rJf": "raFTN4MMw1cmWL8R"}}' \
    > test.out 2>&1
eval_tap $? 59 'AdminSetPlayerSessionAttribute' test.out

#- 60 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute '1QpyP68ciKWJBh88' \
    --namespace $AB_NAMESPACE \
    --userId 'CLtIqx6ZAziUNJWj' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerSessionAttribute' test.out

#- 61 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'HGEwclaQavmqC4IT' \
    > test.out 2>&1
eval_tap $? 61 'AdminGetPlayerBlockedPlayersV1' test.out

#- 62 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'E8zV6Jqrdo6YLACX' \
    > test.out 2>&1
eval_tap $? 62 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 63 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId '93pEvYyAshm1aeR9' \
    --body '{"listBlockedUserId": ["DqX5Ag47VIIIJucJ", "Llk4lcb9vzjpaaUi", "udIcEtkw8W4TDQUV"]}' \
    > test.out 2>&1
eval_tap $? 63 'AdminBulkBlockPlayersV1' test.out

#- 64 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "LciZCw7MWghF0RL3"}' \
    > test.out 2>&1
eval_tap $? 64 'AdminDebugProfanityFilters' test.out

#- 65 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list '7Ja3iy4YrWFU6ckw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AdminGetProfanityListFiltersV1' test.out

#- 66 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list 'v2qfluztgelymzuJ' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "LG145HDq6pyblvNK", "note": "DL2FnPvaCdxQpzcA"}' \
    > test.out 2>&1
eval_tap $? 66 'AdminAddProfanityFilterIntoList' test.out

#- 67 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list 'kUjffNTjK127Hdgo' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "FOuNm01kfboZMVZO", "note": "llGAUmeA1Bxzr9O9"}, {"filter": "k3E5EgHU5oZsEe9R", "note": "JcEpBcJdtrf7mp94"}, {"filter": "iJP43SY4pjFfppn2", "note": "dHxLpM2u3EievfRS"}]}' \
    > test.out 2>&1
eval_tap $? 67 'AdminAddProfanityFilters' test.out

#- 68 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list 'pTBBMnyufB7338yQ' \
    --namespace $AB_NAMESPACE \
    --body '[87, 53, 11]' \
    > test.out 2>&1
eval_tap $? 68 'AdminImportProfanityFiltersFromFile' test.out

#- 69 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list 'VJFxQuKqGzdiBD62' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "opCSqjmFoq5gYHrC"}' \
    > test.out 2>&1
eval_tap $? 69 'AdminDeleteProfanityFilter' test.out

#- 70 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'AdminGetProfanityLists' test.out

#- 71 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": false, "name": "dn3cyElOVNXL9Xq7"}' \
    > test.out 2>&1
eval_tap $? 71 'AdminCreateProfanityList' test.out

#- 72 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'pWJniJL0g3hii8TD' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": true, "newName": "06dBos9vvoRrzaxe"}' \
    > test.out 2>&1
eval_tap $? 72 'AdminUpdateProfanityList' test.out

#- 73 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'Hy3yjaGu5hedsBlN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'AdminDeleteProfanityList' test.out

#- 74 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'AdminGetProfanityRule' test.out

#- 75 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"rule": "y2TZO3lPjmomtyb2"}' \
    > test.out 2>&1
eval_tap $? 75 'AdminSetProfanityRuleForNamespace' test.out

#- 76 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "U5PPnFNc5VqrokNI", "profanityLevel": "3Shdrl4JAyVuF0as"}' \
    > test.out 2>&1
eval_tap $? 76 'AdminVerifyMessageProfanityResponse' test.out

#- 77 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'AdminGetThirdPartyConfig' test.out

#- 78 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "OvqosV6J72p8amrn"}' \
    > test.out 2>&1
eval_tap $? 78 'AdminUpdateThirdPartyConfig' test.out

#- 79 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "VOtUDDgAigawZbEA"}' \
    > test.out 2>&1
eval_tap $? 79 'AdminCreateThirdPartyConfig' test.out

#- 80 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 80 'AdminDeleteThirdPartyConfig' test.out

#- 81 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 81 'PublicGetMessages' test.out

#- 82 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'KG402gJH4zW30itX' \
    > test.out 2>&1
eval_tap $? 82 'PublicGetPartyDataV1' test.out

#- 83 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId '5qxgr9eYlq2L03qg' \
    --body '{"custom_attribute": {"0AsY2gOZu0rDvK8f": {}, "4E0f06GfGKEp9gmu": {}, "VlkLdI4qswyNGGsb": {}}, "updatedAt": 2}' \
    > test.out 2>&1
eval_tap $? 83 'PublicUpdatePartyAttributesV1' test.out

#- 84 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'OMlhoN0KQvSy5CgR' \
    --body '{"limit": 78}' \
    > test.out 2>&1
eval_tap $? 84 'PublicSetPartyLimitV1' test.out

#- 85 PublicPlayerBlockPlayersV1
samples/cli/sample-apps Lobby publicPlayerBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"blockedUserId": "dufWPnCsz1eGmfbD"}' \
    > test.out 2>&1
eval_tap $? 85 'PublicPlayerBlockPlayersV1' test.out

#- 86 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 86 'PublicGetPlayerBlockedPlayersV1' test.out

#- 87 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 88 PublicUnblockPlayerV1
samples/cli/sample-apps Lobby publicUnblockPlayerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "ETVshpfMRrZvu4U4"}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUnblockPlayerV1' test.out

#- 89 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'true' \
    --userIds '6tRQyHMNet88hJ6V' \
    > test.out 2>&1
eval_tap $? 89 'UsersPresenceHandlerV1' test.out

#- 90 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "tw2592GmPAEGzYQy", "topic": "ZvdSHEG3lP79BE4G"}' \
    > test.out 2>&1
eval_tap $? 90 'FreeFormNotification' test.out

#- 91 GetMyNotifications
samples/cli/sample-apps Lobby getMyNotifications \
    --namespace $AB_NAMESPACE \
    --endTime '17' \
    --limit '46' \
    --offset '100' \
    --startTime '82' \
    > test.out 2>&1
eval_tap $? 91 'GetMyNotifications' test.out

#- 92 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"pOK6b4SfMcBuFu7U": "Eox17ZFhGbHzJL1u", "qGZ2lEbDBEIH6rSV": "7RpF7PBChhAw7y8f", "lic0MtBTYSEMQAoi": "jUIIOyk373754btk"}, "templateLanguage": "kRKY437nMGv5Nzjv", "templateSlug": "qSQitbdl6InxaXMj", "topic": "368KqUjfZe0GAdMZ"}' \
    > test.out 2>&1
eval_tap $? 92 'NotificationWithTemplate' test.out

#- 93 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'GetGameTemplate' test.out

#- 94 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "dH1gokVnHnFdezf3", "templateLanguage": "1BFQGAfN2vpXeLeN", "templateSlug": "1pRJjEhJ7XoaVnTS"}' \
    > test.out 2>&1
eval_tap $? 94 'CreateTemplate' test.out

#- 95 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'FIpbSyNb8b3PbG4u' \
    --after 'vnYBP2ZGaTNeaFOu' \
    --before 'CO32hqaS4pIPwbvX' \
    --limit '51' \
    > test.out 2>&1
eval_tap $? 95 'GetSlugTemplate' test.out

#- 96 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'QmkpE5tyN5IBIegF' \
    > test.out 2>&1
eval_tap $? 96 'DeleteTemplateSlug' test.out

#- 97 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'HKwxFsUsz9N6kPFG' \
    --templateSlug 'hMvlUBinUzLPOW6C' \
    > test.out 2>&1
eval_tap $? 97 'GetLocalizationTemplate' test.out

#- 98 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'qxsAf95LFinIidQ0' \
    --templateSlug 'XEE4g8l29IkencT6' \
    --body '{"templateContent": "kINQXK5YQr3Ddh0R"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateLocalizationTemplate' test.out

#- 99 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'rE51H8cUMMNQdMSo' \
    --templateSlug 'uQ6FdorTA8Qdydsv' \
    > test.out 2>&1
eval_tap $? 99 'DeleteTemplateLocalization' test.out

#- 100 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'B4IbnPR1tlBVUc4E' \
    --templateSlug 'hEhbEgmlT0FDj3Cv' \
    > test.out 2>&1
eval_tap $? 100 'PublishTemplate' test.out

#- 101 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'vyBA5lzsjb9iGxhe' \
    --before '62k1c9afv1GzT9m6' \
    --limit '30' \
    > test.out 2>&1
eval_tap $? 101 'GetTopicByNamespace' test.out

#- 102 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "aoWltvueqfs3ypgr", "topic": "lSy4ci9J7svIFijE"}' \
    > test.out 2>&1
eval_tap $? 102 'CreateTopic' test.out

#- 103 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'MN6ajRJ5dCbd2B9d' \
    > test.out 2>&1
eval_tap $? 103 'GetTopicByTopicName' test.out

#- 104 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic '1KcMquXPn2YROZLd' \
    --body '{"description": "YrpcS1c9C44LSzeS"}' \
    > test.out 2>&1
eval_tap $? 104 'UpdateTopicByTopicName' test.out

#- 105 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'bRKA9bNPoMpU05Bc' \
    > test.out 2>&1
eval_tap $? 105 'DeleteTopicByTopicName' test.out

#- 106 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'm6lSMXNt8ZxlMZnP' \
    --body '{"message": "3QEHSz5gJc0wt7PO", "topic": "YjnkVJMsn8xHuVwv"}' \
    > test.out 2>&1
eval_tap $? 106 'FreeFormNotificationByUserID' test.out

#- 107 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'DSZWx9at2K1vER2v' \
    --body '{"templateContext": {"sX4LYxmPIzJDsJFo": "agIUbCkxUaGlk05P", "2XAaP6NrabeMprZQ": "pY1uD8W6mZx8KOt5", "Z7uCmi4vauIo3x2w": "9qpfXiB3HlvzybYZ"}, "templateLanguage": "blGZbBxTEYCxdxxm", "templateSlug": "4nZQXvJ7cRhK2QhR", "topic": "f6YUJPANOb3hPuNs"}' \
    > test.out 2>&1
eval_tap $? 107 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE