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
    --chatId '["Y4480cna5aXBSq5A", "gvzgr8zUgUPbWUp0", "TelISavQkEOcJ2UC"]' \
    --endCreatedAt '35' \
    --keyword 'JSRF4FL35c6n4rDd' \
    --limit '63' \
    --offset '10' \
    --order '2zBeOkuXxUUTKrYi' \
    --senderUserId '7Y8k8uO7LJ14eZoM' \
    --shardId 'nGuSmbyPB6dHprLV' \
    --startCreatedAt '78' \
    --topic '["I9tFYh65vOZh7QDC", "f0YTjSyOFJ63mbUo", "I7Y5EpiXN0sghoGY"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "5WQTrKwZ3MkuGN8U", "name": "2e2v6CxaqCq6qOyh"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '74' \
    --topicType 'roCyEnVLUM97g4FO' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["AKAJnnM7bSzMfTwT", "cGxWs3vsR9tUV599", "QZyZJzdmqXw1AseW"], "description": "v7lXWYufYZcmGYeq", "isChannel": false, "isJoinable": true, "members": ["NhvMymgjgesn6XLk", "H6MTSv8FUBbOqGod", "7JHhf3dIcgrpxiTo"], "name": "CMY4FNY1BZi445Qf", "shardLimit": 24, "type": "v4QzhOJnUP11770x"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '74' \
    --topicName 'pKMNdAMXcKbkBQZh' \
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
    --endCreatedAt '66' \
    --limit '91' \
    --offset '41' \
    --senderUserId 'pwBiYuwNSBSagFy0' \
    --startCreatedAt '79' \
    --topicId 'Jux99QS25Rd6bIC8' \
    --topicIds '["kGDVqoRei9IUEm0q", "K6wQx6GPo2tNtCC5", "5oV2qYQiayYr49cB"]' \
    --userId 'vYLWTTPRP42OkRIU' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'rsVuLgvhexaVvYpt' \
    --body '{"description": "IGjZvw38na2jt54K", "isJoinable": false, "name": "2p7sSipMf2OWVr6e"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'vfODeCPM8UtASxat' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'isfRgPQFCBU3l7Yi' \
    --body '{"userIds": ["Opx8OtCb1ID2Gnxg", "q6DMecWMOWZnmUBN", "6GQJEHbL09TpyOuR"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'gkDnj24DPWljJKTn' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'DVT3dpIHdbIERpCb' \
    --body '{"message": "GA7D2oEZ2Cfj0Vs5"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'PmQDaneNZT9T3AeL' \
    --namespace $AB_NAMESPACE \
    --topic 'zrA7VnmaTbLN3P46' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'zF5mtWkwMAiMqMyN' \
    --isBanned 'true' \
    --isModerator 'false' \
    --limit '4' \
    --offset '50' \
    --shardId 'fVHjH6o1j5hP8JAP' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'ikmguZKqTZYqTmEI' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'IGoZJourrDFBM1H3' \
    --body '{"userIds": ["qi1vKtrnA7jVAUW0", "uilBbOOyVaJ4Kv5D", "BSaNOcPjJNiuBIRL"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'Gvtl2HM8E62layFb' \
    --userId 'YP9AzBoxhsHmcpHn' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'Rqo8dEwYI2WY8T1J' \
    --userId '3k74XGfYb0ShvpiQ' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'false' \
    --includePastTopics 'false' \
    --limit '75' \
    --offset '51' \
    --topic '["j2NMJIile4X6F6Z0", "h95zXXL4A5yM97fT", "NB4eikYVGfAvmDpY"]' \
    --topicSubType 'NAMESPACE' \
    --topicType 'PERSONAL' \
    --userId 'zIm2yqFSleLIgCY0' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId '2tlLk2gJOwBUFwnH' \
    --includePastTopics 'false' \
    --limit '2' \
    --offset '49' \
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
    --limit '36' \
    --offset '74' \
    --topicType 'P9tElbxsK7e0pk94' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '2gRF4nRZxEffL2O5' \
    --body '{"userIDs": ["RFmTfOWuEBRWkGgA", "PX3p8rle4JvWDioU", "FeRZVO7hkW1GyL5Q"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'mS5Lcmr8FwujQ9M4' \
    --limit '100' \
    --order 'pTgljrSg5ZSWXhYS' \
    --startCreatedAt '24' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId '3ILl20c8GemhrGJT' \
    --namespace $AB_NAMESPACE \
    --topic 'xvLo6AJ6aGmQlrZb' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'W9KOgB3t2XKr563q' \
    --body '{"duration": 38, "userId": "lpe7XMARuPFSXElG"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'W7xhFAUGsnM9x76j' \
    --body '{"userIDs": ["SvhUnfkdhI3m8DwJ", "eUFhhD71wiy4DDlp", "V5mHuOVU4o068ohO"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic '84BQ9AvANeq6zgbW' \
    --body '{"userId": "FHgWOeVODJFuKi56"}' \
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
    --body '{"chatRateLimitBurst": 52, "chatRateLimitDuration": 10, "concurrentUsersLimit": 93, "enableClanChat": false, "enableManualTopicCreation": true, "enableProfanityFilter": true, "filterAppName": "AJQpp9yrVA7MbarI", "filterParam": "YIxCsSpFqbpxRx2T", "filterType": "3bSJ810C7j6URs9e", "generalRateLimitBurst": 31, "generalRateLimitDuration": 52, "shardCapacityLimit": 8, "shardDefaultLimit": 83, "shardHardLimit": 10, "spamChatBurst": 51, "spamChatDuration": 99, "spamMuteDuration": 69}' \
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
    --body '{"enabled": false, "expiresIn": 18, "hook": {"driver": "KAFKA", "params": "Xj9WfnWc3c4mVYc1"}, "jsonSchema": {"MNyCDR7HFcx8cZQx": {}, "OF9sEEpGDgxd91z9": {}, "8Yyn9ZqTFZPlhihs": {}}, "name": "8PwaEGsAE1WVPBlY", "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'cr1zXgeb17ynr8nT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'hMECCnaZKeNiSn8z' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 32, "hook": {"driver": "KAFKA", "params": "tUK1gp9HCN8ehd1F"}, "jsonSchema": {"tpWAfzeLNY6gtwBX": {}, "ZHnaw4cDyhbDfvlU": {}, "Fr6ayg8AGXUvlmS2": {}}, "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'XInPtklJO4J865Ec' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'cnRwBsGloqVQisrV' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '21' \
    --limit '100' \
    --messageId '["i3NhzXYstjg0lDNZ", "JSfivuC3UldC7E6P", "Kjvqs8QRhhUCm6BB"]' \
    --offset '11' \
    --order 'HkN6vGGRnwGvO8ur' \
    --scope 'USER' \
    --startCreatedAt '65' \
    --status 'SENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "QlapxWpqxEj5wyKd", "expiredAt": 52, "message": {"eungi1r65uxzt9O4": {}, "0GDCiaRIKSZdpmsj": {}, "0vAhDWr1QZGMB8Cr": {}}, "scope": "USER", "status": "SENT", "userIds": ["z5Imn2tB2S1CA0YH", "mqKWF9sSeyvfQTGL", "HpagBDGEmsdScHEc"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'PC6lU9ivI5KDTNUm' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["KSTTa5Hf6v74A0y6", "7eJpeDYe2BjDPy7a", "x5TbfDMI55fwXnBw"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'wb3J23YFiQWjNgCs' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '12' \
    --status 'READ' \
    --userId '99OotIiWbKBi1hZ8' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'O2jhGaVHFsXk10Da' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 76, "message": {"dILsIRXbRa1QnxRg": {}, "VurzQpdXFzhC7rDc": {}, "PwEQUTtvHevr4TRf": {}}, "scope": "NAMESPACE", "userIds": ["OTwAKMQPnubOxZiz", "XU3kOsThacoMcTog", "NrsgTcgLZGQpTuNb"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'o6RWLwFEromlNd3s' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["CbaDTcorE10QWKDW", "YFEtG2pZ2K8URh6v", "wsTAoMxd8bRZPP5u"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'ZjK3DczhcFPY095f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'lOONxd1CRDWHagAV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask '7aeyx7hIeqDvi0Ak' \
    --includeChildren 'true' \
    --limit '43' \
    --offset '17' \
    --parentId 'C2ejcKvEMnQ5IBdl' \
    --startWith 'WUpQwrVcLcEdUqs4' \
    --wordType '0qWMtygePFpCcS45' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["tUS29fc5HzrmonaK", "SK59p8tZAFojIAD5", "uIp6FH2tpCTo5z7n"], "falsePositive": ["5tYtkrHtrZracyM1", "bGB7RVjEDW8fO3bR", "PIramAnSXErYDPIy"], "word": "mfSvmIqwUiWIUaGq", "wordType": "SnOIqmnVf1oumHFQ"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["7CF1QK9N3qQeVMvI", "TrtJlYP14lXy3zQG", "8Jq8Q8j9nufO7ijT"], "falsePositive": ["CoER58ok5hQzqGyh", "are0gGIqVGCnkHF5", "wEG2xSr1VD2PV1q9"], "word": "moHl71FRlM7qgVD3", "wordType": "vwCZmtP2CWHQ3jLs"}, {"falseNegative": ["lrhKNuiZ7SdFmCa9", "QqPcwvxpvdp5oJsk", "ZniyKImTeaxtjWiG"], "falsePositive": ["ynkV4ppppV8HquuK", "JWXuob0WVrXgvlsJ", "yfuoHHyGwIRP5eqm"], "word": "cVlfJ7B7TqWxJtmG", "wordType": "EQ9Z85PVok7DE3CH"}, {"falseNegative": ["bJPEqvhZCxeRCTfP", "Dhj0fihrHI16HiaQ", "fgzzmIQzGJIys8XH"], "falsePositive": ["0IEScX8iQmrdKxBc", "l6H2w83PawkP38ih", "HE4vZz6V63sGqfUF"], "word": "Cw7VpjRaG1U0vohV", "wordType": "YGs2jqCa7UPzhK3O"}]}' \
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
    --limit '11' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityGroup' test.out

#- 56 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'LEAVEOUT' \
    --showResult 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityImport' test.out

#- 57 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'gRmdAvE0gy6rRyJn' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["rt3c5RIPWJlAxCus", "QccXTW5Wm2YYG0fz", "1DsL7P1qywYRuVoR"], "falsePositive": ["qlWRFQvVHEyZLtKx", "MBFET12VZV2BSYkf", "5U9dBAasiAibSjJO"], "word": "Jy0u5tKGSQsnl47W", "wordType": "KDTLel1gcOf1GUpB"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 's7vrany1pJfWEIRJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId '6hQ8pJknG4LrcLSX' \
    --namespace $AB_NAMESPACE \
    --topic '5fy9oFVOAD8I2yoM' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE