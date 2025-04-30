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
    --detail 'true' \
    --body '{"message": "XMxswZwcosKq0j3E", "timestamp": 48, "topicId": "pK7kLvDXqgEycwsO", "topicType": "PERSONAL", "userId": "UW8ddabwaQe7oae8"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["pTkwpCOD3YhUtkiz", "3utBSjcfSbtXzBSL", "i4flhCivUKWxz1ZF"]' \
    --endCreatedAt '93' \
    --keyword 'UvOl429691fGnxnA' \
    --limit '38' \
    --offset '48' \
    --order 'FOXqhhQkYlvHGgi2' \
    --senderUserId 'Btw05L91O2gsT2OA' \
    --shardId 'Bg2afaGjVjzclyfZ' \
    --startCreatedAt '7' \
    --topic '["DmbH8HVC3LKN8X1i", "ZDFqd2N6B22KOBLF", "11Tclblej6N3092Y"]' \
    --unfiltered 'false' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "FBzKLV3FOF8K0H47", "name": "968quWBuoltmTSKs"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '16' \
    --topicType 'oMyHbeRuIx1eK04U' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["DFRzje2tqC7dXf71", "pRp45m0Trb8vqC8U", "TjHglXVvxLS5HwIK"], "description": "7fPovxgYIREVsVEn", "isChannel": false, "isJoinable": false, "members": ["6l4fo2KC85opTt8q", "lf8Rrkb9k3WIkesO", "4BFJ6KvLa4Eq9DOT"], "name": "JVnfBRpob0DBjXjC", "shardLimit": 32, "type": "4WnSZb5hSrOwokza"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '27' \
    --topicName 'VwOERruOTGQcE0SV' \
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
    --endCreatedAt '69' \
    --limit '36' \
    --offset '53' \
    --senderUserId 'KUH1AhrRv2NgfhOI' \
    --startCreatedAt '25' \
    --topicId 'yl0DxdHRcyHvx7Le' \
    --topicIds '["XROY3Zu2YaBVWjqK", "c5Ds8eiyPbpqK5Gt", "8n7P59ekApBEJKzH"]' \
    --userId 'kEp2AK4vEd10rTsI' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'R45VkQzs3HSUBXbo' \
    --body '{"description": "lnzgujfZPa1PQ4RY", "isJoinable": true, "name": "xn76O1BZ9KmdBpFG"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'QtP54vzB8GCmIw2y' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'ZikA0Km3ayYAXuIL' \
    --body '{"userIds": ["dp0srDltdnQjD7hl", "VOOPBWWeHd5A6HsA", "3P9AZ8SM873hAy6m"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'TeoShuDHBARmjJ1F' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'iByKfwy9LyRhKLgl' \
    --body '{"message": "pdOa9QSLr4xj25Cm"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId '2M5zFQ07P4IjxpBH' \
    --namespace $AB_NAMESPACE \
    --topic 'hPJ31Rg41DcogclE' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'WKsRrT9cEh4rSJtR' \
    --isBanned 'false' \
    --isModerator 'false' \
    --limit '5' \
    --offset '77' \
    --shardId 'Pqgvdpd1GecfTqgf' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'lih8odiNIr0UfCMp' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'qoE3Bhg9rmpFAWlg' \
    --body '{"userIds": ["bW2M3d4r5bqxkaxv", "hFyYjTQi7KJ6HoGk", "IH8apKdNF6pWrVVX"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'n5mgHmsTasPjvSe7' \
    --userId 'WSrnBvChLz3e7NaY' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'gODagmjImlvKZZUy' \
    --userId 'nym5wsEQM5JA6ndm' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'false' \
    --includePastTopics 'true' \
    --limit '4' \
    --offset '30' \
    --topic '["vhMvWS4cB9FsrklG", "gvYlJUmkRnFdGkkp", "ZOXyp1ZuSq2qebCB"]' \
    --topicSubType 'SESSION' \
    --topicType 'PERSONAL' \
    --userId 'ZxO4yjJXZqT8p9OE' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'MxcVesmOZdBaTcDD' \
    --includePastTopics 'false' \
    --limit '90' \
    --offset '41' \
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
    --limit '92' \
    --offset '67' \
    --topicType 'vMDzfFOlImPOqsNF' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'mueuXFmMN2vShkOK' \
    --body '{"userIDs": ["kRYutYOTcHtxXRk3", "uvh773dhOW1YUEDJ", "PyHN51T8VIbBY3l8"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'maKtnSjJYJTyAoHw' \
    --limit '19' \
    --order '7wrI2vdn8ipdmTe9' \
    --startCreatedAt '55' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId '9Lae8Jv7Fgqkzmtt' \
    --namespace $AB_NAMESPACE \
    --topic 'P5X5LwGRFK5Cl9PB' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'NDJyzKBvaiKwGevt' \
    --body '{"duration": 74, "userId": "dtTmmoGI3vJUH5yU"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'zgLZWWLf06eDopks' \
    --body '{"userIDs": ["nq75DHzfUc4VTqm0", "nsVmwDCKa5Y1Bbsm", "4VIQoOZYtmbGKQtL"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 's7NXaao80shTnNbX' \
    --body '{"userId": "iPOQKpvqhW0kmNEl"}' \
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
    --body '{"internalAccessLogEnabled": false, "logLevel": "fatal", "logLevelDB": "debug", "slowQueryThreshold": 1, "socketLogEnabled": true}' \
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
    --body '{"chatRateLimitBurst": 15, "chatRateLimitDuration": 90, "concurrentUsersLimit": 60, "enableClanChat": true, "enableManualTopicCreation": false, "enablePmSendPlatformId": false, "enableProfanityFilter": true, "filterAppName": "LimZqkDe9WDfUNL6", "filterParam": "KIGOiTf6o2TvTVCu", "filterType": "mP7uiF0irnLG6E5k", "generalRateLimitBurst": 55, "generalRateLimitDuration": 50, "maxChatMessageLength": 26, "shardCapacityLimit": 6, "shardDefaultLimit": 72, "shardHardLimit": 11, "spamChatBurst": 41, "spamChatDuration": 14, "spamMuteDuration": 88}' \
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
    --body '{"enabled": true, "expiresIn": 99, "hook": {"driver": "D23NkOMBxczW2Y1C", "params": {"HAPfZ5gTjkrFT4pa": {}, "I75sPFZTw0RwwoRQ": {}, "hqRf6DbL2MA1YnU6": {}}}, "jsonSchema": {"YfQnc15hR1i8JinT": {}, "gazNROIKyjuOmDAl": {}, "22PrOf2VGM7zxzqG": {}}, "name": "yAoGigE7gui8zfZJ", "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'wPde4yANN8AbZgAV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'p5rkNMRajT1FNpVG' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 26, "hook": {"driver": "bRStZDFm5wk1bzFL", "params": {"KA2eHYGUdkcr9bWJ": {}, "FQzgFZ550LrP9wWR": {}, "HeleMJ4vuWbsRtD6": {}}}, "jsonSchema": {"RRtYerwbk5jTJo1O": {}, "56i5fRQSIKtYrbpU": {}, "YxyxiZKiHMzdZDd0": {}}, "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'x3WjdcTJM3TyrPdX' \
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
    --messageId 'apM9Kznz4XXHuRxB' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '50' \
    --limit '51' \
    --messageId '["WeavYzzco0wvtYPX", "eBKxSbQyigDzMbcK", "G59mp8kqfDLuCfhv"]' \
    --offset '58' \
    --order 'oGvpsLj2GXYgWkHf' \
    --scope 'NAMESPACE' \
    --startCreatedAt '47' \
    --status 'SENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "AGBD9tZQeP7gcgfc", "expiredAt": 27, "message": {"bhQ4u1ACx2fd10Jq": {}, "IdpbWdSnc3MHiZkS": {}, "j79LFBPcY3zJhOPT": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["cXWj9h9PHQHarVTh", "8tvZBFj05xBIvejp", "NlQ4IfwuVzxwFsL1"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'zKMtvgoUR0uc2qXP' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["25lIlCnPYAiMBHTM", "Z1PO6lrZKxPl2gNu", "asOZBDThAZ6oaH09"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'hq2HAw6YfPHy2pAj' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '41' \
    --status 'UNREAD' \
    --userId 'gtq26RiIzNjgAs7A' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId '8qfOGv8OuUqyI0Qd' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 59, "message": {"1OTwLf6DofVxCPhK": {}, "EUikvnT1t3LRrIHX": {}, "5QUthS4i8Yov8Wod": {}}, "scope": "NAMESPACE", "userIds": ["sO43IMIApUP2PtUJ", "X0KOgIBlLG9qQlsB", "AIxvJhW8bPpDP26J"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId '4kAJpWTLVnTrYpka' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["FHR8zrVL8ZzxAPld", "IvP6LnilGyzhr6cg", "byjQGmRaTymRAyJO"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'VXodJ5lOgNqdnA0I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'JEZl3HQ1sJv2OxYO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask '2W7oqOj1fdOUn7i7' \
    --includeChildren 'false' \
    --limit '75' \
    --offset '22' \
    --parentId 'EJwM3nVtOoCm64Zc' \
    --startWith '25Xen8wu9rgz2PRz' \
    --wordType 'kvRGRyNW3GOb1XoD' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["AdyUYgvN7ZAscnxi", "Wov67pKt69GMN54f", "KdPcZD93OlQ06aaJ"], "falsePositive": ["oU5cyo5QL5BvPnlL", "1RN2MaMo1Pt2jxcr", "fmf2tDzP3bH2kDCZ"], "word": "0K9LnQH1DbzuEEq7", "wordType": "VWS49L5m0hWxCj10"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["cOlWh5ZbQAPepPvi", "0Eye1U3HfGJvpMGO", "ws3sbVi0F5tcN5Z5"], "falsePositive": ["8tlusTziXRLA5lxG", "GeZVnO0XVDRkg6Bo", "CK3juJDv4nnqmkbV"], "word": "HTC19WI5Zo5tyPMX", "wordType": "r0T0Mvm2zs2W98gC"}, {"falseNegative": ["PJ8FGajtVpLfqydT", "NeYKZo5gkxPSBLUr", "8BhwI1GN1crTdIg6"], "falsePositive": ["e7mUgbnlyRXeL3Z5", "pVJZM1aAfQU2tZb1", "RtcXbXgOAdbUcgPJ"], "word": "QumViUT3cxRepydR", "wordType": "FGQMz4A6Yaktnu1q"}, {"falseNegative": ["gtLjRprH9Ixaw2ZA", "ZM4P5nVuBDdlrP86", "HZnbUyjdy0Cvp9mk"], "falsePositive": ["SNBoECODLiO78Dqn", "CFgfcARO8F8cb1w5", "fi9ZXpEpuwCjLp45"], "word": "JbqOxFDCxBBZ4nXz", "wordType": "cRq1xDYEWJuprLNE"}]}' \
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
    --limit '87' \
    --offset '36' \
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
    --id 'pymfHWossIASLLm6' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["xNYLdTeny8iOZIxi", "LOtrdDTQ2wZHC2Xg", "Zv0jcClbN6V8YpLI"], "falsePositive": ["Q9dpvtvbiyuX59x5", "6yj8e0NUMfhB31Vk", "J15dRjY1mdXtOzdG"], "word": "158FlP33bzsiLht1", "wordType": "TRaNJlv5vcNrqlkl"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'aKQ7lU9n73sY4eyY' \
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
    --chatId 'AWs5UELWFkBsOciL' \
    --namespace $AB_NAMESPACE \
    --topic 'sgxIIqwVb8qZ3MZx' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE