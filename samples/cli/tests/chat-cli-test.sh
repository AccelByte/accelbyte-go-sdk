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
    --chatId '["2vtaAPiLf9fuKsI9", "sYOvRyKO6Mx3QUka", "EOOjOP08ROIwK1BZ"]' \
    --endCreatedAt '74' \
    --keyword '1JRllvIhNMBVBuZo' \
    --limit '82' \
    --offset '81' \
    --order 'WyzoQbm2QaDbv9Ub' \
    --senderUserId 'AYdhIHPy40gaYabb' \
    --shardId 'LJ9zPRIufIkM1xyY' \
    --startCreatedAt '21' \
    --topic '["LapkxrxFbz7vq2my", "5ynEApniPgEPY3b1", "fiHT6sbpr3i1kXNh"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "3Q1324dgxvdQiiwo", "name": "FBjmmWSJjBZtpZQa"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '41' \
    --topicType 'iyF5kz1MRaeBlsY2' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["em7fxaNDpYNMJ6gd", "9e8gLjhnCqtqtDd9", "wLH4d4J10Q2TrkEt"], "description": "w9tvGGhpJ3lcZN1e", "isChannel": false, "isJoinable": false, "members": ["CZkt8vOVspt3ZRlJ", "bdYaYZ6OdNdEfP6B", "4GduDsATRNbxi3nj"], "name": "0BTW7vpRiBCU9AVj", "shardLimit": 9, "type": "rQJ3zFt2wGtZc7H7"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '92' \
    --topicName 'WLm5nfNHVftK5Q5J' \
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
    --endCreatedAt '100' \
    --limit '4' \
    --offset '44' \
    --senderUserId 'Bm5lGlKwrhV1yv79' \
    --startCreatedAt '41' \
    --topicId 'WTZUAGbPejuOFHVF' \
    --topicIds '["fbCetpLPmpvKmdId", "RjcncO6Sc9cZb0yX", "fiyligKBG2gFFeAX"]' \
    --userId '9nNP9XuaxyK4lRtI' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'i1C4J6NWGzpjQYlo' \
    --body '{"description": "7gtaKWA1G5ngqWXT", "isJoinable": true, "name": "xLiOK8XmxtnFN5V7"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'tqc9Kvi4jfOu8Q0m' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'OavbSmDXlLIbLsHz' \
    --body '{"userIds": ["C2WynZMRHIMURipj", "HNn8yqDOXbZqmemQ", "2UFM1k6M2cAoDmp7"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'tRzoHkc0lM8jaoSN' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'vAPoNorXQU8z4Nt1' \
    --body '{"message": "SxJEvgjUe28xFlxe"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'sKMBK70K62DkDblT' \
    --namespace $AB_NAMESPACE \
    --topic 'GEncL3ZmvOtCNQXy' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '4KdumZxHWYu2mel9' \
    --isBanned 'false' \
    --isModerator 'false' \
    --limit '61' \
    --offset '67' \
    --shardId 'gAXm5Z8UJgnH27ER' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'BoR9CrX7UeAgePgl' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Ozsb10PLYnKOqAW7' \
    --body '{"userIds": ["CpWMNiE910qbgUbN", "WliSoskE1OGCAV03", "PKgL4R6Ep7sRwIvP"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'gOuDKiicxNGV4Aqi' \
    --userId 'TV8c63prtQsjUkMT' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'ZIWT4MjhviKvoGex' \
    --userId 'HMWHO217ZRpisJYP' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'false' \
    --includePastTopics 'false' \
    --limit '22' \
    --offset '39' \
    --topic '["uZD5urgKkAFhP3id", "KpKgsewWscDoIzRp", "ZtlLd9foDrdIOLuZ"]' \
    --topicSubType 'SESSION' \
    --topicType 'GROUP' \
    --userId 'XO93vtN8JL6Xjodm' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'tBJESGE4EBjIABWK' \
    --includePastTopics 'false' \
    --limit '81' \
    --offset '12' \
    --topicSubType 'SESSION' \
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
    --limit '67' \
    --offset '78' \
    --topicType '7RjCkMaNPdJBprGm' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '2CaBnHkQfnPDWugw' \
    --body '{"userIDs": ["qxvkLjw9SO50guJp", "eePnpw7arHO1A56T", "cXyqruIz64ZYgQjJ"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'Rl0HI0zICL5SzMZ6' \
    --limit '47' \
    --order '7IwFjJOfxhmIdzw5' \
    --startCreatedAt '79' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'vnWgmZVxnOFxd7j8' \
    --namespace $AB_NAMESPACE \
    --topic 'iFLuMW8HfT36Xpyl' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'GJPNDVJl7cSBbiH2' \
    --body '{"duration": 57, "userId": "ROh5wYq3bRy32Slc"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'O4aOpBFPHNLA2B6S' \
    --body '{"userIDs": ["AWq1bGI9Zw1mS2tH", "XDdLuuYpvkLzePeL", "G7Dzi1WX885IJwwx"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'AoiQXcP7yRVf4wBp' \
    --body '{"userId": "VphxOiJ9Qt4tSFLH"}' \
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
    --body '{"chatRateLimitBurst": 70, "chatRateLimitDuration": 34, "concurrentUsersLimit": 1, "enableClanChat": false, "enableManualTopicCreation": false, "enableProfanityFilter": true, "filterAppName": "S7AsAhWXiDFdR6u4", "filterParam": "swyorvwXnREUXVmi", "filterType": "oqnTnFafXtafnUxX", "generalRateLimitBurst": 70, "generalRateLimitDuration": 100, "shardCapacityLimit": 46, "shardDefaultLimit": 82, "shardHardLimit": 89, "spamChatBurst": 81, "spamChatDuration": 86, "spamMuteDuration": 47}' \
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
    --body '{"enabled": false, "expiresIn": 31, "hook": {"driver": "KAFKA", "params": "dvKnBELAi4bwjYQW"}, "jsonSchema": {"ve7PuXtBsvWxilJn": {}, "nBqOftyCDVc1MAGB": {}, "6iyjrX1N2xzEhjqf": {}}, "name": "IFFyloCeShFoTqEy", "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'aUmlL2drC50iCeHQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'V3mWxTyb4IAIx2OW' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 99, "hook": {"driver": "KAFKA", "params": "Xa971WyE7A9pvSZB"}, "jsonSchema": {"OgdqBqPJba8XVTza": {}, "Gn5iY3TPFYWf11qg": {}, "0gWzGKzVSPOr6yec": {}}, "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category '4PJz90jmtMKYA1s3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'E2fnTLP1aUVFcXu7' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '28' \
    --limit '86' \
    --messageId '["zGj5E0uqWj9YO7fL", "8Vr4fgiqd9E0s48q", "1WVilL34ZYTzRBCS"]' \
    --offset '24' \
    --order 'FuqFgKLaDbW5q2D7' \
    --scope 'NAMESPACE' \
    --startCreatedAt '12' \
    --status 'UNSENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "cf37AmDLl0TPQCcQ", "expiredAt": 35, "message": {"2gXwh4qHqNgHo8Lw": {}, "854nA63cyu4VG6EH": {}, "k4TjzfpKvclq0CbK": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["LSKDStqddR6A78lj", "Lv1gAK3gHwS5P1Xj", "ccIumrv3aqvrOdOJ"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'op4VxMA30VnznHlI' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ZCNz4PxwmTcyXQ6K", "TDhTdDWTVCCfsgQQ", "uA77xWqXMl3JhvL5"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'iJrjhxHKlNrQYJvn' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '24' \
    --status 'UNREAD' \
    --userId 'E8xZN4JnVJzaSJm8' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'gQTYhxIk5DhvMhkQ' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 60, "message": {"587dx7SIE9SS4fBc": {}, "7w1el5XE61IR2U8r": {}, "3Ac5k5dTijb7ZnpF": {}}, "scope": "NAMESPACE", "userIds": ["DPSBX8feozH4T1m0", "DYlxjV49DzeZYoCL", "2zykfe5zzywz0Rfx"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'yCzmqQBvtNa7bTyv' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["RV0wfGFpHXPlUaFy", "djsAj64TTqfNVS29", "hPZqtBnzCr6IkE2l"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'kYXg9sV0x4UVbgAb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'cF07auubmcEIl83J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask '5jSzNnxv1CxZjY9F' \
    --includeChildren 'true' \
    --limit '70' \
    --offset '76' \
    --parentId 'YTf0QKr55EmDL5HE' \
    --startWith 'tNfOWEji7xvCixWl' \
    --wordType 'lSxipqwSkrlJxS21' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["xCAS0FCbj2fAOGK9", "D2R68HYl1FU6Sd1P", "0aASyssz7GUQDzol"], "falsePositive": ["2HaK0WyrOkyIpkOK", "7k8kY4JHh1H6nd9p", "QWdyRYwU5DLHvZAF"], "word": "0X1esPmShRTijXQ2", "wordType": "L8iV1QSXYXY2ol9o"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["qJwMiCiu8l8WQzTQ", "TgK5S83fsYR4KgBH", "vy7MAA6kz9pA1RST"], "falsePositive": ["y7oZne6WGCgDwL0D", "OfkonmDeWL2zm2JV", "GKB8Zl6tZmopIVez"], "word": "5wGgXudSL1zvXYZ6", "wordType": "BGExU3G6AEA3er5M"}, {"falseNegative": ["1q0d0KcCmF61XbU7", "2apbNPBXkxZBcO8d", "YydDJGQjsuSmDRei"], "falsePositive": ["NOUAEiXJz2O9PFr2", "0CkOV826Yxi1R5Rq", "pe2xWXPppjmKYsla"], "word": "pvVo54vWfZoXzYvh", "wordType": "7MLlL1YH2tOshmWh"}, {"falseNegative": ["vwUYaxnqTfK3hRAY", "WUhLFZ7XqDcAxDP2", "RPCOZY8TT7Srvnbn"], "falsePositive": ["XDXy13rkWn8uosFI", "lWViDWbHdMeYqTc2", "9JuEmpLbwJbqFMgy"], "word": "pCy0aCt79bpIm9zN", "wordType": "BqY66HgPiYThgAs4"}]}' \
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
    --limit '32' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityGroup' test.out

#- 56 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'FULLREPLACE' \
    --showResult 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityImport' test.out

#- 57 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'Y7S3JP0D63QToSxZ' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["XOEhk9MoBQ3XUfNs", "iX6pw6L82x0vYQCL", "8MWx3PzlzblZcwqQ"], "falsePositive": ["zJwmrl8EwZfbbhx9", "6vOAa9PaI8eWO7bU", "P740a7KYBsa3JOMD"], "word": "E5WpozmtFvKPU1bX", "wordType": "w8h3DBH1vUVQeC0R"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'd9wQ5WuxoZiUrVyM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId '1kS5FZvjlGYOAWFw' \
    --namespace $AB_NAMESPACE \
    --topic 'xp3TwOne2DoagqRG' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE