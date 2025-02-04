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
    --detail 'true' \
    --body '{"message": "C44EZGmNIeD8Tx6X", "timestamp": 14, "topicId": "CLG05UsPWbza4tGV", "topicType": "PERSONAL", "userId": "drcinzx4EFZD5im5"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["oT9X2T9NpuvL9MTC", "YsQ69IY1QtvVPpug", "NiLwpXIb4C7TYK13"]' \
    --endCreatedAt '4' \
    --keyword 'AALGYQlmyNWRe3aU' \
    --limit '10' \
    --offset '87' \
    --order '7VNM3LWxLEvPbBTD' \
    --senderUserId 'LStrrjnomdMkhC02' \
    --shardId 'itSQgk2ZGxARUsJ8' \
    --startCreatedAt '21' \
    --topic '["fmEK7uwygDUa63vl", "Qq2rKucTVSSVIF4W", "NmL8ALu7bwWuyjAD"]' \
    --unfiltered 'true' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "eP5djRJJNOVZTXG4", "name": "VMZGuyp0DIO63se8"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '89' \
    --topicType 'Id8RvWwlGsGALwDQ' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["jRirs2xGHBM4nIRo", "L8ibmOsM8c3CgwQ0", "Jm1DAuUoqSazISoS"], "description": "HLw3SuueibsnI36a", "isChannel": false, "isJoinable": true, "members": ["qJIrkF1ysVDG4FhX", "6BCROEwE1yOODKh6", "QFHbYyD3nK3sA5yq"], "name": "tKzpqRbWXnZtIoSz", "shardLimit": 91, "type": "lGzGzraOKhhwdYhY"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '52' \
    --topicName '3LrUyQ9fO2tVBR4f' \
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
    --endCreatedAt '22' \
    --limit '55' \
    --offset '14' \
    --senderUserId 'B3MKqZzNSTjwI3om' \
    --startCreatedAt '24' \
    --topicId 'ndd4lfT85qsolitm' \
    --topicIds '["pGGMxjrsLfUCoXTP", "dGnaSnFdQaAULBxe", "8swMPwfsK2BRqCgb"]' \
    --userId 'nuBuu5E6xiMyeJhV' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic '2sDxP2Lt67Ttp5Ko' \
    --body '{"description": "Hxl9V4needgmGgbb", "isJoinable": true, "name": "URcFHiZ0JONmRlhi"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'JGZ0GRJKTyixaaYj' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'LXDj3K7pUgeseave' \
    --body '{"userIds": ["NJkYFv2sSLhfCebO", "A5OqDHxd3DLsYD7e", "Bn3LXu9131JzdQvJ"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'JC3aUAWHheXm7aZf' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'r0hN5EXElQpPzobH' \
    --body '{"message": "bNTXwGYIDO7k1ICH"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'jwlriYuCeJ2tczmB' \
    --namespace $AB_NAMESPACE \
    --topic 'EUwwojDQiBcmtEec' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '0Z3kemyg6cp8Nn9L' \
    --isBanned 'false' \
    --isModerator 'false' \
    --limit '6' \
    --offset '59' \
    --shardId 'xMseZcvkk7EQpSOe' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'dhtl8n7mkfDaSStR' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'R25coIXthInpcBOm' \
    --body '{"userIds": ["Xqf5PMNtMGNXHt7a", "Loc5QUycGrEwIpKG", "Qe0oFTOnk8HXuAzh"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'xw6yV1ArylywP1GL' \
    --userId 'j3FdZ2VklgK6YIBt' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'VWJyfUi3yjcWe9PP' \
    --userId 'sfa5kUo90t41Oo1n' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'true' \
    --includePastTopics 'false' \
    --limit '81' \
    --offset '94' \
    --topic '["AZLSUICGPsd8CpaA", "iGq5nW4rWxooCmJC", "pMHdJx3qiJy4jR60"]' \
    --topicSubType 'PARTY' \
    --topicType 'PERSONAL' \
    --userId 'BdG74qWKxptERoFK' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'cyVjbZvHiLS0ZKcg' \
    --includePastTopics 'false' \
    --limit '66' \
    --offset '46' \
    --topicSubType 'PARTY' \
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
    --limit '89' \
    --offset '85' \
    --topicType 'whGFLGHMPw6h1pFu' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'dT32iXvSteYOMk6i' \
    --body '{"userIDs": ["zxnJhIdxti430Rk0", "zqQtbEKNMZmQi0Co", "y1v0Q43MGbHlATRo"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic '11EYjZtVpuQXbYBn' \
    --limit '23' \
    --order 'j4ydyYxDFAc75Jxq' \
    --startCreatedAt '21' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'C7mXc7Mq9aibCasw' \
    --namespace $AB_NAMESPACE \
    --topic 'hHqwStROutZKTHmq' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic '0OfKtZRuT5XSADdX' \
    --body '{"duration": 18, "userId": "Aa5EFNhaCqs17p6L"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '3MQ9lI5ujGo25LY6' \
    --body '{"userIDs": ["1hOwlpwjfW0JRW4N", "gTeJbG32rlo9q7pG", "aNCOb0o3v0CJscWN"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'Ad7mRoinTUUrWxk2' \
    --body '{"userId": "JYV9WwGqparA3te6"}' \
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
    --body '{"internalAccessLogEnabled": true, "logLevel": "debug", "logLevelDB": "panic", "slowQueryThreshold": 68, "socketLogEnabled": false}' \
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
    --body '{"chatRateLimitBurst": 40, "chatRateLimitDuration": 99, "concurrentUsersLimit": 79, "enableClanChat": false, "enableManualTopicCreation": false, "enablePmSendPlatformId": false, "enableProfanityFilter": false, "filterAppName": "UIisc5365UKgOKPT", "filterParam": "XtP5SdR9paLlD6fL", "filterType": "2CoEjd3tbTV874CN", "generalRateLimitBurst": 91, "generalRateLimitDuration": 18, "maxChatMessageLength": 54, "shardCapacityLimit": 12, "shardDefaultLimit": 61, "shardHardLimit": 22, "spamChatBurst": 3, "spamChatDuration": 75, "spamMuteDuration": 64}' \
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
    --body '{"enabled": true, "expiresIn": 78, "hook": {"driver": "kJTGKB93edyrEe2U", "params": {"zhUTOlDfMeWyvspy": {}, "e4VlztDsVP19SwR9": {}, "ejFPrGBDCuum0dbf": {}}}, "jsonSchema": {"yFihGD9nKBGhuR5V": {}, "cqhHp5GXkyrJNMvS": {}, "u7DPxuGvADgFXySj": {}}, "name": "pPwc78ClCyHKcC7c", "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'Z5TWBk2juuZsprve' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'ylX3L3DUfY9Uyhxx' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 2, "hook": {"driver": "9afGlridpfkTk938", "params": {"GaR72fjfa91hgqEF": {}, "TvcRt3PWPx82P3xU": {}, "To4ALtIZ5KXCfXXv": {}}}, "jsonSchema": {"ct7ZOiW8HiCJvFY4": {}, "Qeonkbkpgdnli9G8": {}, "8haxEEjj9frmfJ6l": {}}, "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'ZVZWwLlDzxUxs5S4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'AdminGetCategorySchema' test.out

#- 44 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'jU7jEDUHXhhYiO3Y' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteInboxMessage' test.out

#- 45 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '100' \
    --limit '17' \
    --messageId '["lgVGwGa8XcCwy0Ye", "C67pjn21NolWP7p3", "RHxdF74y5nx0doCj"]' \
    --offset '47' \
    --order 'GDeXZt2Z7KW17DRr' \
    --scope 'NAMESPACE' \
    --startCreatedAt '95' \
    --status 'SENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxMessages' test.out

#- 46 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "ktHNg83SGf229YsD", "expiredAt": 79, "message": {"5hgDaMu54kL4QS1l": {}, "UR55FnpQea1IF1Ug": {}, "lzkTksEJ3jQbejqr": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["XmyL1DiEleWlMf1x", "hJZiLtBtTixcU851", "rEM1h2BhMgs5wXjE"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminSaveInboxMessage' test.out

#- 47 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'oIYWcT8C4vOP1Q0A' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Auu5MpkeY9o4CVfl", "k1EEyIWMpWlCD5GC", "evWv6Tiqb0tIl5kH"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUnsendInboxMessage' test.out

#- 48 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox '9wF9c3pom62emNai' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '42' \
    --status 'UNREAD' \
    --userId 'gq3uqgz7praAQRvx' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxUsers' test.out

#- 49 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'J6pcsAxcB0Svb6Td' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 39, "message": {"CWtUdVWm66loqssL": {}, "kgvL5xdMVECsgTeU": {}, "WfXpIQKylRRNLmmW": {}}, "scope": "USER", "userIds": ["HGbIM9u63aVbofm8", "owgndFGiXZD3RCXd", "67JeghshBl7ycogh"]}' \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdateInboxMessage' test.out

#- 50 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'aXWO1aCHmotwe0ry' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 50 'AdminSendInboxMessage' test.out

#- 51 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["KddRjrdy3laYj06A", "WwVQDZQp6ABqBHYI", "S1P67Cj47IRbFczk"]' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetInboxStats' test.out

#- 52 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'ggudMWYlDvI0RAZ2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'AdminGetChatSnapshot' test.out

#- 53 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId '5wTfWH23yamJkQGn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminDeleteChatSnapshot' test.out

#- 54 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'crzjj5bl5JiNgkaB' \
    --includeChildren 'true' \
    --limit '15' \
    --offset '12' \
    --parentId 'jnqwMl2VIVUsujoM' \
    --startWith 'hIte9tAYbVqsZ87Z' \
    --wordType 'RN2dOQc9YSzhBK7D' \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityQuery' test.out

#- 55 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["5VvaPqJa4Ssm1zbo", "43meBvOoTJ0EMFH6", "1LSOmbAEcDuECEW4"], "falsePositive": ["9W89i4JFkxgIGTLW", "oHv6PJDwlS8VZjSs", "cyhQ6kZS1Qynn28J"], "word": "HO0O1BCbQUWufYWv", "wordType": "jmuMDZlFyBOjHwWp"}' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityCreate' test.out

#- 56 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["Wou6BHsdiCYRwvgF", "z8Mgb6IzPcoE51yE", "TGYqJngFcDXx1qOU"], "falsePositive": ["4O6JJcjC8fPxW05O", "MPF22ADDMxodsBGd", "GispFyJBdy4xpyVz"], "word": "nMAHQvQXgpM2vN1t", "wordType": "zh5aiklNXWaGoHzE"}, {"falseNegative": ["jY2ileUPxaICXtkj", "8NRZ7L8GWHLBorMZ", "ZgHbO1G544afF04z"], "falsePositive": ["pjfU5rsiLT9VQN2X", "7fE0OreXEspAGIZt", "KiodddcDHeN4b4NC"], "word": "11bnv3ipNLlQI5SP", "wordType": "0iKyaxfinr56hBXF"}, {"falseNegative": ["n0H96zHHMVQ7Ras1", "himIcEqtwUuINFA6", "Hi6Buh2TrYmlTjjz"], "falsePositive": ["lkn90npZpIxzkgTy", "5iDikKwwBOas8FUX", "tn64DZDp5MPKKQoa"], "word": "Tba5sQPImn2GSSBR", "wordType": "kxiyorruwT0Sd0At"}]}' \
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
    --limit '47' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityGroup' test.out

#- 59 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'FULLREPLACE' \
    --showResult 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityImport' test.out

#- 60 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'uC9d83t7jFg4rpYC' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["XoOxIUJxgMfc9aCz", "ijflmTanpjBaw3fw", "M2QFGMr2rv2sFxrV"], "falsePositive": ["aCTU4titFd4sOhtX", "6mtYSTWgbuws6yIk", "yS8cYAcY8Cw4PItq"], "word": "hMoqL6kg5C9PEsGL", "wordType": "TIwWS3SsFOKKBk8p"}' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityUpdate' test.out

#- 61 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'LqV0GhH56S9AJBKK' \
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
    --chatId 'zZNX6u4jkwiJVNo1' \
    --namespace $AB_NAMESPACE \
    --topic 'JcElZ0enPtgplElX' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE