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
echo "1..65"

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

#- 2 AdminFilterChatMessage
samples/cli/sample-apps Chat adminFilterChatMessage \
    --namespace $AB_NAMESPACE \
    --detail 'false' \
    --body '{"message": "2hm04TpTuPM20AeL", "timestamp": 60, "topicId": "QblJdlldteMKAHxc", "topicType": "PERSONAL", "userId": "3cqhi8pHQCyOuVao"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["97CkoRmnyopUagN9", "7WgZmGP3iE3AnnDN", "c1tNquKhOHsYuA72"]' \
    --endCreatedAt '52' \
    --keyword 'VwarHQHu6I7EBzhs' \
    --limit '59' \
    --offset '73' \
    --order 'EkBzLGybN0WX7XTd' \
    --senderUserId '2xe0INgbfxHB9giu' \
    --shardId 'hH2yQ041t0uVp4Xa' \
    --startCreatedAt '0' \
    --topic '["yQBNBFU8K5WnqvGr", "ZDzyvgOFjT7S5S6p", "DblwfghCQojq7wkK"]' \
    --unfiltered 'true' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "4tZwpQzfWc2tSgHm", "name": "5MxxvJ0J0Mrm5Yuz"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '32' \
    --topicType 't7Ls6J5YkmPjxrSD' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["7EeK4rvY87hcgWLf", "fSxJYxQf4M90rhu3", "hYo3M1PQe3eRjmhN"], "description": "7mFoJjpIbN0d3FuZ", "isChannel": false, "isJoinable": true, "members": ["6hgyWOKE0gEbxTpx", "WXuYaBmV59pHIDVb", "jDMLo8Huac0at5lR"], "name": "8i4eVsbkp1RalXfc", "shardLimit": 40, "type": "3fPl3LvHfYeQKmeL"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '46' \
    --topicName 'AL8CgCy7zndqXNGS' \
    > test.out 2>&1
eval_tap $? 7 'AdminChannelTopicList' test.out

#- 8 AdminChannelTopicSummary
samples/cli/sample-apps Chat adminChannelTopicSummary \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminChannelTopicSummary' test.out

#- 9 AdminQueryTopicLog
samples/cli/sample-apps Chat adminQueryTopicLog \
    --namespace $AB_NAMESPACE \
    --endCreatedAt '89' \
    --limit '23' \
    --offset '48' \
    --senderUserId 'kAXA951VEQZ8B6iy' \
    --startCreatedAt '85' \
    --topicId 'qsv1GhVlupSGGE11' \
    --topicIds '["LoquUK9mydFtGvW8", "iItG0Xa1iAlCcd3L", "cbILo2nGKF96GL4R"]' \
    --userId 'be9lnt5P7cvuCKah' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'A5cLdqlwoUd8R7V1' \
    --body '{"description": "2GJU8X0i2yc8YjPg", "isJoinable": false, "name": "7QmRrpRMnehpCiMC"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic '6iCKMRIXzdWBlEJN' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'DaiQaG5mQ51EEo4I' \
    --body '{"userIds": ["X42veESKOhoisklt", "UrntPCcPjFebkomv", "jaQYabWD8ZQYOcns"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'w9wdBtafugTGMpEf' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic '2uyWc1KJcxsqlUyD' \
    --body '{"message": "DEnZ5CkZlWeFZ2R4"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'TpAKxAYCoj3GFz58' \
    --namespace $AB_NAMESPACE \
    --topic 'QtCix5t186aDzvFk' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '2rHfHz5q0fQRAk0f' \
    --isBanned 'false' \
    --isModerator 'true' \
    --limit '85' \
    --offset '24' \
    --shardId 'jAgqHY9AJAmVldeJ' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'laIdMudVlTyjWqxh' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'gA6V4x8hZyahGxgf' \
    --body '{"userIds": ["nt38h674HtleHYrH", "6WySmzLcdo6X4C1o", "VrX2vtS4z4gcJCVy"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'mLccn3HHEmRlO9VX' \
    --userId 'wxETuj41SdggqegJ' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'k1NIdC7RjLnTkycT' \
    --userId 'EDOwcQDyRciWhXRv' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'false' \
    --includePastTopics 'true' \
    --limit '31' \
    --offset '46' \
    --topic '["0HI5067e3vrh2Cij", "bzejZY2ljzNJREUt", "kcc6TG5xHTfqCwAn"]' \
    --topicSubType 'PARTY' \
    --topicType 'GROUP' \
    --userId 's41a56X1ovCDdHEx' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'hrBuDgJTS8tb3O5P' \
    --includePastTopics 'true' \
    --limit '2' \
    --offset '39' \
    --topicSubType 'SESSION' \
    --topicType 'GROUP' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryUsersTopic' test.out

#- 24 PublicGetMutedTopics
samples/cli/sample-apps Chat publicGetMutedTopics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'PublicGetMutedTopics' test.out

#- 25 PublicTopicList
samples/cli/sample-apps Chat publicTopicList \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '16' \
    --topicType 'dVDBGWByNi3zh3f3' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'NUWTyfZOACClA3Wc' \
    --body '{"userIDs": ["SSBPlnUYHrLzG0z0", "ehUlZ5PPOvb50pRS", "RfjBHjuJdRK9GJJM"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic '5PdKnABvCeXo1gVd' \
    --limit '9' \
    --order 'ApxGbxNMHOAHQbC0' \
    --startCreatedAt '83' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'afWRaJLpbRUPXjOb' \
    --namespace $AB_NAMESPACE \
    --topic 'MNmAbNdep6yHXBji' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'Wjm9Xr2XKAZEKVzN' \
    --body '{"duration": 100, "userId": "yDcs0paOIw39Ite7"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'bn36as0yJPhjlMN4' \
    --body '{"userIDs": ["TZW6GgOddmdUXLTk", "n85NfgUPVGrVAoQu", "mdBx2FwsM2QjQVh7"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'id6VOv4Z9yo45yuE' \
    --body '{"userId": "IDxjWdCHlvcGvlh7"}' \
    > test.out 2>&1
eval_tap $? 31 'PublicUnmuteUser' test.out

#- 32 AdminGetAllConfigV1
samples/cli/sample-apps Chat adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 32 'AdminGetAllConfigV1' test.out

#- 33 AdminGetLogConfig
samples/cli/sample-apps Chat adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 33 'AdminGetLogConfig' test.out

#- 34 AdminPatchUpdateLogConfig
samples/cli/sample-apps Chat adminPatchUpdateLogConfig \
    --body '{"internalAccessLogEnabled": false, "logLevel": "debug", "logLevelDB": "debug", "slowQueryThreshold": 69, "socketLogEnabled": false}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPatchUpdateLogConfig' test.out

#- 35 AdminGetConfigV1
samples/cli/sample-apps Chat adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'AdminGetConfigV1' test.out

#- 36 AdminUpdateConfigV1
samples/cli/sample-apps Chat adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"chatRateLimitBurst": 42, "chatRateLimitDuration": 8, "concurrentUsersLimit": 2, "enableClanChat": true, "enableManualTopicCreation": false, "enablePmSendPlatformId": false, "enableProfanityFilter": false, "filterAppName": "rBL1gWv2igXqIFCQ", "filterParam": "Gee2e6kksAXZHugm", "filterType": "BHJ0gXqcheKRaU4b", "generalRateLimitBurst": 46, "generalRateLimitDuration": 88, "maxChatMessageLength": 20, "shardCapacityLimit": 18, "shardDefaultLimit": 45, "shardHardLimit": 70, "spamChatBurst": 44, "spamChatDuration": 26, "spamMuteDuration": 35}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateConfigV1' test.out

#- 37 ExportConfig
samples/cli/sample-apps Chat exportConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'ExportConfig' test.out

#- 38 ImportConfig
samples/cli/sample-apps Chat importConfig \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 38 'ImportConfig' test.out

#- 39 AdminGetInboxCategories
samples/cli/sample-apps Chat adminGetInboxCategories \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'AdminGetInboxCategories' test.out

#- 40 AdminAddInboxCategory
samples/cli/sample-apps Chat adminAddInboxCategory \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 53, "hook": {"driver": "D97Wtkanlk5EJR0J", "params": {"N0PfcnHeSKuyNbHu": {}, "lMmBacBps67YaMJb": {}, "Dxx9y2MJaefo4rRe": {}}}, "jsonSchema": {"nOwu9xdOWCwMzZHF": {}, "nANok90v5NPUDSRu": {}, "PSVfnmC2ZQjMys3w": {}}, "name": "X78Y1Ljm74Py0DIh", "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'GzPzxxzsjPnyjGNo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category '4u0bx1AvcPrSG8df' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 45, "hook": {"driver": "ufBaCCFfpegTxDjy", "params": {"hERBzsFOTw68H2UX": {}, "TAS104K3Dl6odFw0": {}, "Q0bZgKfYWNCiIoCj": {}}}, "jsonSchema": {"DE0zSCuhgPPkmNVu": {}, "fjb7SoKisTJBup6J": {}, "kumjrpHunPV6NAym": {}}, "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'SuQN7NhHGs8N4ps8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'AdminGetCategorySchema' test.out

#- 44 AdminListKafkaTopic
samples/cli/sample-apps Chat adminListKafkaTopic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'AdminListKafkaTopic' test.out

#- 45 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId '2Ehqsn8DVwrCzopH' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '3' \
    --limit '30' \
    --messageId '["Tu3NNERNAtZHI13H", "ChxMZ6jzBYvQgxK4", "5YZvztVeask2jLR2"]' \
    --offset '22' \
    --order '3UDwh3k0UPidmd4H' \
    --scope 'USER' \
    --startCreatedAt '71' \
    --status 'UNSENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "J22RzFaZSvYmAWMG", "expiredAt": 84, "message": {"xQsTYEKrKvEcW3lv": {}, "VzWjFJlt23ihMGc7": {}, "8bTKhVagNml2FDDA": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["2Q3HUsGFrjnyGdab", "aigSOb4aFB19rMf3", "tanVqsZX0YMvuSHH"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'hJFhcgH8dtKFQoWS' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["3ZDkcFZNnZo2AvVE", "O74X0e1SUcMCmueM", "iNpYAFDHtYNTtRrT"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'Xc4fZWmkTFJeIySu' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '27' \
    --status 'READ' \
    --userId '7z2AihFt9b0hw9MX' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'BQjy4noDuajkZMOd' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 63, "message": {"n0bvZ6TW83dErpkm": {}, "6z8s3fqQTQF3hWJ2": {}, "T1vhVVZ8n7kQcT4N": {}}, "scope": "NAMESPACE", "userIds": ["ZsFYgOvnD0VGPrYD", "CNaV8HhnuyVF4Pee", "ZozXaTSUhhmuxgQB"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId '2NAn72QdygtHuNAt' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["1z7P1XWqCgbHmDBB", "BdVTVS2IRvR8z7Dr", "5q3brFVht9GaaBTl"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'nyjnNGfZWzCI5rpO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'luykb6cWubNY2KGK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'Mb6HfXMDVIwMgwr9' \
    --includeChildren 'false' \
    --limit '83' \
    --offset '90' \
    --parentId '5tQeDlrlxcnjjmpT' \
    --startWith '3lfZvCVKxUdI4zXh' \
    --wordType 'XSEbqcvtjL7xc3A9' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["P8Qyr89id328j4bT", "PrdbIZazuuEyhBqu", "2C8QNoZiB3702Iq6"], "falsePositive": ["JUMAQ3BbIIIRCHPv", "oqkUxRHaqAF2oKyA", "GmxfOYwaf2Qi2OcZ"], "word": "nEdy28diTxY7A2wO", "wordType": "fsUBgKjvno9tphcK"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["ouMYBVHw8kGF4X84", "u4B8YBdk2NWc312o", "G9VSpkWCaKYYCFKb"], "falsePositive": ["QtYQrbCSfEhcJSqf", "r2D1i49vHLQg7pvD", "uJZlPi6sX7dU6KrM"], "word": "whqirN0DnoWubIrO", "wordType": "coKrJwYqcUiwDlbq"}, {"falseNegative": ["ybQ0UD2LtBs8ZMrX", "llZ2B430o7AVefhH", "Rzvr3hpaJXFAgmni"], "falsePositive": ["4cYEaeg1G7CvenVl", "eNBGLmOhsRAsuk44", "r31T0vQCV1cMzgX1"], "word": "uTRQVZ0q9SnetJzq", "wordType": "RvnT4HfwBj7TgMZi"}, {"falseNegative": ["LJgXAOUpa3oCDube", "yVTPVyb8UrQ7rslq", "2rNOhdu6sUon7ePc"], "falsePositive": ["lwt4hKyg0p1CI0o2", "nyxgpc7NZVVayY8I", "dS9nY48eEDn4jLRx"], "word": "ml5Lyz9Osx3pKmc8", "wordType": "RHRbYXjs9y2dEJLn"}]}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityCreateBulk' test.out

#- 58 AdminProfanityExport
samples/cli/sample-apps Chat adminProfanityExport \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityExport' test.out

#- 59 AdminProfanityGroup
samples/cli/sample-apps Chat adminProfanityGroup \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityGroup' test.out

#- 60 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'REPLACE' \
    --showResult 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityImport' test.out

#- 61 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'X9PDdcQDFr6jmbjy' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["AkDoZkc9kDJhfWO1", "4qo8Oq0J1rgzhrFV", "6yNceVdY2grCo2Ty"], "falsePositive": ["cv7m5EFLFuyAXO7Z", "fYRWPU4RgsvEtVet", "qDRHYZ0dK713ZnMD"], "word": "17FCkwguwuTwJsx7", "wordType": "wuk89xbEs382XzFP"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'CgN7zJsTzu5tpHhh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'AdminProfanityDelete' test.out

#- 63 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 63 'PublicGetMessages' test.out

#- 64 PublicGetConfigV1
samples/cli/sample-apps Chat publicGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicGetConfigV1' test.out

#- 65 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'D3sajuDOlGXcOEWQ' \
    --namespace $AB_NAMESPACE \
    --topic 'i1vJ90bSokYXClaI' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE