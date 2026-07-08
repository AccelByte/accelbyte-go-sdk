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
    --body '{"message": "XUPqrlFsoo5QKujW", "timestamp": 23, "topicId": "5tswma1ps1i45Fsv", "topicType": "PERSONAL", "userId": "HeWMBLRZ6q6VVkaa"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["cayyiWV3ql9QyELm", "YZnTcR8hq556YeO1", "2sdppfReslr2O1Sk"]' \
    --endCreatedAt '83' \
    --keyword 'rRU4H64Y7SQrxlg9' \
    --limit '86' \
    --offset '27' \
    --order 'N8FEBWD2IzVuAeJX' \
    --senderUserId 'JjLDJO6jaO1Tfy3g' \
    --shardId 'G5tThIf5Rt9RxpP5' \
    --startCreatedAt '48' \
    --topic '["JGD6n5WvT7qeL5z0", "dV9PEN0r00gQ4ZD0", "feCApDHSDfhC1cOo"]' \
    --unfiltered 'false' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "zGe4OBcxRQKHgRqc", "name": "4Tvk5SM1OPtQvDpW"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '37' \
    --topicType 'RSqjwAB3cxETuJjd' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["Srapd2PLvr1N1JdU", "xWZoyyEBQtSAzPB2", "pE3RjNNukLOCaQXm"], "description": "2d3DmZ9ydVSE4wEF", "isChannel": false, "isJoinable": false, "members": ["Dvhjywsx1tfUd5YC", "3hcyBczpFD0PiCmm", "z69fjs8gUlHnNLBF"], "name": "Jj8Oqh73omG1h25i", "shardLimit": 75, "type": "frLjRFUDYUT6PxOw"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '24' \
    --topicName 'QZB66qbltv4Mkon0' \
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
    --limit '48' \
    --offset '99' \
    --senderUserId '9pkXlNpsylsrgDR3' \
    --startCreatedAt '92' \
    --topicId '6wJYf3JmMOVUtBfQ' \
    --topicIds '["Wt86DKCkhMsjzvk4", "ckyu75970Vm97Mej", "qQrhBJVaInRqDtl3"]' \
    --userId 'kDDGvuIb8O6ETyrB' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'y6p672fnE8QuGt8g' \
    --body '{"description": "LegbN1XAsN6obhIm", "isJoinable": false, "name": "97wrPVYRSSMZNMdX"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'nED6vGnyJ6EfAdhH' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'KO3gNb4SVD05Jvyv' \
    --body '{"userIds": ["uEUMaBcVCKRJ1B3L", "54BDRyJ6CRgjgyEw", "xEZCJv4Gfi4tXfnx"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'VxyRytQCjDPLyeiS' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic '1Efu3SEnbAcYsdEZ' \
    --body '{"message": "vHdw4UInCIHYDUkY", "metadata": "pVDcTale6O5rmaHH"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'Zm8a6DWANpfNG9wy' \
    --namespace $AB_NAMESPACE \
    --topic 'ZNvbILWywyANj7Go' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'NzDvAgSAP62mouHZ' \
    --isBanned 'false' \
    --isModerator 'false' \
    --limit '41' \
    --offset '67' \
    --shardId 'lJIRgfOFc3VuCFAu' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'SdGC1tzQL2gf9Ezz' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'wnGYIGVEHu3yjai7' \
    --body '{"userIds": ["2bCfTJsXKg3ZJKaA", "9LwN9X3yyT5dgQzD", "uMZjZd8PmqhR7WZJ"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'MNKOHTlthSqW5f5T' \
    --userId '5hr3i8pOVDf5X8kq' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'gsQWKDHBxArmsYfn' \
    --userId 'pnUgZJP85ei6AKuB' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'true' \
    --includePastTopics 'true' \
    --limit '68' \
    --offset '5' \
    --topic '["lKTyU4yblBX6Fo7B", "hwlblAI6mgR99ZRj", "2RcBX2gVKuwrkXT5"]' \
    --topicSubType 'NORMAL' \
    --topicType 'PERSONAL' \
    --userId 'bozX0fMBnPTSLyfE' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'VkDmbxomo4KAffRv' \
    --includePastTopics 'false' \
    --limit '37' \
    --offset '54' \
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
    --limit '61' \
    --offset '67' \
    --topicType 'hIdH5VB1V1A7DHNF' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'LQPClDpwlvSQ94OJ' \
    --body '{"userIDs": ["I3b8MwLlaPT9FGqU", "9QVg6yME1v19zvuI", "aa6ffZuJMZ2vU6TH"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'MECBS2MnXUPGY89A' \
    --limit '76' \
    --order '0HvGkwPZxF2W7ktg' \
    --startCreatedAt '84' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'uby9kcAUcsxA26SF' \
    --namespace $AB_NAMESPACE \
    --topic '1oKCdcrh6AWDoXvK' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'DUUEF8aBPe7UN1s7' \
    --body '{"duration": 29, "userId": "haxj3mnnd94OyDHc"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'lqcIYHwOrpT5rz1K' \
    --body '{"userIDs": ["nwvaURXGeE5FVn24", "0isLyUcUiAXiGeaE", "0JtdcNCsUsAKXhg5"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'vKlzwkdD830QzOwW' \
    --body '{"userId": "9JrRYfng4noxA7ux"}' \
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
    --body '{"internalAccessLogEnabled": true, "logLevel": "panic", "logLevelDB": "fatal", "slowQueryThreshold": 90, "socketLogEnabled": true}' \
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
    --body '{"chatRateLimitBurst": 56, "chatRateLimitDuration": 21, "concurrentUsersLimit": 86, "enableClanChat": false, "enableManualTopicCreation": true, "enablePmSendPlatformId": true, "enableProfanityFilter": true, "filterAppName": "wzq57QnTe3mj8S1M", "filterParam": "cH8rucculM9WrYL6", "filterType": "TiBH5rcAUqlR1qAU", "generalRateLimitBurst": 40, "generalRateLimitDuration": 23, "maxChatMessageLength": 16, "maxChatMetadataSize": 65, "shardCapacityLimit": 75, "shardDefaultLimit": 83, "shardHardLimit": 36, "spamChatBurst": 86, "spamChatDuration": 23, "spamMuteDuration": 26}' \
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
    --body '{"enabled": true, "expiresIn": 2, "hook": {"driver": "9JJL4olJ48gRynaL", "params": {"qAVELBEeIwPmrzKC": {}, "7U27jfD3Tbwjhve6": {}, "Vp9DPW7i1v9IUJNX": {}}}, "jsonSchema": {"DECT0Xx1cBNDL56w": {}, "7KBkJONXiSqTGFyP": {}, "78FTaaabVTeM3QjX": {}}, "name": "JTicomEhvqA2HPhL", "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category '5r2udKKu9atTCMAx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'BEBSTtPStF94wcFp' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 66, "hook": {"driver": "ejZj8EhI8mlqbuej", "params": {"hiOGHA5obgO2P9uB": {}, "pDiBmYjliyMfrX8S": {}, "woS2GObIf8UsfRrN": {}}}, "jsonSchema": {"leQtkteT75sfeDFB": {}, "laQAagQFWYNmvqYh": {}, "NUvtVNsnunKZAUDa": {}}, "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'iz7W793yiG8r76K5' \
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
    --messageId 'rnRuzPebFG9svZzs' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '50' \
    --limit '13' \
    --messageId '["fbXoAdgabo04XKHE", "Ztm4tpuEPClTVobE", "Mixoofv3Tf6DfvNs"]' \
    --offset '28' \
    --order '84KLsi9HKniKeKN3' \
    --scope 'NAMESPACE' \
    --startCreatedAt '52' \
    --status 'DRAFT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "Q4q58BxsxDu0pzkZ", "expiredAt": 90, "message": {"fQ73DyOs885vOrqg": {}, "rxqvCs7Ah5fRuwmr": {}, "7mGWWhDpZb9xGmsf": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["1Zatzw1sWVAdbOfd", "bPcFc5IidIODFCdx", "a1CEYg2uSB1SMmLz"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'BEnCPhb6PuurcwgM' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["lLcvo65qeYn4qWpb", "EzSGEYMx6dytuhwc", "8w6JnaH3WqF9Hl7O"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'FXj2qU3AWR2CUBTp' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '48' \
    --status 'UNREAD' \
    --userId 'H7nTkm7IrjNS5mCK' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId '7oSjvDbWrdjQehBF' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 71, "message": {"yjG2jGYsPzNjipQz": {}, "TluGECJrjURv4KV7": {}, "BxHES1Zy32xFfxdy": {}}, "scope": "USER", "userIds": ["9NbcJzu4ru5WY50Q", "6KWd8q7B3dPj67mq", "xDatDJC17QPM7IH3"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'N9a9gGAvGW4hmKSW' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["KBFnAkbOXnNKopge", "xbrCUzWgzXOyIiPr", "fDMIIASzSS3N04Ne"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'vS7Nh5jFVQPkmWpa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'JYCyaIwQbxrMcdDb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'cJ10RICpXMpmyZjP' \
    --includeChildren 'true' \
    --limit '90' \
    --offset '40' \
    --parentId 'PW9zy6V05gqisNHZ' \
    --startWith 'DrHAGUzgaWKmXJvG' \
    --wordType '1sxc2k7dMP5qeTMR' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["vG9CZTA7DgruyoML", "LWij6pfobaZyRrMq", "wippW2PJx3sZmXDD"], "falsePositive": ["QsQsN14NXnAj2jQg", "HcZ0jzi57QxfcnoO", "h3KQOXrCI8zMIZaS"], "word": "DGFm5EQBQ8yLMELh", "wordType": "Uh77ATHtfOSKpsCJ"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["inuCrN22YF2nUd0n", "WN60Jz0YN8QKoSQK", "vp7t44Om33GLy0TG"], "falsePositive": ["h1G9PAPFHRaO0NzS", "7gHIgv0ur2s4fQLL", "y8MWc6AWnReji341"], "word": "E5mWDPUbjb23IFXS", "wordType": "vvj9hFGEVUIPodX2"}, {"falseNegative": ["gCERh80NpOV2Nh9j", "mGetwVHVDppWAe1P", "F9ek9JnzTuS3Wr9v"], "falsePositive": ["BUFGJxPZRYrqwUJi", "5SGxRXIeJz78HcCf", "K4TL9suEVv2NcisE"], "word": "T5eYNOzwy8V4PXyI", "wordType": "iAliSdET7f1ab3p4"}, {"falseNegative": ["CU6eHD72718C0Kop", "cvybOMPlepl2hdd9", "gUVZBaRBTjRZEaBW"], "falsePositive": ["pMTqV4oX51UpdNzs", "P5K7US77z3XEtSzD", "rHPTTYF7O8CDNjjP"], "word": "lGjSuw1RdUT01Tdn", "wordType": "OjJAkD50WezjBmi8"}]}' \
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
    --limit '72' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityGroup' test.out

#- 60 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'FULLREPLACE' \
    --showResult 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityImport' test.out

#- 61 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id '1ZTsVrvfLUiGT99P' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["W7kdzsZfDhWF7PZQ", "7qJUDMdQuZZaNZ1T", "de4RQjFRDOChsHEO"], "falsePositive": ["6vpHUgqWQvksmfAR", "9BsNA2McLTFH8Ktg", "cNgo0n4Nbp5FdOEL"], "word": "ApNOcmR1ydxlunrO", "wordType": "pzx86sOf0IFTQ5ts"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'yO1Ey7p08marHy4G' \
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
    --chatId 'ytAEMbgVsGRGaACU' \
    --namespace $AB_NAMESPACE \
    --topic 'RPl3s5qyKG4ccyB5' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE