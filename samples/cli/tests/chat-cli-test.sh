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
    --body '{"message": "Mwb0R3CI6S9ht1Px", "timestamp": 77, "topicId": "PYwV5d6bhpZRpjQ2", "topicType": "GROUP", "userId": "c7KUfqAlMYnYuPHL"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["Xa7iYYSvT90GwjDg", "ZSQ9trDnrmBw0uIQ", "STZvTiMb5vKQd4d8"]' \
    --endCreatedAt '51' \
    --keyword 'ymkhmokJcyt7GXp3' \
    --limit '9' \
    --offset '68' \
    --order 'LC5m39EeVdHBlPoC' \
    --senderUserId 'cg4u47UiemntuCz0' \
    --shardId 'IQnKS7qrKe7kgNBU' \
    --startCreatedAt '6' \
    --topic '["U9ciIa7S7AROCjYP", "xfIgVTsMEujPTnDz", "zoW2tXWZFPMksv0f"]' \
    --unfiltered 'true' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "HAJhygPKDLDr4RwD", "name": "9wfviowmdZCbim1d"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '91' \
    --topicType 'eLaSbTvUEiL9tv35' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["YFIVLwzTdAcHcHHQ", "l4QavBG41BRnx4XP", "SM6KCwA2SwBmzjKT"], "description": "MxRLYUrNgpPGYlY8", "isChannel": true, "isJoinable": true, "members": ["pc1cE9jCa1yzu0xv", "q1zoHuti0aYjZlE3", "I0qzzTROjwJlM2GI"], "name": "sTgWycXxwOEVAUtb", "shardLimit": 34, "type": "iNu0fCk3KlhfmAly"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '77' \
    --topicName 'g0pvra5LakkaggDY' \
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
    --endCreatedAt '4' \
    --limit '30' \
    --offset '38' \
    --senderUserId 'rtVd6XyIDmL6HsLX' \
    --startCreatedAt '52' \
    --topicId 'Axn4RXARmtMK7Kf1' \
    --topicIds '["huzoBXaGRZrXBTiP", "CV9SB2QRp1fWdtKx", "awthnf2ijYI4HOeJ"]' \
    --userId 'QHrfiYl9va4PTlHN' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'fqMKa17hTzvoGwqw' \
    --body '{"description": "TqyyDnX65loedoY9", "isJoinable": true, "name": "QMsQjSFfbTMhickU"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'OVPesKsYuDn7Z4cP' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '2RSoHFqJGE2Ve1OO' \
    --body '{"userIds": ["gnDkMdRN6ltiOp78", "AHmiCPUWGtQ9BD6H", "GTqfNqUIMJkEJx7m"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'zmJn15NCyowxTL1u' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'mupWXOEFwTeo49K3' \
    --body '{"message": "xkju9LVYRMiDJpNf"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'd0ul9sT1lo7wzh9m' \
    --namespace $AB_NAMESPACE \
    --topic 'ymYH9h2bGOiR5hwi' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'CFlSxD8CZ1WC17FO' \
    --isBanned 'false' \
    --isModerator 'false' \
    --limit '85' \
    --offset '81' \
    --shardId 'UsavU7rCGXPWFS5y' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'XKDaTVdr6Ek0msu3' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'DTS1h7nbOi3oMOzj' \
    --body '{"userIds": ["Homib2LgQiNJe3TV", "2vRWHqSAaipkeTiR", "aoxYy1JGqmagGm6v"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'uTj7N8BBej6X4Kxf' \
    --userId 'Ni9WgUNyRfbkHkbb' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'HTv21fg0D0DZTaW4' \
    --userId 'O5jd5RxEiD1o0WAV' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'true' \
    --includePastTopics 'true' \
    --limit '45' \
    --offset '38' \
    --topic '["dafCHoxwn6bmNI3b", "uLbta681M9Fdk7sy", "dYr0JC357VjlJp8O"]' \
    --topicSubType 'CLAN' \
    --topicType 'PERSONAL' \
    --userId 'rPY91UEjw4ZQbCgw' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'Wo4bBJFptdxZyzEn' \
    --includePastTopics 'true' \
    --limit '94' \
    --offset '70' \
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
    --limit '8' \
    --offset '17' \
    --topicType 'wzXEU1uN2GXqgQMs' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'F8XKKxSYOBOIfTcX' \
    --body '{"userIDs": ["V8yhYCUaiPn4U8f7", "KpLHPhJF6fIf9oV3", "UKxeWFkN9nxnWt1G"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'a8pdUaJjPy4oGEnf' \
    --limit '85' \
    --order 'bFllwxM7daXqbJ4T' \
    --startCreatedAt '14' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'rfwAqIWnbmWiVWUF' \
    --namespace $AB_NAMESPACE \
    --topic 'lxnf8NNlQ9ZR6ayP' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'ZgOOK8Q2Vds16qQx' \
    --body '{"duration": 9, "userId": "wP7R4phxrAKOWuC5"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'OLR0ut9Ppxwelj2f' \
    --body '{"userIDs": ["rrHiqbjP7m070ryM", "sKzMv8rJcjaoYqtJ", "IMtUffLk9a4s2b34"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'QCxRif69B1GG7iOq' \
    --body '{"userId": "FqhD5WA7Wkxcwc68"}' \
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
    --body '{"internalAccessLogEnabled": true, "logLevel": "warning", "logLevelDB": "warning", "slowQueryThreshold": 98, "socketLogEnabled": false}' \
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
    --body '{"chatRateLimitBurst": 100, "chatRateLimitDuration": 88, "concurrentUsersLimit": 97, "enableClanChat": false, "enableManualTopicCreation": true, "enablePmSendPlatformId": true, "enableProfanityFilter": true, "filterAppName": "hSzfODiJQKStLRbD", "filterParam": "MA0dhku3mcZ4Z8YK", "filterType": "xzuLvowgHwM0l5xd", "generalRateLimitBurst": 13, "generalRateLimitDuration": 45, "maxChatMessageLength": 82, "shardCapacityLimit": 13, "shardDefaultLimit": 56, "shardHardLimit": 55, "spamChatBurst": 69, "spamChatDuration": 9, "spamMuteDuration": 49}' \
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
    --body '{"enabled": false, "expiresIn": 65, "hook": {"driver": "fWbrq8lpC0Jk20PA", "params": {"oKviulSbjrjL1orR": {}, "Wi3T0tt6143HKX2u": {}, "GMCjHmxyR1FxxPs5": {}}}, "jsonSchema": {"9wflJbntaNF2jn7d": {}, "YEiKFr9miM7FPHrU": {}, "nObacj6bzkuTDFFp": {}}, "name": "88lhzuyNiOUenewD", "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'VszibCaTOXoOiXqO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'eKbXMKhhwPv78S0q' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 98, "hook": {"driver": "hgN2wUF27HiIdnwO", "params": {"UcQqhNkbLFy0GFRH": {}, "WJHOCficomkrMRsH": {}, "DqCUga44HSSUS051": {}}}, "jsonSchema": {"1HDD8hM6mOftb85O": {}, "i9SNp9Z5EAXk9Zln": {}, "WdFLx8WAXdc6mau4": {}}, "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'f9ZMZaZGI5B9N3hW' \
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
    --messageId 'KBiFb582XdCUQy9U' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '7' \
    --limit '2' \
    --messageId '["uaSCnwEXuAMzaAO8", "To3Cd9YsKttX3FNg", "rNJZDw4bqfNnCvfz"]' \
    --offset '54' \
    --order 'sTDPhEi9ldVmpdKL' \
    --scope 'NAMESPACE' \
    --startCreatedAt '54' \
    --status 'DRAFT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "NFXVmHdOwSz5NoVd", "expiredAt": 27, "message": {"sJowQnInMnUAUSEk": {}, "AGujsmZg6OuTnxGa": {}, "WUARQUu9XfR6BCUG": {}}, "scope": "USER", "status": "SENT", "userIds": ["uzsuSKlWcn7QwHNy", "v9xYebzrlSWbUHGG", "9z0BwrQDMvsc4Bfv"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'gQ9xhaQvSA7pfKQ2' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ja1IKZzp6pjEy2FM", "xbyVItrrZGDaymJO", "KIEBxZaOraOf50A6"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'NXlrn73fJInPJcTk' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '91' \
    --status 'READ' \
    --userId 'aOhu77BBy5Ny3nlS' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'aAbikzTJlXRQCROL' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 34, "message": {"FT2lymVsLTVP2GxQ": {}, "TP4EFKT3JdHZwBKA": {}, "uhhyxPIt4FeTWcOb": {}}, "scope": "USER", "userIds": ["doKS6SGrRs0KEkPu", "HYLyGy0hVUMMagke", "OyCHGNLfk6GU0mwX"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'PLfBZfL1G78zgYHD' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["5u4PNMzde6pe8DFM", "EuVwraFrOazhxaym", "pot2cF45x0XrByN0"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'IK1Pf3xztS3SZm86' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'CnodDk1tTj0oH6Mi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'MsYzr7Qxk1w814p8' \
    --includeChildren 'false' \
    --limit '44' \
    --offset '6' \
    --parentId '1c1JTDQebtvvMQJV' \
    --startWith 'gymyU8Qe434iGpXr' \
    --wordType 'DwLMbx7fMhSxewaC' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["QfUSvtFqLrhOhlIN", "mG0YFyBw30MnNRAP", "lzKfHNhLhQYbh0qp"], "falsePositive": ["6Sq3XGiwaushbQZ7", "dG08w2oh6zhNcy9i", "sJhaOLjQe3dHih2Y"], "word": "E9HM6VNg4oKWVzu7", "wordType": "sfeP63RFCFxcWkVN"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["zL7BX5v59Nk9cpj6", "gE76Rik8EPdvVJzc", "wOYSRffHZ6vvALll"], "falsePositive": ["1i8W3abQuh0h51ad", "Jpmml3StH7x3Xhin", "00bheJwFRhIjBH2q"], "word": "AlivQ7IQg3Q1vqZz", "wordType": "WxRD6irTRmh3MrKW"}, {"falseNegative": ["J1hA6CXdTPIV1C8o", "UimKzOifqTlkU0pA", "H5jJ7ABUxRAvfGdK"], "falsePositive": ["QlsMixXSZIJwTquG", "IDvGzrKRevJB6T5P", "qkRFT5yjXJiLAsnO"], "word": "F0MQgYTdLId8EVOl", "wordType": "AthEJKsezZe1K07r"}, {"falseNegative": ["7jCuMG6nLGo1h1sB", "D7jrzwW0awz7DqmM", "rP9KZ3oIelvBN1De"], "falsePositive": ["e5mmT1y5EPsrne0r", "fB0ja4gqy5QHUpMS", "iJGSkIG7zm0PQavI"], "word": "e2akRowKK8mcrgp8", "wordType": "opdYULKK8RZPWGPK"}]}' \
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
    --limit '46' \
    --offset '77' \
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
    --id 'O9dKhLRDIvUQWZbE' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["boLce7NoHG26DDAB", "59UxnBmbEthXiW50", "L05ZuqpLHnEVBCap"], "falsePositive": ["VI3lcbfj6hrslwzk", "AqmGgNDJEKrmXRnN", "I7ytWjhXExwL4WgK"], "word": "0JX5UY08ODjk0Zdu", "wordType": "J1yoJZxvfLFAFCbp"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'h1vxyb64EqU5dGPW' \
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
    --chatId 'ZUdKjY0XRhZVnaX2' \
    --namespace $AB_NAMESPACE \
    --topic 'Bh7ORPyDNYoTRCAi' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE