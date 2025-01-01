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
echo "1..64"

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
    --body '{"message": "fuzdMi3sP24glL4X", "timestamp": 50, "topicId": "3Gp0D6OyOQwD8G3d", "topicType": "GROUP", "userId": "L6i7RtEt9w2K8wh9"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["FlCjVmJnz5mpADwY", "VHLIRe5sekuwqnTn", "VXCuYwxQy2cvb00o"]' \
    --endCreatedAt '72' \
    --keyword 'WTgBZHqScZkTZ9pf' \
    --limit '9' \
    --offset '93' \
    --order '9S34lTmNKBGiQuWR' \
    --senderUserId 'OT2j6oW097Q9eMNS' \
    --shardId '72SQ2u6cI20obMNx' \
    --startCreatedAt '31' \
    --topic '["NFAu7Di8Sisdncfr", "6jghUbZfE28q89mr", "si6YM7Ww9M9jRky5"]' \
    --unfiltered 'false' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "DRPzwFadVpJbgUSr", "name": "jQ68PwejrETv7t2S"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '59' \
    --topicType 'b69uBgRAiTq7pa6u' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["0pMZDPLdZgpnZrKt", "rXwJZ96z8z4SwGJo", "r7wusJMBysZshQfU"], "description": "g4OM0myzmgw8PZhj", "isChannel": true, "isJoinable": true, "members": ["hAnFBg1YTHiztspk", "l7QJpNq2T4h6qUGT", "WHtWjlo0uwN4PTu3"], "name": "vnKvUt3dd4jlp4yM", "shardLimit": 38, "type": "qSW0bGBEfM5mCUzt"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '84' \
    --topicName 'gVSmKlChyibxJOmh' \
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
    --endCreatedAt '40' \
    --limit '74' \
    --offset '56' \
    --senderUserId '8HtHlRHaQfGa8fQv' \
    --startCreatedAt '21' \
    --topicId 'VND7Um6xDa7wFLnN' \
    --topicIds '["z9joTPKMqEbN0qVL", "ySJvLl3MTyPjcsjB", "6r2Rhv91xZS0yI3v"]' \
    --userId 'zZ7OilFuCAILf4oH' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'zEWpkdaY113juZcD' \
    --body '{"description": "OscV6yPmhRaoTgU0", "isJoinable": true, "name": "gnQW6dAH2abQoS0R"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'myLfedZW6YZHdIga' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'PoZHW9tw4ONIx63K' \
    --body '{"userIds": ["5TBbVuJtdBGEcKbx", "nnG9hLK52ZtY0XPf", "o4u23q3oSktKlZ7c"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic '0Wlkw65P1B2OwTdC' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'Vo61rrUBOjYx5TtT' \
    --body '{"message": "brTgOoEM9KBJJ8aY"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'CFZDjGqbfb8GFFtZ' \
    --namespace $AB_NAMESPACE \
    --topic 'UoeEC5o7YtKl4a7J' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'pWX2P05XCZMRmw8P' \
    --isBanned 'false' \
    --isModerator 'true' \
    --limit '96' \
    --offset '13' \
    --shardId 'igCrNBJhg13107BU' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'xouIy5Cy0YSPcP2I' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'IZsuiXGMBNtcxh1Q' \
    --body '{"userIds": ["LzZt3PPbMKqBKent", "wPDiHWctoeZOFA8z", "AI9nm0saYCvZqvMU"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'CYJxbq67N8JAYCKp' \
    --userId '4jBof4eZhXrTTEoa' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'F8KYnJe7tgSR7HVA' \
    --userId 'MybCTBvKnguIrejg' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'true' \
    --includePastTopics 'true' \
    --limit '71' \
    --offset '85' \
    --topic '["DzDn28ZhHKot3wiG", "5QsR4RaSvcqYARYT", "et5UAMRk9DJXDf8b"]' \
    --topicSubType 'SESSION' \
    --topicType 'GROUP' \
    --userId 'djJgW36231WRONSF' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'f7jEikSbO5A5tpAd' \
    --includePastTopics 'true' \
    --limit '91' \
    --offset '81' \
    --topicSubType 'NORMAL' \
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
    --limit '24' \
    --offset '57' \
    --topicType 'LA9SlCrr9HcH0kQp' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'TSTG35nWvgG2Rp0S' \
    --body '{"userIDs": ["cjNgKms58pwh0WtY", "HH1OuLhmrXMU8VbQ", "8TJ7GwYSL9NRDdrw"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'Z0vVviQRUKFbQcZU' \
    --limit '59' \
    --order '9Y4UK3xpwqUFLWpv' \
    --startCreatedAt '91' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId '0fdzXRiGE7cJmWDi' \
    --namespace $AB_NAMESPACE \
    --topic 'eGCje7bghZE7V5Mu' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'eaA4RunBV1Yb8hLe' \
    --body '{"duration": 84, "userId": "IgntjM4ZtyNRseAf"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'ddtfIRY2HDvuDJpy' \
    --body '{"userIDs": ["pXYGMLv3927fuf23", "EqL1AaQBYSM2w025", "e60Mtn8l4BsaT1hV"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'g4ff9OZC0LSRZ3y9' \
    --body '{"userId": "EC67fGpmQzPcGPnY"}' \
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
    --body '{"logLevel": "warning", "logLevelDB": "error", "slowQueryThreshold": 12, "socketLogEnabled": true}' \
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
    --body '{"chatRateLimitBurst": 35, "chatRateLimitDuration": 28, "concurrentUsersLimit": 97, "enableClanChat": true, "enableManualTopicCreation": true, "enableProfanityFilter": true, "filterAppName": "fhuxcnLDWHmParvS", "filterParam": "ltedhfMtUGUuIJ1d", "filterType": "GQEHWFIh6zMwgunL", "generalRateLimitBurst": 43, "generalRateLimitDuration": 12, "maxChatMessageLength": 39, "shardCapacityLimit": 3, "shardDefaultLimit": 11, "shardHardLimit": 97, "spamChatBurst": 90, "spamChatDuration": 58, "spamMuteDuration": 92}' \
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
    --body '{"enabled": false, "expiresIn": 46, "hook": {"driver": "y0GUKtmVEFwZZ2sD", "params": {"PqFUlUvh3OXFl6C4": {}, "5txkHPkDFzkottvR": {}, "baq7eipsfEHu83BX": {}}}, "jsonSchema": {"XPnNaXIPWRRTc7TT": {}, "ByrZ2acAgZ5SzeGC": {}, "UdshYXNIt3Ny2Oyh": {}}, "name": "Xz9J8WHJNTDYVwhA", "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'ynVgJmbJ6lmmOeIO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'RZgq5szMbVhjtWAO' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 29, "hook": {"driver": "PH7EfMtBUAk08A8H", "params": {"2NcK4KceACwr6hS8": {}, "qqFpsmEivujSuvHo": {}, "yzSGb7f8vAaGp5fU": {}}}, "jsonSchema": {"9gCmrkPrMYZf9bzJ": {}, "Vk3HKRU37UI86iPV": {}, "jqoWcrLUCcfWflgU": {}}, "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category '7j6OeHurCY8WAheA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'AdminGetCategorySchema' test.out

#- 44 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'caJQqYEJzlJiAQRc' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteInboxMessage' test.out

#- 45 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '30' \
    --limit '84' \
    --messageId '["LXGKKNNuDozPcRkQ", "Ega2lxXofxFTnz0K", "6F33288LRezrZp2F"]' \
    --offset '54' \
    --order 't162QMiJBB3SyErC' \
    --scope 'NAMESPACE' \
    --startCreatedAt '45' \
    --status 'DRAFT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxMessages' test.out

#- 46 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "ZzSngDNwmuvynoc8", "expiredAt": 1, "message": {"V8E5OO0XL6A8xkrg": {}, "jOaZAW5GjAmiEbJk": {}, "ClGmbk8k9SLtwo9x": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["dwEaL2klMiZRFaFa", "zJQFnyvkKVfuGPMn", "AKUM6GyUroR10aoL"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminSaveInboxMessage' test.out

#- 47 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'BAuVPWdm0iYfWxzq' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["CbibSl5Oj1U5hYaH", "uIt8FPfJjU76QSrY", "z0dHSx0ujaTB7VCu"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUnsendInboxMessage' test.out

#- 48 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'DN36dd7VAPT6xuyr' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '92' \
    --status 'UNREAD' \
    --userId 'dAEdZmDcVBtXyiaU' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxUsers' test.out

#- 49 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'fAduqZpzPzwTQ43c' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 44, "message": {"Qfo7Y5HZ3mHoThFP": {}, "4WinLy0cqnksharv": {}, "nu5VXKG6DLcSOmq6": {}}, "scope": "USER", "userIds": ["G9jVX7ibJd4XTaKO", "Yp7x9brIn9cA6cQs", "VxfHp6qmbA8lGPje"]}' \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdateInboxMessage' test.out

#- 50 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'NT85UovD8J5SpITN' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 50 'AdminSendInboxMessage' test.out

#- 51 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["afZ8fIxN2pMWh0nG", "P9Zcd8FSHr3HGNJX", "wjECBpCnBjZoBmgx"]' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetInboxStats' test.out

#- 52 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'ArndqxEuM10I9TaP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'AdminGetChatSnapshot' test.out

#- 53 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'Hcnj4cTL1g6jjM5h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminDeleteChatSnapshot' test.out

#- 54 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'xMSxPcTfWlnpvqhW' \
    --includeChildren 'false' \
    --limit '42' \
    --offset '32' \
    --parentId 'dA85l07JQDlu41GK' \
    --startWith 'q4jJyAuBmGlVyfF0' \
    --wordType 'UH2Izj8NmKswbLeZ' \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityQuery' test.out

#- 55 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["YRASCUx7YPjn01Zc", "apYkR6Z2kqFCaHNO", "HO6CF5SpiXVqP6gV"], "falsePositive": ["f0hAHKDK5siJ9tav", "c5bmlw5CVZevmgsY", "ErHwKltj3LJZ1TSD"], "word": "QCQLtDUlmzOdXPW1", "wordType": "7PdbQ0XY0Mwu1tdC"}' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityCreate' test.out

#- 56 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["P05J618HGPo4Epn1", "vRgp5Vg7R3zE1f8N", "SWmI3IakqqRgSQma"], "falsePositive": ["AC2n8XduFf3O8Lew", "i48KD7X0jZlDhdNk", "jglk6yeznYtNWYmt"], "word": "xsPnYEKToHPVoUUH", "wordType": "MkWw17ClSNppch2G"}, {"falseNegative": ["7YpQmV7ekoypYTXS", "5zBpg84iCZf4djKQ", "6ahL6lwn8zptxUwR"], "falsePositive": ["SALnDh3GCDaU8ksu", "b21r77iZ7FAvTXl5", "FEuXP17x18r0eBjF"], "word": "QEmjaSaQ7JBCV5eq", "wordType": "qW3qDOWeEx8x1h36"}, {"falseNegative": ["ZxSvDFt5l117aCIM", "sIuVbdvBvspLkWGf", "IT2LSQLCAWlUFnpV"], "falsePositive": ["Z1yZpKht89gEStcf", "bhW35cVa3Ab9j1In", "8RbnbibL9YWS0QKB"], "word": "27aUOGXjMW3MEYtZ", "wordType": "yET9EQofZVluocC5"}]}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreateBulk' test.out

#- 57 AdminProfanityExport
samples/cli/sample-apps Chat adminProfanityExport \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityExport' test.out

#- 58 AdminProfanityGroup
samples/cli/sample-apps Chat adminProfanityGroup \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityGroup' test.out

#- 59 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'REPLACE' \
    --showResult 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityImport' test.out

#- 60 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'n8O8X0dbt6wPU8Sx' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["G3CjaeTSfsid9Wkr", "X4YGZ31wuXEnzh12", "g2AWJ0jEzyKC7OXn"], "falsePositive": ["Uh7VWMnVh2SCZJvU", "Addgo0cfik5JeOGK", "LPYpgVyWYFGaaZ1v"], "word": "C4sDQAET8JXxXoNz", "wordType": "Uzyq3B98KVa2o0I8"}' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityUpdate' test.out

#- 61 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'iOwNOIqZOXzDaNQy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityDelete' test.out

#- 62 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 62 'PublicGetMessages' test.out

#- 63 PublicGetConfigV1
samples/cli/sample-apps Chat publicGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'PublicGetConfigV1' test.out

#- 64 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'aKCZmmsAhgKBTUCq' \
    --namespace $AB_NAMESPACE \
    --topic 'QzuFz7bPG5TnmzHh' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE