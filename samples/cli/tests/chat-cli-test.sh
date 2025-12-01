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
    --body '{"message": "Jz7fsqBrGv5p3RY1", "timestamp": 54, "topicId": "WaP4coJMYPzS8NEN", "topicType": "PERSONAL", "userId": "7cCVOx5AdBQN85s4"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["5LEISR8RqcdV4Snv", "th9Obk8cLhsTCbJe", "GR5nQ5DtfmESjsCt"]' \
    --endCreatedAt '41' \
    --keyword 'kSMIduacWK33MmnT' \
    --limit '59' \
    --offset '0' \
    --order '8oONUDMCxLiD5XJx' \
    --senderUserId 'ZHRq22Fl4zSJqVgN' \
    --shardId 'ke4ppTHORZ5Fx5ZP' \
    --startCreatedAt '22' \
    --topic '["dOD79wzHIBYJrZw8", "kblUZZ98UW6RM9Cb", "sS7M58eQIcajoBgW"]' \
    --unfiltered 'true' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "w75h7ydpWb6zNaaN", "name": "IzhiuDZD8Xaet6qQ"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '79' \
    --topicType '4J889N49KzFQpNR1' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["B6PW1kQldVYwYbvQ", "UpBfwRL1fZXI9qgk", "TW8Ipuwy2T6PXrix"], "description": "aA7H2MsFv7mOwJJT", "isChannel": false, "isJoinable": true, "members": ["ADT8JmmwQptWtU3S", "n858P65sCPilutnG", "ZAfUyeMZjfLu40R3"], "name": "EcuWHT3v3Z2IbrXt", "shardLimit": 90, "type": "8ufCYDyMTjb1m4CY"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '36' \
    --topicName 'vSmOc5HSSTDtj9s2' \
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
    --limit '60' \
    --offset '29' \
    --senderUserId 'e5Q8FAdu0LPANlIW' \
    --startCreatedAt '4' \
    --topicId 'BUh8NnOga068sLLd' \
    --topicIds '["ZdeX8nX9nxsATfuD", "0ieqUqoMyjxyyXRL", "pjZC34xWR2czQRnj"]' \
    --userId 'f4kNz6KSJAfcpiEK' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic '2DbPgaPtJA2am59Q' \
    --body '{"description": "ga9Lq1wYA29nbQMQ", "isJoinable": true, "name": "X5UZTcCup5oQr9Wf"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'Xz9mtk2IluPBgOBn' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '9XyB3tsigVuZv8a0' \
    --body '{"userIds": ["JYxGKHTpCCQTZ7hl", "Z5cWB3STawpIr4U1", "uN2g7p83mK3iqggz"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'yfbGAWewqLTTygGY' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'JZQ9Owo1tGXXwxv8' \
    --body '{"message": "ihY38PiCMl7ytbyi"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'Q0YqHknUuZQFc6eg' \
    --namespace $AB_NAMESPACE \
    --topic 'fVvpAacyqazc5Lef' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Yf6FdiubP5o4AYQ4' \
    --isBanned 'false' \
    --isModerator 'false' \
    --limit '41' \
    --offset '80' \
    --shardId '2GxyaNFlS4gvRIyw' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'b9YpgbGAWzi53DvW' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'ayqFEWJjhDEEV9HJ' \
    --body '{"userIds": ["Wcor3ZS9X1j1fUY6", "yEzoB3G9IZYTsuxV", "r2r0mU1T30HPyliE"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'llWvBUCgPlKXEPhw' \
    --userId 'g6EXVnnCewMfcHwx' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic '0BBJgtQN583BNTBs' \
    --userId 'tWZ70jrJdYL53nLb' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'false' \
    --includePastTopics 'false' \
    --limit '1' \
    --offset '70' \
    --topic '["IXzIO9WO7ESKuVRS", "bHYT6iu1Zae9oVOJ", "RKFmGNx0cZxcxklq"]' \
    --topicSubType 'PARTY' \
    --topicType 'PERSONAL' \
    --userId 'tEe0q5yDuCAbkWOa' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'fDdhJI1NPGsOKzSk' \
    --includePastTopics 'false' \
    --limit '80' \
    --offset '17' \
    --topicSubType 'SESSION' \
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
    --limit '52' \
    --offset '64' \
    --topicType 'dcGlgkeyMMXnSrxv' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Av7AVjJcgPSDeaFF' \
    --body '{"userIDs": ["SMzX0I2T8ddC2FBq", "lRGWqO8ApCss4Nen", "VHzFS9tTucY2KmCk"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'zyeEq8upy1z7z2uJ' \
    --limit '44' \
    --order 'VQaVOTDIdJ7oHwy7' \
    --startCreatedAt '58' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'COj4QNHHVwochNze' \
    --namespace $AB_NAMESPACE \
    --topic 'bxmjhFyxi0j3Yfpy' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic '2Kv87sEchJKjrb18' \
    --body '{"duration": 84, "userId": "8MNfGMxlVjwUCHrU"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'OnF81SNXABpSm7o3' \
    --body '{"userIDs": ["87pnbWlyYBks1NjE", "zCD2qggSqshn1km6", "kzVsNcaTeNykAFdb"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'PpPYSmAo5eZKJa5C' \
    --body '{"userId": "EKy9nxUzQKb3JnSM"}' \
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
    --body '{"internalAccessLogEnabled": true, "logLevel": "info", "logLevelDB": "info", "slowQueryThreshold": 36, "socketLogEnabled": false}' \
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
    --body '{"chatRateLimitBurst": 49, "chatRateLimitDuration": 42, "concurrentUsersLimit": 12, "enableClanChat": false, "enableManualTopicCreation": true, "enablePmSendPlatformId": false, "enableProfanityFilter": false, "filterAppName": "9ldOcXKcA4fdkLho", "filterParam": "fQiWtR1EW4XKfQ0F", "filterType": "0J1adNr6R0zalXJS", "generalRateLimitBurst": 70, "generalRateLimitDuration": 98, "maxChatMessageLength": 34, "shardCapacityLimit": 1, "shardDefaultLimit": 63, "shardHardLimit": 72, "spamChatBurst": 0, "spamChatDuration": 62, "spamMuteDuration": 47}' \
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
    --body '{"enabled": true, "expiresIn": 82, "hook": {"driver": "bZPni1AAncNvEyHJ", "params": {"QyZQMs8oBmE1VV5r": {}, "ceBkG2gkO6B6IpEg": {}, "cfxCya8JtZMdAkDa": {}}}, "jsonSchema": {"H9Iy9adwZNfkjF9N": {}, "oDTLyJPruVq1Gi0I": {}, "cG60PRMbPr94zrPi": {}}, "name": "SNGC9gLgxr3WuRW1", "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'j2itcHSCxjRsN8dh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'TKkHIWH9fan9kqmI' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 64, "hook": {"driver": "FUDUXWQk86Uo6zWl", "params": {"WeXcdMOMcZ2MoJFA": {}, "t0LpLiO0tEogoNwe": {}, "5wVbtELKOF8JiIpi": {}}}, "jsonSchema": {"XH6QIyVoGIOMkZHQ": {}, "WXkgrNY8D1T5Jixu": {}, "7d3wTNqQDNqXoGPy": {}}, "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'gjZpPaSK2a6ElWJQ' \
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
    --messageId 'dfrnzK47YgVZIDDU' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '96' \
    --limit '93' \
    --messageId '["7sLZouL1hTbMLFjv", "FiwzdT5sJcXlUAzU", "YlbOvrgolYqSZCFg"]' \
    --offset '91' \
    --order 'nsaWKrrfMqQuPcOU' \
    --scope 'NAMESPACE' \
    --startCreatedAt '5' \
    --status 'SENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "ZAr1R6tMkQnxlS4N", "expiredAt": 41, "message": {"DaGFoKKu4fghuTSB": {}, "3tSOjoOsDSFqig1C": {}, "5rLWoofgs5M88sjS": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["DpumZQ5ctbfrXo7G", "d5AmD26cuDuIKi5I", "azvmmxH8aNbTPNaB"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'AbJyVfMaqsGgHGiH' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["NLb4EgTwLHYHxtkJ", "PjeSCezsI0sBtN3J", "fqZgHqlLiyFnYu7o"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'Wc6lDZHEhb0IMMPa' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '69' \
    --status 'UNREAD' \
    --userId 'azNrjXvAuDcuIwgr' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'c7QDbDlp849tqFzf' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 59, "message": {"BipvF6chXvUi9XT1": {}, "nw4wob2gml4orRCi": {}, "jgXzARB5QZ58FUp4": {}}, "scope": "NAMESPACE", "userIds": ["rQx4stwApx4M1FBc", "cJnck6d0K0RFRA0x", "zRVyS4jx9eDSrhxv"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'LgBDvpdVK6TJdEJb' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["9Syiv565vgdd0m7q", "byCQAvAzgVlxazub", "h3DilL5PhEfTp1L9"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId '9DkBWmVt4D69DkKS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'JuxmymnSYhPTPkyI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'geQzQ1KE5yl3jl6V' \
    --includeChildren 'false' \
    --limit '71' \
    --offset '19' \
    --parentId 'LICed0O6RKCa56vK' \
    --startWith 'rxz1B8gaCVSMGckQ' \
    --wordType '1Xl6m81J5FUuriHA' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["N43hXi3yr5L3NlYc", "QAgZDcvBliMAdDlo", "wutwzdex2x7s1xKr"], "falsePositive": ["amtDy0H2KD3SPGKK", "q90lH39QWmbU9ahx", "mdYrtmtQICMJ1sUZ"], "word": "sHW3qH6bdQ8dMsqK", "wordType": "5dB3bmtMQTOJrhiW"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["ozjFb8caXBMQCJFK", "zn9X1ExDgUBGNfWu", "z0RnSnIOxlqURXMB"], "falsePositive": ["aQbep90yYW438QmE", "dF29a4uKJzz9KhWW", "6ganurTTsLszgmhR"], "word": "JuyJ71q8ViAxDuKV", "wordType": "G8GSw60Q8lJ7RumL"}, {"falseNegative": ["IZ0i5sexJ5cWalEh", "xozHAe6z8M65s284", "UztDmZTtSnJUu2D3"], "falsePositive": ["Ea14ZgHdeYM1JKI3", "hanTodAuUGmyoD1H", "lXTWnj1LRIW8y4k6"], "word": "NMHVXkND6PMxb9oi", "wordType": "B0peXeNynrDJ3IMn"}, {"falseNegative": ["S9b5ukKAoWOB2JWj", "3ei1glRpai3U3BMM", "MUSXeJBk2gF7tsIb"], "falsePositive": ["oKfnoN08QJvD0jxk", "8dIP6XcAEvkGYOtN", "qGbgagg1HoGW8JsY"], "word": "Qqi7DE1HYy4jILcg", "wordType": "ntCgrlYcXjtRVAuu"}]}' \
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
    --limit '59' \
    --offset '60' \
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
    --id 'W6RZUkklMjyCroNn' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["FIxNYHAToYYF0UT7", "iQLhI5BOskoBXEqQ", "TIhM4pusEFfyoD5H"], "falsePositive": ["f3cF7AxUNR4ng29G", "MLH0apeVWJ9vjuH1", "6aVuSZg44XzMeKL9"], "word": "HjZIxlSQaSY2wioP", "wordType": "hXAixMJxtHBGLwb7"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'fS2HlwHvqAF1GKma' \
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
    --chatId 'HMyiLeL8k12rAHkv' \
    --namespace $AB_NAMESPACE \
    --topic 'NsMvV6yA1c2LcZbU' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE