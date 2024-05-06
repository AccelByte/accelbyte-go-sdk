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
echo "1..105"

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
    --limit '35' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "nfX8382SXjVI06EQ", "friendPublicId": "iH6ATYRRhHhG0EJ6"}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "NOWY32RGUJ4EMrlL"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "TZiqBsg6QDiFTGYk"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "kiVvqBg7G8RuuJPI"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId '5GEcqLzwzHYPdU7P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "Uz4v4x4tZP2C0fy3"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'rHX4F4i3EQV4VFKA' \
    --body '{"friendIds": ["hgPv5TZu9ibhsXna", "rVJvebs9ciA3ag40", "mBAyuQyE1CxkOHWo"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace $AB_NAMESPACE \
    --userId 'i3DwyzINEZ5TZIZS' \
    --body '{"friendIds": ["SJFvy1tfoKyNjsti", "Hj37UvbhYxtizJZV", "LXrCCFDVimGMQGZ2"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
samples/cli/sample-apps Lobby syncNativeFriends \
    --namespace $AB_NAMESPACE \
    --body '[{"isLogin": true, "platformId": "Tdq0S0mvwPYL3nUh", "platformToken": "KoufSl1T5B70XasN", "psnEnv": "lXavy767RE87opiG"}, {"isLogin": false, "platformId": "ewU36eRUHbeadaYW", "platformToken": "x8dYIzX3yDC8BSVp", "psnEnv": "cQKHRkSTZvakl0ho"}, {"isLogin": true, "platformId": "FFXnu9oEPdQxbanM", "platformToken": "Yw0Nm5YQ0D74EDvV", "psnEnv": "Z9NW4OZq3U6b7FCy"}]' \
    > test.out 2>&1
eval_tap $? 16 'SyncNativeFriends' test.out

#- 17 SyncNativeBlockedUser
samples/cli/sample-apps Lobby syncNativeBlockedUser \
    --namespace $AB_NAMESPACE \
    --body '[{"platformId": "cYmKNbC8XD21MQ1N", "psnEnv": "U3Ngu7i1gf210HuT"}, {"platformId": "PpekBlGb1b2dLv0T", "psnEnv": "LRRjb2Lkqk4FvqQ6"}, {"platformId": "hdkFa8Q4YCj2oja8", "psnEnv": "J3rcuxHn2p6IZIQo"}]' \
    > test.out 2>&1
eval_tap $? 17 'SyncNativeBlockedUser' test.out

#- 18 AdminGetAllConfigV1
samples/cli/sample-apps Lobby adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 18 'AdminGetAllConfigV1' test.out

#- 19 AdminGetConfigV1
samples/cli/sample-apps Lobby adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'AdminGetConfigV1' test.out

#- 20 AdminUpdateConfigV1
samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 14, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 1, "chatRateLimitDuration": 21, "concurrentUsersLimit": 63, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "Mai9cSBj1ykVdChD", "generalRateLimitBurst": 24, "generalRateLimitDuration": 14, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 45, "maxFriendsLimit": 53, "maxPartyMember": 89, "profanityFilter": true, "readyConsentTimeout": 71, "unregisterDelay": 71}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateConfigV1' test.out

#- 21 AdminExportConfigV1
samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminExportConfigV1' test.out

#- 22 AdminImportConfigV1
samples/cli/sample-apps Lobby adminImportConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 22 'AdminImportConfigV1' test.out

#- 23 GetListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace $AB_NAMESPACE \
    --userId '9QX0qTYG38si4DVX' \
    --friendId 'R1dAvak1IGruWaNi' \
    --friendIds '["SSx9FzLp7DPfpdOu", "aQSaO34eEQHTbVK8", "B9LJY1jQt0tXccyq"]' \
    --limit '1' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 23 'GetListOfFriends' test.out

#- 24 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'UoTUg07JLl4omg3a' \
    --friendId 'Lvx7ZANHrW7b6Lu3' \
    --limit '89' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 24 'GetIncomingFriendRequests' test.out

#- 25 AdminListFriendsOfFriends
samples/cli/sample-apps Lobby adminListFriendsOfFriends \
    --namespace $AB_NAMESPACE \
    --userId 'FpZXfnI6S6ONiGT9' \
    --friendId 'VBPocPVPFJyG8m6j' \
    --limit '2' \
    --nopaging 'true' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 25 'AdminListFriendsOfFriends' test.out

#- 26 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'YZOASyDNxWQP3nNT' \
    --limit '89' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 26 'GetOutgoingFriendRequests' test.out

#- 27 AdminGetGlobalConfig
samples/cli/sample-apps Lobby adminGetGlobalConfig \
    > test.out 2>&1
eval_tap $? 27 'AdminGetGlobalConfig' test.out

#- 28 AdminUpdateGlobalConfig
samples/cli/sample-apps Lobby adminUpdateGlobalConfig \
    --body '{"regionRetryMapping": {"F0ZAvcwpZp2TK8yz": ["6OoMbf4Bw1K7WMZQ", "hWEliA7xr1cvG0Bx", "qEKVvsBDlOaIasLO"], "b74k364emHhXnBKm": ["KE19ukcuG0cnUyHI", "Vh4rhvJeyCzCEGkf", "CB3kQEfwCEWZZ1Ru"], "GHNm9Eznbh0Q800T": ["VjZVDq4sUHgS9MGc", "KtjDapPsPGqRpkfj", "UDqtVRm9l92oYmrV"]}, "regionURLMapping": ["beSF4MMdS2Ktc0xO", "f1rPqA0XLHoVLRFn", "yLvnFbPwsd3kiAkm"], "testGameMode": "JktvV9uqlV4OCl8q", "testRegionURLMapping": ["0osWCLqMi6MJx7iY", "zmLtVLhODy0GmsRa", "4Gcr3991PzjJmETK"], "testTargetUserIDs": ["kkve90EKAa1WqqVB", "NeQQzZhSoU34tgZ1", "4M1W9hdtk8hwdSUs"]}' \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateGlobalConfig' test.out

#- 29 AdminDeleteGlobalConfig
samples/cli/sample-apps Lobby adminDeleteGlobalConfig \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteGlobalConfig' test.out

#- 30 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "gc4GBt4vo3tlbcSG", "topicName": "ijzV7zpQyTYqqZge", "userIds": ["YLFSKMA1yCYFmgRz", "LawOrmdVdK2JhgEe", "mcAOda7EW51fLhVW"]}' \
    > test.out 2>&1
eval_tap $? 30 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 31 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "5wv9VjPL0b3ZybgJ", "topicName": "tbxySRfXWsAYPva6"}' \
    > test.out 2>&1
eval_tap $? 31 'SendUsersFreeformNotificationV1Admin' test.out

#- 32 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'degxuCh69bQZ0Wwn' \
    --body '{"message": "MdxR9KoCid39gAb1", "topicName": "oWE4YCyoXfUnYlln"}' \
    > test.out 2>&1
eval_tap $? 32 'SendPartyFreeformNotificationV1Admin' test.out

#- 33 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'u9sOw306wDtRGcAv' \
    --body '{"templateContext": {"Vl7CsdCzZ4HBaENx": "3I3IZ8c656bVVADD", "hEouUva4fuPmTNWD": "Sg9fjjsGh8s0BbLO", "PgB9UVCIqrySZS4q": "UUv8XqDPNyRp4Iwe"}, "templateLanguage": "6BgCBwgb23RjsGyA", "templateSlug": "47kQ3Jb3KxqKzqHW", "topicName": "qCMlXBXNlNtimAi4"}' \
    > test.out 2>&1
eval_tap $? 33 'SendPartyTemplatedNotificationV1Admin' test.out

#- 34 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'GetAllNotificationTemplatesV1Admin' test.out

#- 35 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "IGlbMYSCFyApw7OO", "templateLanguage": "odVNkRnva5PG7gz5", "templateSlug": "lBGiPRmdeA8ZWRl5"}' \
    > test.out 2>&1
eval_tap $? 35 'CreateNotificationTemplateV1Admin' test.out

#- 36 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"1GLgRq0b1vCPFJwQ": "LdnlLUJwFwtd9G1t", "3WY4YQ7otRNwbYJA": "XYnmxFfKI6A9fA56", "cbAnFf5JoBLEjgbd": "LtOtyqylbDLASPNA"}, "templateLanguage": "1g8VcW9NCtDlVp53", "templateSlug": "ICCDh1MqaysQtCy3", "topicName": "ByqbJ9RNa4KdWcwN"}' \
    > test.out 2>&1
eval_tap $? 36 'SendUsersTemplatedNotificationV1Admin' test.out

#- 37 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'qXhU90NZpOxPfmTB' \
    --after 'K46TWcWVkzDm6bMx' \
    --before '3P83qCvdWRUqwObi' \
    --limit '74' \
    > test.out 2>&1
eval_tap $? 37 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 38 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug '1rlWBGJlpWKmuAa5' \
    > test.out 2>&1
eval_tap $? 38 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 39 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage '4qhAIqwcznTTE4na' \
    --templateSlug 'vuGb3isd5wGsxu4p' \
    > test.out 2>&1
eval_tap $? 39 'GetSingleTemplateLocalizationV1Admin' test.out

#- 40 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'UWwQiCvxFCbCpQZ5' \
    --templateSlug 'ViXiXR1lIhcKwDbV' \
    --body '{"templateContent": "I5rI42kGbnuMiAEc"}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateTemplateLocalizationV1Admin' test.out

#- 41 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'TnEK6rnp0SETgatq' \
    --templateSlug 'NInnlUBKMvlZ7K8I' \
    > test.out 2>&1
eval_tap $? 41 'DeleteTemplateLocalizationV1Admin' test.out

#- 42 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'OD2lFxIJgTUqFFLz' \
    --templateSlug 'ceKWNHIeocivYM7Y' \
    > test.out 2>&1
eval_tap $? 42 'PublishTemplateLocalizationV1Admin' test.out

#- 43 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after 'bbShdIvblxIUxkXN' \
    --before 'xhCb1JZTPDSgGvv1' \
    --limit '6' \
    > test.out 2>&1
eval_tap $? 43 'GetAllNotificationTopicsV1Admin' test.out

#- 44 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "bV7tE6jd7sEILw2e", "topicName": "cSkVMSNBHej3MfWH"}' \
    > test.out 2>&1
eval_tap $? 44 'CreateNotificationTopicV1Admin' test.out

#- 45 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'qtp1sqfdZmg2Ww9i' \
    > test.out 2>&1
eval_tap $? 45 'GetNotificationTopicV1Admin' test.out

#- 46 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName '3I6TPxoNgmGxcZlB' \
    --body '{"description": "lGoEpEUhyLLbS3QE"}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateNotificationTopicV1Admin' test.out

#- 47 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'fXsfgAdfXs02B0Ku' \
    > test.out 2>&1
eval_tap $? 47 'DeleteNotificationTopicV1Admin' test.out

#- 48 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'dAXRBLJ8GTQu6y3u' \
    --body '{"message": "T69R8nW0bCQAhYfd", "topicName": "FRNuWNByeNDZ6SAz"}' \
    > test.out 2>&1
eval_tap $? 48 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 49 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'QLpVpwJ2xUJUQksi' \
    --body '{"templateContext": {"ZQSd2SlZCcc0Gy1g": "6pDFhkf79XbZ9eHG", "uDxoSgorDkhvtUre": "lICrYduBi9WJSoTL", "uqruEefXPR0jt6m1": "lrYnZUPtJqZSofCA"}, "templateLanguage": "SLUe8UaKhcCv6FRX", "templateSlug": "eLw0jWv5WJb6iEFs", "topicName": "JxEk5l4fJOtoBAzn"}' \
    > test.out 2>&1
eval_tap $? 49 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 50 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId '8I2ojDqaM03959pa' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetPartyDataV1' test.out

#- 51 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'MZfAgtx06fk48gLq' \
    --body '{"custom_attribute": {"JrVcEJBqeEKgW2LP": {}, "ioxESNTwmvPmC98Y": {}, "YGRhyPZRyZNwPqaz": {}}, "updatedAt": 99}' \
    > test.out 2>&1
eval_tap $? 51 'AdminUpdatePartyAttributesV1' test.out

#- 52 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'M4TB9MVnzlqOLPbr' \
    --userId 'R1YaNi6o0XE0j1Ws' \
    > test.out 2>&1
eval_tap $? 52 'AdminJoinPartyV1' test.out

#- 53 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId 'g9THGk0aqIGxhPmp' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetUserPartyV1' test.out

#- 54 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminGetLobbyCCU' test.out

#- 55 AdminGetBulkPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetBulkPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"listBlockedUserId": ["ROlS9P8x7M6zBlGD", "IKNcthQhXW3lIfhS", "A6Ip09rjm3hNHMXS"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 56 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'YrHnRuzxdqH9jOhU' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetAllPlayerSessionAttribute' test.out

#- 57 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'MhP8q9r3KBACDZzh' \
    --body '{"attributes": {"HBdBGEks9y8s6kIo": "fgZ8d9HSEyCftBDD", "mpbj46OlPSVwAqsB": "CKoC438uoTzZVWmx", "oLXu79e9V4Mbmbnm": "ENWj9rvdYktGh0bk"}}' \
    > test.out 2>&1
eval_tap $? 57 'AdminSetPlayerSessionAttribute' test.out

#- 58 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute '51YMoJh1nV6G79ou' \
    --namespace $AB_NAMESPACE \
    --userId 'Z9GB1NHFxFInf6m4' \
    > test.out 2>&1
eval_tap $? 58 'AdminGetPlayerSessionAttribute' test.out

#- 59 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'jh31ZPVFbUhJxU7M' \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerBlockedPlayersV1' test.out

#- 60 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'V5KRihIro5xobeSi' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 61 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'K3xtug5gcWeefKYj' \
    --body '{"listBlockedUserId": ["9l26sevJjeoxBVF2", "VLNtW74CxYnXekn2", "01TolQNBnrUHrJDB"]}' \
    > test.out 2>&1
eval_tap $? 61 'AdminBulkBlockPlayersV1' test.out

#- 62 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "Bj1cW6PAur23PTPi"}' \
    > test.out 2>&1
eval_tap $? 62 'AdminDebugProfanityFilters' test.out

#- 63 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list '9g7hXTbBudEy5p50' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'AdminGetProfanityListFiltersV1' test.out

#- 64 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list 'CwW80YwpSXrLi7Jz' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "B49yOCXEYJbrwixb", "note": "3ujllsK8CxMg7yuK"}' \
    > test.out 2>&1
eval_tap $? 64 'AdminAddProfanityFilterIntoList' test.out

#- 65 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list 'rjJwUTsdkBiCRk9g' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "6k8WhzEe6E47p2UA", "note": "pUK0fOSSI4sXmXzi"}, {"filter": "kw2wtEbBTQ0ZIvdE", "note": "jwdW1E4azECGwEJT"}, {"filter": "cxJqFOUPAI0WDdqX", "note": "0uvQ3oGYRffEM4At"}]}' \
    > test.out 2>&1
eval_tap $? 65 'AdminAddProfanityFilters' test.out

#- 66 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list '7ZcBZgXRP3LXO9eF' \
    --namespace $AB_NAMESPACE \
    --body '[39, 19, 48]' \
    > test.out 2>&1
eval_tap $? 66 'AdminImportProfanityFiltersFromFile' test.out

#- 67 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list 'uVYgc3asxM0mGHah' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "1kUs7Lm1PtZXzsr5"}' \
    > test.out 2>&1
eval_tap $? 67 'AdminDeleteProfanityFilter' test.out

#- 68 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'AdminGetProfanityLists' test.out

#- 69 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": false, "isMandatory": false, "name": "hlXQQydAtcMEFEoi"}' \
    > test.out 2>&1
eval_tap $? 69 'AdminCreateProfanityList' test.out

#- 70 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'kydtI2t116LsNbaQ' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": false, "isMandatory": false, "newName": "VbH7QpMET78k9oh8"}' \
    > test.out 2>&1
eval_tap $? 70 'AdminUpdateProfanityList' test.out

#- 71 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'SElH1a7LbPaYMDQV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'AdminDeleteProfanityList' test.out

#- 72 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'AdminGetProfanityRule' test.out

#- 73 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"rule": "x1MCwELuMaEHezpZ"}' \
    > test.out 2>&1
eval_tap $? 73 'AdminSetProfanityRuleForNamespace' test.out

#- 74 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "Gr6Z32RZ2v3z7jYs", "profanityLevel": "pQugVSMQC2Nza2XU"}' \
    > test.out 2>&1
eval_tap $? 74 'AdminVerifyMessageProfanityResponse' test.out

#- 75 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'AdminGetThirdPartyConfig' test.out

#- 76 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "925HVc04qVOFiupU"}' \
    > test.out 2>&1
eval_tap $? 76 'AdminUpdateThirdPartyConfig' test.out

#- 77 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "vKs4gFrzRvT5jF70"}' \
    > test.out 2>&1
eval_tap $? 77 'AdminCreateThirdPartyConfig' test.out

#- 78 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'AdminDeleteThirdPartyConfig' test.out

#- 79 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 79 'PublicGetMessages' test.out

#- 80 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'N2aD7Ewo33HwMx63' \
    > test.out 2>&1
eval_tap $? 80 'PublicGetPartyDataV1' test.out

#- 81 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'TrTYf7u7HCxpaNkU' \
    --body '{"custom_attribute": {"gljUJFW514banwaL": {}, "4cewnY0GtH0SGw6u": {}, "a0QBwcdBiXwqn7I2": {}}, "updatedAt": 21}' \
    > test.out 2>&1
eval_tap $? 81 'PublicUpdatePartyAttributesV1' test.out

#- 82 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'bL53tHkt4rzrlfmo' \
    --body '{"limit": 7}' \
    > test.out 2>&1
eval_tap $? 82 'PublicSetPartyLimitV1' test.out

#- 83 PublicPlayerBlockPlayersV1
samples/cli/sample-apps Lobby publicPlayerBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"blockedUserId": "NmMK8L1DgRCZa7Wq"}' \
    > test.out 2>&1
eval_tap $? 83 'PublicPlayerBlockPlayersV1' test.out

#- 84 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'PublicGetPlayerBlockedPlayersV1' test.out

#- 85 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 86 PublicUnblockPlayerV1
samples/cli/sample-apps Lobby publicUnblockPlayerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Ioh4JfMeP16W2jgs"}' \
    > test.out 2>&1
eval_tap $? 86 'PublicUnblockPlayerV1' test.out

#- 87 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'true' \
    --userIds 'xGZ083A0j8CcQ5gN' \
    > test.out 2>&1
eval_tap $? 87 'UsersPresenceHandlerV1' test.out

#- 88 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "57TmKXqv5hWaMIi9", "topic": "BPJUrlS1KHWQjetH"}' \
    > test.out 2>&1
eval_tap $? 88 'FreeFormNotification' test.out

#- 89 GetMyNotifications
samples/cli/sample-apps Lobby getMyNotifications \
    --namespace $AB_NAMESPACE \
    --endTime '2' \
    --limit '54' \
    --offset '55' \
    --startTime '65' \
    > test.out 2>&1
eval_tap $? 89 'GetMyNotifications' test.out

#- 90 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"Wh78v8II6OueBEI7": "niQOe1Mm71KmH6pZ", "3EVELvbZAUIamAy0": "y8yOHnUEgWHvaQpf", "6WtSepP8OVHyBmvk": "3dc6SWRRw320tDe6"}, "templateLanguage": "LpEEQJpsPtjdahQf", "templateSlug": "3RD2kqkKdQfXBn09", "topic": "1Bj7380rLjFxUzHF"}' \
    > test.out 2>&1
eval_tap $? 90 'NotificationWithTemplate' test.out

#- 91 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'GetGameTemplate' test.out

#- 92 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "Qppd5kGJRmtXWTvm", "templateLanguage": "VFPXd63l9J1Hqcyl", "templateSlug": "Tym1ETwkRZBpJFv8"}' \
    > test.out 2>&1
eval_tap $? 92 'CreateTemplate' test.out

#- 93 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'cGRZYNGpzhsxZUB6' \
    --after 'tvMgU5ZORCCIc7HJ' \
    --before 'jc7pTj1BOhJ3cmxM' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 93 'GetSlugTemplate' test.out

#- 94 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'TkGCte3SNuHR8ECq' \
    > test.out 2>&1
eval_tap $? 94 'DeleteTemplateSlug' test.out

#- 95 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'E0X46psS71hfim84' \
    --templateSlug 'KLUlzvAOuQYUV9X4' \
    > test.out 2>&1
eval_tap $? 95 'GetLocalizationTemplate' test.out

#- 96 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'RFip2ZLbNwpozKNT' \
    --templateSlug '38SE1cAJAfx6Y6D3' \
    --body '{"templateContent": "lxKPcLgwtBhPGrb1"}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateLocalizationTemplate' test.out

#- 97 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'KoN7UG2hFa4X6kb0' \
    --templateSlug 'Jdw4Gvjy7Kx9eOu1' \
    > test.out 2>&1
eval_tap $? 97 'DeleteTemplateLocalization' test.out

#- 98 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'ZjLvVwqWwOQJUZ3J' \
    --templateSlug 'gGyp8kPD5wfo22Fn' \
    > test.out 2>&1
eval_tap $? 98 'PublishTemplate' test.out

#- 99 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'XsxmtyQOON83Keiz' \
    --before 'tKe66h3BP1JoisJi' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 99 'GetTopicByNamespace' test.out

#- 100 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "cKIFvnHICkSsyg75", "topic": "ZuBCzeOeuGOKyivv"}' \
    > test.out 2>&1
eval_tap $? 100 'CreateTopic' test.out

#- 101 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'wMnexhQJYH9CPxrE' \
    > test.out 2>&1
eval_tap $? 101 'GetTopicByTopicName' test.out

#- 102 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'qC1e2CpXEa5FteGY' \
    --body '{"description": "BksUtYalkFzDkWTU"}' \
    > test.out 2>&1
eval_tap $? 102 'UpdateTopicByTopicName' test.out

#- 103 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'BENGis70bgEksx7d' \
    > test.out 2>&1
eval_tap $? 103 'DeleteTopicByTopicName' test.out

#- 104 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'HUDU8QtWNfSzLLw7' \
    --body '{"message": "LJ1jvsSoaVEllxOI", "topic": "W8fpw1A35U77ct0Y"}' \
    > test.out 2>&1
eval_tap $? 104 'FreeFormNotificationByUserID' test.out

#- 105 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'FWzfj6OwRpSShDkn' \
    --body '{"templateContext": {"10piuo6JLlEvD49W": "tOqzG9638lPgtJoB", "dfkUxddbacEvy0cI": "4HwBbMK4ROM2N3it", "DpYmVyss7uOviA4A": "NYO9uvOsJEcHof8x"}, "templateLanguage": "EdCbFEZU0XanTKmh", "templateSlug": "h7mCWkLoikYumhtL", "topic": "fXlAgpgPA8HqXD6w"}' \
    > test.out 2>&1
eval_tap $? 105 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE