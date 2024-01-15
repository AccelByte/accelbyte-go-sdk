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
echo "1..60"

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

#- 2 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["NNYsv944t41XQYWV", "fXELW65th8MjuBHn", "O3npqcPt4o8okToa"]' \
    --endCreatedAt '56' \
    --keyword 'r1ItD4YZ0SZ4rkrB' \
    --limit '81' \
    --offset '61' \
    --order 'SjJ4zBS8VcHl9tQz' \
    --senderUserId 'VzQ6OORdBzCxkSUZ' \
    --shardId 'j8vCglZbkdM3W1bw' \
    --startCreatedAt '19' \
    --topic '["iBtN3L3RnhnXTMY9", "DWJ3z4FsQaxwXwWS", "1fdkNygfqPjy5TWc"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "J5AweuFWgAZXPjcR", "name": "RVkQCZ4kGFwDTwAt"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '52' \
    --topicType 'PuN1z7Hh4MNiDPCc' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["3zMBKhZ6fyvX3ceJ", "1BAAjpHWKA6mvyWZ", "hi24Y7D1CHq4ROMb"], "description": "dnBueSwsEAQXmPRC", "isChannel": false, "isJoinable": false, "members": ["S7Ze656EavtYezYd", "w2UmZRSlW9mmPlOR", "m2LTo3nxoDDTzCaj"], "name": "YWfwzOBFvqGqQnlr", "shardLimit": 70, "type": "SwPx8M6Mw4qOM4X3"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '2' \
    --topicName 'moQWV1cP23IWUSmO' \
    > test.out 2>&1
eval_tap $? 6 'AdminChannelTopicList' test.out

#- 7 AdminChannelTopicSummary
samples/cli/sample-apps Chat adminChannelTopicSummary \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminChannelTopicSummary' test.out

#- 8 AdminQueryTopicLog
samples/cli/sample-apps Chat adminQueryTopicLog \
    --namespace $AB_NAMESPACE \
    --endCreatedAt '6' \
    --limit '17' \
    --offset '52' \
    --senderUserId 'LDx4aDoDQcb5x6Nm' \
    --startCreatedAt '9' \
    --topicId '9rzqIOwGCiLJLJVm' \
    --topicIds '["zalrrR7gzaqQpCZa", "H2Dh7pMc9cy4Ug8V", "JNvuBpDub47lC4Eo"]' \
    --userId 'PfGXdRRXemMUSuvI' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'lBTHbnzW1CCjySJf' \
    --body '{"description": "cD0LkMG03TxtlU9y", "isJoinable": false, "name": "fW15uIxEVXdfDKEJ"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic '36J9HwmGIUYfCfK2' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'vq0kkATciGhRxkYi' \
    --body '{"userIds": ["rVn2kB0sWkKcjCic", "DqIxKdJXozKavQnw", "TRUjxfHUAeIOV4R3"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'NebZuDPEuaASQFey' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'hDq1aqXDP41aBvEI' \
    --body '{"message": "jPzF7ymBclPVKH4S"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'ToRgOiPbefLtKpjW' \
    --namespace $AB_NAMESPACE \
    --topic '5m2eTRm24VB3KJhc' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'OAKzllOOerePPWsZ' \
    --isBanned 'true' \
    --isModerator 'false' \
    --limit '17' \
    --offset '29' \
    --shardId 'ZIaVWcGPTbhfUdAH' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'QrpmiZ5vLIN4Su4c' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'mdC8AeEZVvdCoBcq' \
    --body '{"userIds": ["icxoiFyX9mOY5eCT", "iwZ752N5U3mlehyw", "2fM7plxYj5FZOmY3"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'UgbvLjAydtBCWivg' \
    --userId 'isV9Z4UROmihfrjf' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic '0RllLy7UPzl7U4eM' \
    --userId '5A8zWm4jpOlqgDwH' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'false' \
    --includePastTopics 'false' \
    --limit '56' \
    --offset '16' \
    --topic '["pzSC2yZpCRtyJMLA", "MV9qq8fLPbhvlQ4m", "lrAIJSTK0iRyVGed"]' \
    --topicSubType 'CLAN' \
    --topicType 'PERSONAL' \
    --userId 'VDuDEmOW6e7MFABm' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'CfltEMXSpu5IHVJo' \
    --includePastTopics 'true' \
    --limit '25' \
    --offset '29' \
    --topicSubType 'NAMESPACE' \
    --topicType 'PERSONAL' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryUsersTopic' test.out

#- 23 PublicGetMutedTopics
samples/cli/sample-apps Chat publicGetMutedTopics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'PublicGetMutedTopics' test.out

#- 24 PublicTopicList
samples/cli/sample-apps Chat publicTopicList \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '30' \
    --topicType 'IBX4OSy9JHN2znAq' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'qUKcrhsAavfBfjCN' \
    --body '{"userIDs": ["lwyNxUNLWKN98gO3", "dlojqZx732UWrcjC", "8RtLZWMn1d3nzOtv"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'WnLMFpvGxXoxS2Uz' \
    --limit '40' \
    --order 'URgpZcQdpV7wmOTp' \
    --startCreatedAt '92' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'cfaz69cz5w3lIWmf' \
    --namespace $AB_NAMESPACE \
    --topic 'CNERGDgCbg0g4vos' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'XS8Bz300TKVnZNat' \
    --body '{"duration": 2, "userId": "8HpZAaHiyUlgVF2E"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'SFR9i5HRfbRshqua' \
    --body '{"userIDs": ["zdTbCU1X7fTra3rt", "YINjl0YOYFv3Kz9G", "nf2BYXgem8cg2OUI"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'KxzWZcqsLfM2AZww' \
    --body '{"userId": "XEMECWrt7wLL2Vt5"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnmuteUser' test.out

#- 31 AdminGetAllConfigV1
samples/cli/sample-apps Chat adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAllConfigV1' test.out

#- 32 AdminGetConfigV1
samples/cli/sample-apps Chat adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'AdminGetConfigV1' test.out

#- 33 AdminUpdateConfigV1
samples/cli/sample-apps Chat adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"chatRateLimitBurst": 14, "chatRateLimitDuration": 82, "concurrentUsersLimit": 45, "enableClanChat": false, "enableManualTopicCreation": false, "enableProfanityFilter": false, "filterAppName": "ygpr10Lo5zSGW3eM", "filterParam": "3VEngwyNXXxz3IG8", "filterType": "NUZGzxCIUY1DfYR2", "generalRateLimitBurst": 58, "generalRateLimitDuration": 28, "shardCapacityLimit": 15, "shardDefaultLimit": 24, "shardHardLimit": 26, "spamChatBurst": 54, "spamChatDuration": 65, "spamMuteDuration": 15}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateConfigV1' test.out

#- 34 ExportConfig
samples/cli/sample-apps Chat exportConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'ExportConfig' test.out

#- 35 ImportConfig
samples/cli/sample-apps Chat importConfig \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 35 'ImportConfig' test.out

#- 36 AdminGetInboxCategories
samples/cli/sample-apps Chat adminGetInboxCategories \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'AdminGetInboxCategories' test.out

#- 37 AdminAddInboxCategory
samples/cli/sample-apps Chat adminAddInboxCategory \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 29, "hook": {"driver": "KAFKA", "params": "t7cPlynCqa0G2uXV"}, "jsonSchema": {"2GecF2B3dTrKPIN2": {}, "Mm8yOgrqoh4wMiQy": {}, "uutc5LNUxQ8Wz6wG": {}}, "name": "hy1ppRcyxE7i3BUv", "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'TTL3M3iWXsXiOeOR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'K7FXIoUnvUErdQLN' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 76, "hook": {"driver": "KAFKA", "params": "UJfzNwCOsjo04OZd"}, "jsonSchema": {"5w4SLN8sJFPyTm3v": {}, "kGtezfXYf12mwnVa": {}, "1LLFDMxXmzIiKpzj": {}}, "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'DhdEs2HdwCYlRaZt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'jz2AbrzlF2Yn4A4h' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '54' \
    --limit '65' \
    --messageId '["Wyf89jsEAcoV938U", "A6LMq1IsXfB4Ee5h", "Z4ZsZ8jX9qmfWO62"]' \
    --offset '85' \
    --order 'TRgtEi1wj7ynd56u' \
    --scope 'USER' \
    --startCreatedAt '6' \
    --status 'SENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "Xf2vFxSiWUa5jtd8", "expiredAt": 75, "message": {"fYLIW2ugs61NOQvr": {}, "UkKsBLbCRCplnuvi": {}, "ilzq4jWGwcjOlJTG": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["zsRFM0Oh0UBTF3ZJ", "2jMl64pf9Xi1TzO7", "NNSilrsia8ldzSa7"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'YvKwb5EKQ5gR5xFp' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["mqJ7z4hmPGqNlk76", "pJavaICHW5DZnGMS", "vxSPkIifKObh43Uw"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'AwTN0L6ckWNCy584' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '55' \
    --status 'UNREAD' \
    --userId 'NvIeDk26IgXLJxt4' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'cUWz9W1l5jHrstYv' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 90, "message": {"NhVL0UOm9l4tpMJt": {}, "BkLPwo8jD4LxfHKr": {}, "bFGRXsehM9YktXqE": {}}, "scope": "NAMESPACE", "userIds": ["Y8PlH34YFKvuT8EL", "bnzP83cGfgWIKQzP", "Ops252EY8Zqj6Dki"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'AoKshfcHr0FwNiWM' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["8VEkGmT1HX7dSs3k", "QY3JfAR8WmOqRLya", "cFLTRJpvSB8ANUVj"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'GR3jBlo0YmeJdaHS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId '83eTfgRyS0lV1k47' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'zKFDpc1iLJb67kyu' \
    --includeChildren 'true' \
    --limit '59' \
    --offset '40' \
    --parentId 'jjBqAqpMFupDywOv' \
    --startWith 'RXXCvVyPnbZOX5jr' \
    --wordType 'YTd7y4boHtdyYahW' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["Dsa2V5OYTvvIHqrn", "BKQLCldUjlVoPbTS", "C3EGdYwo53ihofHE"], "falsePositive": ["gJsZxCjPlfQHNxFT", "j07DP3Bxek83aV6T", "7RmsA1TrSET7XP4t"], "word": "Eb1G9Tmj6Td7fSEU", "wordType": "m52OLCepTguWdxEi"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["AdepqSp3QqVgsfEM", "yTUKvQ4qrIg16iGb", "FAzeaph2PGNgBvvf"], "falsePositive": ["spgm9jxqjZ0nMLF6", "QQnfrDgo8zJ1eDcO", "U5PNsPBHJmllqwhq"], "word": "mR3JcokqaKpFltmu", "wordType": "cptZBx8sXJU5fNf9"}, {"falseNegative": ["W7cegU4NwIifz8E2", "A5l8s9x3XqFw1UfE", "yDt92FzMPjS8lCQh"], "falsePositive": ["4afKg1YkXwpA9zJz", "Aqr66BIsdnCttMCf", "fXbft3FOaJcci70V"], "word": "RnckIEUijJW8sVbg", "wordType": "t5CkUTtXROUEp8wZ"}, {"falseNegative": ["gtfMyUm0jmuGjjH2", "orrGtSy8lcn5ORrX", "vyRZoFrnN8eV7HFk"], "falsePositive": ["yYq2YTHqUaI1XDvh", "DSj08LzRKtAlWv8c", "IGw98BS1ZlerCWSh"], "word": "BxBTF8Dzr0Njgs7H", "wordType": "9jlZM6V2FQEUkomJ"}]}' \
    > test.out 2>&1
eval_tap $? 53 'AdminProfanityCreateBulk' test.out

#- 54 AdminProfanityExport
samples/cli/sample-apps Chat adminProfanityExport \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityExport' test.out

#- 55 AdminProfanityGroup
samples/cli/sample-apps Chat adminProfanityGroup \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityGroup' test.out

#- 56 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'LEAVEOUT' \
    --showResult 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityImport' test.out

#- 57 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'aSoM4iWagrCulqtX' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["KMkqjcSA8hsKkWHA", "qp8iOTEKUv5rmrTJ", "kXekMv5F9hZHg36k"], "falsePositive": ["TmFEBMDboadME3m3", "52cmp4McWlTJT1qz", "ckPgAJ4dIUVVbnUa"], "word": "IyVVCbN8f1lD81SS", "wordType": "0jsWRPDiu29s38hS"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'ZaZncLgQS2eFqxjh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'iJwjcxs9jbCBVvCC' \
    --namespace $AB_NAMESPACE \
    --topic 'O0KTmIoHjg3z5ZFI' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE