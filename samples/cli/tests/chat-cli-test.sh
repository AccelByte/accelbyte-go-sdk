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
    --detail 'false' \
    --body '{"message": "eGIpwaXBGF5to4mV", "timestamp": 45, "topicId": "79qloMnv3DamUFEM", "topicType": "PERSONAL", "userId": "2ZdZwyi4eezIZNUE"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["5mJNaoHH1dbx9lWT", "6vqqdv1m7enMy19E", "qGoRKjGYzz9zT1tS"]' \
    --endCreatedAt '44' \
    --keyword 'vjiRioFSRVauoyDo' \
    --limit '3' \
    --offset '15' \
    --order 'xt9hjPAmDqeP83Gh' \
    --senderUserId 'X0JmEDykSbv7diML' \
    --shardId 'dys0t8KMeYdue2lh' \
    --startCreatedAt '100' \
    --topic '["uJznTGFbUnQBdrZo", "znUyKjMVoOM6ctmh", "RAgVL6u3om4tlHKF"]' \
    --unfiltered 'false' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "0b4H4fUjDV5DfYgt", "name": "qJB5n4ton6HMf8IM"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '72' \
    --topicType 'O1a4ypb3AaHRaViC' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["acAglyCG0Wft3Tg8", "e3XwFz5DU1bCev6B", "ulnPD0v6ChX2bXiw"], "description": "1Lj33XrgDx38EIX7", "isChannel": false, "isJoinable": true, "members": ["D5c8jmdjN6ok9Wij", "HDJAePvJfmm7i8mc", "X3zwQxNoOC51gMYG"], "name": "ORDy2KvtDnmAkn64", "shardLimit": 50, "type": "BuiLLJt99WUtrDmG"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '74' \
    --topicName 'fGe9bka9EZ2kaCXc' \
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
    --endCreatedAt '80' \
    --limit '56' \
    --offset '92' \
    --senderUserId 'iXMmlWECTyQ5PIxe' \
    --startCreatedAt '90' \
    --topicId 'qC4iY9d9rq5c9Tee' \
    --topicIds '["BNZKHl2HxHjv5wog", "8Ve7gJ0Tj9ASq4oU", "Ug9YVVdXv1Flb0TT"]' \
    --userId '7xybw90GkiwI0eiu' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'tllbkSVhrTSK3dTu' \
    --body '{"description": "G8oLN4ITD9Mm1SQg", "isJoinable": false, "name": "0QP6B1lxkTZXkLcj"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic '3CHhEaXPXFjDgwEL' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'ChDseRcvjbmudiyw' \
    --body '{"userIds": ["lyspLmiA766dwdi2", "ipyDSoxKKVLdnkNI", "0XCdEh5qVYrvYGow"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'qt9ZoTYo8Lm16oBL' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'QKINyXFvJtO9Z0wZ' \
    --body '{"message": "57VHcwmFs4gAJu9a"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'kCHJ0CMXhM2bjuoa' \
    --namespace $AB_NAMESPACE \
    --topic 'abgwFWHlHHB1hwGp' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'e5KF1EBGU5abiiS3' \
    --isBanned 'true' \
    --isModerator 'true' \
    --limit '8' \
    --offset '10' \
    --shardId 'hpOfDcs1ECqb0mIy' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'qXXQrAVFDB0i9fGd' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'DFec3IL4W5I9F5nN' \
    --body '{"userIds": ["FutsODfcAz0pdg15", "UHKOqygcIFuw35cU", "cF4abrQpJfpkHbhw"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic '9z7rBgXD9rmZYheN' \
    --userId '2WhRkeFwfIO8thb7' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'jmJCtybMEJ7fDPZg' \
    --userId 'l43CMCn8BzOglXdy' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'false' \
    --includePastTopics 'true' \
    --limit '45' \
    --offset '48' \
    --topic '["dbxg7pGgOennhzcN", "j9OYK4xUMu4n0bxQ", "8LGfgK7qOoCp2ZxZ"]' \
    --topicSubType 'NAMESPACE' \
    --topicType 'GROUP' \
    --userId 'rFK4dAbLidl38mb6' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'oGuSI6q5vrFCoqDU' \
    --includePastTopics 'true' \
    --limit '6' \
    --offset '41' \
    --topicSubType 'NAMESPACE' \
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
    --limit '64' \
    --offset '99' \
    --topicType 'htTeZ8zgg6aNR1yp' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'NgWiihZe6vHroBuN' \
    --body '{"userIDs": ["NIHR27qgYsbP4Ur7", "kdsys35EOFYM4RSF", "QM4uQtGXBqmmizsg"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'JBkm1wB19hQJEVh2' \
    --limit '64' \
    --order 'a2V817q6I0M2Zitu' \
    --startCreatedAt '36' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId '98x7h59PFUOSUGSp' \
    --namespace $AB_NAMESPACE \
    --topic 'xhsc7yTz9QcvMgUD' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'rvB7hNbksACoyAUT' \
    --body '{"duration": 18, "userId": "ZeGI4Vw2W9paQbqv"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'O7uGtZ7kRhTRp1Ki' \
    --body '{"userIDs": ["bDHsCqFhO31VXyWj", "HfcCyB7q2EhN4DRz", "Y9DVVRu5CApqamDX"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'zoR4JP6nNToftZrm' \
    --body '{"userId": "DBaxHQ06RALoBf2Z"}' \
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
    --body '{"internalAccessLogEnabled": true, "logLevel": "warning", "logLevelDB": "debug", "slowQueryThreshold": 70, "socketLogEnabled": false}' \
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
    --body '{"chatRateLimitBurst": 89, "chatRateLimitDuration": 60, "concurrentUsersLimit": 66, "enableClanChat": false, "enableManualTopicCreation": true, "enablePmSendPlatformId": false, "enableProfanityFilter": false, "filterAppName": "e809e2FSg3FOeuVh", "filterParam": "xvLfnpTITENTE1yr", "filterType": "xPDR24n8SEDLprU5", "generalRateLimitBurst": 1, "generalRateLimitDuration": 46, "maxChatMessageLength": 66, "shardCapacityLimit": 45, "shardDefaultLimit": 98, "shardHardLimit": 69, "spamChatBurst": 26, "spamChatDuration": 6, "spamMuteDuration": 51}' \
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
    --body '{"enabled": false, "expiresIn": 10, "hook": {"driver": "3SRzYjtBN88QoXFQ", "params": {"T07ISnmCEVHC3ob1": {}, "udkyqoHqHU8jmN60": {}, "SqVjIb9WXUmo0ZUj": {}}}, "jsonSchema": {"anXRy4iBOxshmHto": {}, "9C1Jz6UKH5DgGkwa": {}, "3tcgGytmnwwfpAXo": {}}, "name": "vAtIVcyckIdE7o5U", "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'UgCgl8f32vowBqBS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'J41kJM6cziKSgf5g' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 0, "hook": {"driver": "f37ICJ5Dk2Is36Ua", "params": {"bYw1aK0hLDxryXBM": {}, "XEoAzYkJSxEUAP3F": {}, "wfCfU7d9bSzTEzFS": {}}}, "jsonSchema": {"pHXo4p0KUC3br84A": {}, "YboUDxKc0kwuMlli": {}, "yN2i4816jvAxqIaX": {}}, "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'wBf7ad9QCIis0f8r' \
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
    --messageId 'TuxH7NdRum7uKPzY' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '56' \
    --limit '90' \
    --messageId '["RgiL3p8Wrq0A4gbC", "h6jbqUGqNSCfShTt", "e72Vy9RNdIZaFgBS"]' \
    --offset '40' \
    --order 'lJNUJj13iGuA3IVo' \
    --scope 'NAMESPACE' \
    --startCreatedAt '91' \
    --status 'UNSENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "pMRjQEcN9kO1XaZV", "expiredAt": 51, "message": {"8Xo1z67hENNUKjq1": {}, "TEXNDRjsZTxEIxqS": {}, "U5BkWihGIerx5jOA": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["AyQbPWHKsYTCZgO9", "S8DMi7yq2zcvAvBG", "J7UlXwgDzm8aOk0d"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'cWB7zqpjXpzPIbJ4' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["eL0mHT1HWZsvVQsz", "h04FFKVNtTvZrums", "JJTFqPlJdAG1waXi"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'P5jJIeihMOHMMxPI' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '13' \
    --status 'UNREAD' \
    --userId '74IGSHFRe9Nd3mFg' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'nh3QOBK31OnnsgbF' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 60, "message": {"yIWojnPgVypymbF4": {}, "6uM0qHt6EjJXToA2": {}, "DGhPUJWM5UO59fnr": {}}, "scope": "NAMESPACE", "userIds": ["LPXdnl4pLegRYJAT", "ZmgNtq3pd8Q6tYZ9", "p5IhhNdC4PewJOPp"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'VITFYI9gD4u2gXhX' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["fUufevJbUf8He0i2", "Iu3dzUso7WBzTnPe", "ZkbL2J93T8Kw5Pov"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'hLn4w7BwvqNd7bsf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId '6W2SWlkH8tkSm732' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'NBkpgDQFkOGcB6Hv' \
    --includeChildren 'true' \
    --limit '31' \
    --offset '51' \
    --parentId 'DHd4O9zkJE8H80e6' \
    --startWith 'essl4qYMNko78is2' \
    --wordType 'AmuGTDbjGlA5jRGW' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["NtkAoAnfA0IyC467", "0wdru6F7gCWcFwRH", "XEji9Elb0kbxcX6H"], "falsePositive": ["Jrfa6YmaKxVJMWiK", "Vp3kQbno2sq7dRd6", "1XAMrIpVdoUau3li"], "word": "qDH1oGwVrhB14Url", "wordType": "Ek516N9Bkq1xnPr3"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["v6DtaTiA3fVCFYLj", "uSGwdxhi4zIuqrNM", "uvfnhBP4ZjthsUHN"], "falsePositive": ["9kEDBU7kXXZDXA77", "ZcTBezQ7QnXtlTs9", "Pw7zcu6eTgtjnb7R"], "word": "MH8gYcvz35zdzrpb", "wordType": "7TbRp1JBw48yux1q"}, {"falseNegative": ["KzMhauzwnAQ28UcJ", "m2YN2fxMVx5KN45Q", "FWQRnjdSj4JsHLx0"], "falsePositive": ["L07g13HSjBObZOcP", "7jTv5WvZoXdMpyo6", "WiPmgGCpbBXPBG68"], "word": "UayOrUAFeflhS7Al", "wordType": "lQHprc9SA14QKYSy"}, {"falseNegative": ["ZsY71gqkp80d4w1p", "NZYXS7Fk6U5MOCD6", "m2d7Y9tIYDKg4yIk"], "falsePositive": ["Ru6s6CIfOV5leJnM", "rjbFOoTdqei2aazy", "hYrKGIiIvoSWbMmt"], "word": "WjZokN23LMrGTICn", "wordType": "GjPaRX4DYQDeCicD"}]}' \
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
    --limit '73' \
    --offset '62' \
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
    --id 'KlyoLr6wNzoD717e' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["jnGA6EdTgoYCb0Mw", "IMX4nM7f7WtHwhV2", "ZyVR67AJxatgkAXm"], "falsePositive": ["rFuUR23Wyb5nSjKF", "pJaCwK1x19DSka3e", "0m3jX2ot9w7ZcIQq"], "word": "bRMaYH2ltgydcJwW", "wordType": "xxHjLtmsKQI1MZpb"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'gnDTNeHXzIiyygAw' \
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
    --chatId 'tzvJ6NwhgEcFBKmq' \
    --namespace $AB_NAMESPACE \
    --topic 'pldmU7Fy6O7c2T2k' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE