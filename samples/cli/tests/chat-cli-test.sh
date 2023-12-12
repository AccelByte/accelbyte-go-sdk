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
    --chatId '["ylye8buQdom1Sxr2", "EB1El4jP7Z1t9fri", "JsYKNxOuP0v8643J"]' \
    --endCreatedAt '37' \
    --keyword 'VZTLvLjnsN6jAwMM' \
    --limit '77' \
    --offset '32' \
    --order 'YrOVOLLX2Rf3LcGW' \
    --senderUserId '0wfbTpRPWJTSM76P' \
    --shardId 'UiC1X0r48faunv3J' \
    --startCreatedAt '81' \
    --topic '["znKIsRCdWHAc2VVq", "Z6bicog7JSwHmSFx", "rEy4vUJOpF4GJ0hU"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "MDBgobyqrpiftB4W", "name": "5VNzYeFN1CQXDtj2"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '8' \
    --topicType 'Ch3fxEZ6MWFi1mOe' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["mA3djJv7C6CKd1m4", "gltCEo4V4wRCecAC", "BWpcEfwxowLH7gGj"], "description": "VlmV2BAvMDBAEUpS", "isChannel": true, "isJoinable": true, "members": ["HRckf4W1ICrqkEZt", "O6thZLxcmwezhWox", "1s4xaLLuUITgWVOT"], "name": "BZt5fPVrVc0IykeZ", "shardLimit": 21, "type": "hjwMVzpX3gZs794t"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '1' \
    --topicName 'nPP3CklqbNWEAtwA' \
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
    --endCreatedAt '25' \
    --limit '60' \
    --offset '18' \
    --senderUserId 'gD6MTN51fvoh1dPH' \
    --startCreatedAt '65' \
    --topicId '6NNbqa5BRQHaAhqG' \
    --topicIds '["WNMoyVXObRUw4BaT", "MKGuUvEs5Srf4GsM", "p0CseAhTuTPj82Vt"]' \
    --userId '1qQfgcsCm15QNqpH' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'kqp66uE1faU8Drl0' \
    --body '{"description": "DjTzexisSBPCt4Pt", "isJoinable": false, "name": "vMWujVO9W9g93z6S"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'SfA9mK9K07flKje4' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'TMtuniWLguMdheuF' \
    --body '{"userIds": ["a4WwEtFobNWDe5zT", "R0hVaeEfrrDgZew4", "uRSWO95NGtDmQQq6"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'MnaTSjTXGfvfE98O' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic '6hkk0aVC9Tt815Oh' \
    --body '{"message": "M3h2gbRBivdUpwBY"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'SIa6SOpQSoozNH6a' \
    --namespace $AB_NAMESPACE \
    --topic 'kw9llBGvnyaqPGji' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'CgHnfWWW5RY9p9zU' \
    --isBanned 'false' \
    --isModerator 'true' \
    --limit '43' \
    --offset '89' \
    --shardId 'rWXGWFLM6j3HFFKg' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'SDy29s2ZkSyD5w2t' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'PCC4jcpk1Ti3GuVl' \
    --body '{"userIds": ["COx1WRRS1ybqDpc2", "xLeBevz4jLsRL1eA", "Nl6KPLdkio3J82Vr"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic '1BlAu80vIRjPR9bs' \
    --userId 'unqheQtg40iIyLN3' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'E1YYgrOvRMCga88a' \
    --userId 'v6tzalRZTnZzNqKP' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'false' \
    --includePastTopics 'false' \
    --limit '13' \
    --offset '48' \
    --topic '["AdOhbcPdlgBtg7UY", "2kWzHxe6ylgEZiU8", "EqXWZ3LvGz4bQ2of"]' \
    --topicSubType 'PARTY' \
    --topicType 'GROUP' \
    --userId 'nL19cvDGLwghwBoL' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'fHV8Y7EwPlsRm9FQ' \
    --includePastTopics 'true' \
    --limit '13' \
    --offset '58' \
    --topicSubType 'SESSION' \
    --topicType 'GROUP' \
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
    --limit '66' \
    --offset '98' \
    --topicType 'cKANZ14SNkzZyK4l' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'xHTCdgHzF0QCDwfs' \
    --body '{"userIDs": ["3xp1I7iCLikuNwwy", "nsF7VGwsBnAIhT28", "RhWXti9wv1an8IKA"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'gZIcCt6Ttp76T3w1' \
    --limit '56' \
    --order '3qZIdASdHo4tIo7M' \
    --startCreatedAt '87' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'xahGVFI9vt3whh3Z' \
    --namespace $AB_NAMESPACE \
    --topic 'unnEtwaaSOfATvGQ' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'VyAEOlhMzmaAwEhU' \
    --body '{"duration": 33, "userId": "Eu9hSCT3BmADMkSS"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '5EFWUIk0vmpFuJjw' \
    --body '{"userIDs": ["8ZPZbHfijUm4QY2D", "hR4lgxpjIzcYlpBt", "gbWwa3kmWAxZYw2r"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic '7wJ8TEAylyktXUA6' \
    --body '{"userId": "kV7pG2LWWqa6pnUA"}' \
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
    --body '{"chatRateLimitBurst": 36, "chatRateLimitDuration": 56, "concurrentUsersLimit": 55, "enableClanChat": true, "enableManualTopicCreation": false, "enableProfanityFilter": false, "filterAppName": "ihTxLE3HgH8Bg77M", "filterParam": "EBR5oqAHjw90y8xS", "filterType": "wsL0BIXp07o48Ctz", "generalRateLimitBurst": 35, "generalRateLimitDuration": 65, "shardCapacityLimit": 0, "shardDefaultLimit": 33, "shardHardLimit": 45, "spamChatBurst": 52, "spamChatDuration": 2, "spamMuteDuration": 65}' \
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
    --body '{"enabled": true, "expiresIn": 4, "hook": {"driver": "KAFKA", "params": "w0O0K2FWTnsHSzsj"}, "jsonSchema": {"lZ0x2uAlVMM2Frbz": {}, "6YUbz4E0iMGbHL0K": {}, "mWkcpQRGJHNRIl9u": {}}, "name": "CAdlHkAn38R5JLxf", "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'v6evXMbZC0kgtHvO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category '3AyUHFxBJNFuVucI' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 3, "hook": {"driver": "KAFKA", "params": "IwU1Ta4Xu8xaiR7e"}, "jsonSchema": {"VINZLrHfU5k0YgUd": {}, "WlpptuP2pgQDmZaZ": {}, "xG9GIFEsrbYGJilc": {}}, "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'l3lCjWuRIb4HD716' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'JRMODghGtfwoVQVH' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '61' \
    --limit '75' \
    --messageId '["ZJCrm4bE86lt1KAG", "pHPyZG7jumio0gW9", "dylpMfj77aQu6NVY"]' \
    --offset '84' \
    --order 'LRwvfxuxdHm8KQZz' \
    --scope 'NAMESPACE' \
    --startCreatedAt '34' \
    --status 'SENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "134DemYz5y5RNp2W", "expiredAt": 70, "message": {"lTu3nuMgKGaoVXc2": {}, "VHYfbmkfl4DJZAyx": {}, "jRE2REuldFZ2bx00": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["4cDEO8xMCMiesoJH", "TKXAGE2SMa6iMmYO", "ZZVMREEijj2jxfaw"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox '8tbbOlzbpCc8smQK' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["AQ3AUtYMjQkkEZo0", "C8pjek5txiIFnB4c", "GhqFTGP3jzI82Rug"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'SsY7empBAkIZ2Fwc' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '76' \
    --status 'READ' \
    --userId 'ATWHam3aw6HNGk72' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'RCwGB5TSlxfBGp1h' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 86, "message": {"3DyMratMHnSH3FwA": {}, "hHIMD7rrdv1Ipqp8": {}, "RuXmk521DwcZmfYB": {}}, "scope": "USER", "userIds": ["jvIiaPfBxGHHlZK0", "XwxqS2SnGdGMtTVs", "tnBjqAHTMlOVEHCU"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'UhBPWCHPuU66I6px' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["rR3pkjDbhbiRQe0i", "bWVD9k46dm2qi5e3", "tvgfb6NdfOTZVw0n"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId '7qRObw52CtO1uxv5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'hbGIZTbQ9CT972iY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'WpelWTQ1WYQrCA9F' \
    --includeChildren 'false' \
    --limit '57' \
    --offset '86' \
    --parentId 'pExl6FrIJMD60Juf' \
    --startWith 'MkONtdXjLGQaHGOo' \
    --wordType 'CUI5tPeCy8yRlL9s' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["comMpCj56GEqO7IO", "550cnfvv1XrOqsSq", "leWAURZP96evi157"], "falsePositive": ["ZbYx0PgUsIYjBggs", "E5nYaRpkYNuS8UTk", "hgUvRcG52rS10FjZ"], "word": "uSiiIlPwYG7GVkqb", "wordType": "L7lsVqTeK5nG1mO9"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["cXxVQbIGWgo0cSbG", "QL3mkbwlXtMbhb0b", "GDRdVDx3pCCLTt00"], "falsePositive": ["bD4asmMZ79FIPk5O", "iXBDn1R63GtzQJGr", "dBWCTULnnANrmYRU"], "word": "vUErBNRbHqT7z5xh", "wordType": "vOi9x7EccqMIs3jl"}, {"falseNegative": ["s1lIFfVawOUL0CTE", "5MJjd2oeeZlIyXgg", "dtQLhavYpJZKyfQy"], "falsePositive": ["yQpAi0FMk1nTrw1k", "DIa7YEV1SOlBl6qq", "uDsAO3YnxWlG9SMp"], "word": "8qwJECwt3MjRohER", "wordType": "Mr8Gf4CFj3ZypnyH"}, {"falseNegative": ["CwOzRk5rnEzL015Z", "9OI8U973hn2nIQ6R", "fVXQom58FMdfpXtO"], "falsePositive": ["oQIzs3nXpYQvhP8J", "Ia0FTxPudeRzJb2X", "Z6FpfesgKYqvG5V6"], "word": "5YrksBt2a6WZUWso", "wordType": "4a29aVJqtJXgmclT"}]}' \
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
    --offset '30' \
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
    --id 'mYfAx7N6Um6VMqLV' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["mWsSslSgAHPXMHDy", "2aqHSNnOH9YKBX1M", "TW2ZrgYs6RqlghY1"], "falsePositive": ["67AVCKYlTZowqe0K", "Vot3Joj5jVRPSi9F", "WgWXfB82a09pN9Fb"], "word": "L9kf6es8HFynxEbU", "wordType": "A8kBl0nk7uBojXYx"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'kfCRs27t8lT1eVG8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'jxA3LoPLtwXmYZSd' \
    --namespace $AB_NAMESPACE \
    --topic 'NB7acJsGusnDzDKZ' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE