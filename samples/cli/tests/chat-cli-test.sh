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
    --body '{"message": "1Ik0QurZIa79yuDS", "timestamp": 100, "topicId": "iavBQWFGQuac9M4h", "topicType": "GROUP", "userId": "FHcEPTSwwmO4qtMH"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["cO6g0fPwFt3ahqHh", "X1Y6rkxPG5VHaCge", "ljWpccaJ6HQTjJj4"]' \
    --endCreatedAt '66' \
    --keyword 'OG0B5EESnb9umYWR' \
    --limit '89' \
    --offset '0' \
    --order 'hMYHWW6p23TNPTzH' \
    --senderUserId 'PaZROxpYO2BsDVTT' \
    --shardId 'CrZnpYxYgLrm2uHV' \
    --startCreatedAt '85' \
    --topic '["jhSr28QFxjkBEkUh", "OSvU0QBitkFoPxrG", "CJh9nndLNC7WlSwa"]' \
    --unfiltered 'true' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "s06wc4BgGbf7xrPd", "name": "EOgjYKFv7RsRSXUa"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '22' \
    --topicType '81jhP7g3kpj8uqCg' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["fNrMRy0BvChoKCiU", "qU1pHY1jfuoBsUpy", "38XuznM8rscaXZsE"], "description": "uGgMgiUeZmOijnt5", "isChannel": false, "isJoinable": true, "members": ["2e8eoOVJFUH0iAvW", "vnH4l2ZOu2xKPFzY", "MJzyG2korkpoCJbJ"], "name": "bEPN4ML4Mi5RN1FU", "shardLimit": 82, "type": "Gu6vz3rIKzBpi9la"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '54' \
    --topicName 'sLMvTfHFkKEOwVli' \
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
    --endCreatedAt '62' \
    --limit '83' \
    --offset '6' \
    --senderUserId 'TOqsSCvP9ZjKg0My' \
    --startCreatedAt '58' \
    --topicId 'koTJzKRuSqXjtzGA' \
    --topicIds '["ODPqDHGYTN5iebHL", "zA5Zble5iAaH3O02", "3zhaNdsprueBdZPN"]' \
    --userId '5DqILdAS6KIeNlRU' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'Ah8D3JbzpmgdWcdD' \
    --body '{"description": "LgyA7oOmk0gmPqko", "isJoinable": true, "name": "LLKIj3jDDyL7hgxf"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'frYqgUTpz8fCpD37' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'zRAhDPLhcN7DDgWA' \
    --body '{"userIds": ["fySOtBDfnIi8InlQ", "WGcKtWKUTZJVcnjo", "m6GFs19cv8y2PRd9"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic '7Vn3lYsh3c39VUF4' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic '18LjVcuT0DWQZ8Lu' \
    --body '{"message": "H2qERyXSqViPkfYQ"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'mHMRIrBDNtwTDC8L' \
    --namespace $AB_NAMESPACE \
    --topic 'W6lZ9l0tNWXqTIqF' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'NjdS172b2THwmfgP' \
    --isBanned 'true' \
    --isModerator 'true' \
    --limit '9' \
    --offset '82' \
    --shardId 'hi7rhCrGlm8zXcaN' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'qCqqr4piGD0GonDl' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'AhMEo2UUXNmxutOT' \
    --body '{"userIds": ["LxSPorCHjsXX2xw0", "gCgoitWnVcExXlRC", "nr5sJgqmOJEOBc8F"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'INiHeAU1Q51vbPQc' \
    --userId 'wWjW6IWlBNa8UrLJ' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'cdhocmvr69cOBFxP' \
    --userId '54lUISqJhLEBrCPR' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'true' \
    --includePastTopics 'false' \
    --limit '2' \
    --offset '66' \
    --topic '["wjwvXPTwHK15XsVK", "W5X3odpACNJ7p89Q", "9RSPhBrXtamVDEQJ"]' \
    --topicSubType 'PARTY' \
    --topicType 'GROUP' \
    --userId '5SaYUIbd08DDXvCi' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'dSMzx0yK1H1TT9Su' \
    --includePastTopics 'true' \
    --limit '47' \
    --offset '37' \
    --topicSubType 'PARTY' \
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
    --limit '30' \
    --offset '63' \
    --topicType 'jiBdJK3i92vKSbs3' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'qR91zDVJgTqB3eGz' \
    --body '{"userIDs": ["XAV7QibAnCj9T3Fe", "qhbv6mJ5zD1qGa6y", "WWEwLhdPidP1zFMZ"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'OeuyBjx8nXN9HYRE' \
    --limit '83' \
    --order 'BY0tiCF20qnxVdIs' \
    --startCreatedAt '95' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'zX6Rm6rd3sJSL5vG' \
    --namespace $AB_NAMESPACE \
    --topic '9AQMTl979wXkjijM' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'SwHsoiL0YzwnSi94' \
    --body '{"duration": 88, "userId": "VLv1tosAyeF0KFCc"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'CMlYHyf8gQbCn8wm' \
    --body '{"userIDs": ["njnu1ctVo0YnHVY1", "MtfI2lvYIwmA5A9b", "0meUXbkWIFDYuY5y"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'eXdu2lAY3E3Y26MK' \
    --body '{"userId": "0h2g8bUMcUNRctW5"}' \
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
    --body '{"logLevel": "trace", "socketLogEnabled": true}' \
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
    --body '{"chatRateLimitBurst": 50, "chatRateLimitDuration": 21, "concurrentUsersLimit": 78, "enableClanChat": true, "enableManualTopicCreation": true, "enableProfanityFilter": true, "filterAppName": "ChnMGdsOcgGtTrIY", "filterParam": "GeZNJxbQyE4Mrx5Y", "filterType": "WDxm7XKMBMmhMp5Y", "generalRateLimitBurst": 70, "generalRateLimitDuration": 89, "maxChatMessageLength": 30, "shardCapacityLimit": 95, "shardDefaultLimit": 92, "shardHardLimit": 63, "spamChatBurst": 5, "spamChatDuration": 50, "spamMuteDuration": 24}' \
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
    --body '{"enabled": true, "expiresIn": 97, "hook": {"driver": "b6jawVPt9PhZfmv7", "params": {"tcgfkWLhDdMkoXbu": {}, "lMThPqSQdr470wZc": {}, "HTX4zSRB32Hu1qD3": {}}}, "jsonSchema": {"eLM1OVW9fSo3UDJm": {}, "mbfE9Y9E6SRjSd1S": {}, "1jOchhcEs1e4V5za": {}}, "name": "2elsp8l43IT73hRN", "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'x0rFpDG5hiqTHmSf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'y5Cjsn95rsgUWSQ3' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 88, "hook": {"driver": "pl8MDERkd9duUWSD", "params": {"i3cgXRtnatc5LtDa": {}, "v6J7QmvtEWGpXyBa": {}, "lOv2zJAWj2bYk73u": {}}}, "jsonSchema": {"QF74fmbKmaSB24ej": {}, "Pnk3RLiB8mFWLX4x": {}, "PeQgWRCNOWpt1HB0": {}}, "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'l7q4kLHMbXgOVP9c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'AdminGetCategorySchema' test.out

#- 44 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'EhvaHKBodPYp6UgX' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteInboxMessage' test.out

#- 45 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '46' \
    --limit '45' \
    --messageId '["md4NZtqzRlJvcBdV", "Dxf9mBF5teFm1uMF", "1H8zSGtMAl3XKIfX"]' \
    --offset '77' \
    --order 'RYllsRQfr9vKOuey' \
    --scope 'USER' \
    --startCreatedAt '32' \
    --status 'SENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxMessages' test.out

#- 46 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "SbuDg7PDx7Q35PFU", "expiredAt": 7, "message": {"GtDrUovwR7sOI9NQ": {}, "cKH70ri3m8oPmy6X": {}, "XJ9avryOYgdlHHje": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["lS0ZiSGceVmPs2YL", "TXQatwk8P6x692rF", "ApDdK3FQc6jO74jg"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminSaveInboxMessage' test.out

#- 47 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'mO7P9ZCFxf9LZm4f' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["tal2rGPqJ6opp7v5", "17NAr81FdTk5dgYf", "XAXmLQ5q1hfIwxbC"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUnsendInboxMessage' test.out

#- 48 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'DeO12DIY2JSVHdPJ' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '97' \
    --status 'UNREAD' \
    --userId 'GOFTKdOCxNyei9Wb' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxUsers' test.out

#- 49 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'y2iZ13eZgNVrpLQ8' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 60, "message": {"5BizIuApIhAG399Q": {}, "LQfQKC9SMSOAEFDD": {}, "mrKCXjeRt5W70jhD": {}}, "scope": "NAMESPACE", "userIds": ["QzSVIIBgUSH4q8it", "ZkuFCh0yMWw65R40", "68NrGKpfTXHzqUG2"]}' \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdateInboxMessage' test.out

#- 50 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId '5llgAwJakSN2NrN6' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 50 'AdminSendInboxMessage' test.out

#- 51 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["QAy5j2rMEfd4L5gT", "aFOinpN0MzWSYvpu", "xPrBLrhBPCdEm1LL"]' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetInboxStats' test.out

#- 52 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'BSiUXgE2Fb9pYTQv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'AdminGetChatSnapshot' test.out

#- 53 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'zV366JxCm7zXmmyb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminDeleteChatSnapshot' test.out

#- 54 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'IwtM8BhVBU5K5dej' \
    --includeChildren 'true' \
    --limit '63' \
    --offset '80' \
    --parentId '6o8DNZIEbDHlYL1j' \
    --startWith 'FNx69cVzIXffTYgG' \
    --wordType 'HemVmt2qb109lQF9' \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityQuery' test.out

#- 55 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["tb3R6sbCr0IHNG5X", "pZ9HyrAcvtHPzh6f", "Llse7miK4oKpVIhL"], "falsePositive": ["dmir0sSIOKwV7a9T", "cHGxa26oyXJbT5SU", "bvcXLXhQLfpnbLMS"], "word": "PCi1HudXkwI1nnYX", "wordType": "9yjKlwNnjYyu70Fr"}' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityCreate' test.out

#- 56 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["VlRUHWfUKxVEx7TF", "u0a45DGuNcXrlsjF", "rdTwIO0gBEt6CR1i"], "falsePositive": ["aK0J5UUAz5YV642W", "SIlx3mnbef78JL5I", "qobagEsYD1yvP0Qq"], "word": "tnyODX7CRnuwNi6P", "wordType": "dxaKokLEtMVXl8Id"}, {"falseNegative": ["hy4yMCbx1MEkrMyn", "gkskzbLA99ySZs9B", "QPDS8GexgsQu5x2q"], "falsePositive": ["42nSb0W9SgWjPq3t", "Azt4jZ505iIadtmX", "bcEsFCfOjo6OXLjT"], "word": "I40pSzEFQiR8pxOe", "wordType": "gNF4VLTlkKwS4P5i"}, {"falseNegative": ["JEJ3c8q5aq3XbAIg", "9TPrwvfpwGgdLo3Q", "jQSqr024Tc398Kml"], "falsePositive": ["sY8C6ysy26UAXqz1", "38ai1JV0mLTPMIp0", "26mwFX4lZxahtmV2"], "word": "P8CKKZG0SCh2k0ZY", "wordType": "CLJGfwTC81N2DgWE"}]}' \
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
    --limit '24' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityGroup' test.out

#- 59 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'REPLACE' \
    --showResult 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityImport' test.out

#- 60 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id '9geGk8BwlHd27Mx0' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["ru8Pmni7LYXBvVs7", "fYJUBIOVoUqph3B6", "koPTR1v4aoKxzt5Z"], "falsePositive": ["ZnotIjfUmCxQ2UXG", "CQuzUEIRb28rSiEH", "b0iC5QN2XkBOFcLv"], "word": "DpgGUlBDWFmHyPjL", "wordType": "acKN13yyfVJiH57Y"}' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityUpdate' test.out

#- 61 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'VLE0x57vSb1tqDCR' \
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
    --chatId 'zqWYpZAJptk8BoHv' \
    --namespace $AB_NAMESPACE \
    --topic 'yZltpf2BDu7LkEAX' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE