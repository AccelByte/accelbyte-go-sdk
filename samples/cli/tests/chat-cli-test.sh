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
    --body '{"message": "R0mE19m5KqXm5LUV", "timestamp": 52, "topicId": "570KQ3ma5fSPJvs1", "topicType": "GROUP", "userId": "zdTqoOiG0cJc6Fpm"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["wNoA6hEzqC4KgC70", "J2n7S9Vuc8qSSAVH", "N4MR7rtHfjti2x0X"]' \
    --endCreatedAt '38' \
    --keyword 'zZuXSKFpozOUOmKy' \
    --limit '79' \
    --offset '0' \
    --order 'fdgW5t3D6DQrml7W' \
    --senderUserId 'EjJBocHgsZMy4EaR' \
    --shardId '7JdkAs8QfjtqBz75' \
    --startCreatedAt '71' \
    --topic '["8mLyR6nvv2O1J7mi", "4GvDaRxbQuTigjIS", "jEmlGQn3mIYr2fHq"]' \
    --unfiltered 'true' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "SFLsCO3iR4RXQwdN", "name": "C1CbdaEkbvu8VJDd"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '99' \
    --topicType 'agniChfs7MQSYbMn' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["Jwc6yuGkzc5LgFmo", "WTOEPsUuW1n9IuN3", "59yWuN2qxywVUCzr"], "description": "lHmplifWTGKrLvIr", "isChannel": false, "isJoinable": false, "members": ["Zv1bCKYN6OvLDfNN", "mywPV32ISltXRUzO", "tq0zt9BVABDxBePV"], "name": "tuYd8njeKcPCtjKk", "shardLimit": 48, "type": "kPrUrktGRazZL2au"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '3' \
    --topicName 'RB77NoSdMSekJOjx' \
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
    --endCreatedAt '27' \
    --limit '63' \
    --offset '61' \
    --senderUserId 'nIvDD2z7e7j0iN8B' \
    --startCreatedAt '22' \
    --topicId 'cQmt96xAXc2yWpBY' \
    --topicIds '["Y4WmiPrBABnGGKLe", "J5HN88bdCNAAos6W", "h93dQFn5NnHH4Euw"]' \
    --userId 'vUY1oEIQ9aAqXfEZ' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'YY9ErS0I2dE8FHfh' \
    --body '{"description": "pzM9OF6lFfKDE1yU", "isJoinable": false, "name": "ZpNd2PFmpeDNCTJ2"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic '0Y1K3UrXPIq0dO37' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'jX59eRDuvWG4ChBl' \
    --body '{"userIds": ["Rvi81dW0VjXYmPK8", "z7YU9tNCRaQ4Gp2z", "M5Djcr0uBlbrPZf1"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'iUQj9M7xdYJirnvE' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'Cu56FjardsHlbEok' \
    --body '{"message": "7k7I6GZ6nhSgAnbD"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'Q6OhCFwBq52R7ixu' \
    --namespace $AB_NAMESPACE \
    --topic 'WzwxYhua18HpPxuH' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Kxagu5jLdcaZM2W5' \
    --isBanned 'true' \
    --isModerator 'false' \
    --limit '66' \
    --offset '32' \
    --shardId '2jf4uH92vZId1MPp' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'YAIfTXLN3O27M6J7' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'D2V7hCnU7o4nKnRe' \
    --body '{"userIds": ["yzeawEuVa80F38FZ", "egElbVtTgrankZAI", "1bUe7ATlQQN7fPrk"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'AGeMuEbicqnUsYMQ' \
    --userId 'FCOZQ6U21iXOc4UF' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'osQ01kEw4cRx1Qdh' \
    --userId 'ZAWYCFdisJMfr4TM' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'false' \
    --includePastTopics 'false' \
    --limit '87' \
    --offset '9' \
    --topic '["1ZtbjNGBlCVAyPOc", "Tly6Qqoa5QHh7Hyk", "q2sf7NoVpYCBww16"]' \
    --topicSubType 'NAMESPACE' \
    --topicType 'GROUP' \
    --userId 'Co9N5LZFnWi2HQFm' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'f1TTmGSOQQIVqp2Z' \
    --includePastTopics 'true' \
    --limit '68' \
    --offset '3' \
    --topicSubType 'CLAN' \
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
    --limit '81' \
    --offset '29' \
    --topicType 'WQYvuw8VnnI7qaGj' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'pts1eAJYBOD1CUZE' \
    --body '{"userIDs": ["xdmnsNdCtXG0pE3I", "Da5xlidwXygJhDQC", "iTu3uO5kJNYtYppf"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'yhvZgU8Durf8tLLR' \
    --limit '44' \
    --order 'XfH6KHlSIZm1hoSW' \
    --startCreatedAt '78' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'EEf1PpIKxCPZw14J' \
    --namespace $AB_NAMESPACE \
    --topic 'KOBZqrlJjAzQSHGj' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'XMdqf9fz1QAG1G4m' \
    --body '{"duration": 97, "userId": "jIYH91IxkbG9PfyW"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'wz4tqylHzUVLFNyz' \
    --body '{"userIDs": ["4S9OoCtrOlwu5imE", "qEQlqBC31SHl6MiQ", "Qk1FIwTPb3ZRzcRE"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'Xx3urbAorTQFWI4v' \
    --body '{"userId": "nifLi2tiURmfPgsN"}' \
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
    --body '{"logLevel": "debug", "logLevelDB": "trace", "slowQueryThreshold": 8, "socketLogEnabled": false}' \
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
    --body '{"chatRateLimitBurst": 53, "chatRateLimitDuration": 13, "concurrentUsersLimit": 8, "enableClanChat": true, "enableManualTopicCreation": false, "enableProfanityFilter": false, "filterAppName": "Reb9jl5yJTYGBsCx", "filterParam": "XgIRbJUYNP65xLHH", "filterType": "CCdprwZcy6wpBjTE", "generalRateLimitBurst": 10, "generalRateLimitDuration": 89, "maxChatMessageLength": 25, "shardCapacityLimit": 48, "shardDefaultLimit": 56, "shardHardLimit": 40, "spamChatBurst": 14, "spamChatDuration": 43, "spamMuteDuration": 84}' \
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
    --body '{"enabled": true, "expiresIn": 28, "hook": {"driver": "V0I6WRQhaFuQCeXC", "params": {"nM488SjO5E5WXyBz": {}, "8wqX42B8JHGqMvH5": {}, "8uMuaXFsELNmU0Of": {}}}, "jsonSchema": {"keqhiN1BvJavdLbi": {}, "eTdAF9hz8lMThE16": {}, "lmlhkvbjGMwwv1F5": {}}, "name": "cJ3MO1MPGNDMwfBk", "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'B7nyDMbdGeeZ9cKF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'gLCJt95ncq4zvQU3' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 62, "hook": {"driver": "95owvaRWtqnNEJ62", "params": {"LpCIujSRecjLkD6l": {}, "7A9NPxQyum69qa1R": {}, "XwqqgHpzCpZKSEWR": {}}}, "jsonSchema": {"92ULHr5XE1Pa7O8e": {}, "PRHeuGMuciHqZwrY": {}, "XT5xBxJFDMgtyoaE": {}}, "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'yvNlacIE3l9knXFj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'AdminGetCategorySchema' test.out

#- 44 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'IGXUZYB5QLgmbe38' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteInboxMessage' test.out

#- 45 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '28' \
    --limit '77' \
    --messageId '["dTnIgNaQIbiuCQRZ", "ALAKKyxTJ7MSuCjC", "nKXea84oFg4NCyXx"]' \
    --offset '84' \
    --order 'f1ffBmpDbwFqvCcH' \
    --scope 'NAMESPACE' \
    --startCreatedAt '21' \
    --status 'SENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxMessages' test.out

#- 46 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "YhARUbAPfZn9jTEz", "expiredAt": 63, "message": {"FQ8kiLOA32OGPLgQ": {}, "Cz4ebMjd8K1tvuJx": {}, "3LYIT2k1dR9D2x3v": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["1j76D9DtJeJyFklJ", "hIOT5k8i7DAyEnLA", "fP0HSKK1OUjFVs8Z"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminSaveInboxMessage' test.out

#- 47 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'NI1IHMA79kEJIQr2' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["zogCjeASWgmnpiCC", "8uXs6nMvKBR82UYg", "5gIL426xQUUAPsBu"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUnsendInboxMessage' test.out

#- 48 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'TZsxxNcMyqwbJCz0' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '15' \
    --status 'READ' \
    --userId 'klUZfVyygtGLTjFe' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxUsers' test.out

#- 49 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'cbsYUfDwSezCGHWu' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 100, "message": {"OSU5jFf1mNiu8VCo": {}, "nyRQvQvctxPJenzb": {}, "xuvSGbc6z1caLz4g": {}}, "scope": "NAMESPACE", "userIds": ["HsYGjZXsnTVGAGyj", "y7ekmBQAuZnt76ba", "sS12vqu1mvjAzAqq"]}' \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdateInboxMessage' test.out

#- 50 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId '6MlWZW8uzXnHQr77' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 50 'AdminSendInboxMessage' test.out

#- 51 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["Xg2Z8aSNC9XZKtxg", "EmHB0xjoFXj7Pebl", "6JK1ptfzoHonSxRi"]' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetInboxStats' test.out

#- 52 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'l2MroMBe3PNRMMFp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'AdminGetChatSnapshot' test.out

#- 53 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'mtGzkE1JEUD5xxnd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminDeleteChatSnapshot' test.out

#- 54 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'lCQ3Np9Bg6KJ7NO6' \
    --includeChildren 'true' \
    --limit '71' \
    --offset '29' \
    --parentId '0BN3Ju0UUJXO2daV' \
    --startWith 'w9uqOeT7sSkRS34Q' \
    --wordType '2fgGdBmVIXJWhIwV' \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityQuery' test.out

#- 55 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["J5ndOrQHrJaDef3M", "zy2yPzxIEZuY5rJR", "HdwANhKBXPWHPnO2"], "falsePositive": ["0lW5DgG6LiHL4v3f", "M2K0dSplvN5nqP4v", "1LZ6lNdcGHfu67Jq"], "word": "GqNpqhOFik9RftVm", "wordType": "d4b9MSGp65qB5Ytf"}' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityCreate' test.out

#- 56 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["u8D7x3vQ4sDek9Pw", "oFOmliMPeggcrAvC", "Q1muooK9ZSoomLeQ"], "falsePositive": ["WYw4R4kvpP7QrycK", "ngZVN1BaHCHoffun", "bDx7moCHuu3E4Ml0"], "word": "gijfBx23FNjJYm9S", "wordType": "iTRVwfVNVd7lLSzO"}, {"falseNegative": ["jAYabJka7mkyuDf8", "SCMQacV3EBtFBxmQ", "zomYcsvokcRPoa9Y"], "falsePositive": ["Q8yN0rHYdNLQJwpy", "Ys6YZ7ccWVZnUs21", "IIAGEGHa5Wqxbpen"], "word": "BYHDRQqUYRcU17iu", "wordType": "B55m7KcexGKf6rgb"}, {"falseNegative": ["q0PYaVFYnbbQLyY6", "5Fs28fRvRT5PRmIY", "J8CdrsDbqnaoErCI"], "falsePositive": ["MCS1ub2PZe8mAjwz", "LNHxXtYUncIuhgME", "y0DavgbG1PWUM2u3"], "word": "avLFS6asCKcHpJxo", "wordType": "tlLQUOpBMjgtAQyq"}]}' \
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
    --limit '27' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityGroup' test.out

#- 59 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'REPLACE' \
    --showResult 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityImport' test.out

#- 60 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'l3cLgjsVYCBwl5nn' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["PNzKsiz6xI4K3DK2", "F78sXHU76h1INSdB", "6Guz4VkdhFtC0zba"], "falsePositive": ["OxwkS1NoW5EIlzrX", "37fJmwk9sBtwKD9P", "4b6Udt6W1HowrGcr"], "word": "JV1v75kYjJO1hh3j", "wordType": "19nMrTN6BIRe0fte"}' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityUpdate' test.out

#- 61 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'tb94WANv2CZBUMEI' \
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
    --chatId 'DciU8PWDZ2QYM5XZ' \
    --namespace $AB_NAMESPACE \
    --topic 'hNRtIGht9ANrhmin' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE