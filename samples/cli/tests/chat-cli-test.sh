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
echo "1..62"

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
    --body '{"message": "Epl5iig82EG7vg3s", "timestamp": 59, "topicId": "uTOPXRxiUY23higo", "topicType": "PERSONAL", "userId": "oAwOkYBdk1xGYohR"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["3qAU1AGehvGXG3IE", "wvEal6VySp8mZzQL", "8jat6bjH5fHx98Wq"]' \
    --endCreatedAt '46' \
    --keyword '9UZTFEzCWtE9BTi3' \
    --limit '32' \
    --offset '74' \
    --order 'No03BrAYMw9OI6sx' \
    --senderUserId 'YbhsN0DemJBAKiy6' \
    --shardId '3WbznaJgecB7cwNI' \
    --startCreatedAt '15' \
    --topic '["HdI719fAqmKR8Gi4", "C6TBCv5lroxwrhre", "1iXic0BT1tL39gjj"]' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "tFIRlnNi1MKdl8S4", "name": "6Eeyo0Ue8prU2fEe"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '24' \
    --topicType 'zb2Oynn9X2hu0wVw' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["eqFStpF6LTRF0Z0u", "lZ6hgfbQ94TlUVwa", "27om3mUOWm0UnmMN"], "description": "5d2Y47Gjln4W4gaG", "isChannel": true, "isJoinable": true, "members": ["BBHqTlyuUkVu5FPO", "lKt9SkoVUnJlqA1n", "K78cKoPslBMLtMDq"], "name": "92814PXXNcZOBjt0", "shardLimit": 97, "type": "rSw4xVSq4iUPq3fX"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '60' \
    --topicName 'eVXOOLVnQg74gaxR' \
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
    --endCreatedAt '67' \
    --limit '93' \
    --offset '22' \
    --senderUserId 'J3aKzGMsrmMQCAHH' \
    --startCreatedAt '70' \
    --topicId 'OzzJYrQ4vvmR3J6K' \
    --topicIds '["ZI4QPUZTMkspQs7Q", "slj2ORj5J8fh1mou", "kk4hWQLADwPMUvDc"]' \
    --userId 'zmpy0uVBbl9bnhIJ' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'U6LbKz8vrgm1ucys' \
    --body '{"description": "wy0WNVjsygQu4XO8", "isJoinable": true, "name": "q226pMkHdE6njTvb"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'eS40v9zM3q3piNOa' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'IRyyEVdagljZLfyo' \
    --body '{"userIds": ["GKIBf81bDWa8U7by", "Uwq3DDkv0FaCMUlo", "4Kf8phPjoZDfkWmQ"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'VjhhdwkSRNRYyLhg' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'oWJes152Y8lOndAS' \
    --body '{"message": "7FGprp8lYiPokH6Y"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'cUAyr9wJ44MPf42N' \
    --namespace $AB_NAMESPACE \
    --topic '1vSZjOepmYqAL8Mx' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '2gRq9c1qCKwvSnZa' \
    --isBanned 'false' \
    --isModerator 'false' \
    --limit '77' \
    --offset '100' \
    --shardId 'AOIvPjk2Ji4qSwNi' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic '25cY3sUnRI2WpAkS' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'WUcdWBlZLFV0uiPx' \
    --body '{"userIds": ["LclNJNRrj2bRKNKD", "W7ZhSVSTaAenQMVV", "Qg6Rr4StwSv05Xpm"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'WRuwWhC1iaeIZjcP' \
    --userId 'JlepIZ7WCzYg6QuE' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'M0QvisgxPXj79LLW' \
    --userId '2QZ7sFyaFvLwldZb' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'true' \
    --includePastTopics 'false' \
    --limit '56' \
    --offset '14' \
    --topic '["p51wJHJiMZcqJQt9", "wYa5nawvPAsbLdHd", "cxg0l6GPt5bGivWe"]' \
    --topicSubType 'SESSION' \
    --topicType 'PERSONAL' \
    --userId 'FP5RHjAnsFzytSkB' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'qkNLrZ6ltYP5VU8X' \
    --includePastTopics 'false' \
    --limit '48' \
    --offset '66' \
    --topicSubType 'PARTY' \
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
    --limit '51' \
    --offset '31' \
    --topicType 'wQznjYWqF7wY5xXT' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'vi9ymLhpP8885w9Q' \
    --body '{"userIDs": ["4tBRJIYn15frNYwZ", "VnYIzQh441ZY40Qa", "XcDKdO6oRgTDHiEQ"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'ed9Tv8MpGx6QRZv9' \
    --limit '20' \
    --order 'zVBQTi2gvngENhwP' \
    --startCreatedAt '59' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'IBm1W1zzvisNy0vo' \
    --namespace $AB_NAMESPACE \
    --topic 'J64XMnS3chWl71UE' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic '6O5qGgfE7BsPuJGP' \
    --body '{"duration": 57, "userId": "dAkjwIgCPbnYYJli"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'niOHghWXmmeaeh09' \
    --body '{"userIDs": ["LTHS9v9H7vJiHBkl", "dIVY0Kg6A6r1BeDi", "BXTRkToRKZOH1o21"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic '48xZvd7CYsXszeVf' \
    --body '{"userId": "uquAmusr95UCA1xt"}' \
    > test.out 2>&1
eval_tap $? 31 'PublicUnmuteUser' test.out

#- 32 AdminGetAllConfigV1
samples/cli/sample-apps Chat adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 32 'AdminGetAllConfigV1' test.out

#- 33 AdminGetConfigV1
samples/cli/sample-apps Chat adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'AdminGetConfigV1' test.out

#- 34 AdminUpdateConfigV1
samples/cli/sample-apps Chat adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"chatRateLimitBurst": 65, "chatRateLimitDuration": 60, "concurrentUsersLimit": 23, "enableClanChat": true, "enableManualTopicCreation": true, "enableProfanityFilter": true, "filterAppName": "qJltBG8a93bKUuOV", "filterParam": "3g34Eco2pU1snjKg", "filterType": "HGrJ0mCRTU5OcNxx", "generalRateLimitBurst": 18, "generalRateLimitDuration": 86, "maxChatMessageLength": 97, "shardCapacityLimit": 58, "shardDefaultLimit": 41, "shardHardLimit": 65, "spamChatBurst": 41, "spamChatDuration": 33, "spamMuteDuration": 91}' \
    > test.out 2>&1
eval_tap $? 34 'AdminUpdateConfigV1' test.out

#- 35 ExportConfig
samples/cli/sample-apps Chat exportConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'ExportConfig' test.out

#- 36 ImportConfig
samples/cli/sample-apps Chat importConfig \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 36 'ImportConfig' test.out

#- 37 AdminGetInboxCategories
samples/cli/sample-apps Chat adminGetInboxCategories \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'AdminGetInboxCategories' test.out

#- 38 AdminAddInboxCategory
samples/cli/sample-apps Chat adminAddInboxCategory \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 67, "hook": {"driver": "yTjF5k84MwpdDCkk", "params": {"OYZYjeB20S1aEBgt": {}, "kmARrjEUeHEuUUa2": {}, "iZh313PzQCAVaY2c": {}}}, "jsonSchema": {"dE95utbVD9olH0fb": {}, "Zy27Gv2nY5xtUrvZ": {}, "xUNRSMzREURza2EO": {}}, "name": "P3YBdWhxmRLrT2xW", "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 38 'AdminAddInboxCategory' test.out

#- 39 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category '0kxYfInR7iRbDL72' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteInboxCategory' test.out

#- 40 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'OCwRmIXz6FJ5LmxH' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 92, "hook": {"driver": "db4hJS5KJ4MkIy24", "params": {"sUsczqWwycng5jjB": {}, "4xSkUfhXF7EXaFIP": {}, "oTPZEN4d6oJjVTHZ": {}}}, "jsonSchema": {"QqUgkqcJVHWWoQR7": {}, "hgiQRvYXN0ExaNkE": {}, "c6RtNbmQeXGgkWu6": {}}, "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateInboxCategory' test.out

#- 41 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'XHHGZ1SXl81JYeIX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminGetCategorySchema' test.out

#- 42 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'wg7QSG7WHgchqYrV' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteInboxMessage' test.out

#- 43 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '68' \
    --limit '78' \
    --messageId '["0xmLLaD0B8nPeYKd", "4NIaOEP1ddsNx6fn", "fqGPC1Ib1qlLhBRZ"]' \
    --offset '87' \
    --order 'tctdhITVhdGoZrJj' \
    --scope 'NAMESPACE' \
    --startCreatedAt '52' \
    --status 'SENT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetInboxMessages' test.out

#- 44 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "lmIKXL4G8x7bqcnp", "expiredAt": 9, "message": {"bGnRLZJzAH9dExQJ": {}, "W0h6F8kekCvUWBzJ": {}, "WjFrpNIOR8CQXvEu": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["P9pQO5fhwPuLLB6V", "QnqzJw0o9IHliinI", "7zjwHJXUDYy94bk3"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminSaveInboxMessage' test.out

#- 45 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'X0rqeZNrAcb1KwO7' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["9tZwlk4wY6qeG8Dj", "oPRzN3v6bynmoY1u", "BciZvIoFmbpNl0Jk"]}' \
    > test.out 2>&1
eval_tap $? 45 'AdminUnsendInboxMessage' test.out

#- 46 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'XkF2QkQi5y3TBOss' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '44' \
    --status 'UNREAD' \
    --userId '2nSFwuPUBRzha9nF' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxUsers' test.out

#- 47 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'DDyEW8QOF6BpX9I2' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 58, "message": {"TziJouJftaogFyDF": {}, "2xYAcZNc3yv1deTJ": {}, "vMsPyqA8alRFruzo": {}}, "scope": "NAMESPACE", "userIds": ["Lzs4pyabYutkYv1N", "WugFWY1JDSbbfH3X", "ZdySOikPAwsuQDUs"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateInboxMessage' test.out

#- 48 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'OepEH9y7udaME0rg' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 48 'AdminSendInboxMessage' test.out

#- 49 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["zqdrABStbPLbUdy3", "kdQKcRHMTGepUuSk", "oiIzSjtTSmFun3eL"]' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxStats' test.out

#- 50 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'Q07KtagrJfWtA55V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminGetChatSnapshot' test.out

#- 51 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'RjWzg4RJRTSttIbw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteChatSnapshot' test.out

#- 52 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'KLfhIsynuCx8PxLt' \
    --includeChildren 'true' \
    --limit '41' \
    --offset '63' \
    --parentId 'rhQj02AIont8u2IU' \
    --startWith 'JWDANcUlqOlG7edw' \
    --wordType 'lIgYF8NAPGQOxteE' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityQuery' test.out

#- 53 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["rfO9XvXD7FZu04S7", "ZQhCBastYXieJFgI", "jClwRTbFdyMGAxpv"], "falsePositive": ["dZhHNOZl1EjbzGDf", "wMZ8U8OpqrkrETGq", "FUOCRerzEVHQ9cjD"], "word": "KDn9G7oSJ8ZQUNHE", "wordType": "jNBdM6ePAGw4cL2E"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminProfanityCreate' test.out

#- 54 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["KLz5fQ4EuuQgPssa", "RlhfmxY3fejV2PfQ", "tD4FlCmWin0ZknjC"], "falsePositive": ["IJ9DrHlQp9IKdFly", "6wTjKiK25tPEhQ21", "QuHKipC19VW8FePn"], "word": "bOVOjn2tDHZcxq3F", "wordType": "FGSNa5PCAqMqHgL3"}, {"falseNegative": ["M1Iumgf18AjoAEiW", "S5ErYuwbUfMKrBgk", "QbhwqfFMitj15qL2"], "falsePositive": ["Yd2Mk9VzygUAOeHi", "V6e19T1ShGHPeV56", "JMUONeOp9rOy33uU"], "word": "9Rc1U5vXwJrJ4k3c", "wordType": "1BXH2oSNnCkZNWgy"}, {"falseNegative": ["TuNhCotaK9LqGg0E", "4u08TdKyrk6LGGnn", "G98HIjLuZRjqibt6"], "falsePositive": ["9O4vtOhv5PhSzmAX", "iGupTzIe2B3cMjjG", "MQc9lWJznxMyxgvI"], "word": "lGdLMqvdYLPHa9yi", "wordType": "xJb85I4UtqdWAI48"}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityCreateBulk' test.out

#- 55 AdminProfanityExport
samples/cli/sample-apps Chat adminProfanityExport \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityExport' test.out

#- 56 AdminProfanityGroup
samples/cli/sample-apps Chat adminProfanityGroup \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityGroup' test.out

#- 57 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'LEAVEOUT' \
    --showResult 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityImport' test.out

#- 58 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'C7TtZvb01TH38eQh' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["fk3MRJBenFqEcmxg", "BHFIrPo0rTRU2tY0", "JDiAUenHWDf9MwYa"], "falsePositive": ["LhCwtjLtXIlyZxxp", "2oQVYAkQlArB6QlQ", "aza5HuQhuITi81Ti"], "word": "NHry89FeKyNdRoIg", "wordType": "kOl9KafAc1nUBz4q"}' \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityUpdate' test.out

#- 59 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'JZRytwDiY8V366du' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityDelete' test.out

#- 60 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 60 'PublicGetMessages' test.out

#- 61 PublicGetConfigV1
samples/cli/sample-apps Chat publicGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicGetConfigV1' test.out

#- 62 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId '2N4fCIdfeBs5GWa1' \
    --namespace $AB_NAMESPACE \
    --topic 'rNTOKHtCc9Z29imd' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE