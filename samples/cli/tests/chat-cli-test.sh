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
    --body '{"message": "k2w5XFsm1KKoRwa3", "timestamp": 92, "topicId": "8h5u8Mxe5oiNXJXd", "topicType": "GROUP", "userId": "0mWm2K5OYxj6xXJn"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["Fsn5hnTtcYNvOWS6", "Z2dG9nPkodMP5hLK", "oH2mtrt97hjaDSkN"]' \
    --endCreatedAt '54' \
    --keyword 'wV7gJeVIL2aPkJZT' \
    --limit '18' \
    --offset '60' \
    --order 'OLLDq2cxFSJ26ZOQ' \
    --senderUserId 'H2Rkq5uuhuMaj9l1' \
    --shardId 'RLMRTErtozCwBYWt' \
    --startCreatedAt '46' \
    --topic '["ejjs7geSLcdpXw0M", "foSyPzlNg3aChaL5", "yjXKJFDBfv3MNgDw"]' \
    --unfiltered 'false' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "YnXEGtTHFK4BSnaS", "name": "sLW0mr96Bpr6MJPW"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '90' \
    --topicType 'QxK55tmdkQLvE0Wn' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["1MLyTxDCIFjw97Rw", "Q2Msa0MqzfbgQskW", "qjQELkNzIOfTrmmr"], "description": "Ok9GSJCZMiPfCrLG", "isChannel": false, "isJoinable": false, "members": ["U0HPB2J0Lfl3jsPz", "l15RqwQhi7DU2hDQ", "tkCQOe5fk5FhibZE"], "name": "aK2yZVLLZQOURuQy", "shardLimit": 79, "type": "GYoZjzIINeMaCLUd"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '59' \
    --topicName '2wlV9d1Xnuyjh1lF' \
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
    --endCreatedAt '83' \
    --limit '50' \
    --offset '21' \
    --senderUserId 'sO8Nw89upbLAqs6d' \
    --startCreatedAt '26' \
    --topicId 'hBouyQ4oyHGWXkSZ' \
    --topicIds '["EwWW6l5L7OUC05Hf", "oUBTOXMfufacFrO0", "YyshFBRSUt4UydpQ"]' \
    --userId '2sdcPdGxc0UeNv8t' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic '8MlpzgBirZbBaLf5' \
    --body '{"description": "6TVA8YFZ0oUpVUt1", "isJoinable": false, "name": "l0s52kh5EVQA7i9I"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'xMJK46M1b5FWdkpB' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'nRHRP8H46tfdBQnb' \
    --body '{"userIds": ["lWwPFapjcRNgCvYd", "c0Mst3axvLSkkRTn", "z8qyTZkyArnKsMga"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'uPvw46T6aqKyKlXW' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic '7RdbzIJxRHigi9fc' \
    --body '{"message": "U6TJsuvKvuLW9dLL"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId '6KUpyNbksHUGuQrj' \
    --namespace $AB_NAMESPACE \
    --topic '4KsmJcKIs0x56nN3' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'uIsgIu4BPFmfjoAa' \
    --isBanned 'true' \
    --isModerator 'true' \
    --limit '37' \
    --offset '39' \
    --shardId 'DrUBhIsQqfrzzB0b' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic '05HrNTbWqFbZv2Ri' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Dq3QFC0SJeec1fVE' \
    --body '{"userIds": ["jvPrlHjXyYE4l4rD", "zo39CKaDytAcdByB", "TxzkwTXxB0tlftfC"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'gjmJerHOCPsLxzqf' \
    --userId 'LsZnGXDVOVtgouad' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'oUd9BD35vd41wy0V' \
    --userId 'xVtBkgQk6WWSEhDg' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'true' \
    --includePastTopics 'true' \
    --limit '23' \
    --offset '30' \
    --topic '["0yGWzvBMWTNPwWl0", "ofkokAeAcywSI9u5", "Vj9BqQokHNH5RnBq"]' \
    --topicSubType 'SESSION' \
    --topicType 'GROUP' \
    --userId 'hI5fGX2ICHSUuGr8' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'Ok4KPzeODr3SlLNT' \
    --includePastTopics 'false' \
    --limit '62' \
    --offset '91' \
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
    --limit '51' \
    --offset '90' \
    --topicType '8cyknmLqhRucg9zj' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '2TqSXT2lfg0P4xy3' \
    --body '{"userIDs": ["NvieXfjG4qa8C9SP", "ZT1cNqxYIE1G6WpT", "RavcrZ4CKEMYh7WK"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic '8JeebzfNxWkG7qoM' \
    --limit '83' \
    --order 'XJsmCkMfxXId66Te' \
    --startCreatedAt '73' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'UFWxzgnUrk4RgbjX' \
    --namespace $AB_NAMESPACE \
    --topic 'hcO7gxLJYYekPEC9' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'J4uy63hMRW4VVeY9' \
    --body '{"duration": 57, "userId": "Agom8NwZA6fvRLe5"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'htMKzp7iNPqrfGOw' \
    --body '{"userIDs": ["KSlGWH5JzgNkJjDL", "GdAu2PG0SrOst8oy", "eC2bNbOCXtZrxooH"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'GQCHH6Oc1DwYxNx9' \
    --body '{"userId": "LbtGMQaFFQ16gzSc"}' \
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
    --body '{"internalAccessLogEnabled": false, "logLevel": "panic", "logLevelDB": "fatal", "slowQueryThreshold": 76, "socketLogEnabled": false}' \
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
    --body '{"chatRateLimitBurst": 27, "chatRateLimitDuration": 7, "concurrentUsersLimit": 51, "enableClanChat": false, "enableManualTopicCreation": false, "enablePmSendPlatformId": false, "enableProfanityFilter": true, "filterAppName": "z5IZ0sKR7sBjOhZs", "filterParam": "yZv4iTRfFfpw1wHw", "filterType": "yTmKTL1mitjTWo0M", "generalRateLimitBurst": 7, "generalRateLimitDuration": 22, "maxChatMessageLength": 46, "shardCapacityLimit": 80, "shardDefaultLimit": 50, "shardHardLimit": 40, "spamChatBurst": 26, "spamChatDuration": 14, "spamMuteDuration": 63}' \
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
    --body '{"enabled": false, "expiresIn": 71, "hook": {"driver": "gdSFx6ksPkcSJ6zo", "params": {"gcLtpd4GmowJsmjc": {}, "DcUAlzlCklcP4Qjt": {}, "SQgellKImQJAcYGE": {}}}, "jsonSchema": {"yxd67LL2yrHkCKmr": {}, "JFj3AHobsYduziUi": {}, "iWxcDqVXMPMNjq65": {}}, "name": "qpB8phm6Qekk2W08", "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'eMxemx3pdLDi9cbK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category '7NJL9tzANiwkemtV' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 17, "hook": {"driver": "P1Oqf73zWwqfk3M3", "params": {"gp46SPLvQjBvK7rd": {}, "YLPARxjwiJOB7SOe": {}, "JFolSmF7Snu6b9NY": {}}}, "jsonSchema": {"tQwfWxcXwsDN4bJN": {}, "KbnbaENeOWfzIwxE": {}, "I0Y92MZAlO9foE4D": {}}, "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'FAfGQDN2Vi1m8Wkb' \
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
    --messageId 'JGVJ4kkCX3UC5fas' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '82' \
    --limit '75' \
    --messageId '["jfaHXAjufoGOIcHX", "lMyYdq11hM9tUt1C", "p5kkEhAVXpiUZbkB"]' \
    --offset '98' \
    --order '7SBXmrvf5OKDO0vg' \
    --scope 'USER' \
    --startCreatedAt '11' \
    --status 'DRAFT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "2MZ6dcBEglnB1j8m", "expiredAt": 70, "message": {"Wy5ZHAmh2A2JgcDe": {}, "umqb4SXoxlMzHnmf": {}, "5HtY16bnRs21yFzc": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["eY7ctSyhaDqNZe6s", "mmfUiKCs6dJb4o5y", "fl4M0TNU5acTdd1b"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'GOSBbX3uYcUn26Oh' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["4oiAKYpvxTknZZNC", "tjT6B4e8bEO73SEl", "y79m0efEMOQT6JI1"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'P0ij2XytcETWiEqv' \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '94' \
    --status 'UNREAD' \
    --userId 'k7iWHiOgFRHL2icW' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId '2ylYAe9WvNinYGPB' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 90, "message": {"QKg6HhjYEbQno7eS": {}, "Kog00fcqB1vg7AKq": {}, "Z3treiQaJVFMDPkU": {}}, "scope": "NAMESPACE", "userIds": ["cZl2epXg2prLWZNA", "glHSTCUGyy1QB7TD", "EBLoxpm9OJosmJUK"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'l3pZbMHihPT3BZOl' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["egivS0TACqooSeJV", "UlsiIYBRlntKbQqE", "2bw5c7co1imvgDUH"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId '4JPDjVimk6WFRxqJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'XfirEwrrpl0a3w8r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'yk3fPWBFGjhiTp4F' \
    --includeChildren 'false' \
    --limit '61' \
    --offset '98' \
    --parentId 'vCIXA4RrNvczBIhq' \
    --startWith 'JQ6X3osSgDqWq5Wi' \
    --wordType 'S4zCPbTtoZRgIqGC' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["cqkA1UwlpenwRbki", "YJa8iDd0HDq4mb1c", "yOyb0r4U2fWEdI1f"], "falsePositive": ["E4976BkZdb6CLF7d", "oBqPY4nt6d95oxRp", "cYhGrG7MArz5k4uH"], "word": "AqQ35LxSvV9g45rQ", "wordType": "mScOEf8KdpURmQ3T"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["HCywK9SoYZdjs40h", "kHHL6GFZtE2OB6TW", "pE3ImDokr4nP1oKD"], "falsePositive": ["NCUUqNhDRbPNqayw", "Mpc459WPpScUWP3M", "Nw4PLqAZYCGRM5qY"], "word": "FkizLdWN4Xrbr8IK", "wordType": "8dDXGCcg5CehUoTB"}, {"falseNegative": ["j1afUYGnQpVjdX5p", "OoIQ37hN8IBUgrpK", "6zvmaUazSwCX2h1v"], "falsePositive": ["euizb3wjYwdpOJpW", "LRMCGMnpYHXqfskl", "wGcp8STBRI54kcxy"], "word": "b6YD5mlZ4UA3b927", "wordType": "In99WjTzGjsSeiNu"}, {"falseNegative": ["JCpSqs7VIwxJ92Ct", "xlZkoOXgzuABUnEj", "FpGPKDAmTICpQzEJ"], "falsePositive": ["LgOQf7zkUcGwcNkz", "u8pEyYzKq9KZfpA5", "5Vi4sJxgL5DRm6rh"], "word": "GHPSiLlwLJl3UOwm", "wordType": "5tMj7btJQt293j2Z"}]}' \
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
    --limit '60' \
    --offset '6' \
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
    --id 'gF3hwWKPm1OVfMI0' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["BaQcl56c0kQZseFl", "1OqlNin7TfXkb3Ma", "DTGbfS3vVYK8VBlE"], "falsePositive": ["pZF72XzdYHOwnbXW", "cVuneRjCT8spM2Fv", "V2Pdi4cHbJ9C0xwf"], "word": "hUDwIQHGKMw33LXa", "wordType": "0eD3mwpqkUQGN3k3"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'sa0gCufGQx2VbV9N' \
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
    --chatId 'UCIOGBvp1tWhRFX9' \
    --namespace $AB_NAMESPACE \
    --topic 'UwVDsnmUCmMzmdWl' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE