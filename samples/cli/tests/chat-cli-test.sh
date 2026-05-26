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
    --body '{"message": "z62ZgkxtIILhO5ZL", "timestamp": 66, "topicId": "juCh0E0ahttjwLNN", "topicType": "GROUP", "userId": "pP2g27GrWSoNTpHm"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["aJ0wPeYTU0fobaTL", "WQRfitEQAyW0bCEH", "yJkormpKrAc7if7i"]' \
    --endCreatedAt '60' \
    --keyword 'hKuDNpI2W3AiYbV3' \
    --limit '63' \
    --offset '45' \
    --order 'OkJDbPPyo9mZBYGC' \
    --senderUserId 'RNfc1Elt2rSC5WtP' \
    --shardId 'Rvbms3ZxT1GnHDPU' \
    --startCreatedAt '25' \
    --topic '["x8BSw5afhUKi70gB", "RjWgk93gEPi0dKA2", "sDPdyd2EQMNpge8d"]' \
    --unfiltered 'false' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "29FW8U0C7vGONCsC", "name": "7aBmNRzgb5m7SLcr"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '10' \
    --topicType '7I9DeGItK0otHmTq' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["BYbq1jaDrc02l8V8", "vw40BNTflkSnoQew", "QnYkmBgUXBWu6wUB"], "description": "ICX0gIHsZAGQwPVM", "isChannel": false, "isJoinable": false, "members": ["UWs8HAwrZX3FRxSz", "Xel2kMKqqgfP9omX", "mrmk3lpzb7ZL8YZU"], "name": "AEeOXEgW9kKtaI7P", "shardLimit": 41, "type": "GAql8kpD8wJBnQ26"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '45' \
    --topicName 'I4nSjaGB51CbQ0P6' \
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
    --endCreatedAt '35' \
    --limit '30' \
    --offset '8' \
    --senderUserId '5LwRhkIATjW3aFOI' \
    --startCreatedAt '42' \
    --topicId 'sA1iCxGc4Hcxta47' \
    --topicIds '["D4Jvbk3CESwYYRhf", "URFCl6K7GlSU22in", "1sYOAh065Y7TPdoe"]' \
    --userId 'tQwXR4zcvAb1fi0M' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'M6Du9x6WH0TMrBqM' \
    --body '{"description": "HAIt9WJUQ12Y3aDQ", "isJoinable": false, "name": "OFkG7KFaMeb7Oq9w"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'Psmu2Tv8U3qa5YI5' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Uj7OBKmORAV2BnO3' \
    --body '{"userIds": ["v7jiuViNlTkdsoiR", "o7UpQN8JvXqh43iW", "0XYgtMIVRLkGZPkZ"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'yajRtUcabThWrmTH' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'jzjE14yTPYzUytMg' \
    --body '{"message": "2kAosJhRxjM6dTkk"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'tpd5fJ2y1S0wBlPf' \
    --namespace $AB_NAMESPACE \
    --topic '7WndSbjpLk4AOb3w' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'vLN9pR121w5op5n0' \
    --isBanned 'true' \
    --isModerator 'true' \
    --limit '22' \
    --offset '34' \
    --shardId 'twOyZS0TvxPGggke' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'pQsLMDmjlbygOsqp' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'JoxoG3kNkAewhTCV' \
    --body '{"userIds": ["hUsBLFA502c1eAEG", "ad72YQ3LkRrZ5Plh", "hay8pZXB9Eme5kPT"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'VvngDwN6PDzXHWw1' \
    --userId 'LOPSC0P5x0Yif5gX' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'bgwYGOVT9OcBg1Gc' \
    --userId 'pSbJbDYmV7cyRwRG' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'false' \
    --includePastTopics 'false' \
    --limit '5' \
    --offset '21' \
    --topic '["r06ZAjE4dwcI1mmk", "qqRa0qMqRjBdbPwu", "5Oy4Pd8j8Va3xQtc"]' \
    --topicSubType 'CLAN' \
    --topicType 'PERSONAL' \
    --userId 'Mjo1NGhJZsGAX1f9' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'BfanhVWn92UJnoYz' \
    --includePastTopics 'true' \
    --limit '64' \
    --offset '63' \
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
    --limit '71' \
    --offset '29' \
    --topicType 'WLXJZaegV4vHRwLh' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'LY367Lw2ysAlHIL8' \
    --body '{"userIDs": ["gQGZpgdWv56Moid8", "G0LZPlJHPUqzgu6c", "P6JfmpNBAbsLCKG8"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'Y5qqkh47J2TZ2pA5' \
    --limit '87' \
    --order '74g7Y28OjqHRmYoP' \
    --startCreatedAt '24' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'APMqHjJZ3p7LuKrR' \
    --namespace $AB_NAMESPACE \
    --topic 'iDMu4svx3v0Jnruy' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'ArGUrrg19AwhXFjc' \
    --body '{"duration": 86, "userId": "AAsDEOYbiOU49IKz"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'ZBeCHsZzIfnbVkEJ' \
    --body '{"userIDs": ["fOGm3Lrl4G0zlpWs", "FW9TOVWzQF4WKwCI", "Ggc2rzrRqIQ9iCg9"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'zXhMaYeY3upJ94Gb' \
    --body '{"userId": "xqItr0XV8xgQUFzq"}' \
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
    --body '{"internalAccessLogEnabled": false, "logLevel": "warning", "logLevelDB": "info", "slowQueryThreshold": 46, "socketLogEnabled": false}' \
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
    --body '{"chatRateLimitBurst": 45, "chatRateLimitDuration": 47, "concurrentUsersLimit": 78, "enableClanChat": true, "enableManualTopicCreation": false, "enablePmSendPlatformId": true, "enableProfanityFilter": true, "filterAppName": "Vc1bicUl2fvtzoIe", "filterParam": "a1NRmx8nWs6iS8T1", "filterType": "f1MR4WN3bpYt15HH", "generalRateLimitBurst": 0, "generalRateLimitDuration": 71, "maxChatMessageLength": 13, "shardCapacityLimit": 89, "shardDefaultLimit": 32, "shardHardLimit": 93, "spamChatBurst": 87, "spamChatDuration": 46, "spamMuteDuration": 33}' \
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
    --body '{"enabled": false, "expiresIn": 34, "hook": {"driver": "HVWSFct2zCDVxzqJ", "params": {"4GJn8lvUheyhwsYf": {}, "Eo6EIpQmWbXps4QA": {}, "aFdVkB28KLHRXatr": {}}}, "jsonSchema": {"XBFCIxIXyS06soo7": {}, "WnRwed3HJUQ5qR9X": {}, "YOSD2QIpTdIK1KvA": {}}, "name": "kyJfWnRdHOakeC02", "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'sdFx2MG1I8Zau4d3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'K1byI2HwzU3Aqlih' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 53, "hook": {"driver": "Hlo0erwdSfHtkII9", "params": {"YlOpGnGKW6GdEzUy": {}, "w7TvqSg0whIeTjVX": {}, "AAAojJw1fPpbYRH4": {}}}, "jsonSchema": {"6kIHs5G6rnF97YnO": {}, "CWRaOaHHVlvMBpNl": {}, "5q6sACxrHJkUaQcT": {}}, "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'y2J8Po4ZU87aN8Mk' \
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
    --messageId 'ddKrfmHLCkFdZXvr' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '60' \
    --limit '6' \
    --messageId '["IJfDqpWIWEFHU4gm", "cNIMc8iLjT1VyM0I", "62pTd95LVhCjxGDK"]' \
    --offset '81' \
    --order '7WJ3giU3nkCgHELk' \
    --scope 'USER' \
    --startCreatedAt '44' \
    --status 'UNSENT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "19UosiLFJHqkBUMC", "expiredAt": 41, "message": {"peZ4ycH1hqPBhOet": {}, "bxAwBVSRleJFBJlt": {}, "Q8xEYGq00bJzIK4G": {}}, "scope": "USER", "status": "SENT", "userIds": ["4QmmYtn0DJGDIuyY", "IMziMrsHu9W5bkYj", "s6i4VUPgHQ5QUfUJ"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'XSfEkKAT10IrI5sO' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["YF0TbbRnrHPDKqmU", "PrRgEhRtVvHaYRDe", "rQ8qPJz1foxO2OlS"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'kanXtZNqzt1cl9xR' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '23' \
    --status 'UNREAD' \
    --userId 'RXzCG3D6SCFEz3y4' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId '1aEPzbAINFaKqLpV' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 92, "message": {"xX7vkxgpdg4PgFXX": {}, "8XxZzdhQ4U0m3At1": {}, "Ubk9YDNermur9X6o": {}}, "scope": "USER", "userIds": ["nt0YpqnrWn9nxj5d", "co57KkFWH5goLQww", "c7LyZfo0tvoA0P4L"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'hqEdtF3Asj0Qlmuc' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["WCecblMfU0rg4dcE", "l21gaLpj9BTYPOTQ", "p6JApktx5j9F02DZ"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'Jzq1Lt6Mg4NeO21B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'BvCrW74HeS5QslXF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask '8CcchArYizDI9VNW' \
    --includeChildren 'false' \
    --limit '31' \
    --offset '22' \
    --parentId 'UNgNjwBS9ExDUVnM' \
    --startWith 'FCV8QBpZODM1iafE' \
    --wordType 'mGgssXLssfoC1Y1S' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["v8L47nmUZhcZOlOE", "FZaViTBRRdFc3mJ1", "JYZAbHuesbATZD0y"], "falsePositive": ["IfmxkUYRtX8P5xUO", "5kWPk2sGBsB6W8qG", "0PZDylXaGUkaCuPe"], "word": "gBh1sBekEbDkSekG", "wordType": "opgtQ8HYMmpWJBgm"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["DUtEgVk65o557N7z", "RLWGPL4pDLByh1G3", "O341BaRySP5NF1PY"], "falsePositive": ["1LuRpiUpMZaNuolu", "LOv1j8gtvJTJ6JgI", "H5iAdNs9yjG0T10a"], "word": "d15nk4MFpH66ZXHX", "wordType": "qqrJuuMF6Zfds3Ny"}, {"falseNegative": ["lz2Xz77KhmyImmm8", "OxfnWQiZFunPOP5w", "OO3bFPBKK5SQGtwo"], "falsePositive": ["JxNgGisYfzCQkRtf", "xzQxoBIRGJYwSv5e", "ApFQEf4cuxGyZH5q"], "word": "Kg4fKSPDgIWrmWsp", "wordType": "Rr4jVKZV0b7FrsDX"}, {"falseNegative": ["CrwBCzvP0OamxeG0", "YToPg7rQw0z0Xdoo", "QSty37MsvuWExtST"], "falsePositive": ["pF0AjtZStvkBls85", "ArsfVYzfS4x37Ehb", "bKZTbYmiblQ378Qq"], "word": "vISYj3ZHfmQ8cdqH", "wordType": "DSxeSZJ3tDPShjUr"}]}' \
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
    --limit '80' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityGroup' test.out

#- 60 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'REPLACE' \
    --showResult 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityImport' test.out

#- 61 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'S2IHSNfoTCBRotLm' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["QfV22du58JZll8HV", "Eef7knhhJh82erHs", "mNVDPFMMRJGAOWRX"], "falsePositive": ["rzOYPVWNGt6avtyc", "tvs42v57yJMdeGoP", "ufCbP9bjzfvS3lk8"], "word": "t4kL5g2FBgvUz3jc", "wordType": "tEc4XCNbZtRxwiaq"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'a2dvsq6vrUxhkaSa' \
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
    --chatId 'Y4jjsyi630OMs52E' \
    --namespace $AB_NAMESPACE \
    --topic 'qBPOYIeupJ98iPcX' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE