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
    --body '{"message": "tMi1GCEJCkdbE5GM", "timestamp": 37, "topicId": "qXDW6IWBOn0TpMpD", "topicType": "PERSONAL", "userId": "ZBVDFb8utyGjcSEQ"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["QgcdqhIcIpZoJLgL", "BdG8I1WihPMzQgRv", "g0IOs9Qx8PJs6KhV"]' \
    --endCreatedAt '70' \
    --keyword 'r693rT7baqCl13Gu' \
    --limit '4' \
    --offset '34' \
    --order 'j9SpnNkea7wfOBIk' \
    --senderUserId 'O8weof2R3nzjkUfs' \
    --shardId 'q2Jkvcr67LMsxS7N' \
    --startCreatedAt '74' \
    --topic '["MUZ3XSNtQbPumAvU", "anS9rKPkRnSV5Nz1", "onB15tmEMRz0PxQP"]' \
    --unfiltered 'false' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "NybemZb7SEsVFTIx", "name": "IZXhxWsKlSqupm8O"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '69' \
    --topicType 'NmgagCZ4CKC1vZRD' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["6ldJFUHwZnz2LT2A", "W1kuaStrQamJmG57", "N7SmpK76U8Td8ApF"], "description": "jC8tXvEdHsOMzzRr", "isChannel": true, "isJoinable": true, "members": ["YSa9a5cZekdZkXlG", "db73vzA9pARdA8Np", "wmWlmMvNuvuIVMOH"], "name": "lfIDbcucVy7pJrvt", "shardLimit": 28, "type": "y6cYbhZhLA1bCpK1"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '89' \
    --topicName 'Go6v87uWdI3fsAKV' \
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
    --endCreatedAt '82' \
    --limit '15' \
    --offset '0' \
    --senderUserId 'slvKQWbX29zNRl4f' \
    --startCreatedAt '37' \
    --topicId 'HGv0CHGFzWRnXh4E' \
    --topicIds '["NGL6U5d2ffjbtWLW", "jbWVPcc58qf6QODw", "FVyXkXoneKEUIpQe"]' \
    --userId 'CX7l0dtWAmV6bSm4' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'o1GpCA8KLfZoxJfb' \
    --body '{"description": "eh1DMOYINc7SDczE", "isJoinable": true, "name": "lfdvQWsJQNsLoRqY"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'hEraBljljFV9vwXH' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'yXQAlOhj6VbQhD1u' \
    --body '{"userIds": ["C2YBDg4o4zb9mB6O", "KhIAf2vetOYE2GdM", "fi8bRVYQy3efQ9ak"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'pwKTYW0ocZIbDq7u' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic '6GzDJwXi0QHqxD9P' \
    --body '{"message": "m5juwdjpEpR1krFS"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId '18v1jlA9NeUSeiVa' \
    --namespace $AB_NAMESPACE \
    --topic '943EoHN6IVQ6LmaL' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'LRIPQow04YEiBfwC' \
    --isBanned 'true' \
    --isModerator 'true' \
    --limit '15' \
    --offset '50' \
    --shardId '3CJcalLVJDtVhrQ6' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'rvbJMdEUhosn73ip' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'u9RZmpwiERHELvWJ' \
    --body '{"userIds": ["NkUSNVszAFFtsYjd", "xKPA89eVfDmH2K8Q", "xRppuO9rNWcgYOk3"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'PVFro8Tmfzq51WPD' \
    --userId 'm1edmFb3qm68J00L' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'Cl0BQAS7dgLwEJGt' \
    --userId 'TTbAIe7EELxHVf4U' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'false' \
    --includePastTopics 'false' \
    --limit '35' \
    --offset '93' \
    --topic '["97pAqNQgE5cH9Dyo", "0FbHs4bWDZakFGSO", "Yujx9OLXM5Ge0vDB"]' \
    --topicSubType 'SESSION' \
    --topicType 'PERSONAL' \
    --userId '5YbQDq3mFtR0p5eW' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'luDisHp583SbrH5T' \
    --includePastTopics 'true' \
    --limit '93' \
    --offset '35' \
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
    --limit '37' \
    --offset '59' \
    --topicType '40SxK0tr8jTO5tw6' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'S2s8gQCYrAdGltLl' \
    --body '{"userIDs": ["cFPUnZ1UoUWdNr6B", "hLjTNp2t0lTe7Uyq", "B0SsbIOxAfwk4nU3"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'GL4qW2G3vVYFchnP' \
    --limit '23' \
    --order 'Tc4rH36ZSVbnLdQk' \
    --startCreatedAt '91' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'YA7EPWBCFhxs3zdt' \
    --namespace $AB_NAMESPACE \
    --topic 'SMXljBaiQ20MBVCg' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'IMKzwaNd5C98qbjY' \
    --body '{"duration": 28, "userId": "rHQp2fqULoOhI8Kr"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'uagGiOj8GBx6zd0Z' \
    --body '{"userIDs": ["Yf52kWolDVJmVAxJ", "B28K4heC1kXsE2QB", "YcMe26i8BoEYy324"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'SIuJkZnPVTjp7Mb1' \
    --body '{"userId": "R5eniEk3PYkHYNRM"}' \
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
    --body '{"internalAccessLogEnabled": false, "logLevel": "error", "logLevelDB": "info", "slowQueryThreshold": 3, "socketLogEnabled": false}' \
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
    --body '{"chatRateLimitBurst": 100, "chatRateLimitDuration": 70, "concurrentUsersLimit": 94, "enableClanChat": false, "enableManualTopicCreation": true, "enablePmSendPlatformId": true, "enableProfanityFilter": true, "filterAppName": "48pwfZ5sCaLVkA6M", "filterParam": "ZnoIhsv5xYaAkHsu", "filterType": "Jz9GtgaHe20eaqkF", "generalRateLimitBurst": 6, "generalRateLimitDuration": 94, "maxChatMessageLength": 87, "shardCapacityLimit": 18, "shardDefaultLimit": 6, "shardHardLimit": 44, "spamChatBurst": 25, "spamChatDuration": 95, "spamMuteDuration": 96}' \
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
    --body '{"enabled": true, "expiresIn": 30, "hook": {"driver": "JkVfcua7L7EQ4M3l", "params": {"qy0KIAUmG7MMtV3E": {}, "9xwiVnkNwq74BVdp": {}, "lU3jyXlk4NHWKECu": {}}}, "jsonSchema": {"fkKIdnLql7hfyhmz": {}, "nvnjQCwHx06cu2IO": {}, "6DGKVsXQDg6FA6JG": {}}, "name": "EhFTqZa3LdMRnMW5", "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'PjVMHtqFIOrSg9Gc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'K5GKEt9zS1J4Gygv' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 42, "hook": {"driver": "9tYHYT7XOTUWahXY", "params": {"jgsx5vbhCwhWxJyn": {}, "cGnVEZRKExZpb0eg": {}, "JFY8epyNYeXfxPiy": {}}}, "jsonSchema": {"sGLXavqFbUKVmoFF": {}, "TqyECbpurIbSEbDW": {}, "tKVS6viullaSVyCb": {}}, "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'ZnjYyXBizjOmXkwK' \
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
    --messageId 'g51e1PtaCwOml4l6' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '27' \
    --limit '91' \
    --messageId '["M9KJ67ghkJlsLafV", "Xp9yIk23kGIk8NdR", "Y1DjGfUDCc7rbDVQ"]' \
    --offset '65' \
    --order 'e2O9ywPrLfLFeYRX' \
    --scope 'USER' \
    --startCreatedAt '15' \
    --status 'DRAFT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "agdSPOZqeLwf1l1g", "expiredAt": 34, "message": {"75UjcSMWtUp1mxqH": {}, "4MOjms7yh6ncxug3": {}, "PHQVBrEKtz5BKUPJ": {}}, "scope": "USER", "status": "SENT", "userIds": ["lnUPjinS3q7ZJKxP", "0u8XdDaImdv8muQ9", "CCRP3MNZG3fjqyMH"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'EJkkPHNhKFqO4b1e' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ppPNiFfDYHIrkxsI", "4cEtelpmywX2VQZE", "T1hRJZn4Ow6vBTmz"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'fPwzfthb6fIxaerm' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '0' \
    --status 'READ' \
    --userId 'cyT725WiVJpJ8g0Y' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'Mqr0JGmAev3M77YX' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 88, "message": {"7EWw0kLjPIffaAl7": {}, "J9qGFJPypKVthnWT": {}, "scUQxI7iVxIY5uEz": {}}, "scope": "USER", "userIds": ["bdu6Ad63I5he85Vb", "9DFfpB6zpixv7ih6", "WC4oUPKqrHlIJhLY"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'VgZKW8uKSh8ZCY0w' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["gMbauRCKkhYbGJnm", "UoTa0MrWng12Gv8x", "0qdJYc09uRepWGZf"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'LEPhjgo80vgkxwuk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'iFFnzxTa2cuBnGl1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'rcWG0SshwZDUt2mW' \
    --includeChildren 'false' \
    --limit '38' \
    --offset '10' \
    --parentId 'RpNyHPaOrcIxzKmW' \
    --startWith 'o5624vNA7rHlUzo9' \
    --wordType 'y41h8eAwFNCYK83L' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["Y3b86g7TBalBaFxC", "2CLlNF0Oee8hEQ1o", "PhSx1LjtSoDu1wKI"], "falsePositive": ["dma9JitwevQ2RCOq", "vniDeHSrlRaHHSUQ", "QvlcYAdPSvKr1R0U"], "word": "3vLeMqPq0J4V4k7J", "wordType": "5tuDRSG0tjV3BXNX"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["pkeiPF86tFop60OP", "7qrCmpkkr3nc7dBu", "PVXMpccbDb8VQtsJ"], "falsePositive": ["ejfdMAKBdOfmgbBj", "BpNS3170m1I50vQ0", "1iweO7RvqUBtskty"], "word": "2dToPyJhUWegQbVR", "wordType": "RaElXNrcQGnnWh3E"}, {"falseNegative": ["3u8Q9wciPALWQhUs", "A5Zx0Vp1iiRvSMMz", "3kaYJc4ouIhgayFD"], "falsePositive": ["5ppcusaLn5KokZ4Q", "D0ogqu5a0o9m7AqF", "a0vb8ZwaXdl31g49"], "word": "EQqe612p479hhUY7", "wordType": "UnhymRPUkaeb6RGr"}, {"falseNegative": ["F1Y8ZMeVZ7jsmott", "ZvEu5QQZdwUJRcQb", "UAjnAEA8aZcYrCGP"], "falsePositive": ["FrFYAzkxKk87IUYB", "9DEImFaAnz2J5dlQ", "SeSqzSaUq7pjvNfc"], "word": "3dDLzjWZkj5HI3BB", "wordType": "0SeLph21aUDRlj6G"}]}' \
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
    --limit '94' \
    --offset '47' \
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
    --id 'BS9dbosnToGLJ0UL' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["7Guhmbmr2jQ4uC7z", "AfCfndP9OxYCwaS8", "Flz9moF6gxAzCnMp"], "falsePositive": ["O83mpB13Li65gjGh", "LholgQG5umrTDYPD", "vExLtWUdAIoxDzre"], "word": "lv5wqxhnKjcuGT8f", "wordType": "gRIob8Fae237Ufsn"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'QHi40jfCN2xDruwR' \
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
    --chatId 'iOaMrUDFvZJBt9x6' \
    --namespace $AB_NAMESPACE \
    --topic 'eCsTWNn4a2JEkNlM' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE