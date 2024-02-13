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
    --chatId '["GIGxCDdNqWifiTc5", "whW4B9SyM2rnAFpG", "MNtjMEkLvyVAV16o"]' \
    --endCreatedAt '12' \
    --keyword 'S7EdK3Pzcvj2gxwi' \
    --limit '9' \
    --offset '26' \
    --order '5MY6W5KOiVeAgZh3' \
    --senderUserId 'fFapUI28oUepGOdI' \
    --shardId 'Qx0B2yPu85tJ6KZA' \
    --startCreatedAt '11' \
    --topic '["09FUUCCv2dJbqRZY", "YYG8mmivtB80IT9s", "Tv0JyQtrzM77DTpf"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "fJOn0d7aVh2ydxtJ", "name": "DtIzBOk5HEut6Atv"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '92' \
    --topicType 'H3W0BduuHEmwSmLv' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["TJeuPOeBTCfbeCLQ", "o8k9WqMCG2pUAAMZ", "5J31ENQzLjeBF3fo"], "description": "pXto0ojbH0JQlCCm", "isChannel": false, "isJoinable": false, "members": ["8t4VWudvjlNMoIGt", "XxvTqnVZfnG1UkQ7", "FMf5SfvF64guiWpr"], "name": "FUIP8s28vgcCW6SK", "shardLimit": 15, "type": "LWhfG8chIJSuo9W5"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '75' \
    --topicName 'jzti0x6LBvY7E0Xe' \
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
    --endCreatedAt '16' \
    --limit '33' \
    --offset '10' \
    --senderUserId '7JNJvBb6U4qleKiC' \
    --startCreatedAt '96' \
    --topicId 'fc3sRzunyVyvTwtB' \
    --topicIds '["4VQbSa5hDEALEmkr", "jFGJeGdeq7jUv3UE", "KvLsuzYfV0bPE4J6"]' \
    --userId 'kt1O8QTMYyOsSREB' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'ofe54fcSRy7GBHDq' \
    --body '{"description": "HlG6dFfZMoWZyCQj", "isJoinable": false, "name": "3dJ5taCzH8Eq0Dvn"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'yGCAcphRj45Z8Ugt' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'WU3bf4E67WW7Vvu8' \
    --body '{"userIds": ["TMO2pg2fr2FJc1B9", "FWaDjuEH9GI4q7aT", "zfGkSnnedZnjUAxF"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'Vgez9iPYMf07ZqnC' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic '9zW5u0gdWU9RtU6x' \
    --body '{"message": "NTkCoIL2oTlnBqvf"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'IhWH0AVZpoF4PRJ3' \
    --namespace $AB_NAMESPACE \
    --topic 'KfAfTCHijWTL6uzL' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'HFKkXuvTxK51CwY5' \
    --isBanned 'false' \
    --isModerator 'false' \
    --limit '38' \
    --offset '41' \
    --shardId 'YiD0qfKV8Q24UFdF' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'JsUsTe5jfoyX5ekh' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'L2BWrNSTGzL9AqPY' \
    --body '{"userIds": ["1K5VUJIUNjOSzkrq", "WNEDZqgr54T1okB9", "AV9xEUPWbq3Mm73Q"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'wsMWJvkzU6iyDcWV' \
    --userId 'BB5O2hx4zcDQwUrO' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'EWINglbTsuhTJf1o' \
    --userId '4ldjmPVvWOFvyU2M' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'false' \
    --includePastTopics 'true' \
    --limit '96' \
    --offset '32' \
    --topic '["ym6RSnnylcifPiUP", "yxpvGsYoEYXXVBCl", "LOGy5y6RYMUPXUia"]' \
    --topicSubType 'NORMAL' \
    --topicType 'PERSONAL' \
    --userId 'krZRqkkr7J9g9Bky' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'WBtGwz9UWKhffCad' \
    --includePastTopics 'true' \
    --limit '10' \
    --offset '34' \
    --topicSubType 'SESSION' \
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
    --limit '97' \
    --offset '10' \
    --topicType 'Ui0qTU3GJ8YRK5QH' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'IewUzotgTQzMDdSu' \
    --body '{"userIDs": ["r67xXAHcdlI0A2nN", "iimWjmO7n0jUNIrC", "WjWPd9RxOWqB64BP"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'f9g4wvUgBAjntLXS' \
    --limit '4' \
    --order 'Y36GluI3TaxOfUn6' \
    --startCreatedAt '64' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'gCmcx4SKH57Ym7N7' \
    --namespace $AB_NAMESPACE \
    --topic 'BlxvgvrJMoRYQc1R' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic '5lh48iSwUFHDbD1A' \
    --body '{"duration": 23, "userId": "KM8GXKkq3QbXg17c"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'rcHInNKI1WlWUEBx' \
    --body '{"userIDs": ["rlBIMJE55u8WCBiM", "okuv4EWkk4aLOHyV", "lxKQAURtNQwf1Wu3"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'Lnn2ftl4nAXs5Xr7' \
    --body '{"userId": "9LKtCF75UWG4cXDZ"}' \
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
    --body '{"chatRateLimitBurst": 50, "chatRateLimitDuration": 57, "concurrentUsersLimit": 71, "enableClanChat": true, "enableManualTopicCreation": false, "enableProfanityFilter": false, "filterAppName": "RsBN3WE63TdiKu9y", "filterParam": "mG4J9s3NmK3lspFN", "filterType": "9hj2sDcKl96ShDLB", "generalRateLimitBurst": 72, "generalRateLimitDuration": 28, "shardCapacityLimit": 6, "shardDefaultLimit": 36, "shardHardLimit": 0, "spamChatBurst": 7, "spamChatDuration": 82, "spamMuteDuration": 52}' \
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
    --body '{"enabled": false, "expiresIn": 70, "hook": {"driver": "KAFKA", "params": "6XfZf4UX8KvpbroQ"}, "jsonSchema": {"fXmReUdnKR7yVP4m": {}, "V9p7aArOjv8bj1XA": {}, "34V6VIlcGo2ucg7F": {}}, "name": "1JOcKAQdDYs870FX", "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'dF8URMg9DuVcB2Ho' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'Yu1bDjfFVZw76iTG' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 57, "hook": {"driver": "KAFKA", "params": "aHUtkalmRYt6dcAz"}, "jsonSchema": {"IQimRZ230kGPLuQj": {}, "6Zro5sxqDQyrPv8p": {}, "exGPRcmoWaqXe1Ys": {}}, "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'Zxek3RSDpldNWUtW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'GV636GEVKfJSnNvi' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '30' \
    --limit '38' \
    --messageId '["F1UubP4iOIpfBD9x", "zq0tuYT7xmKiElvJ", "xgiEFY5GIhlpeJgE"]' \
    --offset '55' \
    --order 'Z4h8e73Y7fIuMaEL' \
    --scope 'USER' \
    --startCreatedAt '15' \
    --status 'UNSENT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "KK61iNrMUYj45fQE", "expiredAt": 55, "message": {"69tzOa6j2mSAbSnw": {}, "9GL9cKg0ukUYP0D9": {}, "RtKWYNwQmSh3T0gO": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["89PI7u02OWx4qGX3", "RdpWSWApWd2Iwe3b", "O9xpdum7NLiOjRzR"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'UzUVVgMOnJhzVyca' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["1s0ESbAEcoMyf6g0", "g1y1GAkaWioZEYX6", "azxLXlt6oDkWF19e"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'jdMt39VG4m3koHtA' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '89' \
    --status 'READ' \
    --userId 'qjM5teQdl2VPmZEf' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'K6NfRocvzUuppqsm' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 53, "message": {"CGQkAmYC065KUcIe": {}, "Uge32Ly8QJj3I7k0": {}, "xGWIiNWYy40KN7tQ": {}}, "scope": "USER", "userIds": ["vfFwiPs5qTdnnGoB", "5EUvqbqalgCatSB8", "vvtfTNkD4GmCy8rQ"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'foe4q9JmJtyOzIuL' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["ELvuRoDbvqFlPVcc", "HP4CaULTxRP6qUcf", "AnIsXqg0zuzwqchs"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'F7GVluWZy4Sw3VmB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'b0PZCcmUa9Poe1cD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'FpHe8iQI85kumz47' \
    --includeChildren 'false' \
    --limit '39' \
    --offset '17' \
    --parentId 'mwo5iQihyTOlV66l' \
    --startWith 'SOk98hEqWHTwHYjI' \
    --wordType 'aanwZJ3vGFITNJeb' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["rDA0MlVqMYf6D0P4", "3jIFcJoJXd2u8feU", "cFbPuLdL80cHQrTv"], "falsePositive": ["FsYu6VKBNHSipfP2", "0VbvsW4gxUvUcxWN", "rxwt5ZlJa9p0gT4q"], "word": "7RBHdxLI4YAKE5Pz", "wordType": "nwPHau8Nz5h1Fm0c"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["TokKPP09RT1fMYFz", "LM7GWFUXkS1oaT8d", "8MvFhfZWPTTl1xip"], "falsePositive": ["JFz7dkyeS4HyvvUp", "5HKdKQIGGM729AgM", "WNdCEWe755jmsUhw"], "word": "jTdAzWhZsNFcg7lE", "wordType": "0fCzWMTzm3vfk0he"}, {"falseNegative": ["5s0Tx5y9SR2mvXDW", "OvCcNrF08LzKQU1X", "QT6pZyzat7aGL6zj"], "falsePositive": ["r2kwvQs2A2uRjVVO", "6t5CBSXVvLJCnAZp", "4yZtElzJ67abjrDY"], "word": "8PvtIZUEKY6BVgTp", "wordType": "aA1PQpLwC0FMDzPn"}, {"falseNegative": ["81W0MaG2Zf5tfTta", "ep4OqxyXUQs6vxv9", "qEatgrKgnSjEHyDF"], "falsePositive": ["x7ObBNFuC9MQ2EHZ", "NT9TgbE9vzjlP7dR", "Mb7MJMBXi5kPKIhW"], "word": "PkOqLIj6k9Zzx337", "wordType": "urEM5LOkr3muQAXX"}]}' \
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
    --limit '68' \
    --offset '81' \
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
    --id 'zjP5XNMnSAMRQPj6' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["3lQ1Mnz9mXEOtm9j", "0q81NSyvDqUy6KVR", "V2ba12DU9zs1OCkj"], "falsePositive": ["wvpBeS6lWvzHx5DJ", "P5AFLH60uBdAdgfJ", "q5sb89BME8CQQltq"], "word": "B82UDBzbP4B929MF", "wordType": "UPIubiOD3l1U99rU"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id '5aekPGRcrtiBy0Ss' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'HOW7RBSwVZaT1uLQ' \
    --namespace $AB_NAMESPACE \
    --topic 'D6mZuqUOfPncFQZO' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE