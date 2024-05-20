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
    --body '{"message": "aWM4g0H3PvMpVWYK", "timestamp": 82, "topicId": "u07BJpVQUs5ZmMEE", "topicType": "PERSONAL", "userId": "KNGl1uUWj2C3B8GV"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["1D4Zy6GowKDbbWu4", "3sdYieBVYIb8eiKI", "AlML7ffJazZoCOwn"]' \
    --endCreatedAt '80' \
    --keyword '2Lp6lIYDC5SFeE5j' \
    --limit '39' \
    --offset '21' \
    --order 'PfKLbvoxJP63U6Ph' \
    --senderUserId 'hrUmVuNbM7IxQ4uc' \
    --shardId 'ZrK00VQo7pvCUYdc' \
    --startCreatedAt '67' \
    --topic '["xVH2qZGXAp9nXF7F", "DYzMwtinmTTSaFYN", "vHJLuAhxuDaRFcv4"]' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Feh6gyEakBXrbb6C", "name": "By8So7KBrVxJVYD2"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '22' \
    --topicType 'QdtdVbMDI0QRelqF' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["aws4l6Pr7D1ByD2g", "NOtPJ13ZzT1VnXDA", "ypoDqnSzFllW7A4I"], "description": "kxXpmf9ZS6J9XDOw", "isChannel": false, "isJoinable": false, "members": ["1h2PgG1Idaw89rzK", "Naj7UpwNEDvXgUOR", "AVeNaDFI04mSgixo"], "name": "Zhy1Yuh9uWGY89kP", "shardLimit": 81, "type": "LkXDEyC3p5MCukhp"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '24' \
    --topicName 'TuHzY5ioU8jc0s9j' \
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
    --endCreatedAt '39' \
    --limit '69' \
    --offset '42' \
    --senderUserId 'JkkNbb2WesZzijzV' \
    --startCreatedAt '61' \
    --topicId 'xbPMvrfIjgEbRi6i' \
    --topicIds '["d5OYJYqnJDKDmqhj", "Ti3dzCZSnwUmrSvR", "YQmvfXQLweyCJ5v2"]' \
    --userId 'BGINZ2XIVrRSOEjo' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'SFxoYj9pctc5GLmh' \
    --body '{"description": "Vm3XRdrsrKchaaH5", "isJoinable": true, "name": "uX6DpWPJ7xKoqZiQ"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'aIxn2uktljM5ig5V' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'peUHx23haR9zJR8s' \
    --body '{"userIds": ["EPmYpI6mTDyxG7hH", "0wN3wZQJWVOqpeCz", "YukheOK3KrFPOsia"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'hZzKClpHg4YLcLON' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'l3CNz7SbpmUXvhsD' \
    --body '{"message": "bnFgQx4kZcW8VBnB"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'KJLlWWrHNxF6yqAP' \
    --namespace $AB_NAMESPACE \
    --topic 'AXhQ2zUlBnr3OOW5' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'h2JRZUKSCjlb0hL6' \
    --isBanned 'true' \
    --isModerator 'true' \
    --limit '55' \
    --offset '25' \
    --shardId 'cFirlC5ZTq490sPB' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'KsVdt6cYzmZSkGwX' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'UD0gzrILtUVVxVPS' \
    --body '{"userIds": ["ea4KMooVbAAdMCif", "ewTRsJrr2t3WLCOF", "cxpS3HPkqZcYpH5s"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'oQRpV0eAJeCLcMMu' \
    --userId '6ElDgzzz0ozdCQxx' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic '2xDQhoExFUcMdMhV' \
    --userId 'cfGMutv0Pj0psp6w' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'true' \
    --includePastTopics 'false' \
    --limit '55' \
    --offset '28' \
    --topic '["uDw7RvNkxc9yfr3D", "huLgw8e434Y4VWAN", "2YS7CBI61ti7cMCr"]' \
    --topicSubType 'CLAN' \
    --topicType 'PERSONAL' \
    --userId '41KHU7SwZr4lcZw3' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'Wr01huhOOOWXiRCc' \
    --includePastTopics 'false' \
    --limit '46' \
    --offset '68' \
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
    --limit '64' \
    --offset '45' \
    --topicType 'EJ8NRZdVvhFg9Y0M' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'uWClkZ37jRHl5Sxw' \
    --body '{"userIDs": ["l0E9yFB7wQDOK5Zb", "7y5KG1xVC5O8bLRI", "2TujA7i6L9UsObh8"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'EiJ7iPUSbZMTP0fv' \
    --limit '75' \
    --order 'Az9ffjhFaML9piXQ' \
    --startCreatedAt '34' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'POnTI07vg80Te2eD' \
    --namespace $AB_NAMESPACE \
    --topic 'gqvtTocFupk2fM7K' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'JsmdCCU7QdQ1y2pH' \
    --body '{"duration": 88, "userId": "eFhk5vrUqx8vuBEa"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'ar0ZCZDpPS7ayZby' \
    --body '{"userIDs": ["3ykb1ykNcukTklG3", "h9KI3xv16o2aDc43", "DjoKeOv63zl7njQE"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'sc6e7iOXZxY1pPuC' \
    --body '{"userId": "v2tqofInnb0mQoMa"}' \
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
    --body '{"chatRateLimitBurst": 86, "chatRateLimitDuration": 27, "concurrentUsersLimit": 5, "enableClanChat": false, "enableManualTopicCreation": false, "enableProfanityFilter": true, "filterAppName": "7aK6XGYyh0kNGiVe", "filterParam": "XbjRdezMiLHyB4uc", "filterType": "0UAhFr5gf9XcPsec", "generalRateLimitBurst": 25, "generalRateLimitDuration": 36, "maxChatMessageLength": 8, "shardCapacityLimit": 73, "shardDefaultLimit": 81, "shardHardLimit": 1, "spamChatBurst": 41, "spamChatDuration": 42, "spamMuteDuration": 88}' \
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
    --body '{"enabled": false, "expiresIn": 79, "hook": {"driver": "8J50LIiuphpr2fHG", "params": {"QRfWMLn2nDSsqywd": {}, "KwZRj5rClE8MQB0S": {}, "e4sA3HvaRuqDkNKu": {}}}, "jsonSchema": {"tWaXykHu8tj16Fvf": {}, "XxMPhgygh7hM6Wys": {}, "SJm0FgpzBI1rCASZ": {}}, "name": "OVVCYZ24GqEhqrmu", "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 38 'AdminAddInboxCategory' test.out

#- 39 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'TwECsUMVAlqK7RVI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteInboxCategory' test.out

#- 40 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'sp37XAHP4HDBRuuL' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 98, "hook": {"driver": "m4BMLZVotavXDaAr", "params": {"3wFl5HnTNHrIGaoM": {}, "nvYXDLTiP61sLc3V": {}, "3rrIDnED85VSP5Ys": {}}}, "jsonSchema": {"nLZs8lCa3uNTXrhu": {}, "KXxgaL2QIFa0YGRW": {}, "Ie2yLhLZScf5S7HS": {}}, "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateInboxCategory' test.out

#- 41 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'fVuQValMu8dviC75' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminGetCategorySchema' test.out

#- 42 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'kjtzMxIOeWAeIz7b' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteInboxMessage' test.out

#- 43 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '8' \
    --limit '53' \
    --messageId '["1nIYje5acmvVMWcv", "H5V6KrxaH80pWBZ3", "mfjPwH9AME4WcX5Y"]' \
    --offset '85' \
    --order '06LAqmKHq4cfgkAd' \
    --scope 'NAMESPACE' \
    --startCreatedAt '52' \
    --status 'UNSENT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetInboxMessages' test.out

#- 44 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "0DNMoN7ZYjRhEMvm", "expiredAt": 72, "message": {"0ankXEby4dXttZSz": {}, "H3fVzqUY7He5pWMj": {}, "NI4oQU4oMBrrAa58": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["2zaOZweshpZFcEGC", "5yX3Lin2St5FeTtb", "sXheEtAU1MUB06GQ"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminSaveInboxMessage' test.out

#- 45 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'GrUXMvh071jUmJRw' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["U6hPmXk2g5gOZfeo", "ctYrtwx40qCo6gPa", "YFcMXJ5ACYLsCwqM"]}' \
    > test.out 2>&1
eval_tap $? 45 'AdminUnsendInboxMessage' test.out

#- 46 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'LTlwKMeOSXkTc5uw' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '100' \
    --status 'READ' \
    --userId 'XBwcM0uOtejPirjv' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxUsers' test.out

#- 47 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'wj6DwWBrJjWA9bf5' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 19, "message": {"9Pt1CRzBxDBTgazj": {}, "cgCkRQucZFENlsCV": {}, "fh72HzHm9cxdMbrn": {}}, "scope": "USER", "userIds": ["484luy1ZlpTEXYOj", "h9pKt6exxoe63pyb", "dmlTzLEiU81BhjMz"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateInboxMessage' test.out

#- 48 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'bR9ExCQS7UnQngBJ' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 48 'AdminSendInboxMessage' test.out

#- 49 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["xki0DjAIl1TPFo4E", "qsxEUyNb7UCDFsN1", "tT7sFJa3HYY5bTIe"]' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxStats' test.out

#- 50 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'f6GHCKYejxy5S2RB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminGetChatSnapshot' test.out

#- 51 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'GRoTzDltPBN2yaqZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteChatSnapshot' test.out

#- 52 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'QiA2VhHX39iMgnbr' \
    --includeChildren 'false' \
    --limit '48' \
    --offset '70' \
    --parentId 'gmOOmPnw8BfUSn8B' \
    --startWith 'VE7Emnx9tCkemQKs' \
    --wordType 'vLATVvsol3lKbl2g' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityQuery' test.out

#- 53 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["V8usrNRjWyM8qGKV", "tgFTWkL6ClF9FLgV", "GArTBkFgPZwcnxSq"], "falsePositive": ["V4meOJiRCjVVYWTn", "JhbcfB2H2mH13C09", "W8pzDvSBAqQAtu1B"], "word": "vFpqQnaGg7079pBp", "wordType": "nrHseoSgToBBBCLE"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminProfanityCreate' test.out

#- 54 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["QLmfLG4e9BfsEllB", "ontCBkJEBRMijd4j", "8cl1ui3wmwDjyGzi"], "falsePositive": ["h1cOP633OHCrqnC4", "xPxonJWVnigOftXx", "DpsLgb5Z7xxg7Zx2"], "word": "0lAUxlLV3kJelV3Q", "wordType": "1WDZlSoKOLZWidOR"}, {"falseNegative": ["e8a4ZciNjQkphvnk", "QGNbMuejAx6OPifF", "ptb04aEkXQFqZdT6"], "falsePositive": ["4oFclxiGuQSen0v7", "BzjNmQTTBUe6MlTp", "mZSzX4DD38x7Z87H"], "word": "owwRnhBkXSk6vncL", "wordType": "WRCKdpxPj52kagIi"}, {"falseNegative": ["AGoRufaq0cGiQtos", "QhqGGZ7oRyVu2sNZ", "9WcXSW5TDR5IEyQt"], "falsePositive": ["9B3BHszwVqtYKcp4", "vp9a2FMvXzBQN9nU", "WiYJvXdoFHtc4au7"], "word": "1STPWUldw72X8uoT", "wordType": "hAPEfExIrNHsyhSy"}]}' \
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
    --limit '94' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityGroup' test.out

#- 57 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'REPLACE' \
    --showResult 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityImport' test.out

#- 58 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'JFMrIjFRPscpQvTa' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["VdE2JmTB16QETbv0", "b7Kaf4J8hmQYRknh", "4Jhxn0XZQsmAbAU6"], "falsePositive": ["hB1kDxZS3Iwo7xI0", "8OxJX7BGvV5M66bL", "TyLclbLUucwfT5Pi"], "word": "14jNyo6NrHAfwcss", "wordType": "voxjw0WgJLnFz7HQ"}' \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityUpdate' test.out

#- 59 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'uBkHHiLWP6g1mSeT' \
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
    --chatId 'lRvpetAIC8zWqXYC' \
    --namespace $AB_NAMESPACE \
    --topic 'wMqiqxXsRuaIfa95' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE