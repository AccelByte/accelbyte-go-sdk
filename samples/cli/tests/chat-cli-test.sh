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
    --body '{"message": "twLdE09AYk6Gclr0", "timestamp": 85, "topicId": "tBFTSByKorAnxh7c", "topicType": "PERSONAL", "userId": "9MuEFVH6kwGjLpz5"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["DaoeOzBXBnmDAZv4", "QG70P57X2Vhz5P6G", "FBA80S4khbMIncHU"]' \
    --endCreatedAt '19' \
    --keyword 'Cc9mFgBwKrl3txkt' \
    --limit '74' \
    --offset '38' \
    --order 'hNifIgcXtG33WdDX' \
    --senderUserId 'MkdecuN3mIQpmbdz' \
    --shardId '4pIWwo6W12Cur9QJ' \
    --startCreatedAt '85' \
    --topic '["zr90jHra2VMtSF6Y", "v3tFIa0dHBN4g6bf", "0i9zQXJbga2HTfqr"]' \
    --unfiltered 'false' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "3quyX8Ac2uaEftyp", "name": "BlVwWPo8ttWGuXKV"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '29' \
    --topicType 'eYGTeoxbNPcQMa5r' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["LFMWdpZlWC6lQXok", "o2AyDwiY8OztVCsF", "ZYEETCKJgMLzgf4z"], "description": "ciWiKX4AyxORo8k5", "isChannel": false, "isJoinable": true, "members": ["CXIoUmEUvNJC2u3H", "8NZsYAmmwIi3L9ac", "c8DI0VPTRcj133jd"], "name": "fT5AgjqNXXeteqmB", "shardLimit": 74, "type": "loPoBVTVPolueQxM"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '10' \
    --topicName 'AsHyNzfEk0uthsfO' \
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
    --endCreatedAt '29' \
    --limit '48' \
    --offset '91' \
    --senderUserId 'UqxFP16tTAohRT4Z' \
    --startCreatedAt '55' \
    --topicId 'Ls2X057TlU9jPkPc' \
    --topicIds '["r0uwmtf9WqynfhOs", "9oHixhoVqBwDpLSw", "mOoKXCcK9Msw6VhL"]' \
    --userId 'ZikaSqGJGBUWvFP0' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic '0dcOdlWACp5wMcjt' \
    --body '{"description": "XoG3UfHKowaWQkMv", "isJoinable": false, "name": "bLq9utrnET7qdzEJ"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'QqPvNjopVNm24kPW' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'vXHVmfKNRzQ2mjEa' \
    --body '{"userIds": ["Yqc0ljzhIpXlbgIB", "53EU1LyUlpTvCXgs", "XiHgZzXO0ZmpB6oj"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'gJCIEulUl6BOz5sQ' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'ElOHr6S9ZC1F7V7k' \
    --body '{"message": "Q777s3WTJBmGe5oK"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId '8EPd26XfyfPFMBRT' \
    --namespace $AB_NAMESPACE \
    --topic 'iSFdHRV9QE7NGHiB' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Wz4lgewELPlLxGCy' \
    --isBanned 'true' \
    --isModerator 'true' \
    --limit '40' \
    --offset '89' \
    --shardId 'TV7NhB8imaZVhY5P' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'LWpsaVkWglKYNcdb' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'XfeaFMnrXUnIeku1' \
    --body '{"userIds": ["rD5lrA6GUOIqiHZv", "OIzqO1u3BUZzBnWT", "gka9Xg5iDKKxQ7si"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'SnoPhc1mc761M6ml' \
    --userId 'xMqFGz2MMWj9qoAC' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic '84zeUYX7sv8VCG1x' \
    --userId 'B21f4iGhpZGInCzK' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'false' \
    --includePastTopics 'false' \
    --limit '3' \
    --offset '76' \
    --topic '["09j9zgE4UtfolzSQ", "gWaYc76Zz6T1CXbB", "9ZNbBTSR2rromVnS"]' \
    --topicSubType 'SESSION' \
    --topicType 'PERSONAL' \
    --userId 'aR8uB2fSBoANrPmS' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'TnsV4OckBGD4ewpM' \
    --includePastTopics 'true' \
    --limit '35' \
    --offset '39' \
    --topicSubType 'CLAN' \
    --topicType 'PERSONAL' \
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
    --limit '11' \
    --offset '27' \
    --topicType '6bNHkN4Ym7a2o2Zo' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'nQQChKfKIVb0lqev' \
    --body '{"userIDs": ["FO7W6lSeXs5aKzE2", "3TrCE6mmYdbcPDXv", "XBIZEcDnhMYvXlwe"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'ZV8QaJV1w9J7hZMc' \
    --limit '96' \
    --order 'ifosGzbhmUrUkRzR' \
    --startCreatedAt '51' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'hYF9t0L0VD8P3Q5V' \
    --namespace $AB_NAMESPACE \
    --topic 'SrDKMmaafpSmBTr4' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic '0nh0ZqzU1irRBXDh' \
    --body '{"duration": 55, "userId": "fqZ5elzt3Gb0Uhl0"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'clFCtjewCxL2et4i' \
    --body '{"userIDs": ["VMXlMRT8zzhf2GtZ", "Mp6sYO7SdXqTyVDG", "9jGIyjcpNJZeg8y8"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic '4vSwI2quCEpyOjsa' \
    --body '{"userId": "BsxiExcMpxOo41Zi"}' \
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
    --body '{"internalAccessLogEnabled": true, "logLevel": "debug", "logLevelDB": "debug", "slowQueryThreshold": 82, "socketLogEnabled": false}' \
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
    --body '{"chatRateLimitBurst": 3, "chatRateLimitDuration": 36, "concurrentUsersLimit": 27, "enableClanChat": true, "enableManualTopicCreation": true, "enablePmSendPlatformId": true, "enableProfanityFilter": true, "filterAppName": "OUeZJZ5vnN5ypGRf", "filterParam": "WJCn2x2ZszN4j1eK", "filterType": "ZYm0TEOf45Hg41iJ", "generalRateLimitBurst": 22, "generalRateLimitDuration": 77, "maxChatMessageLength": 93, "shardCapacityLimit": 88, "shardDefaultLimit": 6, "shardHardLimit": 1, "spamChatBurst": 57, "spamChatDuration": 72, "spamMuteDuration": 48}' \
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
    --body '{"enabled": false, "expiresIn": 90, "hook": {"driver": "XY8xGBJXrQrD3qdL", "params": {"9x1LxxtuAS3p29zb": {}, "WW4wvCIkkYax57TZ": {}, "wMTsuRpmDZM06gPF": {}}}, "jsonSchema": {"rQPMVU6VS1ufZwl0": {}, "wODA7VCDyGlEmy8r": {}, "NhU3d8wHIunAfQmY": {}}, "name": "0Co1iM61S3vI7NFL", "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'pzilcAxehZ9MuVqf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'cvzYFZzlbZVZWAZ8' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 41, "hook": {"driver": "kyIjOEYC1DDutqth", "params": {"HGAbHsiDSwvUmi06": {}, "7EUw6gZbHPIqjhbG": {}, "k0xrytg8Wm6j4Mg8": {}}}, "jsonSchema": {"a4scQiICIg7BRNVh": {}, "sj5QhDjbmh9KtyDQ": {}, "IXtl8jbqdW8VwWcM": {}}, "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'bkCIXxPE5BuMVfkP' \
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
    --messageId '8LrrQRf9WBW4fSrd' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '55' \
    --limit '70' \
    --messageId '["WdsOqrFDa5lE5p0A", "D47TLQaP56qaGCxE", "tc6yNO2Fih5DnWSk"]' \
    --offset '4' \
    --order 'pZv3gAqYZ1suFs4s' \
    --scope 'USER' \
    --startCreatedAt '7' \
    --status 'UNSENT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "saDMu8z37dpqb78b", "expiredAt": 61, "message": {"eTh8Fp7KHfBGvHU4": {}, "GUDAakSaOr0FjHgj": {}, "VhweOcxUfsq1QmqC": {}}, "scope": "NAMESPACE", "status": "SENT", "userIds": ["sDlT6mX7d6AdfWC5", "WwPxUsW5CKdHnXpu", "iMStCb751U3tikuH"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'lx7Jk24XYUu75Oai' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["5zD26JZ862rE8PMu", "Xy9lfMsXnBx6ZoxU", "y9cGID5SLQb6Jv3i"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'dda0K2AnZxPrn1tG' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '52' \
    --status 'UNREAD' \
    --userId 'ayKtMpf0K4wAO2VD' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'ZHt20G1zzmR5586b' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 41, "message": {"oFlVzfOVHSVnp8xO": {}, "32j1wXAPtgljweGk": {}, "NWELQbM3E2B2vbwT": {}}, "scope": "NAMESPACE", "userIds": ["KnRqZpadcfxySMMw", "1wKDVntXR6DZI14I", "6BAV7GVQwne48tPg"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'J228Qe8Bf0DkJuD3' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["fjepbuIuBaVfbo7s", "D8vRSCInoRmpPfk2", "U5Am0kEEH1gkLdMh"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'W08yKWhGiihQvgtX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'pyWSbNb8mUz5MmsB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask '4XLTj8kVRSYwI7gq' \
    --includeChildren 'false' \
    --limit '65' \
    --offset '77' \
    --parentId 'cilhRys13IdZdO0M' \
    --startWith 'Oymt4HtQ7yTSexIn' \
    --wordType 'ayGbbaWd2sbH9uAF' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["nu27xNYw7m6ViULn", "WXYkK2tw1QvmitdK", "LFodlFf5q4R9Jxxz"], "falsePositive": ["JO7XRR3Ye1TVbIqZ", "XD371bwpgS9pQIBN", "joWlkgMD6LUqaT9l"], "word": "FJo29vWOXU2juMEx", "wordType": "BTggUe7Jn4OeGen9"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["zpScQAmWNz9fS8Ha", "ZYGinmqm5qh9rCID", "XAgGAs7rAshFZg5T"], "falsePositive": ["bOMhS8QkWYiy2wMz", "GqCjcpc25haTJ6NC", "FjW54VqABPUgZhUb"], "word": "zZyyQGdVzn63KG7l", "wordType": "XKhoZkVNDCqHTVhO"}, {"falseNegative": ["KY60DGVUAtH3P0yH", "LuoPvVzzamH2rnho", "y2O18q5Obeo4ZBR5"], "falsePositive": ["4SiVYeDcaHi5IJuA", "rmYcr3wBYxvN5sVA", "DC5dI5VNmWn2ODPP"], "word": "jpsxvfKYbkyvP4aD", "wordType": "ZL3TpYwywkt5Sc1g"}, {"falseNegative": ["85xcc9SnMaZiMNjg", "jG7xYk1VbPwxdNZX", "dHRrKlYfPaahHpm2"], "falsePositive": ["X0ScpewyaVkiRdm2", "nbRbJO5bJEHWgn7q", "alqIHh8mW09g7LMk"], "word": "t8rsKFvBDVoQ7XCy", "wordType": "ChAQmKEIKQ4tUqNs"}]}' \
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
    --limit '93' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityGroup' test.out

#- 60 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'REPLACE' \
    --showResult 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityImport' test.out

#- 61 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'IV7bLX27WG3ZQRjN' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["eeISKEobaGB3qcWa", "tPoFzFJUKX8WLYSn", "KDyEUzuaSJunVDBy"], "falsePositive": ["kFcf3j9NC3xyReL3", "TDvAh3VNBYLXgUtA", "8sy820Tl8SbHstgT"], "word": "0PEmx0dJL4ICU3rp", "wordType": "CqbXCcoa3w41myJG"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'z6gzsHqHVK2ct4pL' \
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
    --chatId 'x5IhOmkhjFuDxiZw' \
    --namespace $AB_NAMESPACE \
    --topic 'zbYlz0RSJHnQqFI6' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE