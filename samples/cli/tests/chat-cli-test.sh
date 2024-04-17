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
    --chatId '["K4bD0RqaNepyFrSk", "tHrQJFXmeVOS9HsO", "t36omSd93FRlxG0c"]' \
    --endCreatedAt '38' \
    --keyword 'Uwj71fEBNwLY7g3p' \
    --limit '28' \
    --offset '93' \
    --order 'RdE1GTxxdZSdRd3h' \
    --senderUserId 'vWyctLUg2qCnC6yn' \
    --shardId 'm4iDu2a7uEQI0Ro0' \
    --startCreatedAt '6' \
    --topic '["ekFVlzxrmZyMXXzP", "9O4jwHjJJlH9GWqp", "anw1U3N0AB5yVXov"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "kqCYS2UwpAGBz44c", "name": "x3aW2l0mTLVwJ6B9"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '41' \
    --topicType '12oZH5MqKf00MT7l' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["4iS2TCcEcCOMTbSs", "mZc6S1oXbZ6sgeBJ", "43R9Z0U6uuVbiTFA"], "description": "TCMX4ePk6QL14JnP", "isChannel": true, "isJoinable": false, "members": ["jNq47kQom3ucvXz8", "l7w0HWMP4LbZPw8z", "FejODepz4Id6i9fH"], "name": "IhmUGJ0B5bjhLicr", "shardLimit": 16, "type": "5KEYKTufYzEqdKQV"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '15' \
    --topicName 'RldGsW0glxC8otqp' \
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
    --endCreatedAt '69' \
    --limit '94' \
    --offset '8' \
    --senderUserId '0qro65ZVSrA7oMEy' \
    --startCreatedAt '58' \
    --topicId 'Q9zmZPlYUO0yZ4ed' \
    --topicIds '["IkqnF23599ttliRk", "U7bs2POhOJxHHOL0", "t4XGeKggX91DBzV7"]' \
    --userId 'M3v5nzxLs4vcrvVw' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'z8jVLmmmpMN2v1vU' \
    --body '{"description": "Ip50Ew1Eoe96Fvxl", "isJoinable": false, "name": "yUNxzVITJMbFAOaV"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic '2ngKc1NY1plEW2MK' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'FjowghXoUCRintuU' \
    --body '{"userIds": ["BeprVGqtq4Qjpc5n", "3RFnJM4YhaBPZXdb", "8n63hsWzRIf7vPzK"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'B0Rak9ZNDmFQql6i' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'lXbN7pESq5AZthcS' \
    --body '{"message": "1UpCPcvuhUdWK96F"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'bLlxrgSwrPNkZcbd' \
    --namespace $AB_NAMESPACE \
    --topic 'rNJKj85P7UK8v9if' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'p4H08F35EtWmBuGs' \
    --isBanned 'true' \
    --isModerator 'true' \
    --limit '93' \
    --offset '67' \
    --shardId 'UaqWZPpsLnAjh9SD' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'lYMeBcU9N1C5xDZ7' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'pZlUPG57VGAzFbcR' \
    --body '{"userIds": ["oPiewGAmg7En1H6n", "GLwODBObkPK4vm6o", "UZKsSE4Vxc2NkF81"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic '3uwRGqgZoliUZydW' \
    --userId '7o9r366nAPaLebe0' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'bh5UNgEnfDs6k7Dh' \
    --userId 'RVhZwj0G5Ez4ef7z' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'true' \
    --includePastTopics 'true' \
    --limit '43' \
    --offset '75' \
    --topic '["kQAXS9pNnB031fEB", "aaAvdyVOIQQ9F1Qi", "R0GIdkJxhX9tYnoD"]' \
    --topicSubType 'CLAN' \
    --topicType 'PERSONAL' \
    --userId 'bRaowMFeaDj0rdTI' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId '5GKl7lQBsIpbqC08' \
    --includePastTopics 'false' \
    --limit '33' \
    --offset '54' \
    --topicSubType 'CLAN' \
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
    --limit '4' \
    --offset '65' \
    --topicType 'VNb8zXIu7zFjXyrl' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'PECZBGbDs64hyfTw' \
    --body '{"userIDs": ["uVfnxSWxao1UxYej", "6dmwoq9uu1iNJ4Tg", "nl0zv30mjDTdZ96L"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'Bl6SdZZMaCZ369nN' \
    --limit '56' \
    --order 'IzTls83UTtcmfocI' \
    --startCreatedAt '60' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'nd6c9PCzQ1BWbQd3' \
    --namespace $AB_NAMESPACE \
    --topic 'jehNNV3abgbaYUNU' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'mcWaEl3ZOMG1Jrom' \
    --body '{"duration": 44, "userId": "ntBPUouSbuQrzTQX"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Vd6TMPfSbwBs2KXk' \
    --body '{"userIDs": ["8tqikZy772rYgh7j", "XYtQTWjDVEgc2zCs", "dc4OO28Odi82WIIV"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'WikZzLOwi5Ac2rOU' \
    --body '{"userId": "z6ZzJRU0gGwZPIbI"}' \
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
    --body '{"chatRateLimitBurst": 26, "chatRateLimitDuration": 81, "concurrentUsersLimit": 67, "enableClanChat": true, "enableManualTopicCreation": false, "enableProfanityFilter": true, "filterAppName": "qA4ovvUKwf4o9x2a", "filterParam": "YO7w10hF4Rv6HDBh", "filterType": "L1551tcfIcDVSv22", "generalRateLimitBurst": 91, "generalRateLimitDuration": 21, "shardCapacityLimit": 26, "shardDefaultLimit": 24, "shardHardLimit": 51, "spamChatBurst": 97, "spamChatDuration": 48, "spamMuteDuration": 45}' \
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
    --body '{"enabled": true, "expiresIn": 99, "hook": {"driver": "N4WxPU6EL1kfqLuU", "params": {"T9Gi3irOtGfFJffZ": {}, "pwGkuW772Zm7gIrU": {}, "nDkCT6nsnlFemlhm": {}}}, "jsonSchema": {"VyiNMfDqFCl1b47g": {}, "9eAmPVXZUauZF57v": {}, "ow8hxLqskXbzM2Bi": {}}, "name": "hw1z6k896mrwnSeK", "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'I69hMMDtTgeAS6uZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'mgknw84gbvMQJrai' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 82, "hook": {"driver": "fRBIxaXlNW1iflTo", "params": {"BUj4PrwWrrEJfSYR": {}, "hT2C8MavkFAZX9M4": {}, "TmVLTc2pajF5giIj": {}}}, "jsonSchema": {"CIxIRWSUxT63NgLM": {}, "CHBLZ6khtt5NZxzR": {}, "Fd2sTD8PI5o8W1zT": {}}, "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'dUw2PkSRnpOyzpWA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId '9y33RxvfRVgCUHQv' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '13' \
    --limit '70' \
    --messageId '["O48slpKDOLQB5BEz", "PvO07Bp9pGDz8d3C", "JLHfRFyWZAwRhfPt"]' \
    --offset '14' \
    --order 'lZ3UiMC3iOILKEoT' \
    --scope 'NAMESPACE' \
    --startCreatedAt '57' \
    --status 'UNSENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "VzjnmD1RH2Gq8sZ9", "expiredAt": 19, "message": {"kNdMQ0XS0L2JJo4C": {}, "cbn8HMHuIMSbTYCt": {}, "RCfKw8H1i6SbrQcL": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["Yma5Bl1fFBg8h8Ft", "xDOY4RWkuYGw1gED", "oJQMyXjtm5BadYFM"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'FhLANPqPv7NWYD0F' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["4nU4ed1jEuMaHsh3", "mL5xHJRVSqiknMt4", "pYIX0Ulg5EkMVIgd"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'PHUu0GwALyYGzKx6' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '33' \
    --status 'UNREAD' \
    --userId 'cEU36ZhqFvzd74VK' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'GQOZ2iMUtEJJiOLr' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 61, "message": {"ZVHhtU6GVl4wzhYW": {}, "tkaNzgRYnIGPJ8LD": {}, "ywCaqIlvE4hJkQnn": {}}, "scope": "USER", "userIds": ["z2vak4Go6lwOrmRg", "JRN9j3Hvzelpk5oJ", "jpjEy0IxZW6zsy12"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'gzS2HSQxmrUeZq86' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["y7OHifDGJ7QghCWB", "uvKjYSdKsO9KSKL5", "s1s7IjaJPq6wKsxT"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId '6hmYmN6EC9eK5QXG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'cujC7lntNVpQ130S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'oAAPham7ojEGYsZ6' \
    --includeChildren 'false' \
    --limit '53' \
    --offset '11' \
    --parentId '63O1TtHAhG3dPTCH' \
    --startWith '3gTVpGVkjw4tcih4' \
    --wordType 'xpU5Z5efWZXvIG33' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["VyBTfDLGg6ieh76I", "kCYWE94BbN5w2I8E", "NJzCsHDv8dfyMU1V"], "falsePositive": ["J2U34SgZQ9SJvTvR", "3PYsgcjrqd63PjcT", "ZgWq76HNjHoJjQEX"], "word": "wcDsOccZ0ZVqRLyZ", "wordType": "M9xyKUVfqUVX9yyE"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["zRiL3igvNaNUksUa", "9zL2EyBqZ2Z4EhWA", "4BlgJ1n0pfCNiSI8"], "falsePositive": ["54zlFMPbUJ5Axii6", "a5l0flGwthWgimzW", "k23bga1oNjBP4jsh"], "word": "ctMvnhkbNM1Za3r9", "wordType": "dVZ8DeKcQVsTEwdB"}, {"falseNegative": ["xSaCxqHvIYIC8OLk", "Nd4Or5R1gTXS07t1", "Y4K1QoD1pw2iCRxY"], "falsePositive": ["ZpHxXgplsL2R93rH", "KHoX04XRzCUR1dDS", "6yHH6kPpvhFTabc6"], "word": "1EaMBnAqBnHMEDOK", "wordType": "GDmAdVdkrXRKamzA"}, {"falseNegative": ["kjXcpfoULo0s3Puk", "1rGxJKASVYApPixG", "Rq5p8qcITfOGwIgy"], "falsePositive": ["CvQYHdIV8QhkViBD", "irSAiM5FfXBjicCE", "wqcuC8PP2IUn6JxL"], "word": "bNveTqffse7i7vjI", "wordType": "Om8tg4TCbLU5ljEo"}]}' \
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
    --limit '4' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityGroup' test.out

#- 56 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'FULLREPLACE' \
    --showResult 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityImport' test.out

#- 57 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'n88q73lffzL329wZ' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["JiVxj8tZYDLJgt5h", "jZjrSC2X9u4Qrbwt", "mDF7gDhP9b32TCdL"], "falsePositive": ["X3dhYyuSMXdtPCAS", "d1mqT2Hf3euXwlEw", "CkmAgNP6SvLxLHnk"], "word": "OEeuXpIuCcV8ZYtD", "wordType": "vme6wpq7RQcEfbwB"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'wRzajuCyXtU0ecei' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId '3MPfBGSTxCEmeejD' \
    --namespace $AB_NAMESPACE \
    --topic 'rGknltxFYi1xESau' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE