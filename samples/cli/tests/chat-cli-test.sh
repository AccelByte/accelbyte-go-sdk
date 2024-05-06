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
echo "1..62"

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
    --body '{"message": "T144PbCnjWDHJ1G5", "timestamp": 39, "topicId": "VK0x4DH7LmNTAql3", "topicType": "PERSONAL", "userId": "cM5HXgMx7RHfw2G6"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["ZdMnz6P6ixb1OwAB", "CP1kdArQmTafpNQE", "d2YkASh0jsiVUz1H"]' \
    --endCreatedAt '88' \
    --keyword 'DIIcyhImiKClSZLL' \
    --limit '29' \
    --offset '30' \
    --order '93awtSICoad5Wx0G' \
    --senderUserId 'zYySgylpAirdVuZP' \
    --shardId 'dJls7fyatQ44cBdt' \
    --startCreatedAt '90' \
    --topic '["b5vsF31VO7UDmHuh", "PecTfBoVD7sf7RJW", "CmuJfH2tzYd4TW0X"]' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "nErjXZ97oXxnOEUu", "name": "OQ7LEgJTr3vMNkme"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '33' \
    --topicType 'fBjeNmYO0BfwCSRv' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["eYc9UgyWcmHtpdew", "Vtibn9QCWSGmFS59", "nwx9h3kgfDMSXsoy"], "description": "oDp2XxDKjArMwdbd", "isChannel": false, "isJoinable": false, "members": ["d1xscD25zyYrgk0j", "JkiEyVX3Oa0Romy1", "87BFuEqNcvoX1mVk"], "name": "gIBH5FJAM3vTPa29", "shardLimit": 14, "type": "Hyn4aOzWMlwIhiBK"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '11' \
    --topicName 'GEyQJ7WhzLWc2bSX' \
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
    --endCreatedAt '34' \
    --limit '52' \
    --offset '38' \
    --senderUserId 'JJMverCRUADzMVvt' \
    --startCreatedAt '60' \
    --topicId '2WvABxvfOq55rFWj' \
    --topicIds '["qGmR4m7W1flcT4HC", "8lkDM0r58flkKqSL", "Kf82LCbqqFq7Difc"]' \
    --userId 'DPhrCzbv88NdOTPN' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic '0gzqFMUNOJNnLYxu' \
    --body '{"description": "EuSRlLX8QfXx3Mig", "isJoinable": true, "name": "w9af4Jhwr11HqkLK"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'KVqKIBoBqPVEEn5j' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'TlKJA3fgleYQXIbP' \
    --body '{"userIds": ["dsl7aT8OlU4kxBKi", "fBFWQVNt7p3tw1je", "nJkvjX1SeykKIArk"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'Jv5nwsLVHv76Ibp1' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'qNXCz559aLpcjcM8' \
    --body '{"message": "b131r0Hnbyq9UpNg"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'bFrqS16OoHUPpJ54' \
    --namespace $AB_NAMESPACE \
    --topic 'WY3ADDSEKP4tZXII' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'la8qqtrfEdbab92K' \
    --isBanned 'false' \
    --isModerator 'false' \
    --limit '92' \
    --offset '91' \
    --shardId 'aBucYzxknJ80LQdF' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'W5XcvpbE2KjNRwEq' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'swJQSb4HTL8woNry' \
    --body '{"userIds": ["A5UieAVeXFO7o5FJ", "krG6pCsHQL4Oc3E3", "E7pSaviug5IandHx"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'zXili9Xpap54YSVk' \
    --userId 'qKrTUj0uy7pOoNJC' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'aBI0fj0oHNnkswbe' \
    --userId 'suZHFOHZJSzG9eTV' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'true' \
    --includePastTopics 'false' \
    --limit '31' \
    --offset '75' \
    --topic '["kPWFr5aKBFKIdNyH", "C4BWTWdLahrn5PRx", "DpIZUKb2hugQ7y2z"]' \
    --topicSubType 'NORMAL' \
    --topicType 'PERSONAL' \
    --userId 'JRoM6pJGjgTJBAtH' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'skMp2GJMwHN8sFA7' \
    --includePastTopics 'true' \
    --limit '18' \
    --offset '7' \
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
    --limit '41' \
    --offset '78' \
    --topicType '4kcd6nATtNZdeHgO' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'nXbd64oic1Nq6QVv' \
    --body '{"userIDs": ["CMfWfbxh4q2cUbwJ", "gWpmiYXeZNEvwvbO", "80pzJ8XIt5X3xKof"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'XzD8d0vz5KGdUsYV' \
    --limit '56' \
    --order 'RvueoofsDJG85oSB' \
    --startCreatedAt '35' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'xL0KG6O1SwLB1G0f' \
    --namespace $AB_NAMESPACE \
    --topic 'kdlxilA5H3zGyWx7' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'HRtTSwYJPhZ8djSf' \
    --body '{"duration": 75, "userId": "SLIPT9Z6UXxXb0zH"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'e60emdERXGd5HyIe' \
    --body '{"userIDs": ["oGMoY84RhOzuQtEC", "7bFJyTG3gMNUeKJe", "GFsMOBw6AthLRckG"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'Gd1OatkABkbF3MT5' \
    --body '{"userId": "tI1kWpyMPPzRvxbu"}' \
    > test.out 2>&1
eval_tap $? 31 'PublicUnmuteUser' test.out

#- 32 AdminGetAllConfigV1
samples/cli/sample-apps Chat adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 32 'AdminGetAllConfigV1' test.out

#- 33 AdminGetConfigV1
samples/cli/sample-apps Chat adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'AdminGetConfigV1' test.out

#- 34 AdminUpdateConfigV1
samples/cli/sample-apps Chat adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"chatRateLimitBurst": 9, "chatRateLimitDuration": 42, "concurrentUsersLimit": 87, "enableClanChat": false, "enableManualTopicCreation": true, "enableProfanityFilter": true, "filterAppName": "DmwrbKpJmhfYrxqS", "filterParam": "0G5aXHSTkUU9zzG7", "filterType": "nnN8zzsp5rRcWaDA", "generalRateLimitBurst": 77, "generalRateLimitDuration": 38, "maxChatMessageLength": 78, "shardCapacityLimit": 18, "shardDefaultLimit": 97, "shardHardLimit": 26, "spamChatBurst": 42, "spamChatDuration": 53, "spamMuteDuration": 41}' \
    > test.out 2>&1
eval_tap $? 34 'AdminUpdateConfigV1' test.out

#- 35 ExportConfig
samples/cli/sample-apps Chat exportConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'ExportConfig' test.out

#- 36 ImportConfig
samples/cli/sample-apps Chat importConfig \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 36 'ImportConfig' test.out

#- 37 AdminGetInboxCategories
samples/cli/sample-apps Chat adminGetInboxCategories \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'AdminGetInboxCategories' test.out

#- 38 AdminAddInboxCategory
samples/cli/sample-apps Chat adminAddInboxCategory \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 17, "hook": {"driver": "0j5UZb0DCHeWWvpk", "params": {"wOFu1hz99gScphiy": {}, "uxr7tRB3WJR8m9bg": {}, "NTJEYf7ibHjii9Hq": {}}}, "jsonSchema": {"fco0tWjmQLeTczIO": {}, "jFAfOCO83KDEnMtn": {}, "dttWzlBWhjARfTxg": {}}, "name": "OQIQx3F0wpOQrWZ9", "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 38 'AdminAddInboxCategory' test.out

#- 39 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category '5DrcOb4ucxeBxUXP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteInboxCategory' test.out

#- 40 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'G9zVKPFcMV93jHbE' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 58, "hook": {"driver": "p8O2H0eWAM5l33K3", "params": {"qHp2mCPx5aYKTvc9": {}, "Tkmi8B0U5tkr9nDX": {}, "NtMgW6hL19naLpbf": {}}}, "jsonSchema": {"JiodUzkDrI9GTdKG": {}, "PcZN9Mhok7LWCp9n": {}, "WKNVBzmFRTE43ARb": {}}, "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateInboxCategory' test.out

#- 41 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'diiqNXa1afHiRZsH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminGetCategorySchema' test.out

#- 42 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId '8lqwQixQSrQ0VKYy' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteInboxMessage' test.out

#- 43 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '29' \
    --limit '40' \
    --messageId '["NwtcCmAbTylUA87p", "01kVmuN2z8fqLuFs", "NuuMnSf2OPEZXpfs"]' \
    --offset '22' \
    --order 'ATDLgbyitPrwHC3G' \
    --scope 'NAMESPACE' \
    --startCreatedAt '70' \
    --status 'SENT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetInboxMessages' test.out

#- 44 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "hldUARvkHrz9SI69", "expiredAt": 65, "message": {"bXnxqnMGP8lEjOad": {}, "OD3uZk4vvWBcCnuD": {}, "41k4V7sFSfVdQXv8": {}}, "scope": "USER", "status": "SENT", "userIds": ["VjSNJMGneqzdXw36", "6agTcI8bKO4ER9db", "CjBeEyjS65aR9xb8"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminSaveInboxMessage' test.out

#- 45 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'IvKsYkSaS1i9pmQu' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["BqccGpkVEx9C4GHL", "DO37bChR74DC3EuI", "9VrS7mz2O8EuViHU"]}' \
    > test.out 2>&1
eval_tap $? 45 'AdminUnsendInboxMessage' test.out

#- 46 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox '47R2nt0AuEYIuYk1' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '17' \
    --status 'UNREAD' \
    --userId 'alU4wxL6CBr2lt5r' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxUsers' test.out

#- 47 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId '9V8mvrN393QFV1c5' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 89, "message": {"UwI76QPAiJAIKgA4": {}, "0Ql5LIDA4UsAzXh8": {}, "08nde8rNUr8xyayP": {}}, "scope": "USER", "userIds": ["jBka9tDuthgcNu6a", "PuSBs9SS7L67XAmB", "8vUUJniInrzT8xkX"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateInboxMessage' test.out

#- 48 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'MDoxkDLaaYQBOo4h' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 48 'AdminSendInboxMessage' test.out

#- 49 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["LCx9HqZ4R8Sobjfn", "njJZ5kHmRA2Mf0XO", "AuGEYmTTSOuipZ6B"]' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxStats' test.out

#- 50 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'hucCT2h1XPVY7Ugb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminGetChatSnapshot' test.out

#- 51 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'iLFTjYdBnIuSfYLT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteChatSnapshot' test.out

#- 52 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'vYrKTMDydtkiEEw2' \
    --includeChildren 'false' \
    --limit '59' \
    --offset '9' \
    --parentId '5fDOay6Ku08tTnmm' \
    --startWith 'OY2LONdrIqOrxZwx' \
    --wordType 'SO986hp98JEU9BJl' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityQuery' test.out

#- 53 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["GkawuURawfZmQNQL", "rk2eNS9d3BLS9Y8J", "aRbwGd0V1wQlfNgp"], "falsePositive": ["VKLLbRdZN3tVizMy", "qbTKj4Tor8XQFAd5", "KjxlGpUaCl6d4BMt"], "word": "p8WYA4QcMeJhlkin", "wordType": "vODKjq4XqGbvdMyo"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminProfanityCreate' test.out

#- 54 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["IctX5V2kiJVu2OZG", "M3ahkI6jtoZeaPRd", "EAliIBAjV3HIKbyP"], "falsePositive": ["aGMrhLSnYYRbTxut", "Vv4oF9I3bKrE2IwL", "8N2Aa5jw147gpY0z"], "word": "JmGZWHXkEdLxa2Z8", "wordType": "gH88DMK52IXvuzii"}, {"falseNegative": ["33dmKc0LqfeMh2ae", "FujKDxALWHeWHrjd", "u50Tsp43HBF4wvJe"], "falsePositive": ["Mippv4H3v6uQDMN7", "zanm2j7IpM8E31LM", "TnMhKki5YskbJX2v"], "word": "a79z3lI4SwFkCvzR", "wordType": "1nzWmik1YX62Vo7J"}, {"falseNegative": ["QXi1QCo7mP7ibEJp", "qD84gQS7FIkSLdpe", "kyWS4pTY8JzWKzDJ"], "falsePositive": ["6xIOAkHMKk7SAGnc", "gcURSZGlYODgLg2k", "AKnCjcUWsRo1q4c8"], "word": "BhwqutnVlMnMFNCY", "wordType": "rXehLP9XmTAPo9kj"}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityCreateBulk' test.out

#- 55 AdminProfanityExport
samples/cli/sample-apps Chat adminProfanityExport \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityExport' test.out

#- 56 AdminProfanityGroup
samples/cli/sample-apps Chat adminProfanityGroup \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityGroup' test.out

#- 57 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'FULLREPLACE' \
    --showResult 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityImport' test.out

#- 58 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'Nn0folBHIeD8lP0z' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["sWe7yw4q20M7QRA5", "G7C9TxAGofOwdlD6", "IOA6Tt1nhv2WIs3U"], "falsePositive": ["BzTweKOnBpWts6uJ", "JmMI1ldOiMyaLA7p", "reutpEM2pfbHI4iD"], "word": "M6TjBFhySDKuByzH", "wordType": "dAJiIxKhh6WdiXON"}' \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityUpdate' test.out

#- 59 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'ISxSP34XTTnmnGmB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityDelete' test.out

#- 60 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 60 'PublicGetMessages' test.out

#- 61 PublicGetConfigV1
samples/cli/sample-apps Chat publicGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicGetConfigV1' test.out

#- 62 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'KbEJJazVBtg1hjrn' \
    --namespace $AB_NAMESPACE \
    --topic 'TsjfqW4TViA2D6Yk' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE