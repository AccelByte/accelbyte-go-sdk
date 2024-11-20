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
    --body '{"message": "dKsm1sTrv9px66iH", "timestamp": 9, "topicId": "LdXKcdVfHnZbIxDW", "topicType": "GROUP", "userId": "PkrLWNrGOZRjAo1m"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["lhxFjpGpxsQKMZSc", "z2SRO3kn7ZdMSoSn", "KKOx0e5WC02YmUIa"]' \
    --endCreatedAt '80' \
    --keyword 'k9mFyYDLmzOJg2Yt' \
    --limit '10' \
    --offset '67' \
    --order 'wLDyQlC6lE1kiOOS' \
    --senderUserId 'JAJfrCEh6Au6Kjv5' \
    --shardId '70Iu3Tf3SGEp1RDC' \
    --startCreatedAt '26' \
    --topic '["49J6UWjmmfyR1vyX", "18WPRDtdb2G56uez", "iJtOvnZM1lAPt7tA"]' \
    --unfiltered 'true' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "vsHI3jEJUiEnkRGM", "name": "vRMdvvxTKQhpM6TZ"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '51' \
    --topicType 'kX0BiEKcEfxzArti' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["mW0Wy1trvheq1mep", "9leJIkg1cae0SsuK", "gcXvztP7BBvjMTDI"], "description": "YMzbDRLFXP38iofw", "isChannel": false, "isJoinable": false, "members": ["BFRmf6GhMPdgeOap", "h7YHAHEOMdOwnKJE", "Aq1v6SRR1Jx7HEhm"], "name": "fmgtxZMCZQReoAuC", "shardLimit": 0, "type": "7x1KxjzUhQSHzAxS"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '80' \
    --topicName 'ZtPfYhIMCw20H4pY' \
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
    --endCreatedAt '18' \
    --limit '59' \
    --offset '4' \
    --senderUserId '4SEFKDSseGK0Knt3' \
    --startCreatedAt '48' \
    --topicId 'JM2glRkFRDbRU4nd' \
    --topicIds '["sU22R8pXirowj1aQ", "CiCMjB5JRWG6LaYk", "UEpzp19JR2RB7yB1"]' \
    --userId 'ILEpwDwT6LbkAVgz' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'eef2paqDYhr24kOg' \
    --body '{"description": "4wkxcCsTm7uQH5K2", "isJoinable": false, "name": "UXqgYPsak1kNcYQq"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'hBeAetRqxta9jKCJ' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Cd8OSEUb3USMpcOv' \
    --body '{"userIds": ["Pl9wUrWkjcTDfOU6", "DZmDt5oVwZzHVwIU", "z6Z9ja3bViNwJaeY"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 's0qIEmW1NJMwod1S' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'pXy4vYaiQ5thZMam' \
    --body '{"message": "q3Rf0f2dM89J5JZG"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'xBvS0BBMazCe0KF7' \
    --namespace $AB_NAMESPACE \
    --topic 'mHgFBt0eBpFcoqh1' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Lss0tCbsksbkJzSz' \
    --isBanned 'false' \
    --isModerator 'true' \
    --limit '79' \
    --offset '67' \
    --shardId 'm44MB0grihnkGYdc' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'UPhV0LGO1Lr0Qxgg' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '82Cfjp1u5l3yIY1s' \
    --body '{"userIds": ["roE0qIZL6c3eyGQq", "H2Jo399JQC0wn13U", "64bKQZ9nA7NPrv27"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'KUmvZtsTA0rrD2Sk' \
    --userId 'vAVAbQiSfm7OOug0' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'uiiwiBiYVONI2Ksm' \
    --userId '2MdwFsAnK9goUIrn' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'false' \
    --includePastTopics 'false' \
    --limit '83' \
    --offset '60' \
    --topic '["fPrfGUqiSEzR3gqA", "KmPYIryW3SFPeq7S", "Fha2bl3r0AffU17p"]' \
    --topicSubType 'SESSION' \
    --topicType 'GROUP' \
    --userId 'AGMKqUcu9CB5VaqW' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'YLNkgGYarW6Yf94u' \
    --includePastTopics 'false' \
    --limit '5' \
    --offset '59' \
    --topicSubType 'SESSION' \
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
    --limit '5' \
    --offset '54' \
    --topicType 'uQ0P3yWj87ARaoRP' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'UvOy71QT3lxOR0CA' \
    --body '{"userIDs": ["2Uvs94P18zXBYJRr", "8sffpBMU58P6VXMp", "LsrnyovuUHNzvox6"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic '4b2mHE9vLBGgZ44y' \
    --limit '93' \
    --order 'swP3sQNnrDZ3xhvA' \
    --startCreatedAt '4' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'dPgkzhR9STVSzrby' \
    --namespace $AB_NAMESPACE \
    --topic 'Dn1fmDwhFjlwiCbu' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'tnQon5XGRsKDBtpE' \
    --body '{"duration": 58, "userId": "ph7KA5pFfugYLYg7"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'gfAJI70IVzCiLDsY' \
    --body '{"userIDs": ["QhIavPkaC8hx0Iam", "BpZmJf6WUTrmpv3g", "qSkpLQyjunDTKIS9"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'GBTCnUErTFVUN6Ut' \
    --body '{"userId": "83vJ2FwpXE99PIno"}' \
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
    --body '{"logLevel": "panic", "logLevelDB": "warning", "slowQueryThreshold": 28, "socketLogEnabled": true}' \
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
    --body '{"chatRateLimitBurst": 0, "chatRateLimitDuration": 54, "concurrentUsersLimit": 30, "enableClanChat": true, "enableManualTopicCreation": true, "enableProfanityFilter": true, "filterAppName": "bWT3O7cg6qHojTrs", "filterParam": "t0I2AjMei5dNwjXV", "filterType": "8MllOGsJH2IvWcw4", "generalRateLimitBurst": 50, "generalRateLimitDuration": 36, "maxChatMessageLength": 35, "shardCapacityLimit": 55, "shardDefaultLimit": 47, "shardHardLimit": 41, "spamChatBurst": 14, "spamChatDuration": 58, "spamMuteDuration": 8}' \
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
    --body '{"enabled": true, "expiresIn": 26, "hook": {"driver": "JeuFPSYfxq21vjGl", "params": {"SosiAdpWhZzeq2Kj": {}, "F3SfBpAQwVKCAeb3": {}, "eNL6cewaqYffur0e": {}}}, "jsonSchema": {"YMqDOV98mtGHebKX": {}, "TojbtYrNYfaS8tBs": {}, "KOkKTdzlUeVYgjQv": {}}, "name": "CKieig1JFKRvmQD5", "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'HbCfbAE1QysqG0OJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'JUSPqmOjaVBhSkpj' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 52, "hook": {"driver": "EwQ1riqHsYx8a0AA", "params": {"NGuCAFnXJvsWlMyD": {}, "Er6izYMrCSEr3z1n": {}, "MpRbOg7Nkz0MLGqG": {}}}, "jsonSchema": {"WlHIh3DPYBUFzCgk": {}, "HbOCGZ7OQBLYhV2k": {}, "Eoj5Hi1aMr7shdKP": {}}, "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'Lz4Npgv8LYIxZwRQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'AdminGetCategorySchema' test.out

#- 44 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'Zm2RFmACnw6npgv2' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteInboxMessage' test.out

#- 45 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '64' \
    --limit '47' \
    --messageId '["ZbahBic8RcOTxll6", "Ek0DPXfY3dMrws2j", "n5TaOyAsbQQxDkVP"]' \
    --offset '75' \
    --order 'Z7pSxxjdSTUiYoIF' \
    --scope 'USER' \
    --startCreatedAt '64' \
    --status 'DRAFT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxMessages' test.out

#- 46 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "sPDyPQ0ae3raTXtr", "expiredAt": 4, "message": {"PCxSKESHnS5Fq3iB": {}, "jtKDnbK5PjmPQ4JI": {}, "z4fRma4LyC5bwCxv": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["wpHGNjyaEoeYp4jB", "yqDD2rpvg13kcPPM", "rAP9SW5oajZYrgGL"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminSaveInboxMessage' test.out

#- 47 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'TV8eBBT1kVqmnQan' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["jRX9G7NBhr3DJqow", "Q964Z4ZuDJ3xdFPa", "n6QicRjQLUR40CIi"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUnsendInboxMessage' test.out

#- 48 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'YhgB9uWhH4c3IcVc' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '4' \
    --status 'READ' \
    --userId 'H0iFBJ2vb13V8tuq' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxUsers' test.out

#- 49 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'f5I4s8RHIQT86Pn2' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 56, "message": {"yfbRLSJGVUmJasu8": {}, "q9c2XQPsa78Xouzs": {}, "Ni2y3HRZPEgl4Bag": {}}, "scope": "USER", "userIds": ["axsouvCAItfXSYqu", "dLOEhiOKA3TIU2lP", "tEKbsKGXB166nDIb"]}' \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdateInboxMessage' test.out

#- 50 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId '1REO2Fb8xK3iSn4B' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 50 'AdminSendInboxMessage' test.out

#- 51 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["M3nAW88aYtjGsdxX", "IKw3fXf3pOLHQvp8", "KKItvR68FZqh2C7k"]' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetInboxStats' test.out

#- 52 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'AvidTGjKBjiYp0HR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'AdminGetChatSnapshot' test.out

#- 53 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'tMGNDoQHaJmjdSl1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminDeleteChatSnapshot' test.out

#- 54 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'usr8vl9qYiQx6KA9' \
    --includeChildren 'false' \
    --limit '4' \
    --offset '70' \
    --parentId 'jdgh6Kr2buoCZiLF' \
    --startWith 'Vc56sd8m5yDOvBVa' \
    --wordType 'O2lotWar9G0BYsjh' \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityQuery' test.out

#- 55 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["Kq4cBm3bujI5RvbJ", "P9FtNNuJghWkTi0W", "v47yfQH5v1veGdGk"], "falsePositive": ["1HJi8v2To0zm3qvj", "snIzK5gDqvjBrros", "aeLY76ke71xOjcoC"], "word": "Y99g1ACaDEiXZmut", "wordType": "jkOqLSQNPtWILRub"}' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityCreate' test.out

#- 56 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["ROP0n7MnG1hrNqdm", "I2ZdqcrM9Eu80PxQ", "YG3mHDcUjqijsTE8"], "falsePositive": ["0tEgO2duAs58DEZe", "VKnvihRFVldmVxjw", "Q1fvtBI4XMOBWUZ5"], "word": "ry91GfK9Q4ZfYLYK", "wordType": "b6zMvxBPfrsmFFGT"}, {"falseNegative": ["L8yRYQHcC4Wt6UaZ", "ISt8S6A2R0sMNEpl", "PrZIPIKbTygRQjRZ"], "falsePositive": ["gTwJOjUkAAECDbUA", "F6LTTWpSgXSo1zoZ", "Nsw6EoWg8kVQjaGe"], "word": "yGQhwtwLoDRpverp", "wordType": "2kzaoTDZbDglPGM0"}, {"falseNegative": ["0AIcKB6wuOulDSA8", "vly3MTYdp3eMETrD", "IdlZVetI6uFSug9k"], "falsePositive": ["aHgVIqyj56zKsTbc", "4501BnOzA4dSphIP", "BVULEkDawR0QyzIn"], "word": "Kmc4Rx8RaW0COkRl", "wordType": "SVoTK8Sqs7GOmBlS"}]}' \
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
    --limit '100' \
    --offset '64' \
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
    --id '9b9iuiK39BxIPxxN' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["FdwpzCSkhTbppUht", "1bCL64LUTmhTv6U9", "fCV6BN7SVeLCrOdx"], "falsePositive": ["H2i8yIVQLZaX5LnW", "btkV59Qegxlwhuoi", "F4ZPC69vscOldQPa"], "word": "vJWgMbSGc4BHNWBi", "wordType": "gITb1vgDv4H80FA7"}' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityUpdate' test.out

#- 61 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'OJsJuy20dNngyxQI' \
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
    --chatId 'YNtxxjjW8RkiPjNk' \
    --namespace $AB_NAMESPACE \
    --topic '2YWxsEi9nQlTWtRf' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE