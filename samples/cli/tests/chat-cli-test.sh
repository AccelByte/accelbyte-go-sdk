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
    --detail 'false' \
    --body '{"message": "myYdr4NfhIhYb6Ic", "timestamp": 89, "topicId": "NTEnWd88FLkvpj7G", "topicType": "GROUP", "userId": "JA7oqorLlR6vsugx"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["FUObeiqv97ewabG6", "8rjqT5s8e7WpZCGT", "W0IuhwcjMLfRlFF2"]' \
    --endCreatedAt '8' \
    --keyword 'LUw0mFpoBfHt51ee' \
    --limit '66' \
    --offset '82' \
    --order '9izxDlpCn0u426uJ' \
    --senderUserId '24YPEEQZgjLeJaX5' \
    --shardId 'HEEVvftfY6FxPqmt' \
    --startCreatedAt '54' \
    --topic '["Kc8PcUFXJ0XbZJcp", "x7AG9PHuCCBdyPSI", "VOzPIb8WbelB2gLu"]' \
    --unfiltered 'false' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "yjVApCeglUc6h2kS", "name": "4RtONDS9PQlHjoAJ"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '91' \
    --topicType 'MfZFsgM1QSPiK2Fc' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["UEMkkREz3nNnowJ7", "BGMoJxisVYBcxGzm", "Ltt30OETfYlifk38"], "description": "ePQxRV3SZ0ZyHTPz", "isChannel": false, "isJoinable": false, "members": ["EnKmvoaa2PYYbGma", "GpOY2Xr2oHPupimT", "1fm34PBt8AQMrfks"], "name": "zQegcGFsnbHN0gqv", "shardLimit": 59, "type": "yNod0tmx2ojBO7NV"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '56' \
    --topicName 'RVkrq91qv2JLf0fN' \
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
    --endCreatedAt '16' \
    --limit '50' \
    --offset '37' \
    --senderUserId 'zQYJphtzGwg5PP5R' \
    --startCreatedAt '17' \
    --topicId '5VRpSUgan8Bd42IJ' \
    --topicIds '["QD5CYud2pRR68HAQ", "z0OR1LVIUZjEMyAU", "kKkJIiodsssSK7Wb"]' \
    --userId '7sUDxpIxD3B5jWj9' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'L3QvVnZFb9hdmjjf' \
    --body '{"description": "3AamPaeUgzHkhPlc", "isJoinable": true, "name": "MFxRZRlQ2JyImhgn"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'zZDc7rbag6SmlCf3' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'WEZSBOpPn0iVz6Ip' \
    --body '{"userIds": ["GY9UDhkaVnXUk3bn", "2EW6Dt76wdbHGPjL", "1Y62YxvdGdDlisOw"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic '5QarPLay66uixXF6' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic '6XbsHM9qr8Y4oiDq' \
    --body '{"message": "wEP3QrVez1NQpMGN"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'kKCJYEHqfBL4fyow' \
    --namespace $AB_NAMESPACE \
    --topic 'IeiTqvq9kxp55YXk' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'eTC0KNlhqvTdmHYW' \
    --isBanned 'true' \
    --isModerator 'true' \
    --limit '70' \
    --offset '85' \
    --shardId 'NtJtYVyJuOzUwk2B' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'lm4DKlqMVLRAyO1n' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'q7nVMVmGvvxNf6iO' \
    --body '{"userIds": ["F1KhLHQsRlmwrK7A", "F4IjaMHVkAFwxdsk", "KKivtrCqgmRAbgn5"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'J9C4C6c4W1znZSgZ' \
    --userId 'qaLUcuGFf0I4SDmK' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic '4634sh1urFF0upXP' \
    --userId 'PmXNweBE9HlKos1I' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'true' \
    --includePastTopics 'false' \
    --limit '97' \
    --offset '82' \
    --topic '["XnK5TzaHa7S6jVV0", "VB6NWNiWqVHonIfL", "iq9HcNhlkmOGF3TF"]' \
    --topicSubType 'NORMAL' \
    --topicType 'PERSONAL' \
    --userId 'CdYb9mL5uX70nAHD' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'yOr3fOoyTiyonTEB' \
    --includePastTopics 'true' \
    --limit '33' \
    --offset '82' \
    --topicSubType 'SESSION' \
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
    --limit '73' \
    --offset '10' \
    --topicType '6s76gV0ZQqQ3jQpc' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '6YkufFawPO3n0Jku' \
    --body '{"userIDs": ["XzolMVYP5kEuWyzO", "xfeOPDghEaoSE3e2", "ST3nWRNEoVWbl5QJ"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'JJjh1CwSaAw2pjUS' \
    --limit '92' \
    --order 'IIR0kUKhNQIryxQM' \
    --startCreatedAt '46' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'TLG6dsMwLFg4ke8z' \
    --namespace $AB_NAMESPACE \
    --topic 'dZYVpXX6PuxrQpgn' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'OSwSHIU6UQtO0kv3' \
    --body '{"duration": 23, "userId": "RxW6TXPmwM5JDKXZ"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'x4HM1avZxv13IPm9' \
    --body '{"userIDs": ["0olsZmDY4YK3y8jP", "1oJpcSaVQLpDSA3e", "iSdrjfOI3hdaJn7X"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'zCDRuUcmKF09BKXl' \
    --body '{"userId": "qFbj52lKb5y6CoeI"}' \
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
    --body '{"logLevel": "error", "socketLogEnabled": true}' \
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
    --body '{"chatRateLimitBurst": 36, "chatRateLimitDuration": 2, "concurrentUsersLimit": 94, "enableClanChat": true, "enableManualTopicCreation": true, "enableProfanityFilter": true, "filterAppName": "nyBXMVaRssAuESGY", "filterParam": "DlSt8G58J1Dohimo", "filterType": "tke7wmkuvXdvMA7J", "generalRateLimitBurst": 72, "generalRateLimitDuration": 42, "maxChatMessageLength": 92, "shardCapacityLimit": 85, "shardDefaultLimit": 17, "shardHardLimit": 24, "spamChatBurst": 81, "spamChatDuration": 47, "spamMuteDuration": 52}' \
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
    --body '{"enabled": true, "expiresIn": 43, "hook": {"driver": "OQEbro80ArhaC1Yb", "params": {"oaVKhAzajSJwVHDG": {}, "DMgXQTCOj3ssRVi2": {}, "i45wCrd1CzYWp3Bv": {}}}, "jsonSchema": {"TIKJPhBmcERiJ36i": {}, "mthDpWiUvm1ZYY8D": {}, "r4gaCRzvIyf7wLVT": {}}, "name": "SuoojkO4x4KRxuV4", "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'WXv8xXrj9b9eg5RL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'rg951lnW9yKz2b9D' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 67, "hook": {"driver": "oW8Xd0XKFt9efW5f", "params": {"7RssDqJrqPCA2dnF": {}, "LGxE5byzKefr0664": {}, "fGIdhfzj3f5z85Id": {}}}, "jsonSchema": {"OpJhhTJHn4X0l9Fz": {}, "BbACbch8fk7p6mT3": {}, "qhfdGHEfqgVQDVbI": {}}, "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'BtKCDj9b7wLnWJc0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'AdminGetCategorySchema' test.out

#- 44 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'DjU8erYnAN3iMoLJ' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteInboxMessage' test.out

#- 45 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '73' \
    --limit '82' \
    --messageId '["azkb6wMtqGzSa3VU", "sT6aoWN0GzZ1gtBR", "2fD0rw4CfhgMI5qA"]' \
    --offset '63' \
    --order 'YE3PhHTdKTlOgFJO' \
    --scope 'USER' \
    --startCreatedAt '85' \
    --status 'DRAFT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxMessages' test.out

#- 46 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "dPCN1P16tzKEIBOK", "expiredAt": 76, "message": {"wAuvIGC9XcTo4SK8": {}, "JEjsP1nTUdceLiRV": {}, "MdQSgWuVxa9oy9fT": {}}, "scope": "NAMESPACE", "status": "SENT", "userIds": ["WdJYAvU7tR1AGQ0s", "NHyKmJGGYiVZUB2b", "x27UxkGp6nHHthGs"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminSaveInboxMessage' test.out

#- 47 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'rx0a2T0ESfQRYn5n' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["LpikLKxP1ESUCZxL", "MGwsFLqvEyPeyRsy", "YrEd9i0Nnwp6nEl2"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUnsendInboxMessage' test.out

#- 48 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'E55nnmx4jwrYdJY7' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '54' \
    --status 'UNREAD' \
    --userId 'JrwbyC1drWKHJjZD' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxUsers' test.out

#- 49 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'nkTWOeYwnLsNQxJY' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 70, "message": {"HhXHrjMXkFs6Ocln": {}, "JcJ0o42UO5XHAX82": {}, "trAPD2fQrCWYrLZB": {}}, "scope": "NAMESPACE", "userIds": ["xVIJ5TxWznFevKnj", "58xD4NE97KCnNvuS", "rmzia8TZuTnY94Yi"]}' \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdateInboxMessage' test.out

#- 50 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId '7Uejdn7yHRe2BrhT' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 50 'AdminSendInboxMessage' test.out

#- 51 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["PaLMzrcpxRm5bQum", "be7asZ3QcBsJ0fro", "gNTk976D3lCxBeoz"]' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetInboxStats' test.out

#- 52 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId '3iBJ5oeBEFUCAoIs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'AdminGetChatSnapshot' test.out

#- 53 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'eNdBwMRjx2ztOq3C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminDeleteChatSnapshot' test.out

#- 54 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'uXqd561IKYuq2tXd' \
    --includeChildren 'true' \
    --limit '11' \
    --offset '12' \
    --parentId 'wfD4AilnXDyqLlQF' \
    --startWith 'e8PoU43b9fFCphMj' \
    --wordType 'zuuX853gMnjNXMXr' \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityQuery' test.out

#- 55 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["90sSazin7JRMSUxl", "tLHGy2KEodSgSBFE", "Dyz0fEaQNXIfZapw"], "falsePositive": ["FLl6MLvACiI3BpIA", "Xuwq9nVbxanM236D", "T9Is1jRXxNmoaZyg"], "word": "j0Vi7OK9P32Csb99", "wordType": "pjTglZA4nfNzkCHM"}' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityCreate' test.out

#- 56 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["cdRP8ilzlw5xi7Oy", "MepYATaDTQ08erhg", "b8CHCno07NJXcAlc"], "falsePositive": ["k6Ut5ZdkbjIWLlvg", "ocCTWa48XobWP2bU", "wrO3n4MNEZta7YMu"], "word": "7lTukyDxJ5wGGyJK", "wordType": "OnK0fFOgmQMVbN95"}, {"falseNegative": ["CegGzd7tOXP4Kipn", "LjAantC3EKMQxb6G", "mp9GDUiNMC0s3YYa"], "falsePositive": ["td6lizlAUSNIzy4K", "ctKPyz4s1zL2JMf0", "V10kLBABY2T4zV0r"], "word": "he1u28CirZZUQAl5", "wordType": "pOvQToZ8RhjuCRKq"}, {"falseNegative": ["jY1UkkLODi08SV9L", "XdHzCe4pq4n4692d", "vRR7Eq55wBfbGKTC"], "falsePositive": ["CJsNbYr0QfJWtCXW", "aJMhQ1Yg7pqhxmMq", "rBEacXEKVorVCf3k"], "word": "on08xnoWwhTtSDnj", "wordType": "86Vg15cXpxusG0V0"}]}' \
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
    --limit '3' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityGroup' test.out

#- 59 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'LEAVEOUT' \
    --showResult 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityImport' test.out

#- 60 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'BkBhJ6s45IsuAFvl' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["uHapa8nSCeXpetdm", "6YOiy1J6HXL9LN7S", "smen814SEl4y2tNs"], "falsePositive": ["11a6pLqa8xv7Yhhd", "0fSQTJJJC64oSHR7", "knoDUSCw55Q10oL4"], "word": "0SPinivyqU3jebLi", "wordType": "JhQ33KL8kr2k2xfR"}' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityUpdate' test.out

#- 61 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'HWjhJClRBjbzZVg9' \
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
    --chatId 'anwAtzxDIzioW0SI' \
    --namespace $AB_NAMESPACE \
    --topic 'prlOUHODI0sk4TBv' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE