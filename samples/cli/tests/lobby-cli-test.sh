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
echo "1..109"

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
    --limit '62' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "AD4E9SfkaRUV1ZJV", "friendPublicId": "cAmJHCW2ux7fJYzu"}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "mXhAerldvV86VBBY"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "KlEgR09IdvREasiD"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "Gqxfw4JcbdXxGV7n"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'pRxRKs3BSYkIr6Qr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "9DN4VcKtpgAE47So"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'Y9yU4a3Sc8uki4Ye' \
    --body '{"friendIds": ["PQGlZWLIN6nO9sUs", "IZpx8ii92o1BN3Wu", "T1KWcsUsPJyLRzaV"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace $AB_NAMESPACE \
    --userId 'Y7LiSvpDKXK2sb10' \
    --body '{"friendIds": ["PPyq5gZOz9dl1O8K", "FEJQ06qRg9LALKof", "BLs8DCJW0hoRrrkg"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
samples/cli/sample-apps Lobby syncNativeFriends \
    --namespace $AB_NAMESPACE \
    --body '[{"isLogin": false, "platformId": "6CAAkGSo3t0c8u0y", "platformToken": "EXDWxjGHnzIXO1iW", "psnEnv": "2mFuLLjge1LDOqI0"}, {"isLogin": false, "platformId": "EvlrhvANcEAoU3C6", "platformToken": "h8wITQOaIuNCq08m", "psnEnv": "5lZJ9vZ1DHhhfqoE"}, {"isLogin": true, "platformId": "mgopcFDqox85smMI", "platformToken": "reAKsfC5n6pxn9sA", "psnEnv": "dNXYjlBkCL4y1NBP"}]' \
    > test.out 2>&1
eval_tap $? 16 'SyncNativeFriends' test.out

#- 17 SyncNativeBlockedUser
samples/cli/sample-apps Lobby syncNativeBlockedUser \
    --namespace $AB_NAMESPACE \
    --body '[{"platformId": "hUm6Qrl58zWvFTfE", "psnEnv": "5HDtgV3hUff66WJI"}, {"platformId": "92Mxt5i0vEj5Wcgb", "psnEnv": "yZvIGmztBqcpQTDm"}, {"platformId": "8U4RLMFCTcj83zuo", "psnEnv": "QpyK7VewirBDKihO"}]' \
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
    --body '{"logLevel": "debug", "socketLogEnabled": false}' \
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
    --body '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 45, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 39, "chatRateLimitDuration": 83, "concurrentUsersLimit": 14, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "TiWhSJREceAlWOEh", "generalRateLimitBurst": 20, "generalRateLimitDuration": 53, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 96, "maxFriendsLimit": 18, "maxPartyMember": 14, "profanityFilter": false, "readyConsentTimeout": 39, "unregisterDelay": 46}' \
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
    --userId 'HhQiIq0LLpLi5u0C' \
    --friendId 'UzPcowf9BLtpGL00' \
    --friendIds '["hCV6G3AEfyedlsrm", "lp1b6JAU8r7juSDf", "Kak8D9FDqEcaPUsI"]' \
    --limit '89' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 25 'GetListOfFriends' test.out

#- 26 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId '2CB0GFKQoGCRzsdB' \
    --friendId '6qJwFkftjBnForH5' \
    --limit '12' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 26 'GetIncomingFriendRequests' test.out

#- 27 AdminListFriendsOfFriends
samples/cli/sample-apps Lobby adminListFriendsOfFriends \
    --namespace $AB_NAMESPACE \
    --userId '0NnoqFzzdKhanj2k' \
    --friendId 'ROkKxYiNS6JbpZZN' \
    --limit '39' \
    --nopaging 'false' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 27 'AdminListFriendsOfFriends' test.out

#- 28 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'Gyg310BzwHQ1Iqzj' \
    --limit '66' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 28 'GetOutgoingFriendRequests' test.out

#- 29 AdminGetGlobalConfig
samples/cli/sample-apps Lobby adminGetGlobalConfig \
    > test.out 2>&1
eval_tap $? 29 'AdminGetGlobalConfig' test.out

#- 30 AdminUpdateGlobalConfig
samples/cli/sample-apps Lobby adminUpdateGlobalConfig \
    --body '{"regionRetryMapping": {"bG5nWGTCbyjoRcfP": ["ps23e7gHxEUl15Ko", "RvZZ6i6qrngIt1qw", "IanglrCnnzHTScG4"], "RdfOOvwSvFyQz6f8": ["REkdxsbDHFfl2fNK", "D3SOoe9YNFrwAo5j", "PNRfcHePU3oiLkVk"], "loOuMQbngbM5qSl7": ["VxWoeEPylaEaDCOT", "LoZYFTfNKUtZZ93N", "nlwSNhySNFGBu99a"]}, "regionURLMapping": ["urpz7X0rQTd3JHaV", "hKQ7o34rOQ8rWNyc", "H53IHZpsxc0R0gUC"], "testGameMode": "wvvmeO33tYD1tJVN", "testRegionURLMapping": ["xYyKAb8VU9QCqdaN", "ZRLdyyAzjbf4bntq", "zOSlYjBpQwQ38pwA"], "testTargetUserIDs": ["BzZecCvlnHPLkbCH", "BKCN6DbbS5c9GmEt", "rikktlbQafJHjWPh"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateGlobalConfig' test.out

#- 31 AdminDeleteGlobalConfig
samples/cli/sample-apps Lobby adminDeleteGlobalConfig \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteGlobalConfig' test.out

#- 32 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "ChhHEJmeVhDINsiV", "topicName": "H8vRXLiHczgUDMf1", "userIds": ["xumHErOznXYkVuza", "6dt0taIABLBSqGHP", "If42tktGiIb5cUSL"]}' \
    > test.out 2>&1
eval_tap $? 32 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 33 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "8ABYWn3tZc6bv4fp", "topicName": "TUHqPdgj4D7pj23A"}' \
    > test.out 2>&1
eval_tap $? 33 'SendUsersFreeformNotificationV1Admin' test.out

#- 34 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'rydph4oKu4ALnYPt' \
    --body '{"message": "5gKh8OaBUxH0bL8T", "topicName": "AuiCYOXuKW2F0R1I"}' \
    > test.out 2>&1
eval_tap $? 34 'SendPartyFreeformNotificationV1Admin' test.out

#- 35 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'GFNtezN3dRjWeNBH' \
    --body '{"templateContext": {"956MYTSkK0WR7zys": "eGqXxaIiArpv1nNO", "x7V9jDDDBZMKTuCF": "Cjea70DLR07A3lZC", "HmflQc9rcQ4OxaH1": "2bqkwgnT4kIcDhMo"}, "templateLanguage": "oIikY6AhgDrgx4hB", "templateSlug": "RpP83hKAfq4aRGYv", "topicName": "VMO6suYzkJb2bDvV"}' \
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
    --body '{"templateContent": "0kz1kN82BNJTQpVD", "templateLanguage": "7f6ubcTkd2363Koq", "templateSlug": "YIYT1KcVLVVnGXa0"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateNotificationTemplateV1Admin' test.out

#- 38 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"E9BgSpKU52Ridzuv": "tVMVUCSl446IAijE", "cObKeXCSKebcHhXT": "QeR4285SZSCCD5Dt", "7g0pzE4cn0nZ9czB": "PcHtXayXMqyKXw2J"}, "templateLanguage": "8Y2kVVTn9KJD1028", "templateSlug": "ks5ORz6ST3XynTmI", "topicName": "vX6iuzFbQNFWVWmf"}' \
    > test.out 2>&1
eval_tap $? 38 'SendUsersTemplatedNotificationV1Admin' test.out

#- 39 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'VLFVDUy5ieZwRy3o' \
    --after 'rVqUdwPIHxbtjMrF' \
    --before 'y9J1YFh7RlJJkFs2' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 39 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 40 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'hLbPBJ1D9XgE3IjJ' \
    > test.out 2>&1
eval_tap $? 40 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 41 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'nhL6Tef2PyFObr7I' \
    --templateSlug 'T2oSsG515436itj6' \
    > test.out 2>&1
eval_tap $? 41 'GetSingleTemplateLocalizationV1Admin' test.out

#- 42 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'Y7nNsfqWq6RYO2QM' \
    --templateSlug '3pzAxvrVZFY5h1wE' \
    --body '{"templateContent": "SOYazWyJncAGato7"}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateTemplateLocalizationV1Admin' test.out

#- 43 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage '96bwo1XZGyBDn5Xq' \
    --templateSlug '64WTUIXwv8iaY6bJ' \
    > test.out 2>&1
eval_tap $? 43 'DeleteTemplateLocalizationV1Admin' test.out

#- 44 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'f1IDMt5z1VNMpLEa' \
    --templateSlug 'klgRGJhHPSHO59V6' \
    > test.out 2>&1
eval_tap $? 44 'PublishTemplateLocalizationV1Admin' test.out

#- 45 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after '0swz93XEfl4KYDHP' \
    --before 'a2yl3deZZHKrIWKH' \
    --limit '88' \
    > test.out 2>&1
eval_tap $? 45 'GetAllNotificationTopicsV1Admin' test.out

#- 46 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "qHK8gkyXcr3d1MxY", "topicName": "8n6Sg8XDbrhlMbSx"}' \
    > test.out 2>&1
eval_tap $? 46 'CreateNotificationTopicV1Admin' test.out

#- 47 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'OdmFKqkJ9staFvJC' \
    > test.out 2>&1
eval_tap $? 47 'GetNotificationTopicV1Admin' test.out

#- 48 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'j2fqFCmmyQsUZcVe' \
    --body '{"description": "0L0yYuofXoPxbLxG"}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateNotificationTopicV1Admin' test.out

#- 49 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'kFt3olHe8Xka1iBq' \
    > test.out 2>&1
eval_tap $? 49 'DeleteNotificationTopicV1Admin' test.out

#- 50 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'tG4o47PH6AWiH5q1' \
    --body '{"message": "7X942mVF9lxHFCgb", "topicName": "GFhT7y6qXK94RRKc"}' \
    > test.out 2>&1
eval_tap $? 50 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 51 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId '7RmF3D1yRZaOcJcb' \
    --body '{"templateContext": {"7i9KjcZXnuP96Yyq": "Ia6MN5TCuJmBdRdk", "YRwBrn7q0WYv3p6B": "AnWcHIoVoshs6Tp9", "VTDEt2RwRadMRtNX": "IKrzpX1ZzYD2AH0x"}, "templateLanguage": "kh3S3sXIDjitytz6", "templateSlug": "PZY2DaDVc5f6XgXB", "topicName": "Y0t00ODzCMeKZuDZ"}' \
    > test.out 2>&1
eval_tap $? 51 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 52 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'C4BJiz9tAFPHnCU1' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPartyDataV1' test.out

#- 53 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'xld9tV3WL85dsUiQ' \
    --body '{"custom_attribute": {"5Plu5SDC11Ju7Q9J": {}, "XcKIdV2RGGU8uwGT": {}, "FQPIncLpOsCxjHvj": {}}, "updatedAt": 93}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdatePartyAttributesV1' test.out

#- 54 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId '4fig7kFgrdsmcEJO' \
    --userId 'OsU3tYNSl9Ko3sqi' \
    > test.out 2>&1
eval_tap $? 54 'AdminJoinPartyV1' test.out

#- 55 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId 't1ojCE7GRds8boXV' \
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
    --body '{"listBlockedUserId": ["fXH40ndukwqy8Pjh", "Wq5FYQ14iQOkt2Aa", "OSyibMNQMHNTRq1O"]}' \
    > test.out 2>&1
eval_tap $? 57 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 58 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'tPLFlngaxZhOsdeE' \
    > test.out 2>&1
eval_tap $? 58 'AdminGetAllPlayerSessionAttribute' test.out

#- 59 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'woT0OdMiYGaWKZJH' \
    --body '{"attributes": {"X2tg0ywVNGKD50GF": "RrCTjebkgHsuYS8F", "DMwBohrTjau4hy6e": "iwgv8JxuYjVQbXEM", "OB1LOSyuGBSY7QeG": "vmJtBLn7OlW4hxrC"}}' \
    > test.out 2>&1
eval_tap $? 59 'AdminSetPlayerSessionAttribute' test.out

#- 60 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'Ii68ikt5nXgdQ9Td' \
    --namespace $AB_NAMESPACE \
    --userId 'vvZoPAWUNe4d73zh' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerSessionAttribute' test.out

#- 61 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KHIVBMKWvu6pwja6' \
    > test.out 2>&1
eval_tap $? 61 'AdminGetPlayerBlockedPlayersV1' test.out

#- 62 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'RZ0RTcJZscQikkoJ' \
    > test.out 2>&1
eval_tap $? 62 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 63 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'a64RtkkQaQyeV3zp' \
    --body '{"listBlockedUserId": ["6xXQH9yPL8ylMChc", "59f3ovd9ZVRXihOw", "PvUubSjX44033eQ0"]}' \
    > test.out 2>&1
eval_tap $? 63 'AdminBulkBlockPlayersV1' test.out

#- 64 AdminBulkUnblockPlayersV1
samples/cli/sample-apps Lobby adminBulkUnblockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Eku4QwGyEcUqW1uH' \
    --body '{"listUnblockUserId": ["6fi1p8ANLvW6vXAr", "GUwhdFPFlOvV64Pg", "Hyw9SbrvPozg68Ah"]}' \
    > test.out 2>&1
eval_tap $? 64 'AdminBulkUnblockPlayersV1' test.out

#- 65 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "bnI3Igw3c6QX0PJc"}' \
    > test.out 2>&1
eval_tap $? 65 'AdminDebugProfanityFilters' test.out

#- 66 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list 'Pkz53UqW1dQQD3IX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'AdminGetProfanityListFiltersV1' test.out

#- 67 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list 'ioL08mLEci5Hb9qL' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "fFvRKc8L2Vf2wOUn", "note": "j4QXaQoC1TlI71o3"}' \
    > test.out 2>&1
eval_tap $? 67 'AdminAddProfanityFilterIntoList' test.out

#- 68 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list '07FgPrRUCf8CQsjh' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "wqYaxG3qT8e7ZJC1", "note": "z7XhsBxGpMRnCARl"}, {"filter": "eXEXDF6ww4sy2uQR", "note": "6Q5E7FHWlku2YbWV"}, {"filter": "2PhxSjPRd6uNH1kI", "note": "KYNZERrHT6HaU8b7"}]}' \
    > test.out 2>&1
eval_tap $? 68 'AdminAddProfanityFilters' test.out

#- 69 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list 'EGmDK1uQMwr5YmlK' \
    --namespace $AB_NAMESPACE \
    --body '[50, 96, 82]' \
    > test.out 2>&1
eval_tap $? 69 'AdminImportProfanityFiltersFromFile' test.out

#- 70 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list 'BUbsneBdYPoymOHT' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "A4M1ubuTkuhXujgh"}' \
    > test.out 2>&1
eval_tap $? 70 'AdminDeleteProfanityFilter' test.out

#- 71 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'AdminGetProfanityLists' test.out

#- 72 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": true, "name": "isknDUSywzX9Q88n"}' \
    > test.out 2>&1
eval_tap $? 72 'AdminCreateProfanityList' test.out

#- 73 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'Y3dV3g70rpld0kOZ' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": true, "newName": "puhPM5uGjfcKNO60"}' \
    > test.out 2>&1
eval_tap $? 73 'AdminUpdateProfanityList' test.out

#- 74 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'IikMD2tkMceRClHo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'AdminDeleteProfanityList' test.out

#- 75 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'AdminGetProfanityRule' test.out

#- 76 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"rule": "oCa0mKzhKY4jCQeC"}' \
    > test.out 2>&1
eval_tap $? 76 'AdminSetProfanityRuleForNamespace' test.out

#- 77 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "hRYrgbRRpNr7cobU", "profanityLevel": "s0qsyLmTJVmtTqpm"}' \
    > test.out 2>&1
eval_tap $? 77 'AdminVerifyMessageProfanityResponse' test.out

#- 78 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'AdminGetThirdPartyConfig' test.out

#- 79 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "7dEUI0PURbSbiesL"}' \
    > test.out 2>&1
eval_tap $? 79 'AdminUpdateThirdPartyConfig' test.out

#- 80 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "nDrCnlO3mfwAHAmN"}' \
    > test.out 2>&1
eval_tap $? 80 'AdminCreateThirdPartyConfig' test.out

#- 81 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'AdminDeleteThirdPartyConfig' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out

#- 83 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'gb3n28Hal4rUzJsu' \
    > test.out 2>&1
eval_tap $? 83 'PublicGetPartyDataV1' test.out

#- 84 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'H638zCOzOuvAjKee' \
    --body '{"custom_attribute": {"YO0xXhw9Y8VcZYk5": {}, "ZjyuKxrpCDklnG6l": {}, "KpHuMValkr8q9DUv": {}}, "updatedAt": 73}' \
    > test.out 2>&1
eval_tap $? 84 'PublicUpdatePartyAttributesV1' test.out

#- 85 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'dYaIEph7Z5aoaPgC' \
    --body '{"limit": 20}' \
    > test.out 2>&1
eval_tap $? 85 'PublicSetPartyLimitV1' test.out

#- 86 PublicPlayerBlockPlayersV1
samples/cli/sample-apps Lobby publicPlayerBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"blockedUserId": "T9jV555CtXTMPTC1"}' \
    > test.out 2>&1
eval_tap $? 86 'PublicPlayerBlockPlayersV1' test.out

#- 87 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'PublicGetPlayerBlockedPlayersV1' test.out

#- 88 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 89 PublicUnblockPlayerV1
samples/cli/sample-apps Lobby publicUnblockPlayerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "oYC2M0G3NWRmHanN"}' \
    > test.out 2>&1
eval_tap $? 89 'PublicUnblockPlayerV1' test.out

#- 90 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'false' \
    --userIds 'Ve9HD4YouNPecT2G' \
    > test.out 2>&1
eval_tap $? 90 'UsersPresenceHandlerV1' test.out

#- 91 UsersPresenceHandlerV2
samples/cli/sample-apps Lobby usersPresenceHandlerV2 \
    --namespace $AB_NAMESPACE \
    --countOnly 'true' \
    --body '{"userIDs": ["XGvit55V78fUFgpB", "wBek4KzNhqM9ih9W", "fbpRWvmtrCnAPeqk"]}' \
    > test.out 2>&1
eval_tap $? 91 'UsersPresenceHandlerV2' test.out

#- 92 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "x7MBnkAauRd53zvY", "topic": "F9aMRwDpHuzXVfLm"}' \
    > test.out 2>&1
eval_tap $? 92 'FreeFormNotification' test.out

#- 93 GetMyNotifications
samples/cli/sample-apps Lobby getMyNotifications \
    --namespace $AB_NAMESPACE \
    --endTime '24' \
    --limit '66' \
    --offset '100' \
    --startTime '48' \
    > test.out 2>&1
eval_tap $? 93 'GetMyNotifications' test.out

#- 94 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"hD448X1muI7MCutE": "IugbKxwzJnzjfvPB", "SbGBnCHhDg25AkMC": "xVXrt1EDZy0mQRCN", "cPIHxGq8ZwT1ljuK": "QFzsJECokTbacSIs"}, "templateLanguage": "aXEjDjjx7KZArNY8", "templateSlug": "9EANHrsFYvppyQ5j", "topic": "7Bfw8MdHsvgxnchH"}' \
    > test.out 2>&1
eval_tap $? 94 'NotificationWithTemplate' test.out

#- 95 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'GetGameTemplate' test.out

#- 96 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "R3pKwJ0uV4UP76YA", "templateLanguage": "m7w1r0jbinpEfZvw", "templateSlug": "1WqDKC0gxOh1qDJj"}' \
    > test.out 2>&1
eval_tap $? 96 'CreateTemplate' test.out

#- 97 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug '2aCo0x86jEUs0bbd' \
    --after 'QMFbFB5dnTk4fvlN' \
    --before 'j7CgNWPLvFR3E4tX' \
    --limit '43' \
    > test.out 2>&1
eval_tap $? 97 'GetSlugTemplate' test.out

#- 98 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'aH80UidoZO6NsGlO' \
    > test.out 2>&1
eval_tap $? 98 'DeleteTemplateSlug' test.out

#- 99 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'fDcE4afaBSySMmQD' \
    --templateSlug 'QbiTEjY2rY8c60Sg' \
    > test.out 2>&1
eval_tap $? 99 'GetLocalizationTemplate' test.out

#- 100 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'lE9WK17zE7bbgq9f' \
    --templateSlug 'Lys4n7nbIcDzT8GE' \
    --body '{"templateContent": "IVW6VKWVnxvFVtk7"}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateLocalizationTemplate' test.out

#- 101 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'IanHSu7dr51Ygs1v' \
    --templateSlug 'tgyY80Zu5PHqW1u5' \
    > test.out 2>&1
eval_tap $? 101 'DeleteTemplateLocalization' test.out

#- 102 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage '2fNbFu8sAZyyvfxt' \
    --templateSlug 'aWLn7kN2bLx4LzHO' \
    > test.out 2>&1
eval_tap $? 102 'PublishTemplate' test.out

#- 103 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'msQQfTLs1XRxfOxW' \
    --before '4ufxbIdvNLBVHdKl' \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 103 'GetTopicByNamespace' test.out

#- 104 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "YpmSxbtAT3CbpXZJ", "topic": "iWuFGArDk4OeH3hh"}' \
    > test.out 2>&1
eval_tap $? 104 'CreateTopic' test.out

#- 105 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'es7HMzJdYhKULTUv' \
    > test.out 2>&1
eval_tap $? 105 'GetTopicByTopicName' test.out

#- 106 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'LRROOoXFKF4VxmVq' \
    --body '{"description": "3gglBXNT9ix5c78Z"}' \
    > test.out 2>&1
eval_tap $? 106 'UpdateTopicByTopicName' test.out

#- 107 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic '1NCfDw8WdC1YhL2A' \
    > test.out 2>&1
eval_tap $? 107 'DeleteTopicByTopicName' test.out

#- 108 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'GhlwzuOWPfUCWbb2' \
    --body '{"message": "RD1ipdeVwwJLHhdI", "topic": "pOIavC0cOZd1BOCX"}' \
    > test.out 2>&1
eval_tap $? 108 'FreeFormNotificationByUserID' test.out

#- 109 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'dLg6JOGhiyYi9V7k' \
    --body '{"templateContext": {"XrT0COM9VUcIgrYP": "SxKNcWoQ8nigzlsG", "HXeT81qzuo71H8NU": "bQzCJWz4VqaB8lMg", "ea34W1RuAk0NSjRN": "2LnyJFW0OYMx4ggv"}, "templateLanguage": "q4gryvTwCRFMVB1P", "templateSlug": "2Unzj8foOuXnW0kB", "topic": "LCDugrPFwh7XuzLU"}' \
    > test.out 2>&1
eval_tap $? 109 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE