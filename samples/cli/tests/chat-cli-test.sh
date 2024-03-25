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
    --chatId '["zyc8NdKoi8xVhIkw", "9mALMNHEaKCmAK6U", "4fx7abUZGcNkFwtX"]' \
    --endCreatedAt '79' \
    --keyword 'ul2gPyOqYF14BVWQ' \
    --limit '38' \
    --offset '70' \
    --order '1Na0FgtLBU6CV1tH' \
    --senderUserId '2Mqtkop5ALM3EwCl' \
    --shardId '81uaqy6iooMJzJMQ' \
    --startCreatedAt '48' \
    --topic '["pZN8XJRXOqoJhB8U", "E3TRrIWUdhPE8KNM", "6901kBxziE1NMyEj"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "G9iSvl3WzPdczBUt", "name": "BeFoO2QDbCPTuN6s"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '21' \
    --topicType 'XK1CMQRqDZRidVwT' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["PceexKcVcxIdboxA", "cUom8cEKnjmT2Jdi", "EKDkHxEolwKP3Mp8"], "description": "w0QfnHW5WsnxBVcu", "isChannel": true, "isJoinable": false, "members": ["z6Bj2DKhoShM7eE7", "vQGiEjK97HVa2LLw", "QXU4UZ6D3FQxuVcg"], "name": "8sYu1lTH7BHG2n8q", "shardLimit": 39, "type": "BNwT36Tw0p9hUWfW"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '5' \
    --topicName 'IImrZs2x9KFFtuat' \
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
    --endCreatedAt '87' \
    --limit '1' \
    --offset '47' \
    --senderUserId 'NsAAk6E0RJc6Bh8L' \
    --startCreatedAt '68' \
    --topicId '2P06k1RoCsu7JjJH' \
    --topicIds '["IFThncz1DrGIItgD", "Deh8lBzpysd9ueEM", "v9ObweBBDjLJ1sXU"]' \
    --userId 'wEFCI1CCFJ2Hxmst' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'c26G628OkhfDeWLb' \
    --body '{"description": "iX8FtNWWFAAOlanC", "isJoinable": true, "name": "Iymut5mEh8iAeJXc"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'eqTUofb1HlPOwk8o' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'lG5IJc9jhbcE3bGH' \
    --body '{"userIds": ["atxODGu6gn5ZLxWZ", "Uft3HzQ6SqcjzAdF", "DyiFeK5sKJTs8mpo"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'N1DzU60O1sHNx18B' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'Nq4IyqP42NKRIUSh' \
    --body '{"message": "SIAWnehH8IVOR9t7"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'WkHXA5LT4OKKvsVb' \
    --namespace $AB_NAMESPACE \
    --topic 'kvogKJljBewAklSb' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'j8xPMbXH8BXCffSM' \
    --isBanned 'false' \
    --isModerator 'true' \
    --limit '72' \
    --offset '3' \
    --shardId 'jXRHVIZlcphtlLUZ' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'ipAfWxg9qXv23rkz' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'm1ztnLITB7DZv4ZQ' \
    --body '{"userIds": ["ECrOlsSX5zy6EUot", "GoZJIQjIsnA2augT", "lsQUHvPttLmKW4Si"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'dz8lPQ7hbqhe9Mf2' \
    --userId 't52DluSKxtGmNNVJ' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic '9wnVn2H3lMhImEdQ' \
    --userId 'xOCda9Ne30ti8G3w' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'false' \
    --includePastTopics 'true' \
    --limit '43' \
    --offset '44' \
    --topic '["UPYwICmQDYRCEakF", "xDHivzfSqMhN6pGn", "9tM5nVaMMASrbymc"]' \
    --topicSubType 'PARTY' \
    --topicType 'GROUP' \
    --userId 'N4TXEyL2iL0lqYld' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId '51Qa6Dhm5sYwzlZ4' \
    --includePastTopics 'true' \
    --limit '89' \
    --offset '83' \
    --topicSubType 'NORMAL' \
    --topicType 'GROUP' \
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
    --limit '63' \
    --offset '100' \
    --topicType 'aznLFlWOnRHj5uK1' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'RZvV6ORQhNEzEn41' \
    --body '{"userIDs": ["X4C0gjaxdPZOkqhL", "WygUrhcQQt7ibDRw", "LpYRPghDbYCji9sJ"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'Ad0IDXPc3RmG6kcv' \
    --limit '22' \
    --order 'WgDlojqajfzkBIVz' \
    --startCreatedAt '48' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'rtt9Ak71cne6jN08' \
    --namespace $AB_NAMESPACE \
    --topic 'YhE3chVxSH5moRWH' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'HF2Cf3YxLznpSXi3' \
    --body '{"duration": 10, "userId": "w1SMFb17PTZhMkaw"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'zYHEcOlj386z105g' \
    --body '{"userIDs": ["Krw3A0Zq1tePyKb9", "LSvYuk9JLf2pUQrF", "ChmhGA0d5YA7ppn5"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'LT7G0KOI8v8akX3y' \
    --body '{"userId": "kAEH4WOGVKOzl7u2"}' \
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
    --body '{"chatRateLimitBurst": 27, "chatRateLimitDuration": 90, "concurrentUsersLimit": 38, "enableClanChat": false, "enableManualTopicCreation": false, "enableProfanityFilter": false, "filterAppName": "Chkf5WFTCpVpnvef", "filterParam": "QutFfoJbpffpnOtd", "filterType": "s2o39NLHGrkFB5QS", "generalRateLimitBurst": 54, "generalRateLimitDuration": 49, "shardCapacityLimit": 47, "shardDefaultLimit": 40, "shardHardLimit": 59, "spamChatBurst": 17, "spamChatDuration": 53, "spamMuteDuration": 50}' \
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
    --body '{"enabled": true, "expiresIn": 89, "hook": {"driver": "KAFKA", "params": {"k7L5cGgHA2jeWgm0": {}, "JKDywF6xO5YMrVLH": {}, "XfDrssIV3csrYKtC": {}}}, "jsonSchema": {"dOmhH1FZuXiTUyJY": {}, "sn01DBdoXE2JjWGF": {}, "yzC7rgh5wZyzDpz4": {}}, "name": "dbYtVap9FKMgl9K4", "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'Gg4JoThhegSa7Mza' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'rY8koeakEqPxuNld' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 41, "hook": {"driver": "KAFKA", "params": {"Be8iJ0vK8tTootPk": {}, "m2s1R7dfp6dk66J8": {}, "EVzuLhS78sYiILUh": {}}}, "jsonSchema": {"FXijQpXyfoxmNCK5": {}, "encLqG85LThgyLRz": {}, "hkyL9zGF0oDyfjfG": {}}, "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'OS6GcOUXvFP2w5YQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId '4jJZeyuJjdx1HxFH' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '38' \
    --limit '51' \
    --messageId '["Cfz8bKPYQHT5rzfZ", "RxdNeE6VlkszZc2w", "BATgyD6qwVMylJ5p"]' \
    --offset '98' \
    --order 'vv8rtRCqYZlsm8hM' \
    --scope 'USER' \
    --startCreatedAt '88' \
    --status 'DRAFT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "bll3DL0IaPOWgbHX", "expiredAt": 68, "message": {"o6koYQ2CcDny5E8q": {}, "sjrvQ609meHhj77O": {}, "nmmz5dA9zuSAnGy6": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["wCnqFbe6O2T4H3E6", "BnfaznLNGzngDAKa", "8tPAtwSlbF6qm1fD"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'ZDqFRVp4guK33Tjj' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["SGrOn9awkfyrfE7W", "6ovvJQDXRETOZcXt", "wgfDbrhvzOpUekbU"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'b2ilJnX7nimPasA0' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '16' \
    --status 'READ' \
    --userId 'MMvxMjUxV6WO66RE' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'qdnO1UGBn3fo1CzX' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 53, "message": {"6m6Kw9zpLIzHyrRE": {}, "JvcrBhIR0QBMXESI": {}, "Kq84OuqPjhIG8NBQ": {}}, "scope": "USER", "userIds": ["Idn2AsjXHuBC6ep4", "P1yKL9V733UtEoxx", "1aTfS1WAD5qRJpEl"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'S5l6GT0eVi8TV5OD' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["bwLwK3BoJDrXBMAq", "gLsrnD3d6x3rlwni", "K9SPbFtdS7cBIrnx"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'MceJ8A91lpRYHrR1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'HYqAZLN7jNJuVj8I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'q1ZVv4uGdXzUOWkT' \
    --includeChildren 'true' \
    --limit '73' \
    --offset '74' \
    --parentId 'cMo7m6obqBBMJ3nx' \
    --startWith '1S70DorCwWJg6slA' \
    --wordType '1D69KYXRzEpX3108' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["EFn4H0c6ygW1aROJ", "Vu5Ek7nBVN60p9lP", "AezukJgwBMkT0cvD"], "falsePositive": ["9zBHL9KKiKEVz3Zz", "h9PLOZYqwEjsTHdE", "6MiE0re2FH070gR3"], "word": "h3TAGnHa552OkJJn", "wordType": "veAb5LEhv9cgT2al"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["9sKSKFuwGWBt89KM", "3ihXXsD0CdB98rdK", "gf17IPMs4BqXxVvb"], "falsePositive": ["CAVKZvcDWcl23J7Q", "8hRh9Jb9AlGeM8OL", "xNU8PZWBny65vACO"], "word": "Kq7OCBpGdnLzCaWl", "wordType": "wVC1kfDPr6VRZLqL"}, {"falseNegative": ["WCdyoo2ALVzZFfT8", "H693diHzltZo0rbu", "8VpFIBEEHGtE0784"], "falsePositive": ["s4dBJ9vij3yavVyy", "Vh6ZngWIawyQgHeF", "bCwCkZNUwlsoMqtg"], "word": "Iu8CxiWJYFIKrNaB", "wordType": "q8sa8L2aiiAmRDWL"}, {"falseNegative": ["1XHNRwK062zuDTX9", "cE6fnNPZ7v5AmwLn", "S21EzRQzeZ7cF0am"], "falsePositive": ["X2iayxHQNxQIFPar", "mwqoxauBOTsYEQBZ", "MfzhIml3TefLfDwX"], "word": "7a9R5BgyuTh5P2Db", "wordType": "Oeuh9bccPconudA3"}]}' \
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
    --limit '12' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityGroup' test.out

#- 56 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'LEAVEOUT' \
    --showResult 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityImport' test.out

#- 57 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'XkiRe1zoZAUztXUF' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["ZHjosK7xpFMDh6vj", "d2h57T18go9ZPxr0", "IVM3TdobxIryOAvG"], "falsePositive": ["lYUVBE9nUN938KAW", "5ULMFyi5BeWEbWRx", "ZeGfUZv9pWTpMO0F"], "word": "4X6gZ27ps9ghqj70", "wordType": "4RoxpWpaPGuX0usX"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'zRsNYoc2x9HZ0Rqc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'KhJ4o42qX3TrOP9n' \
    --namespace $AB_NAMESPACE \
    --topic 'V2rWYJF9GNdS4gAh' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE