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
    --chatId '["1hNo90edskSBfm8C", "Ojfdyphle27beHGA", "7JLcHoch3wcWlEAB"]' \
    --endCreatedAt '79' \
    --keyword 'sdZiTtyfCr2VX9lv' \
    --limit '85' \
    --offset '13' \
    --order 'GNb5UGVxjM2JaTry' \
    --senderUserId '92EXlciqCx40XXpo' \
    --shardId 'drml9geVi7DxSVXP' \
    --startCreatedAt '80' \
    --topic '["tYNK6nN33zJFoioC", "FONm40AT76PK2a4Q", "wGZrbTP05BMYqHn7"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Y47JiIwgdCrwpzam", "name": "efFpVlguwvLGGVFY"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '32' \
    --topicType 'HOqYfOnVeMGHQbcw' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["yw4KUZglzMP55nJz", "jKo9CteL9A96Ew4i", "7j2t51Uc6q14rESS"], "description": "PytU27TQW8bSmZsY", "isChannel": false, "isJoinable": false, "members": ["7bRjMVKKLN4iczbk", "u0VodUTtpTcKi1f6", "PvR2uKhxW5ZiB8ye"], "name": "lnWEn14xETjTEmCy", "shardLimit": 77, "type": "4RI3JuzY0dwirIrx"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '93' \
    --topicName 'dZMastqXcUXgpn2N' \
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
    --endCreatedAt '93' \
    --limit '55' \
    --offset '59' \
    --senderUserId 'ic6ycSkl6gFRs5SP' \
    --startCreatedAt '17' \
    --topicId '1TjYWDF6N7qP56RU' \
    --topicIds '["qV0BuimYr5d5SCxe", "SKm3Vz7fP0sy0fpA", "wXwZNqUfwyVEa9Qi"]' \
    --userId '0JSPJp218fjYBlHT' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'hUXUN18rPRsUW8lm' \
    --body '{"description": "K9suuUFfHrxpgFqQ", "isJoinable": false, "name": "wxGDyfq9HJuiUwXQ"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic '8fmTfQSTvxE010c0' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '39cPad4I8Mqzo5OL' \
    --body '{"userIds": ["0fN2aW2L1uMhA1fF", "u9WYs1BhL89OHae5", "bZtpllv3dvbR1Giu"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'yqnIo2hOB9a8vVzq' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'DDzc8qbYA0ybt71h' \
    --body '{"message": "SqymiPn1yfAAqzth"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'BNL3vbv3UN5UUkD6' \
    --namespace $AB_NAMESPACE \
    --topic 'V54PYY8pQKLgdyoR' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'FfgemePrctaJjlSs' \
    --isBanned 'false' \
    --isModerator 'true' \
    --limit '25' \
    --offset '6' \
    --shardId 'XQpRa7YXSzzzeIrC' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'e3TQovwWxqXLvTQi' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'kY6SCJ6WP7aBuAd2' \
    --body '{"userIds": ["nAWFMIjFHtZRfIUD", "gcNTYoFvD4pjxdBX", "qhTjnPR7UX1wTv6q"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'AHCdkoNMw9xMDEk8' \
    --userId 'U2sHWvTIz5tNPVDg' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'ZuNwVM87bR9TCky5' \
    --userId 'ZBRthTLDn7bbhufF' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'true' \
    --includePastTopics 'true' \
    --limit '90' \
    --offset '82' \
    --topic '["WuXnY8ustT8rQzW8", "zG6pSiOFloAeRuCj", "5z3DaTDqhpdr75wW"]' \
    --topicSubType 'PARTY' \
    --topicType 'PERSONAL' \
    --userId 'abTgJYqy4BKurrwS' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'xIgZNBEkTG1xyaFm' \
    --includePastTopics 'false' \
    --limit '32' \
    --offset '85' \
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
    --limit '34' \
    --offset '47' \
    --topicType '1FvLNAKv8qTd2zVj' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '24QcUsAWrMjWDRed' \
    --body '{"userIDs": ["lCqpSpI97KjsxJAJ", "buMXguWtHj3VvhQV", "ocKrlDREVm5npheS"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'agi0G6REQVJ7glPc' \
    --limit '18' \
    --order 'GeAbdpScyC6W0GsM' \
    --startCreatedAt '30' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'm3iDPpfAfp83Yoc7' \
    --namespace $AB_NAMESPACE \
    --topic 'R5bD34XcSC2it1rM' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic '91xY9QpNbYo2JLLg' \
    --body '{"duration": 59, "userId": "yFcXDUZERv3qLchO"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '9WQ27e7eTfVh6bvg' \
    --body '{"userIDs": ["HKxVnZ6gv1Gkpi5l", "mN46sY9hcRW87YDp", "JFrSncgXcW7Lvdos"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'w221833Dprlf3u61' \
    --body '{"userId": "VSNQr992uL2JSEZm"}' \
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
    --body '{"chatRateLimitBurst": 55, "chatRateLimitDuration": 1, "concurrentUsersLimit": 22, "enableClanChat": false, "enableManualTopicCreation": true, "enableProfanityFilter": false, "filterAppName": "jrfnopZ7I175oR3f", "filterParam": "ZCUz1dDIsDC6LdFN", "filterType": "CEWqa1OGpujpnxTG", "generalRateLimitBurst": 14, "generalRateLimitDuration": 22, "shardCapacityLimit": 44, "shardDefaultLimit": 38, "shardHardLimit": 37, "spamChatBurst": 35, "spamChatDuration": 89, "spamMuteDuration": 47}' \
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
    --body '{"enabled": true, "expiresIn": 67, "hook": {"driver": "KAFKA", "params": "DKIH8Vi9gaQRg6gt"}, "jsonSchema": {"n9I7vfYQU53AJOka": {}, "GffZhIWrIzFCvdyP": {}, "NQA9h8M5qk9bjlFi": {}}, "name": "jlFJw2WUS6aGvNGM", "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'x6ODHrAnPY5mLAs3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'biYr3C1wfiNH3kht' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 93, "hook": {"driver": "KAFKA", "params": "HVAFX1lSKnorfg4h"}, "jsonSchema": {"7lJg5uU7ZXTyX7w6": {}, "BuCw7LZHcZtQSgVt": {}, "ia1fPbpjm7YeM4pI": {}}, "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category '8B0Riknb3SydwSEd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'eGsx5PaW0ddUMck9' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '33' \
    --limit '63' \
    --messageId '["ddkx0ClwGfnla2NA", "34bxTrIkvzLfqz5I", "I8p5nBw2USrtNHP2"]' \
    --offset '81' \
    --order 'naa3cAdL4ec0HV3x' \
    --scope 'USER' \
    --startCreatedAt '69' \
    --status 'DRAFT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "IPEutzPfGkLzhukp", "expiredAt": 99, "message": {"Dvmx4rUi7QIuWwgC": {}, "YjYzS9oAfZ1EeHdh": {}, "kobIQEHjhMDDsjzq": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["04Y1c8grGTE01syg", "E9GhwPyT7RpdW468", "LNK3KlnuPObFg0td"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox '8NxBpkqW112mkgTx' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["nky690RU2hCwFq1C", "2OAnhyZ6f3bxeB74", "40RIog2hugWFgoXc"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'kwKDiKmYyRtL2zjN' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '98' \
    --status 'READ' \
    --userId 'AJNlLWVEoTW1CgLG' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId '1vFL7VbeZ7fiACPE' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 42, "message": {"zUeWopUvnQ05QR8T": {}, "gXCVPYQKKanW9z1p": {}, "rFGV2GLC6Y7XixPV": {}}, "scope": "NAMESPACE", "userIds": ["pGyYWU1P4ZAXWDzR", "cXlemZpwYZygYoUN", "RCqzkopxjBAclVuU"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'ABk3zDJZWWsa014O' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["cDcnNU68vSe8tfGF", "DYrU4LimMNAmc133", "9pQLhAFrOFPfbrn9"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'ftOQWd05MEAx1die' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'hPa6zQZuwt5ghuNA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'NhzHcUhYTRXORaGZ' \
    --includeChildren 'false' \
    --limit '57' \
    --offset '64' \
    --parentId 'CXd9sa6l83ta9bDM' \
    --startWith 'CxEiyAuR70AWRy3A' \
    --wordType 'CLXMf8Z13QYcrzwN' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["ENHz946UOwSb9kox", "m9s70XDjYzewLvQw", "GucSOYikY0a19MxP"], "falsePositive": ["wVWeilcRkXSV4bO5", "S1XMlUABcRuTGIuo", "4NPG7rrLgnIkv1Ur"], "word": "1zMGPOLzjV0kf7FV", "wordType": "XAhiS25syBrJudEP"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["CrSgGMM5U58XYzBE", "Ii9m7fbT5UWu8fQD", "5G6MxR7JdZHRAUrw"], "falsePositive": ["E5MwAbb0C8iACuLB", "HtAEIMnIvMmiPFQW", "tCMWtzT6UR5oMi87"], "word": "aVE4Cl9b9ftkH8LB", "wordType": "xRUWd1xmgVOPAa91"}, {"falseNegative": ["dHr8Zy8zkb2eIOX1", "UB0kiQujOhxMFHKM", "GFCYK8hcNpgZqvuz"], "falsePositive": ["PZGIy2AilG80vRLG", "7hAOWVJmUua2Rn0F", "x8Qw7Jq41VQ0SJe8"], "word": "RoDRnYuxEFg44pHT", "wordType": "BoG5MyPsnUyOQfdE"}, {"falseNegative": ["Yy7zGCarU5G4L6nU", "hC1tbiaxi7QEXXiP", "FDrqewY17u5pU1dB"], "falsePositive": ["9H43roqdn4mcpFFz", "TwmFdNVYdrmfPlMY", "dXYYJzn8vXISjG7N"], "word": "E4pdN3zhLJMYS512", "wordType": "U63mHdyL2rUhlzCd"}]}' \
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
    --limit '85' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityGroup' test.out

#- 56 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'LEAVEOUT' \
    --showResult 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityImport' test.out

#- 57 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'Xgch5PaisjrYZ7IK' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["jDNUTZ4phkymkzQG", "EmWGlcu7nEsevwZg", "cZpMpfHxE6XplYfQ"], "falsePositive": ["Z7esBQVsmmKIKbDE", "OI9DZq7NCjBJUM5F", "nozyshrxU3ECwHRE"], "word": "x9dWhC6lPc3ob8w6", "wordType": "RsAJUEPQd8R2yieu"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'WY9wtJ3OgT3zF4ac' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId '4LtrQaeNdyFYjew8' \
    --namespace $AB_NAMESPACE \
    --topic 'vlPoCqGfUHQFvvVq' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE