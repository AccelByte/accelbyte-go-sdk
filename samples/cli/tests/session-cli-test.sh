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
echo "1..48"

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

#- 4 AdminGetDSMCConfigurationDefault
samples/cli/sample-apps Session adminGetDSMCConfigurationDefault \
    > test.out 2>&1
eval_tap $? 4 'AdminGetDSMCConfigurationDefault' test.out

#- 5 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "bHwD7CTN", "deployment": "uB2ZB2r1", "inactiveTimeout": 85, "inviteTimeout": 97, "joinability": "lmYquFAE", "maxPlayers": 4, "minPlayers": 90, "name": "j9wKxNN4", "persistent": true, "requestedRegions": ["HomgvZ7E", "6f1098rF", "ECBEVskK"], "textChat": false, "type": "Vtk2u1u8"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateConfigurationTemplateV1' test.out

#- 6 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAllConfigurationTemplatesV1' test.out

#- 7 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'AQFU0vcz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminGetConfigurationTemplateV1' test.out

#- 8 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'UQZ3M8r3' \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "m170mnk8", "deployment": "75KCHk4G", "inactiveTimeout": 54, "inviteTimeout": 1, "joinability": "RgzTTHwo", "maxPlayers": 91, "minPlayers": 91, "name": "DNexngHo", "persistent": true, "requestedRegions": ["mGfGgKVV", "IbVjOiDE", "cPZoiyDa"], "textChat": false, "type": "3YV5KiPM"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminUpdateConfigurationTemplateV1' test.out

#- 9 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'DPZi9aX1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminDeleteConfigurationTemplateV1' test.out

#- 10 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetDSMCConfiguration' test.out

#- 11 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminSyncDSMCConfiguration' test.out

#- 12 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName '6frs1BPG' \
    --dsPodName 'MY6Q0oSr' \
    --fromTime 'UWpfyuUL' \
    --gameMode '0pdHb6DH' \
    --isPersistent 'fJArrcho' \
    --isSoftDeleted '8GotnMfu' \
    --joinability 'ql1uqSr4' \
    --limit '75' \
    --matchPool 'hF4DAXrB' \
    --memberID 'bzssDnB7' \
    --offset '65' \
    --order 'vpsbnc4I' \
    --orderBy '8QGFORrI' \
    --sessionID 'ed8kwu2X' \
    --status 'Ewtxqhln' \
    --statusV2 'IxyQbYzt' \
    --toTime 'NZYEMh9x' \
    > test.out 2>&1
eval_tap $? 12 'AdminQueryGameSessions' test.out

#- 13 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["CbpO3dat", "9DpgHTd3", "Gkf3lpVN"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteBulkGameSessions' test.out

#- 14 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'HFj92sYn' \
    --namespace $AB_NAMESPACE \
    --sessionId 'cpxa2DPJ' \
    --statusType 'lpG36znN' \
    > test.out 2>&1
eval_tap $? 14 'AdminUpdateGameSessionMember' test.out

#- 15 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'w4NGkmzZ' \
    --key 'u1iqmZzJ' \
    --leaderID 'ZBYIm9Ve' \
    --limit '92' \
    --memberID 'bZjadXV9' \
    --memberStatus 'DcKSUTdC' \
    --offset '57' \
    --order 'HwGh0nzi' \
    --orderBy 'wnpu1qJ5' \
    --value 'rfLfhbU5' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryParties' test.out

#- 16 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'zG4hKTJy' \
    > test.out 2>&1
eval_tap $? 16 'AdminQueryPlayerAttributes' test.out

#- 17 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'DKgls7vf' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerAttributes' test.out

#- 18 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"CILUGktK": {}, "z1E3oj6W": {}, "iHbDiTRe": {}}, "backfillTicketID": "aS1VhgRb", "clientVersion": "3ojpSbHJ", "configurationName": "wphY2YH0", "deployment": "eNxLoZHx", "inactiveTimeout": 4, "inviteTimeout": 57, "joinability": "7HO0agLC", "matchPool": "2qfaiMdj", "maxPlayers": 20, "minPlayers": 90, "requestedRegions": ["wzLtCtlz", "xeDRfYv2", "jzxmNY1d"], "serverName": "stQQkdw9", "teams": [{"UserIDs": ["6qstf5Gf", "UGbOVsSY", "HMogr9Yj"], "parties": [{"partyID": "YDk6W5PR", "userIDs": ["18grrWgo", "27k8WVLv", "0ZTIHRc2"]}, {"partyID": "hMtRzHlZ", "userIDs": ["Sns5HN6y", "Xz2nw4YE", "z6evRhOC"]}, {"partyID": "ubnWtKIl", "userIDs": ["UwKfQ2ec", "XrrMeBO6", "SHOYtOam"]}]}, {"UserIDs": ["0aDG7snx", "XzlyS8vC", "9pyJ5tW5"], "parties": [{"partyID": "MktiUIiW", "userIDs": ["oVIRjitL", "dvRVpB1G", "zM3ONUom"]}, {"partyID": "IElCdoTq", "userIDs": ["EkdXmUvZ", "fZCYXTFt", "JhgFZCNt"]}, {"partyID": "kZP6SGZj", "userIDs": ["RGHXZwrM", "nERNfvZb", "UPWBc1Wm"]}]}, {"UserIDs": ["wnDnVK89", "Dc2FEBNV", "twXz6t6d"], "parties": [{"partyID": "2jCO5M94", "userIDs": ["zyxqFS3I", "BO2tp5Eq", "i7WD84Pi"]}, {"partyID": "1gACarWu", "userIDs": ["CsUHoKdw", "n62PkUNs", "5bIFzKoh"]}, {"partyID": "Gnh9zh1U", "userIDs": ["iaRMzmXL", "cM29187e", "FwGdabGa"]}]}], "textChat": false, "ticketIDs": ["LmVoeRB5", "wGYZOdWM", "aHZPsfeI"], "type": "ukuElB5w"}' \
    > test.out 2>&1
eval_tap $? 18 'CreateGameSession' test.out

#- 19 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"UMk4YWC2": {}, "d4VqXzNa": {}, "L9PIta9E": {}}' \
    > test.out 2>&1
eval_tap $? 19 'PublicQueryGameSessions' test.out

#- 20 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'JolX2am7' \
    > test.out 2>&1
eval_tap $? 20 'GetGameSessionByPodName' test.out

#- 21 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '7mOElgGD' \
    > test.out 2>&1
eval_tap $? 21 'GetGameSession' test.out

#- 22 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'itkrSaEt' \
    --body '{"attributes": {"sQ31hwsR": {}, "7lTrdezk": {}, "Znw4zS8T": {}}, "backfillTicketID": "vH3TIpd3", "clientVersion": "AkbNUTjB", "deployment": "0QhLldd4", "inactiveTimeout": 83, "inviteTimeout": 23, "joinability": "qVwYPrGn", "matchPool": "vlc29sp3", "maxPlayers": 27, "minPlayers": 66, "requestedRegions": ["M78ZgfAX", "6cSWatqQ", "hkmjUu0J"], "teams": [{"UserIDs": ["4qGp2Tdo", "F7TUxVrq", "HNnAMyzI"], "parties": [{"partyID": "blYEEXD2", "userIDs": ["sqrBN8pG", "jf2s7WqA", "rLULjX5M"]}, {"partyID": "t6QWELLx", "userIDs": ["dpAfZOPJ", "WLl3Nfw8", "tYjlEJM8"]}, {"partyID": "xR43kXn0", "userIDs": ["bAgBiMnu", "Nd5eCPdi", "2rnt0F1m"]}]}, {"UserIDs": ["lQc4Bn9v", "4tZQ7Rc5", "WU9knIrG"], "parties": [{"partyID": "Rq5Bicza", "userIDs": ["Xl4eeb3G", "P5rlFF6p", "U4WibfBl"]}, {"partyID": "u2riRyva", "userIDs": ["1w5SMUBv", "mTqI1jDv", "ChB1lwq7"]}, {"partyID": "v519hWEY", "userIDs": ["9GuYGUgG", "iYy7RBrT", "Kj7UZHFq"]}]}, {"UserIDs": ["uaTJEaPv", "sCclM2nB", "vf23fn5o"], "parties": [{"partyID": "e2tqAVGN", "userIDs": ["e9aiCrDa", "SG2AyfAI", "bWD9pAFb"]}, {"partyID": "7Hm1eMdv", "userIDs": ["JFNipSir", "8ujPuv18", "s5d8P2oX"]}, {"partyID": "q9PyQ8Pp", "userIDs": ["6QifQdSO", "rf6tnvBP", "xKIkTJPk"]}]}], "ticketIDs": ["DQD7WDXx", "bdENrTdw", "RmQ8RUvK"], "type": "vQxCGCGi", "version": 49}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateGameSession' test.out

#- 23 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Nyq7MHWc' \
    > test.out 2>&1
eval_tap $? 23 'DeleteGameSession' test.out

#- 24 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'XEUDnSpa' \
    --body '{"attributes": {"curMVPFU": {}, "NwksYDZc": {}, "n5m0qEUx": {}}, "backfillTicketID": "JNCwmdZr", "clientVersion": "aCmycebr", "deployment": "3UjSWzv1", "inactiveTimeout": 58, "inviteTimeout": 72, "joinability": "zgqlKxJJ", "matchPool": "2lRwW1VV", "maxPlayers": 46, "minPlayers": 77, "requestedRegions": ["ThWdmvL3", "46bWw1OZ", "V1qR98fa"], "teams": [{"UserIDs": ["uGXnxxF9", "EYp3Fo0a", "2T62mWKa"], "parties": [{"partyID": "mylFVhOc", "userIDs": ["e70mXZsa", "chfqKq2n", "N4tSQl3r"]}, {"partyID": "FneDQcCi", "userIDs": ["OAGytw00", "SUNxt2w8", "Dm6ugugK"]}, {"partyID": "GV1BhHuv", "userIDs": ["rovCDQOY", "CNmfC5RS", "wgWBoqjk"]}]}, {"UserIDs": ["iyhDBNGJ", "3Ya6W0nv", "vnJMICys"], "parties": [{"partyID": "F69bmArU", "userIDs": ["vb1mN9fi", "p4ykLGlK", "24ed7CAs"]}, {"partyID": "NrfHGAKk", "userIDs": ["LdUrN2bp", "neIxt9oh", "Ug2CqPqh"]}, {"partyID": "F3j73IQA", "userIDs": ["Nc1w2NWM", "4aNtSRoQ", "THSERhzS"]}]}, {"UserIDs": ["xrPYccWY", "xsjvIlwg", "hYaNzNot"], "parties": [{"partyID": "XX4iK0G2", "userIDs": ["vdNfQgEx", "VW8qn5BT", "ey4j9hUX"]}, {"partyID": "SA7FSv1F", "userIDs": ["fSrZY74r", "KcTdFaQj", "pN4FLy1B"]}, {"partyID": "ZfvmFvoW", "userIDs": ["0gqhfDAZ", "bpL8a3pu", "REOZhfWK"]}]}], "ticketIDs": ["XAGXNheI", "voe18ZLz", "aP1TXKZs"], "type": "ZzpQmoLj", "version": 94}' \
    > test.out 2>&1
eval_tap $? 24 'PatchUpdateGameSession' test.out

#- 25 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'FxB3xxzp' \
    --body '{"backfillTicketID": "rDdMfLUz"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateGameSessionBackfillTicketID' test.out

#- 26 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'GHbZWbFe' \
    --body '{"userID": "UInVVn0d"}' \
    > test.out 2>&1
eval_tap $? 26 'PublicGameSessionInvite' test.out

#- 27 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'xIKdSuD6' \
    > test.out 2>&1
eval_tap $? 27 'JoinGameSession' test.out

#- 28 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'uPSX7jvX' \
    > test.out 2>&1
eval_tap $? 28 'LeaveGameSession' test.out

#- 29 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'yP1kW520' \
    > test.out 2>&1
eval_tap $? 29 'PublicGameSessionReject' test.out

#- 30 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'HShCsLna' \
    --body '{"additionalMembers": [{"partyID": "msyrHC1s", "userIDs": ["umobpWUQ", "zelfeLax", "xWVFo8Xa"]}, {"partyID": "SoYkCNgl", "userIDs": ["03JFUwAG", "4WBiEGp5", "LMYclvUC"]}, {"partyID": "3xKQkE0Y", "userIDs": ["cb9WPIKI", "DiZ59FN5", "7dvy7Rvl"]}], "proposedTeams": [{"UserIDs": ["ttirzq5f", "XpRGIeKO", "r7jxspJk"], "parties": [{"partyID": "JkHXIAKL", "userIDs": ["ta0XcX0E", "7aB3AEIn", "OhluQ1fj"]}, {"partyID": "gBEpd6bn", "userIDs": ["rVAm00w4", "SyIZO99R", "4JUbfrBA"]}, {"partyID": "gQ44hBcK", "userIDs": ["mONsG1D6", "mLqa7HEw", "qWlSqRRv"]}]}, {"UserIDs": ["J1cfbjoD", "O0voIKQQ", "NH0B0dBS"], "parties": [{"partyID": "TOAXxomk", "userIDs": ["EQVWyQwC", "POwFeyff", "DlzPeD1e"]}, {"partyID": "37mhiBNu", "userIDs": ["8c4KUGHE", "icjyIajX", "FX1elleX"]}, {"partyID": "ZPi2kxO1", "userIDs": ["uOwLwhTE", "TjrzBoYp", "QVRFknM5"]}]}, {"UserIDs": ["koNYYoC3", "HFb5SQDO", "LaZwBgSa"], "parties": [{"partyID": "QghhdV7h", "userIDs": ["TOmu1FTj", "Tv1Md84l", "SiVORz74"]}, {"partyID": "y1iJRwfp", "userIDs": ["mjZYuiMT", "6zp4cEDS", "miKMrGYk"]}, {"partyID": "FXmDAGgG", "userIDs": ["19cqG92U", "NIaY1BNO", "xyovApbM"]}]}], "version": 37}' \
    > test.out 2>&1
eval_tap $? 30 'AppendTeamGameSession' test.out

#- 31 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Hfoq3Jfj"}' \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyJoinCode' test.out

#- 32 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'RJG6fnWD' \
    > test.out 2>&1
eval_tap $? 32 'PublicGetParty' test.out

#- 33 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'R8W4ljC0' \
    --body '{"attributes": {"7mhu417L": {}, "CgwOxAm5": {}, "JidXO7pv": {}}, "inactiveTimeout": 18, "inviteTimeout": 20, "joinability": "JFt2dOFa", "maxPlayers": 98, "minPlayers": 53, "type": "NxV8qA98", "version": 63}' \
    > test.out 2>&1
eval_tap $? 33 'PublicUpdateParty' test.out

#- 34 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'u6Zbr2Qf' \
    --body '{"attributes": {"n7vBLb2l": {}, "8UJUE4Ol": {}, "pdgqdwOM": {}}, "inactiveTimeout": 56, "inviteTimeout": 54, "joinability": "xyFRtDlM", "maxPlayers": 9, "minPlayers": 85, "type": "jHGTZusU", "version": 85}' \
    > test.out 2>&1
eval_tap $? 34 'PublicPatchUpdateParty' test.out

#- 35 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'MVbtj4iJ' \
    > test.out 2>&1
eval_tap $? 35 'PublicGeneratePartyCode' test.out

#- 36 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'nB00T5xJ' \
    > test.out 2>&1
eval_tap $? 36 'PublicRevokePartyCode' test.out

#- 37 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'QVYPdjgw' \
    --body '{"userID": "Ejf1EPni"}' \
    > test.out 2>&1
eval_tap $? 37 'PublicPartyInvite' test.out

#- 38 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'AcXioOHO' \
    --body '{"leaderID": "QHOPpoy1"}' \
    > test.out 2>&1
eval_tap $? 38 'PublicPromotePartyLeader' test.out

#- 39 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'fW0YThM9' \
    > test.out 2>&1
eval_tap $? 39 'PublicPartyJoin' test.out

#- 40 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'lhnIYYfP' \
    > test.out 2>&1
eval_tap $? 40 'PublicPartyLeave' test.out

#- 41 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'bVkcEhy8' \
    > test.out 2>&1
eval_tap $? 41 'PublicPartyReject' test.out

#- 42 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'w4e1QHp0' \
    --userId 'BW4If1Pi' \
    > test.out 2>&1
eval_tap $? 42 'PublicPartyKick' test.out

#- 43 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"pJoRutUr": {}, "VffRYyDb": {}, "aHFt4QO8": {}}, "configurationName": "0jrxFTOh", "inactiveTimeout": 60, "inviteTimeout": 8, "joinability": "ByRcsaz0", "maxPlayers": 78, "members": [{"ID": "8FuH39EP", "PlatformID": "5fAe2llG", "PlatformUserID": "qePRBDD1"}, {"ID": "zqiXuNqx", "PlatformID": "3EJJuLW4", "PlatformUserID": "ntyMjBqD"}, {"ID": "3b4f00Tb", "PlatformID": "jP2yx7s1", "PlatformUserID": "OD6fmJWY"}], "minPlayers": 22, "textChat": true, "type": "UlPiIMlA"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicCreateParty' test.out

#- 44 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'PublicGetPlayerAttributes' test.out

#- 45 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "data": {"Ok64ztBs": {}, "AbYAi3Wl": {}, "BSZ6COh1": {}}, "platforms": [{"name": "MjTL86rj", "userID": "VYtJCxwb"}, {"name": "wS7Kwrd1", "userID": "W5ZX6YhG"}, {"name": "28v0dh9j", "userID": "MXHX3WnC"}]}' \
    > test.out 2>&1
eval_tap $? 45 'PublicStorePlayerAttributes' test.out

#- 46 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'PublicDeletePlayerAttributes' test.out

#- 47 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'ho97NW10' \
    --orderBy 'xTI1KAOy' \
    --status 'Jy2CGWzU' \
    > test.out 2>&1
eval_tap $? 47 'PublicQueryMyGameSessions' test.out

#- 48 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'Q0nhMuNh' \
    --orderBy 'pXydt7rD' \
    --status 'CCTLBaJt' \
    > test.out 2>&1
eval_tap $? 48 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE