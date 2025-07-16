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
    --body '{"message": "lwsYXjhgSHzPEOET", "timestamp": 21, "topicId": "LfQWXb0eIvdV4jIg", "topicType": "PERSONAL", "userId": "B67anHrxepgdBrCy"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["Rt5oZ04ZbUpv8f6f", "qzTU4IvPUpgkWNEl", "xp4IQj51M4VdQkmW"]' \
    --endCreatedAt '22' \
    --keyword 'BKl0cEXaDmAuTweC' \
    --limit '84' \
    --offset '56' \
    --order 'GMOvj7xZrQvqu6od' \
    --senderUserId 'X9mfVAaR6KB1lngR' \
    --shardId 'eZFx2uMEX05MtSIT' \
    --startCreatedAt '77' \
    --topic '["VoEyPOrjKTvdZ2JY", "lSNshXoelrqz94DB", "i0rhBMI9z9Qbt18k"]' \
    --unfiltered 'false' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "QMDkaQdRiC7sbAvy", "name": "C96vu2u0Qa8gQLQL"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '88' \
    --topicType '38QUpOm9hUT5ugQj' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["dCJTnlHsYVS6nC37", "xe4oJlfptj2erGa4", "k6VnJeaCF763MQQi"], "description": "VB6tPVNBE21m8X0F", "isChannel": true, "isJoinable": true, "members": ["wG7qFdHfaeY9CRUc", "BFTxCmiNBvNLrhN4", "hPeBUNUBn9laIcwe"], "name": "Jfe9nnfOKp25X6vU", "shardLimit": 31, "type": "pGZzfl9GzTKf2tmA"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '24' \
    --topicName 'zBimGryYB4PV8oL7' \
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
    --endCreatedAt '83' \
    --limit '82' \
    --offset '42' \
    --senderUserId '5slACB0tO0MTgwvy' \
    --startCreatedAt '4' \
    --topicId '6U92Df4IGBE07eq4' \
    --topicIds '["ld4S4T2DhSZqQ0sC", "yjQ7l2s11RCfWZ2R", "ud1z3GdBDSFEnVET"]' \
    --userId '0S0e6wZvwVYTQTPD' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'lTUxC0BJbDhGiIKI' \
    --body '{"description": "5HMBbQFn89AAatw5", "isJoinable": true, "name": "YSXa8IKgVUxfKJBO"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic '407laeLYVWmyXzx1' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'soBOQuhxLNjUbc7n' \
    --body '{"userIds": ["dPP5PieXOXDXAsy4", "wInqHXzqbKyfKFC0", "XEm0oHJMC0Iohk6D"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'Zkg7sB1K8sw0tsZj' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'Gnw79HAEWlffN7bW' \
    --body '{"message": "s6c04HfwqR7czRFy"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'jR7CEbU2SxGrS3Xx' \
    --namespace $AB_NAMESPACE \
    --topic '7w9uUiEMlc5la7VK' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '0OBBDX4e1CUW7lZy' \
    --isBanned 'false' \
    --isModerator 'false' \
    --limit '37' \
    --offset '28' \
    --shardId 'tJCxlGiOx5UkAsNc' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'yLt21Z1bdj2IyAJh' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'vFWd7WDYdHk1exHo' \
    --body '{"userIds": ["Kh4OIm0pV7yc7tgZ", "6GDMwPi9epUD6wiJ", "ilgPP3hP2TE8Du4s"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'Nmnfma4fj7TsxeHK' \
    --userId 'Zduq7uaBGM0I9Luz' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'xQcUCuOQEauzmWt7' \
    --userId 'LpSCzEzW386WL0bJ' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'true' \
    --includePastTopics 'true' \
    --limit '39' \
    --offset '0' \
    --topic '["OpEKcXiblRgL12fL", "ul5RQGXxfGPwQFp0", "TMR3MobhHGIWnkxi"]' \
    --topicSubType 'SESSION' \
    --topicType 'GROUP' \
    --userId 'C38nqLNRUIxOkXH8' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'dAnFdpQfTRfrOdKD' \
    --includePastTopics 'true' \
    --limit '15' \
    --offset '82' \
    --topicSubType 'NORMAL' \
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
    --limit '55' \
    --offset '36' \
    --topicType 'lvsLrt8CjGve1ZmT' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'PCbvHzQiCbLezTkg' \
    --body '{"userIDs": ["k2OdfTM6VKlQaDs0", "IReO56SdJ8r6GWNR", "f8Q1PlV7O5Eu1u9t"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'rA4Zy4HDYYGK9ISP' \
    --limit '83' \
    --order 'jtS0mmX5W0BBndVy' \
    --startCreatedAt '23' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'WmmKkwCJbZCJL87Y' \
    --namespace $AB_NAMESPACE \
    --topic 'WJ6tswc13jWlUYT9' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'd9kMoS9DZ6fao3vW' \
    --body '{"duration": 99, "userId": "gwVu8Jq8wJCGPCzx"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'ecak4grslxU1O6sU' \
    --body '{"userIDs": ["BVRXWdfhl2mapTgf", "ZSt50cpJugZ654ia", "jdNUUpI42CakSQID"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'LnDZCuzQVl5Ma5Qu' \
    --body '{"userId": "ZDtXCyYVhMnDn1dm"}' \
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
    --body '{"internalAccessLogEnabled": false, "logLevel": "trace", "logLevelDB": "error", "slowQueryThreshold": 1, "socketLogEnabled": false}' \
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
    --body '{"chatRateLimitBurst": 44, "chatRateLimitDuration": 26, "concurrentUsersLimit": 83, "enableClanChat": true, "enableManualTopicCreation": false, "enablePmSendPlatformId": true, "enableProfanityFilter": false, "filterAppName": "dSkbWIo3AWt6XC7y", "filterParam": "7J6Y75LPwAha3xOP", "filterType": "kvJir2r0mG7kqvWr", "generalRateLimitBurst": 14, "generalRateLimitDuration": 75, "maxChatMessageLength": 31, "shardCapacityLimit": 11, "shardDefaultLimit": 17, "shardHardLimit": 59, "spamChatBurst": 77, "spamChatDuration": 3, "spamMuteDuration": 48}' \
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
    --body '{"enabled": false, "expiresIn": 8, "hook": {"driver": "6Gnytk3zDgWG2UBK", "params": {"5ZYuswb2lkMm6tOh": {}, "5NcWEs9oqL8nwHBW": {}, "pdKuGQKkOo84VYgz": {}}}, "jsonSchema": {"pX3BUGU73XOAT3Ce": {}, "vHOSEu06OGWhEvrr": {}, "fQsCCS8xodzjrjOS": {}}, "name": "pUkHeKGf2cZzhLAS", "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category '0xfKgBwNndfpqlsJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'NJOZpDwu17ALOGyX' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 36, "hook": {"driver": "g8p7yLxhIZmH6VGl", "params": {"qK7jGRYYYEN4YNMp": {}, "BU4X0RT7UccujS1e": {}, "2gcK97JWAeHbqZM3": {}}}, "jsonSchema": {"BGLCqzRcLJCsb8aq": {}, "1otnu611hLeh58mk": {}, "4rBStT0UcscvHfTZ": {}}, "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'TPoEu25CRarTJXCZ' \
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
    --messageId 'GGYuf1qOop25x7R9' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '7' \
    --limit '98' \
    --messageId '["EWWmAVn90zxXgstZ", "oQRUbH45QPY1A4dU", "mzezj0NXJ4MYLeKG"]' \
    --offset '20' \
    --order 'SzoxQPMsjz0fPKqu' \
    --scope 'NAMESPACE' \
    --startCreatedAt '64' \
    --status 'DRAFT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "6ZIYJCAg0E9HL9IF", "expiredAt": 20, "message": {"Y9BA8LwlQfBsk1Qs": {}, "8ayrp8F0qsy1XuB2": {}, "R2PAIeBXpDtqdKHN": {}}, "scope": "USER", "status": "SENT", "userIds": ["tSnaA5I3zhXV9nFh", "dyffqVW8l7xR8Oy8", "VBbsMSbUnJotP2au"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'xhG4HEA71pXfT4Ry' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["TCoXIMaN6NyTqn6y", "kCDIKvDoc29c0IOh", "gV2Gn4tjtB5RR1vy"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'vofDaCh7b1tXTIQK' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '11' \
    --status 'UNREAD' \
    --userId 'LjvwNymYC614ll8a' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'R0HxYx4dsaTlJ0dR' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 18, "message": {"bW1eWthAsQBBOu4E": {}, "JVIqnZvYx97YQjJv": {}, "rEtZwq62ARzwYTzG": {}}, "scope": "USER", "userIds": ["yc5JGQeF9QgFcVnd", "iETxYlRJPYVQ4RQ3", "cAEstWvXNuJRcb6g"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'SHjXBY91TfE8ILPH' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["OLb1C7BYs81tmQKl", "qDSnOLeaZCVGcKqg", "eGWdsVyCwEzjmDVV"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'jkeCcraAeFGpgIXB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'Dpl5yC1DADUW3ePo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'AteF4D5QwctINWUk' \
    --includeChildren 'false' \
    --limit '100' \
    --offset '22' \
    --parentId 'Gc7RGYCmlO0OeS3I' \
    --startWith 'N2GKExI3aF5XyaUe' \
    --wordType 'j4KreSWMm2585DK7' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["nCi3uXKv62Gf5hwT", "RsN4kpu44tih170n", "tyP433WEW8ACSS3Z"], "falsePositive": ["51RvOziLNi5cVD3W", "PycNCtzCBP4gnfTR", "O8vdY7EJbLTYEgCH"], "word": "VPUVomrS6wWNJdaS", "wordType": "MjAujrA1dCRXgYaA"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["Kw55XvU5k5A7FJUe", "4I3odLJjfwjrSYrl", "sUrEYuMGdO9eYf9Q"], "falsePositive": ["WM53OzsOckVDStlB", "fWWxdVffZmFkm9Y6", "NeBkk1O40KC9XCQN"], "word": "EkBcAKPYr2q0SZwz", "wordType": "7EuFKTLzZoCy6cWP"}, {"falseNegative": ["vRzgz4PtfbsDLQDF", "3QrPbszITtDBaZDt", "gWGgKT42BkO35AgU"], "falsePositive": ["AO5puvUeptA273eC", "H7M81SWiKZ8xFS0L", "Fj1mHuFVy4WLFChS"], "word": "muAFD32KlElHNCxh", "wordType": "fLDyl0jJNZdWnz8h"}, {"falseNegative": ["LeI3uPUY2oLP8Yfk", "5Fkz6OLizftwae9V", "FnvFas9lIV66x4S1"], "falsePositive": ["GOk6bc0JJJ49649b", "WZexmB21SI5k6Qm8", "pmW7E6mfC3iOtpBG"], "word": "7PBeCkBWjRRmUoaU", "wordType": "YkBUbYxrLNp7tGEO"}]}' \
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
    --limit '22' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityGroup' test.out

#- 60 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'LEAVEOUT' \
    --showResult 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityImport' test.out

#- 61 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'WDV26V4uDgCKAe8Z' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["CADIxUdhsVDLYkKO", "MJKZ7wyi249U6cmp", "C3gPhjkQgB3yMSoB"], "falsePositive": ["IMe6jQVwqBPXC81B", "qxH5m6XaHNrOEriq", "gESvZCFVJeetdYec"], "word": "KTFcCEA49hRRXq9q", "wordType": "hxYQ0T247GvU8i1x"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'qZWFHuF77m6JpFEC' \
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
    --chatId 'WPkeU6LjQ0PcZKmu' \
    --namespace $AB_NAMESPACE \
    --topic 'uCZJOhUeqxanXI8z' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE