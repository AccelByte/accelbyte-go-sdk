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
echo "1..37"

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

#- 2 GetHealthcheckInfo
samples/cli/sample-apps Session getHealthcheckInfo \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 GetHealthcheckInfoV1
samples/cli/sample-apps Session getHealthcheckInfoV1 \
    > test.out 2>&1
eval_tap $? 3 'GetHealthcheckInfoV1' test.out

#- 4 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "aAboMa5n", "deployment": "8YfyBT8o", "inactiveTimeout": 99, "inviteTimeout": 24, "joinability": "KSr37QoX", "maxPlayers": 37, "minPlayers": 63, "name": "suuApmqA", "requestedRegions": ["ib3wpMN1", "gru87KyB", "VNCDWXWL"], "textChat": false, "type": "rfFAFELJ"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateConfigurationTemplateV1' test.out

#- 5 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetAllConfigurationTemplatesV1' test.out

#- 6 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'DLQapuuH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'EApjFyuO' \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "2AJGo0kd", "deployment": "wviBH54C", "inactiveTimeout": 27, "inviteTimeout": 64, "joinability": "qvDf4jiF", "maxPlayers": 24, "minPlayers": 73, "name": "ycLJ9wWe", "requestedRegions": ["ZcHKkwHm", "LgM3ncaj", "A2VlSgAs"], "textChat": false, "type": "e7YCvfwn"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'J0Lt7XoO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationTemplateV1' test.out

#- 9 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'CRIMPUwv' \
    --dsPodName 'Tgr3mfK0' \
    --fromTime 'FgzhNw30' \
    --gameMode 'u0FnWigZ' \
    --joinability 'ffK5SqV0' \
    --limit '32' \
    --matchPool 'XkRUGkwE' \
    --memberID 'J3VbM6PU' \
    --offset '4' \
    --order 'mQnzFj92' \
    --orderBy 'rz8IgKAV' \
    --sessionID '9YseuIaz' \
    --status 'vQOnnQNc' \
    --toTime 'E4am9Kp2' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryGameSessions' test.out

#- 10 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'X2ChAvlo' \
    --namespace $AB_NAMESPACE \
    --sessionId 'ygHzviWk' \
    --statusType 'hDKh1oPJ' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGameSessionMember' test.out

#- 11 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'hfanZ3gz' \
    --key 'abrolPbB' \
    --leaderID 'dpTCTkUk' \
    --limit '40' \
    --memberID '3OAIPjrl' \
    --memberStatus 'FgXkvOQF' \
    --offset '21' \
    --order 'JFbJcKxm' \
    --orderBy 'HiJfEsdv' \
    --value '56qhnej9' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryParties' test.out

#- 12 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"Qwt3vGUZ": {}, "0cdIxBXy": {}, "77Y6U0IV": {}}, "backfillTicketID": "2rbzY74v", "clientVersion": "wkNGJM77", "configurationName": "2TtLPVNw", "deployment": "nYGZNEiT", "inactiveTimeout": 27, "inviteTimeout": 19, "joinability": "Oz5AQNTl", "matchPool": "EKHlOMY2", "maxPlayers": 4, "minPlayers": 58, "requestedRegions": ["OBA0FC9W", "4mPEJ7QJ", "SJ758oDi"], "serverName": "13BYK4In", "teams": [{"UserIDs": ["UBkbPruI", "1JmmwC1z", "LiYXo3zf"]}, {"UserIDs": ["bd18qVRf", "aancpUJy", "1zSwHn2j"]}, {"UserIDs": ["jROtfHEd", "rAZkvcLP", "9Y42Cndt"]}], "textChat": true, "ticketIDs": ["jGbi6qZ3", "2tD5wz8C", "lW3LtmbU"], "type": "vcwnBXQV"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateGameSession' test.out

#- 13 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"TzKM2hwf": {}, "5NR9ZijA": {}, "wlj33BkU": {}}' \
    > test.out 2>&1
eval_tap $? 13 'PublicQueryGameSessions' test.out

#- 14 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'EmL40ipL' \
    > test.out 2>&1
eval_tap $? 14 'GetGameSessionByPodName' test.out

#- 15 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'qbINPbCj' \
    > test.out 2>&1
eval_tap $? 15 'GetGameSession' test.out

#- 16 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'WQB6AsHU' \
    --body '{"attributes": {"tO3r82yZ": {}, "6JKQGBhy": {}, "MQGblEmq": {}}, "backfillTicketID": "kxfEYOFV", "clientVersion": "RiT4M336", "deployment": "SFGAqZ3N", "inactiveTimeout": 17, "inviteTimeout": 69, "joinability": "2A47B49s", "matchPool": "NPi4fayb", "maxPlayers": 27, "minPlayers": 25, "requestedRegions": ["Gt6q0QsP", "X5fPaTni", "oyVYRhOd"], "teams": [{"UserIDs": ["Qo3SZG6m", "5HBM6kQK", "2vTE1SFf"]}, {"UserIDs": ["tuuLJNL9", "B2SskwEz", "tLJdXez2"]}, {"UserIDs": ["ZXbBCMJC", "e2Y0Gc1F", "1lE08XwL"]}], "ticketIDs": ["HTmDZ88p", "E6ERKwKI", "xQSF39gJ"], "type": "OIXSvz2g", "version": 81}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateGameSession' test.out

#- 17 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'da8CLrQy' \
    > test.out 2>&1
eval_tap $? 17 'DeleteGameSession' test.out

#- 18 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Aoy2XngU' \
    --body '{"attributes": {"jybx9ZOU": {}, "2tyBSVID": {}, "fD95XLD9": {}}, "backfillTicketID": "bojJN8an", "clientVersion": "zTRgCsWq", "deployment": "ljNhFprc", "inactiveTimeout": 50, "inviteTimeout": 81, "joinability": "t8eAIOjQ", "matchPool": "ItcIoWe4", "maxPlayers": 83, "minPlayers": 6, "requestedRegions": ["n3XCkuy4", "buerKVIl", "nxrMem68"], "teams": [{"UserIDs": ["iDmp33I2", "khC4JwYt", "n9uh4PTd"]}, {"UserIDs": ["Kl756HoH", "cctk6kxY", "5vECw6Et"]}, {"UserIDs": ["wu3P16w4", "c0BRMOJY", "2ejJOgpo"]}], "ticketIDs": ["21EhsgYU", "U1rlhUry", "ypp1YFgE"], "type": "kU8C9J9S", "version": 96}' \
    > test.out 2>&1
eval_tap $? 18 'PatchUpdateGameSession' test.out

#- 19 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'gfGA0GgG' \
    --body '{"userID": "a3u90SMz"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicGameSessionInvite' test.out

#- 20 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'mmmN6rGz' \
    > test.out 2>&1
eval_tap $? 20 'JoinGameSession' test.out

#- 21 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'tVtTTFqe' \
    > test.out 2>&1
eval_tap $? 21 'LeaveGameSession' test.out

#- 22 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'vxaBEGLE' \
    > test.out 2>&1
eval_tap $? 22 'PublicGameSessionReject' test.out

#- 23 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "DRNYqNHf"}' \
    > test.out 2>&1
eval_tap $? 23 'PublicPartyJoinCode' test.out

#- 24 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId '3bHcQJKH' \
    > test.out 2>&1
eval_tap $? 24 'PublicGetParty' test.out

#- 25 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'mkb2Sw6J' \
    --body '{"attributes": {"WaZJd3ca": {}, "AUGaK93t": {}, "udzknzOu": {}}, "inactiveTimeout": 73, "inviteTimeout": 76, "joinability": "hGC3wgAt", "maxPlayers": 84, "minPlayers": 48, "type": "FnIM7CSk", "version": 10}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateParty' test.out

#- 26 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'xmstY2e4' \
    --body '{"attributes": {"fzLwjStP": {}, "B2vgb35j": {}, "W0EgwfDu": {}}, "inactiveTimeout": 47, "inviteTimeout": 62, "joinability": "kM6VmjcN", "maxPlayers": 90, "minPlayers": 97, "type": "Qt1Fk7jL", "version": 94}' \
    > test.out 2>&1
eval_tap $? 26 'PublicPatchUpdateParty' test.out

#- 27 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '6QtpBaTS' \
    > test.out 2>&1
eval_tap $? 27 'PublicGeneratePartyCode' test.out

#- 28 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'O0q8IGxs' \
    > test.out 2>&1
eval_tap $? 28 'PublicRevokePartyCode' test.out

#- 29 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'ZZnyVO7g' \
    --body '{"userID": "XEeP7bhd"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicPartyInvite' test.out

#- 30 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'c9Ff3QDF' \
    --body '{"leaderID": "GfFsqF7t"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicPromotePartyLeader' test.out

#- 31 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'CvEd17Em' \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyJoin' test.out

#- 32 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'CV6BpUGm' \
    > test.out 2>&1
eval_tap $? 32 'PublicPartyLeave' test.out

#- 33 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 's0IH9q5p' \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyReject' test.out

#- 34 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'fbZtySf3' \
    --userId 'XqOhN1Js' \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyKick' test.out

#- 35 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"M9VMHPzG": {}, "wzJ2Xl5A": {}, "2iCBoXLT": {}}, "configurationName": "LHOhe36f", "inactiveTimeout": 83, "inviteTimeout": 60, "joinability": "kRw8zE2E", "maxPlayers": 27, "members": [{"ID": "SOdcK1d8", "PlatformID": "JVEJL4gN", "PlatformUserID": "tpCN93DO"}, {"ID": "YQ77XDHN", "PlatformID": "txb1EHC0", "PlatformUserID": "cOPeuuKM"}, {"ID": "WY3z9bWv", "PlatformID": "1vg9as0A", "PlatformUserID": "APnk8Pcl"}], "minPlayers": 97, "textChat": false, "type": "xHfB9cMk"}' \
    > test.out 2>&1
eval_tap $? 35 'PublicCreateParty' test.out

#- 36 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'L48GfjNq' \
    --orderBy 'Q7Qse8ur' \
    --status 'otbOGGko' \
    > test.out 2>&1
eval_tap $? 36 'PublicQueryMyGameSessions' test.out

#- 37 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'VJa39Qih' \
    --orderBy 'CqTLWxPx' \
    --status 'n1JSFqhH' \
    > test.out 2>&1
eval_tap $? 37 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE