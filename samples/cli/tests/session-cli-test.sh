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
    --body '{"clientVersion": "0GTBlgEj", "deployment": "PtN49ywK", "inactiveTimeout": 24, "inviteTimeout": 6, "joinability": "x6x3KPSl", "maxPlayers": 77, "minPlayers": 91, "name": "qCS7iqYi", "requestedRegions": ["GZVBVPnl", "MFkTABW2", "IJ04bZft"], "type": "v0y49B8C"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateConfigurationTemplateV1' test.out

#- 5 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetAllConfigurationTemplatesV1' test.out

#- 6 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'NoXJ7d2y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'OYFjCzcy' \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "cBbhfK3D", "deployment": "nBw0NFg8", "inactiveTimeout": 7, "inviteTimeout": 84, "joinability": "v6IclhYE", "maxPlayers": 41, "minPlayers": 92, "name": "R950SEN0", "requestedRegions": ["s8aisHN3", "mfZWihXE", "7Dbs9ZN4"], "type": "xqv2ppvq"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name '0dpuLBx5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationTemplateV1' test.out

#- 9 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'A0uDGekj' \
    --dsPodName 'ShvKFrQI' \
    --fromTime 'Pdv0b9Su' \
    --gameMode 'y3gdEmGe' \
    --joinability 'eMOz2Xbq' \
    --limit '94' \
    --matchPool 'yBnQKwIM' \
    --memberID '1JEQUDl7' \
    --offset '41' \
    --order 'FcbvGnfk' \
    --orderBy 'tBVHRI7B' \
    --sessionID 'KJ3XGh2Y' \
    --status 'X2FWi2X8' \
    --toTime 'enq4RjjH' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryGameSessions' test.out

#- 10 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'xP7tq6MU' \
    --namespace $AB_NAMESPACE \
    --sessionId 'oTROL5rk' \
    --statusType '6B3fjwVh' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGameSessionMember' test.out

#- 11 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability '8uI7AX23' \
    --key 'xMnky5aq' \
    --leaderID 'vlZ0eOlJ' \
    --limit '58' \
    --memberID 'JbqnuEvz' \
    --memberStatus 'kN26KPh5' \
    --offset '76' \
    --order 'rXsNzzp2' \
    --orderBy 'LZCeguck' \
    --value 'U1Z0wwZs' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryParties' test.out

#- 12 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"8JyqYnsy": {}, "WyO1Ox5V": {}, "x5Yv4rOn": {}}, "backfillTicketID": "CbfSemsJ", "clientVersion": "IEz016VK", "configurationName": "8y4OrbTJ", "deployment": "0Y75nufk", "inactiveTimeout": 12, "inviteTimeout": 92, "joinability": "NJmn1Bjm", "matchPool": "5aGHgnMR", "maxPlayers": 34, "minPlayers": 59, "requestedRegions": ["rwGpUlaa", "g4W91yf8", "oaTlQvvt"], "serverName": "rWCFDirE", "teams": [{"UserIDs": ["TKLgQBD6", "slwAfXfG", "RED3H70r"]}, {"UserIDs": ["fS4uWPzE", "BmT7nLHo", "yL7UMlw3"]}, {"UserIDs": ["od1T6Cax", "Zpihv844", "qVALaF2B"]}], "ticketIDs": ["jHKMBq92", "CwWiCWrF", "I7OfcnSK"], "type": "MYhPgMmu"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateGameSession' test.out

#- 13 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"9NhXqKTR": {}, "QCP0qcWV": {}, "EivfUW3Z": {}}' \
    > test.out 2>&1
eval_tap $? 13 'PublicQueryGameSessions' test.out

#- 14 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'kAUwwSB6' \
    > test.out 2>&1
eval_tap $? 14 'GetGameSessionByPodName' test.out

#- 15 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'jCMUeeBH' \
    > test.out 2>&1
eval_tap $? 15 'GetGameSession' test.out

#- 16 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ycQOhRht' \
    --body '{"attributes": {"xxFiL5AX": {}, "vPPj03ra": {}, "pOXXQyUH": {}}, "backfillTicketID": "IWy8MiMV", "clientVersion": "omiQ4Tcb", "deployment": "zgHU7hOY", "inactiveTimeout": 60, "inviteTimeout": 35, "joinability": "FPwHt8WX", "matchPool": "et3hWaxY", "maxPlayers": 70, "minPlayers": 4, "requestedRegions": ["6CjKsMh2", "MyLU9al9", "jTVRtUgm"], "teams": [{"UserIDs": ["sF7mBBFX", "KMD79qiF", "wVy9sZMD"]}, {"UserIDs": ["o65Lfw7v", "7kpQN8iU", "7R0xKJLz"]}, {"UserIDs": ["OlYi7lZx", "guxrbTng", "6bOI7I0S"]}], "ticketIDs": ["Rld8gLAp", "uWNZjbDE", "9Jln1xEp"], "type": "rYBxRCBE", "version": 68}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateGameSession' test.out

#- 17 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '4Nx6XRK1' \
    > test.out 2>&1
eval_tap $? 17 'DeleteGameSession' test.out

#- 18 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'BpFMyOdC' \
    --body '{"attributes": {"B0bu25hK": {}, "N8gfyku3": {}, "2IPHHv4g": {}}, "backfillTicketID": "7qnTSIBK", "clientVersion": "hS3MDMBM", "deployment": "INhhAxKH", "inactiveTimeout": 48, "inviteTimeout": 20, "joinability": "0n1x7Jhe", "matchPool": "t1wuhpWj", "maxPlayers": 57, "minPlayers": 83, "requestedRegions": ["h522jLtB", "ZUQmtoVO", "f8RNjYFv"], "teams": [{"UserIDs": ["UEo1M2BX", "tt4xHbKt", "cVp8NH2v"]}, {"UserIDs": ["VpXtQgE0", "pWpbNF29", "mfSrg6zS"]}, {"UserIDs": ["erOu9etK", "KVQts1wR", "BE4HEmzt"]}], "ticketIDs": ["6D46WSxD", "JlghFubX", "AggEp8se"], "type": "ly8P5LSg", "version": 43}' \
    > test.out 2>&1
eval_tap $? 18 'PatchUpdateGameSession' test.out

#- 19 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'eVMxbcVP' \
    --body '{"userID": "D96jbcMH"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicGameSessionInvite' test.out

#- 20 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'iGlTnR5u' \
    > test.out 2>&1
eval_tap $? 20 'JoinGameSession' test.out

#- 21 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'mR7tYRpx' \
    > test.out 2>&1
eval_tap $? 21 'LeaveGameSession' test.out

#- 22 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'SzCRcySU' \
    > test.out 2>&1
eval_tap $? 22 'PublicGameSessionReject' test.out

#- 23 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "np1sHX1m"}' \
    > test.out 2>&1
eval_tap $? 23 'PublicPartyJoinCode' test.out

#- 24 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'YGiwpqUy' \
    > test.out 2>&1
eval_tap $? 24 'PublicGetParty' test.out

#- 25 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '5HmKUTPs' \
    --body '{"attributes": {"N2HDcbZ6": {}, "HcqZSX9h": {}, "X0wZcPe9": {}}, "inactiveTimeout": 88, "inviteTimeout": 70, "joinability": "YaQy0PNx", "maxPlayers": 51, "minPlayers": 30, "type": "NzUyJMCg", "version": 66}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateParty' test.out

#- 26 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'lPBLPWHS' \
    --body '{"attributes": {"oqIWV9B9": {}, "FbgUM10y": {}, "Y5iuteOP": {}}, "inactiveTimeout": 94, "inviteTimeout": 41, "joinability": "mQnwKiCl", "maxPlayers": 76, "minPlayers": 8, "type": "9yTrI1iE", "version": 79}' \
    > test.out 2>&1
eval_tap $? 26 'PublicPatchUpdateParty' test.out

#- 27 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'k0kVc7tD' \
    > test.out 2>&1
eval_tap $? 27 'PublicGeneratePartyCode' test.out

#- 28 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'X3nNlcv2' \
    > test.out 2>&1
eval_tap $? 28 'PublicRevokePartyCode' test.out

#- 29 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'LHArLKrS' \
    --body '{"userID": "eEudlgQg"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicPartyInvite' test.out

#- 30 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'blq8veFk' \
    --body '{"leaderID": "akL9awO6"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicPromotePartyLeader' test.out

#- 31 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'upblJmnm' \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyJoin' test.out

#- 32 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'unTDIxy4' \
    > test.out 2>&1
eval_tap $? 32 'PublicPartyLeave' test.out

#- 33 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'c39oLPZN' \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyReject' test.out

#- 34 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId '4FuXv4FY' \
    --userId 'oLPkFoZQ' \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyKick' test.out

#- 35 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"glLXy4FQ": {}, "n4zy7p2b": {}, "KCj9r4gf": {}}, "configurationName": "LIbOEMFC", "inactiveTimeout": 91, "inviteTimeout": 76, "joinability": "FOX9K9hx", "maxPlayers": 18, "members": [{"ID": "3nIBteZK", "PlatformID": "YjlibyeO", "PlatformUserID": "CRBRvVqj"}, {"ID": "w9KBvVAC", "PlatformID": "Og5uXN9u", "PlatformUserID": "jV0QcxF8"}, {"ID": "LMOeL4fV", "PlatformID": "Tnjihm4G", "PlatformUserID": "SDKofTdN"}], "minPlayers": 92, "type": "h6ggWm51"}' \
    > test.out 2>&1
eval_tap $? 35 'PublicCreateParty' test.out

#- 36 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'Hwk8vGbc' \
    --orderBy 'weRe54DE' \
    --status 'Gxsz4zgA' \
    > test.out 2>&1
eval_tap $? 36 'PublicQueryMyGameSessions' test.out

#- 37 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'drBDWzti' \
    --orderBy 'apJagdZ3' \
    --status 'LV8nAYGp' \
    > test.out 2>&1
eval_tap $? 37 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE