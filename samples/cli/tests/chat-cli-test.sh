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
    --body '{"message": "hcLzZSG2428GHFqY", "timestamp": 41, "topicId": "EJjv9tZnW4jUyqTi", "topicType": "GROUP", "userId": "KeW05olYGShjGRTd"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["rnpKA4AfwlNMUsuJ", "5VkmIhdD0Gmaehg5", "mFGMXvNFiZcWeDtY"]' \
    --endCreatedAt '14' \
    --keyword 'CsO1pRj46jGKSCQd' \
    --limit '39' \
    --offset '79' \
    --order 'CN0XkNGGMhD27252' \
    --senderUserId 'vad0BmpFhCsWVzfV' \
    --shardId 'WqYgzIKV4fIGnyzR' \
    --startCreatedAt '79' \
    --topic '["XbGyFhZa9FPbxW79", "cZPwM1fCZdkgAxxk", "IyxrfxzyDXgdwzpD"]' \
    --unfiltered 'false' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "wQGXIJ4ZMe56R8VY", "name": "DNwiEiOIen3iQ69c"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '92' \
    --topicType '2n42AWXhZTT5kXXE' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["7WIPkqdjVLsk1IlJ", "hbXLXKdcbqyL0pSr", "9qLoFNUJgVJHimNs"], "description": "MIV288tFjfjl87hw", "isChannel": false, "isJoinable": true, "members": ["LBoMFxKTQmnY6yjj", "CLAmw4JWoPENg4lI", "u199P8jBPtDSaOHY"], "name": "vjmEtHzh11Pf5HvE", "shardLimit": 54, "type": "6PnTpR7ztihJES8W"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '45' \
    --topicName 'NvY3xoYzLSvmAvxB' \
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
    --endCreatedAt '46' \
    --limit '83' \
    --offset '5' \
    --senderUserId 'RLI0ZZNTUDj0VzW5' \
    --startCreatedAt '65' \
    --topicId 'fUDQEFflbLR3Xin4' \
    --topicIds '["RPRoUw32EE8zZUF2", "BN2iF22CpWYAlF1z", "ELDpo48nQAa0ELko"]' \
    --userId 'TOmUG9b4O6OOkssL' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'xyhiKcuZqs3qCtuS' \
    --body '{"description": "6lsyEXoEE89n4jpY", "isJoinable": true, "name": "JNKPy6gAcghgLuBX"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'gwCiezIxiI1ksvyA' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'saQDsNemzMqHFYVg' \
    --body '{"userIds": ["fbkivDwaAtmToHup", "clTOAaUrd9Pn9vez", "FqGVTzC3p9cWhxkO"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'lnyA9oLvN8PqS85c' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic '5GOXZeFoZF54MHdE' \
    --body '{"message": "EuMU2VLnriFHEQNY"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId '02Fe7noEokywlk8Z' \
    --namespace $AB_NAMESPACE \
    --topic 'ErCBFtd9845KnMkZ' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'u4tslHM9Sw0Tok5z' \
    --isBanned 'false' \
    --isModerator 'false' \
    --limit '10' \
    --offset '83' \
    --shardId '4l1BkfPrsYW39h03' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'cqeG9FVxWgNTXQza' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'sEjEvwvc1GmP9an2' \
    --body '{"userIds": ["jTk2NHa09zE9fByz", "xZAD9G69O1DMyhiB", "PmDH9Lrp7skynGD8"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'nQRaCgvaVqecbXHw' \
    --userId 'jlraQnfETGR4eZsP' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'EjQmzj4kWskxuVKT' \
    --userId 'lqLun9DgzPVyYy9M' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'true' \
    --includePastTopics 'true' \
    --limit '24' \
    --offset '2' \
    --topic '["0qI3ys9Bn5Bq8wAI", "gaoqdERm24ho6obh", "DALSrOcvHTKoWDOD"]' \
    --topicSubType 'NORMAL' \
    --topicType 'PERSONAL' \
    --userId 'OjXzGqx3Uu3T2xXi' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'aGACCyFBIojib2ri' \
    --includePastTopics 'true' \
    --limit '80' \
    --offset '94' \
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
    --limit '74' \
    --offset '82' \
    --topicType 'tG5Q8rHFEvmpTPdI' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Le1K53B2v0VlzzjK' \
    --body '{"userIDs": ["YmqZskF8TAirAKoM", "cyA0XBrUYnQIS8wM", "XZ3vufEyqATVkOho"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'MJ8H82cwx7czGWXk' \
    --limit '13' \
    --order 'QzqcsclwXlVEcVoi' \
    --startCreatedAt '65' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'xEtELgnfKKLmYkHP' \
    --namespace $AB_NAMESPACE \
    --topic 'CJIGdx5ZFmt2oc2A' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'MpU989PSlXMZzidu' \
    --body '{"duration": 12, "userId": "dty4pWk5XeaHTLSb"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'wu3AhKCXAfH3RhvY' \
    --body '{"userIDs": ["oGQARAfrLzKpE0Fq", "68ZCnO1kZ13lyjYv", "M8003M5REcdu5Av6"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'OAEWVnN4BiEZRsek' \
    --body '{"userId": "E5CetnOk8tG7f3Hj"}' \
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
    --body '{"internalAccessLogEnabled": false, "logLevel": "info", "logLevelDB": "fatal", "slowQueryThreshold": 90, "socketLogEnabled": true}' \
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
    --body '{"chatRateLimitBurst": 65, "chatRateLimitDuration": 71, "concurrentUsersLimit": 7, "enableClanChat": true, "enableManualTopicCreation": true, "enablePmSendPlatformId": false, "enableProfanityFilter": false, "filterAppName": "icDQZDvoSvcw12kD", "filterParam": "gr7ZaoNaDB9orTiQ", "filterType": "pAW8CdqHyZf2vBme", "generalRateLimitBurst": 48, "generalRateLimitDuration": 17, "maxChatMessageLength": 53, "shardCapacityLimit": 15, "shardDefaultLimit": 28, "shardHardLimit": 44, "spamChatBurst": 90, "spamChatDuration": 9, "spamMuteDuration": 69}' \
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
    --body '{"enabled": true, "expiresIn": 11, "hook": {"driver": "rsIsUsXWsoianIIJ", "params": {"GYY4cGaSu7JhtqL1": {}, "bbDaMKihdfyCOLja": {}, "I6hacd84vUkHgnCE": {}}}, "jsonSchema": {"Qua8kNDiCPcB9gEP": {}, "Y9crviOCX3mbSjIs": {}, "spig9aiVHfGU3B6M": {}}, "name": "IlwIwS797nl0dkxG", "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'OiQ7p6FMK72FwUvu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'JWrqXqROOp9khzlF' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 79, "hook": {"driver": "1iEE9Zc4a9kTFLVr", "params": {"ouz2puz00DJsLGIv": {}, "lIUs4SM3cy3drGue": {}, "Hm6DYm9hTDRcJkXM": {}}}, "jsonSchema": {"jb14dSfW9nr4VPPn": {}, "c48RtdlJrXjYrtE3": {}, "Q9SQ9HmBFVqNIvKi": {}}, "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category '432msnhDPVT4qa9k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'AdminGetCategorySchema' test.out

#- 44 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'dh17TTe2OcFugiky' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteInboxMessage' test.out

#- 45 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '92' \
    --limit '81' \
    --messageId '["TZiqfCWgzcccdJ2g", "SOSbp4JH1H9yCwRy", "3yACtLlbNauevWiC"]' \
    --offset '6' \
    --order 'FOct3nw2A3lLOgfM' \
    --scope 'NAMESPACE' \
    --startCreatedAt '42' \
    --status 'DRAFT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxMessages' test.out

#- 46 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "02EZwP7DATP7xXoL", "expiredAt": 41, "message": {"0QeQo6rV3hT8Blto": {}, "h7IgIkjezcGdtwSL": {}, "THSQoKB8RDodr7uM": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["rk4qeSr9RzKP5iny", "5fq2y7LXsogNdse5", "kLJkhmu7I3eAU6rj"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminSaveInboxMessage' test.out

#- 47 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'WExabjleCkw9cv2S' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["EHu5slDD5DFKi97e", "XXtKw2FYpI9yA5AS", "dx9xERFAyNjHlKcA"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUnsendInboxMessage' test.out

#- 48 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'kQqjnxMMqcjcu3BE' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '69' \
    --status 'READ' \
    --userId 'Pyq6u9eKE7tmxBgW' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxUsers' test.out

#- 49 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'fAPXtLDXqTk5xFgl' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 28, "message": {"PzUIJGuMQx8KxXvA": {}, "sbvzbeoEZb4lz8Di": {}, "q05EgopsG84rdWLd": {}}, "scope": "NAMESPACE", "userIds": ["pjO5hArLTWGtvck9", "e2uG1vEDZ7IS12qV", "K1t2mWgmYR0P2P6m"]}' \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdateInboxMessage' test.out

#- 50 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'uJa4HQ4fZ2w5xFgo' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 50 'AdminSendInboxMessage' test.out

#- 51 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["xeJg8AVtg4RKVtDe", "ctq34fZr2Ew79v8G", "KzCD0mssEiov32e6"]' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetInboxStats' test.out

#- 52 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'lZstphZBIFtIdTdx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'AdminGetChatSnapshot' test.out

#- 53 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'kD5lRDN6kf5nPKwf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminDeleteChatSnapshot' test.out

#- 54 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'x81z3A0A2kqmn0oS' \
    --includeChildren 'true' \
    --limit '100' \
    --offset '92' \
    --parentId '3oSWuR2i2uQKXDzR' \
    --startWith 'pM9runCScMvLPxJ2' \
    --wordType 'U202Y6ol7Mlwot18' \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityQuery' test.out

#- 55 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["VtAEg1VnfR1irJOk", "0cCGHvs2ZHCMFq3V", "QChycvcEXeXHuMw7"], "falsePositive": ["VE94fbmnoueslSn5", "LRMYFSFMyIqOHtej", "TBhLv1OONoQAvj8s"], "word": "xfwrvUHdjfex8ypr", "wordType": "sF421y3OwP4U4e7K"}' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityCreate' test.out

#- 56 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["aHFhlCqTuR6fIMIT", "8fO8vCaG9cNnEd56", "IYf2bRm2nrCh8Rdj"], "falsePositive": ["pXwvurkkD0kEO0XP", "FXyvDcB34puTDbgf", "2cxpc6llSdJAWJoR"], "word": "tDhaE1JNdht1khgC", "wordType": "HND82kMzQw7Git93"}, {"falseNegative": ["6upfvSzE8ECaZLDn", "FYdV07YEoWyFFtq7", "wSgen0coAsr2s5GR"], "falsePositive": ["0lPVgE215jME8EfE", "VV9qitcfZbLgM8q1", "wgontC06KNqZTcy6"], "word": "69jmGL4IhYwV7WB6", "wordType": "kJ8VrFH63IcDKAHD"}, {"falseNegative": ["UhxV2ATwfGIQV9qf", "8HDPGnUAsQt42ega", "haUgH5COtyLMlT0X"], "falsePositive": ["JnHf8k9szGL7xAKV", "CEWqOOJgcjfJSfvR", "hZvmls13MSSwqEK7"], "word": "8ufvISDmubaGF4G2", "wordType": "jc4VgsriaWLNDHH7"}]}' \
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
    --limit '40' \
    --offset '34' \
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
    --id '6OoqoDXdgoaDeL3i' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["EyPTkiiyISN5zFQm", "cPLLJLOQ5O0gmnzQ", "azT7eIhYaLvE0BoH"], "falsePositive": ["RgRG4jYX05DZpeQR", "gR2dIvmOFCpJyljT", "Nl5ReZWx8a8PLoic"], "word": "pgQJG7Picg6ZZkPN", "wordType": "B4xQHKYntItZf8Sv"}' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityUpdate' test.out

#- 61 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'ZYXpmg6jjuoml4tv' \
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
    --chatId 'P6VpkVbWicJMdwbI' \
    --namespace $AB_NAMESPACE \
    --topic 'eVTclFnksTGqOeal' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE