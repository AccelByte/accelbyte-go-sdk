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
    --chatId '["IXozN03NyIS6HQNi", "B6FcDLId4sIfxJkV", "2HrJ19YxcaklEXqa"]' \
    --endCreatedAt '36' \
    --keyword 'Fv1g1MFmuprT7BdQ' \
    --limit '50' \
    --offset '23' \
    --order '2a5J7BTdmfBf8icl' \
    --senderUserId 'jtwKmwhMLgo7Wf7Z' \
    --shardId '52QozvtaaJCUrQKT' \
    --startCreatedAt '36' \
    --topic '["PS5M1AMDiVQ7MjF1", "g8frXl9lHUAhgfTr", "JAlipQpA2KvFwQtY"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "R7sTN1VcAxMIieYP", "name": "EbbZExqAU91jSr0r"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '57' \
    --topicType 'SILrkszaokXAYgKS' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["g41slKucVSZ5cjWB", "tzvoBmks9xLf6PZ7", "6UDYB2TUEuj0kejK"], "description": "iPF9l12VvidzmP7u", "isChannel": false, "isJoinable": true, "members": ["q6AwVh6T4WX3LeGZ", "J5yXneQysgetcmg5", "sQAkLLCnnEGtJ4EJ"], "name": "v9ISn3Ry38VZgnAB", "shardLimit": 37, "type": "wJ0OZNKuDG1H8l4V"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '45' \
    --topicName 'Nn1Yvm9MUgBJLlqF' \
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
    --endCreatedAt '35' \
    --limit '35' \
    --offset '47' \
    --senderUserId 'mV2bfKufbth44azQ' \
    --startCreatedAt '54' \
    --topicId 'B7bk2DTevlxDErxK' \
    --topicIds '["Hx6Bno0CwGJ8JtNa", "Pdcxo6NLvkeDBCmo", "wy39olFNLWn3nIVy"]' \
    --userId 'LI7BK8aJQjemnlDy' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'ZIup3iM8Bl64fJG2' \
    --body '{"description": "lWdvOiF8TzI8Ml3c", "isJoinable": false, "name": "9mlDniFZdKpPMngi"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic '6mEbLFKyKgZr2KrS' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'a7rGT2u3xbGLynd4' \
    --body '{"userIds": ["OkXJ1fEkKjYyj3R5", "H4RAefUDIQYzClYM", "s9mgynMcWmh2xREz"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'u7z2Zu8ZiuNxr06L' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'xpRzXXPpOMBlBz7b' \
    --body '{"message": "4iKcfAfo9MNx9kMt"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId '05mJlXLmugCf8vMA' \
    --namespace $AB_NAMESPACE \
    --topic 'Zy6dWmdbPphDbhbe' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'aCNyqEyvhCm2Ty85' \
    --isBanned 'true' \
    --isModerator 'true' \
    --limit '63' \
    --offset '74' \
    --shardId 'Ld6eF7hyDDcyeOKs' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'qtTO33eaP9taW22a' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'ZBVsPzKvAkz61BlK' \
    --body '{"userIds": ["LCaW1MuIGngtKZ7k", "UKR6YNdqyQlnfMdH", "BPSLEoEOJM4Q1VTk"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'IitqXR9VK90BHaap' \
    --userId 'xWcd5HNRrnD3t4jB' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'Sb35eDcR1GuXoshu' \
    --userId '0frBirkYsKChpAwE' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'true' \
    --includePastTopics 'false' \
    --limit '45' \
    --offset '1' \
    --topic '["AYUiIHILFHOzSQob", "Iw9yqZh4dZLiDKGp", "divHjYJ8YrF2ULgZ"]' \
    --topicSubType 'SESSION' \
    --topicType 'GROUP' \
    --userId 'ly5GlTjp4ZuQaWS7' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId '3x34QEt98OOjvvQ6' \
    --includePastTopics 'false' \
    --limit '77' \
    --offset '33' \
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
    --limit '19' \
    --offset '48' \
    --topicType '6hl281arGVb40O9G' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'sfawEoJUK0qXrPIL' \
    --body '{"userIDs": ["uhfcbkXAYtUN17dw", "eyy4YnxQFdPhkeHY", "H9g7tPVJyIkrekQ7"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'UozozV6pLmM1pGmv' \
    --limit '40' \
    --order '3XTr5ejHnifohUIs' \
    --startCreatedAt '45' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'zKOHqzGPvBb0gxMq' \
    --namespace $AB_NAMESPACE \
    --topic 'rVWe2cumYg0M6U0n' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'tkQaotE6DTxipBkF' \
    --body '{"duration": 12, "userId": "vb4kUGNZvXYGWJog"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'fjsqAiTYtmyV8Maz' \
    --body '{"userIDs": ["gagQyEGznpb5agAX", "gXrRpwdyNBlBOLml", "itWsZqojTusD9RWp"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'FclPRtCEZQOFsn2v' \
    --body '{"userId": "thaFYLycUqT51GwK"}' \
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
    --body '{"chatRateLimitBurst": 84, "chatRateLimitDuration": 32, "concurrentUsersLimit": 39, "enableClanChat": true, "enableManualTopicCreation": true, "enableProfanityFilter": false, "filterAppName": "qLFyiFqhDxcjXPGB", "filterParam": "6a24nl64wYSYiyw0", "filterType": "f3pu6hHnnYNwu6E1", "generalRateLimitBurst": 71, "generalRateLimitDuration": 68, "shardCapacityLimit": 9, "shardDefaultLimit": 24, "shardHardLimit": 89, "spamChatBurst": 90, "spamChatDuration": 25, "spamMuteDuration": 70}' \
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
    --body '{"enabled": false, "expiresIn": 33, "hook": {"driver": "KAFKA", "params": "ylYgmtbafjyOsfuj"}, "jsonSchema": {"J9y9ezQFAWS3Qjft": {}, "V0JiUjQFPQvXPedI": {}, "r5gI0LLVITsNUm6U": {}}, "name": "jmGOjX4V11PNdupI", "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'V6FMQMNHagpzgCSz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'zYVDuXqnH9itC7iH' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 90, "hook": {"driver": "KAFKA", "params": "0b0Zijy41pAK9H59"}, "jsonSchema": {"Xqboq8InPc72LHMD": {}, "KKEDM7ubaKe7nCkE": {}, "Tl7WviPoF9AnutSL": {}}, "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'hZuxeCBxUCepm2FT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'trh8dFdpjbpCBRha' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '27' \
    --limit '15' \
    --messageId '["QPvsBBGj8GvduUrJ", "we7b4coRGZa4zspa", "KoEQeMixxSFct1By"]' \
    --offset '44' \
    --order 'VX0qDNslVUttfaA7' \
    --scope 'NAMESPACE' \
    --startCreatedAt '37' \
    --status 'SENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "bVy0fdm5KeaiaphP", "expiredAt": 29, "message": {"O0QRynlL2SZu9bm5": {}, "JoyhUvh527AlflJO": {}, "Yksi9Hxx9dY3Mq2o": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["LOuOY76QM14DGKgj", "8M10bFLOQpIEQrkH", "UXF4plBCDtDQLdT3"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'b30pLwaHnHY6OPvX' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["s4LwYXN2NttSBefN", "vXtQ4StXgTWU0dmR", "BWoMBMcj3ZYJjGc8"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'fyrreWXIBTQ3PopJ' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '62' \
    --status 'READ' \
    --userId 'Obu4icXgtuZBsbHM' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'CKbVqxd36zEd6z4r' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 10, "message": {"03fxeI8kb6hm4OWS": {}, "kATcI2h2fQ6HZEz6": {}, "GnpR0rUJ0z4jCSuR": {}}, "scope": "USER", "userIds": ["JgaRSlHl1ucTfL71", "qxCQ0G7EmKxgQGuu", "jl1kiGm543jhWf9u"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'WwwQknrZAuRk6R5R' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["UoOiP2YdSSH2t1gg", "S4pGohrPPccWgtkX", "phE1nPGaebQFr4JT"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'toI6cwEg1YnT4KzS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'vfQm0MR6Y1qCFLh9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask '1y8p2Je5x50n7l9e' \
    --includeChildren 'false' \
    --limit '66' \
    --offset '36' \
    --parentId 'lG9gK1XYNMnQBpa5' \
    --startWith 'xD8sWAX1GC3pCfX3' \
    --wordType 'lq0A2fIOS77tPhN8' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["lJqAlvtILlv1f5SW", "l2uVU7OSHj6Imceu", "fPJYi4H4Zwt5JffL"], "falsePositive": ["ucIZxn55lXQAl4qj", "YCtSMwByBsVsBrwJ", "tS4aMu0jaNJHURaA"], "word": "5gcqWuiLrgg3KJ6X", "wordType": "BO5izn4EnMNsaTL0"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["lM93yALjAgZyo1Ug", "bKyww1q4QZjsFfTn", "7UD1RwE0fIcpe4N1"], "falsePositive": ["IXu9fvjusKrAIQ63", "OE6lVkpOIqdpsoEX", "2AcEyoNKWrI1Inin"], "word": "TF73xLn2ffgklyQj", "wordType": "mqAit3XsJEUhWGyj"}, {"falseNegative": ["b8D15I3z1AEBpyaN", "bTaUGMrLQ07qUTGc", "aMVqZsLCTclgc66h"], "falsePositive": ["VwpOGjRdcoChU2Wf", "jja9WyhQp3mLegxZ", "REkQH8B0iLUw0hyT"], "word": "9Uad4IYtkIEAdGZL", "wordType": "7AfpgSjzcVl9Ds1L"}, {"falseNegative": ["Aw0uqhQyRGkUPc64", "7VFTPjRzQX3AilAM", "7uGheuEh2e29roTn"], "falsePositive": ["smI6i2lYYY9dSJQa", "x9z0oL0DArFjLkcp", "WcCZy2tRBMbFflqo"], "word": "TTV1pMhuXc60ihDE", "wordType": "3KrENrc9cT1x9qXJ"}]}' \
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
    --limit '81' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityGroup' test.out

#- 56 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'REPLACE' \
    --showResult 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityImport' test.out

#- 57 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'ZG8hmNJ1qA86wuuM' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["KtGuZfKmNfjqQVQh", "H7s27Ny8yAuHlIc6", "rNXrqiwskSsgaOLs"], "falsePositive": ["5K205xMSY8pTO84a", "EqO6a6GPfpLmlpOv", "fVmQNxwBAh1Cq29Y"], "word": "C0eVvdynBW37VDLB", "wordType": "rVJclHXBl8cD8rWI"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'sGBIo5Vm9rs3UZDv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'qW2LjM8lvIhNrTml' \
    --namespace $AB_NAMESPACE \
    --topic 'rIQkYjrztHTJOOhZ' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE