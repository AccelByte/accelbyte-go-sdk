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
    --chatId '["CQ8ORBKGTdJNvBa4", "ZyM3Ca4ikbMeFkKM", "DFT6MzwdvhxsENH3"]' \
    --endCreatedAt '77' \
    --keyword 'bNAr4bcyxynsdunY' \
    --limit '43' \
    --offset '58' \
    --order 'oNf2sURRKdL1wlZY' \
    --senderUserId 'kBvSny8fqBNz75Pa' \
    --shardId 'jTGmfXdQrEel6Wix' \
    --startCreatedAt '76' \
    --topic '["TIZESugLZ0q8Q7ue", "tXp2zW2CdI6M3cSp", "0ivcZrqJiNr5D9t2"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "1zyB2hJLL47SQzmR", "name": "R7DZT9ZSOydmIFJ9"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '62' \
    --topicType 'HwfqzZj7msGVD30O' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["deZnrsncscws0tDB", "lvPkOabhT9pI7y4e", "UIycKGVQU6yIDpko"], "description": "KmLG44ugaZu6RG3k", "isChannel": true, "isJoinable": false, "members": ["OUSRHvF1yibboYfn", "vWoE84EFci3KQJzP", "mlXl6tvfbtDkneSj"], "name": "utWqfZkOX00webWb", "shardLimit": 92, "type": "mBvsjXFHHT4QKSLu"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '17' \
    --topicName 'WAQyC2atSZ1j5lnQ' \
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
    --endCreatedAt '61' \
    --limit '33' \
    --offset '56' \
    --senderUserId 'W2rNxQWnWh5Xyg3J' \
    --startCreatedAt '63' \
    --topicId 'XRSkBVd6ftCTJHuR' \
    --topicIds '["f7Q1hutLalAwhgDs", "LEdfGJaKyQ5PrY09", "LJvojHr5ve5bm28s"]' \
    --userId 'mpnzqCHmNNDAtSUF' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic '1wPkGK4UJtd24vW0' \
    --body '{"description": "Blo92G5Lq0tbHUCd", "isJoinable": false, "name": "bY4yo5kKY8ESiSGA"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic '2cBNquPzoOf7evZ7' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Bui3XgGuLMWsTpmb' \
    --body '{"userIds": ["yqVwt3XO0khDxtnD", "YfsLdXiPdGiIVfYL", "98jFm8NVTk1EZv3R"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'jzi6LBbuS0iNDGGC' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'wDXNj2E7pVAtGMNX' \
    --body '{"message": "cF3PaDEziDrfmoSG"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'BZy8oI7EmLYhrS7g' \
    --namespace $AB_NAMESPACE \
    --topic 'NdatnxgXm1l7clhz' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'ajFwcjctJXU7i8lB' \
    --isBanned 'true' \
    --isModerator 'false' \
    --limit '80' \
    --offset '3' \
    --shardId 'C7EIwi3307bHXNUw' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'iqbhLALVSvteb5qE' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'O9A0EW6HQ6hLH49m' \
    --body '{"userIds": ["8QRF33LfWLzlK3zS", "sGYYMSlJDkdsVFhT", "AciqBbsXw8gqVXY4"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'hC5WuXJeq5ryy8SK' \
    --userId 'jNt556McEEUM903f' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'cPBtzM6SeROSbKhG' \
    --userId '1CTo5VsMNq5DcG6m' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'false' \
    --includePastTopics 'false' \
    --limit '37' \
    --offset '8' \
    --topic '["W1CA6I4SMuefnWVf", "AoLxrVlQR0G4Nh4T", "OmAZG6757riPm8zM"]' \
    --topicSubType 'CLAN' \
    --topicType 'GROUP' \
    --userId 'AvVP0FLOptoJjJYz' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'dKD6WFAJLdgBfS67' \
    --includePastTopics 'false' \
    --limit '8' \
    --offset '70' \
    --topicSubType 'NORMAL' \
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
    --limit '54' \
    --offset '89' \
    --topicType 'dja9VGKEZQw6cOtz' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'EVYainFFEyZOzghK' \
    --body '{"userIDs": ["NwB999A8zbUz7n3O", "yvlhHnfaAw7Hyd2n", "uUMfwJtepVqBsKN9"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'ihqUG5rqn56gC0rB' \
    --limit '37' \
    --order 'NxJvzeRnYb7BJSjm' \
    --startCreatedAt '8' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'RacuqWurzCxhOwVI' \
    --namespace $AB_NAMESPACE \
    --topic 'hrSgu3JOxhI5AC0N' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'TQtQwzXYxwfWvEln' \
    --body '{"duration": 97, "userId": "2yKs3Q3bgbwDJMhU"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'zmh5cBWtpkic2jvd' \
    --body '{"userIDs": ["NM4tpAjNKRlk75kv", "liS3FLlyu1BNtQxF", "aXxwaimAIIRtViOp"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'JPCHLy7HNAxUWMBh' \
    --body '{"userId": "tcZoVoKlaQz3KAtH"}' \
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
    --body '{"chatRateLimitBurst": 7, "chatRateLimitDuration": 65, "concurrentUsersLimit": 61, "enableClanChat": true, "enableManualTopicCreation": false, "enableProfanityFilter": false, "filterAppName": "KoyzrmMWsDZNlH48", "filterParam": "lj506PBpAcFaeJkE", "filterType": "B5rBxJt59c4p8aVl", "generalRateLimitBurst": 15, "generalRateLimitDuration": 2, "shardCapacityLimit": 8, "shardDefaultLimit": 91, "shardHardLimit": 42, "spamChatBurst": 89, "spamChatDuration": 97, "spamMuteDuration": 89}' \
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
    --body '{"enabled": true, "expiresIn": 8, "hook": {"driver": "KAFKA", "params": "6VAQOxoJxRfxxNfw"}, "jsonSchema": {"lPvw5OSfMlKevpyT": {}, "LwYtliGeBW2JLgre": {}, "lk3FIo3o0H7K0QlX": {}}, "name": "hWCkxvaSJHVbNqf7", "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'o33DqhTTesQsTcaL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'UBsHHz4axtJjype1' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 49, "hook": {"driver": "KAFKA", "params": "RfDmLATAM4Qkz7zg"}, "jsonSchema": {"YS8mCsbIQWMoHtrq": {}, "9oP4aRhl9orPzR42": {}, "nXKImCaeorow3PMU": {}}, "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'N3R0vtn2GzzCcfpW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId '3T5jgMHyMX4wSizl' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '11' \
    --limit '57' \
    --messageId '["z2yq3BnvA3JZJQt1", "TmLHRftbIydsLVOl", "6fp3COSVyOMYT5qi"]' \
    --offset '58' \
    --order 'aYM8olhBVP1xrlhK' \
    --scope 'USER' \
    --startCreatedAt '52' \
    --status 'SENT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "hITrtpnrWUgJ1uk8", "expiredAt": 49, "message": {"aGdHRadesJ99Bw3S": {}, "3waPnxETWE36plQU": {}, "fYRxbkVfLJUU5MPQ": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["nZXx4S0LYOhkKnJQ", "OEF3SXhIeyXk8W9C", "zNQweh63ZjpWhkGx"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox '83NNU0BYQq4t2HEj' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["L1F9n8REA441wkQL", "ESppnO15zcrJAF1B", "ao8gjmbDZB90ljRg"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'JH09VXFsAW03EKEl' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '0' \
    --status 'READ' \
    --userId 'tbTFvBaRUXQVVCD4' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'B3FJu4rYuw4G27rU' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 25, "message": {"LItT0qEF84L80F0H": {}, "erLMOBt0MC3vq0RW": {}, "0T00plLIJ2lUi0Jr": {}}, "scope": "USER", "userIds": ["Z8sEU22s10aKJGsJ", "bXzvxZ1NqeU9V61a", "TqkeFzOnEWDaJa2r"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'kKvDB4YnSamGSffg' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["SqEohjUJjPQrhzAu", "0b5RTCN09TdrIbsA", "ZP2sq0lYBza5yTx4"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'DuRuQrLEFmc3J1YU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'YICt3hb1joY19Gzn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'UHcRNTvX28CUV7zI' \
    --includeChildren 'true' \
    --limit '76' \
    --offset '58' \
    --parentId 'X3bp99ZIGfrQXvIE' \
    --startWith 'mi69rmFPIX5Wjgls' \
    --wordType 'fqI85KHtIpFRMlph' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["h1ZY8zVaOXBs1eGf", "tmrjRWiDhuaIXoaS", "5jQxXGqVfxWeNogs"], "falsePositive": ["xzkPCPrGJJpaB7ad", "7yEkdblka8APUFqW", "mLKpK2RgQfDcqmpz"], "word": "L1B0Lr1DN5oMKV3R", "wordType": "PJbmeeYyVFZPoDQp"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["l5BnoMnLbTgcFD2F", "IqiKcEVnADjbHpEu", "VSBiPCbIfc25Nei2"], "falsePositive": ["7sD2KceUAgdTWwBg", "uK8YOuJnIUw5ESG3", "6hIB2MiDRFUzy1RF"], "word": "LNAk7NemEBUAUO1a", "wordType": "Ybn4uFKbYZbkebnJ"}, {"falseNegative": ["RAuo0LxEdO0oim4f", "jsZdZW8igeLTgM8L", "awWUUyAzfCHrSnBh"], "falsePositive": ["YpJsNWOUsfNuMyL8", "9u0txrvRlA07gX1L", "2OeKsktSg76Exx3Z"], "word": "2AkwVFgFhXQhvewt", "wordType": "hOkyFWATWuFt84K8"}, {"falseNegative": ["Qpz3hnFYqu4fRFn3", "T4GcTdbK6xDyprau", "koKCT73r87oxg834"], "falsePositive": ["UxB0P1Ik0f0RK7yT", "1dMXX55YKyHoy6m4", "ObihbcUCKhRkga24"], "word": "PclVnxLRyuIY3gEM", "wordType": "ut3oIo4VJPOqKNjd"}]}' \
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
    --limit '28' \
    --offset '44' \
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
    --id 'Mwbitl5LZSpNSmOX' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["SDxOpMiZkd5x6Vyf", "pKflx7ZkLDPCa2SL", "amB75ccgj5cRi8xw"], "falsePositive": ["GHMm1lwfut0dMvBZ", "DvX7x5Oy9Egoz1gw", "YBVgTWzTzgPZrxWa"], "word": "ZOMrgncy65hsu7DW", "wordType": "Omu6grqXYisS3gQ9"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'GhfhdAnVTB46oGXw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'M1VTDPhuopim1ztZ' \
    --namespace $AB_NAMESPACE \
    --topic 'rVlkvdLlyUadn8VO' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE