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
echo "1..42"

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
    --body '{"clientVersion": "kKJ9DqLB", "deployment": "Vzb4xqAB", "inactiveTimeout": 92, "inviteTimeout": 53, "joinability": "GBoMH6r3", "maxPlayers": 54, "minPlayers": 35, "name": "sRS3oxjg", "requestedRegions": ["e2GzivTR", "e9PvwEob", "boONrACr"], "textChat": false, "type": "SnEnfxyr"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateConfigurationTemplateV1' test.out

#- 5 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetAllConfigurationTemplatesV1' test.out

#- 6 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'XEh2JHte' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'exrOy415' \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "bmBDIDLC", "deployment": "crhA8rJb", "inactiveTimeout": 7, "inviteTimeout": 49, "joinability": "HspssjcQ", "maxPlayers": 10, "minPlayers": 91, "name": "i7pVzgsA", "requestedRegions": ["DEJp2o3p", "q2h8dqrZ", "zDVM1cLB"], "textChat": false, "type": "l3YnXMEf"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'kH3TRMpO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationTemplateV1' test.out

#- 9 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName '9IedNDcg' \
    --dsPodName '3D1rCnYR' \
    --fromTime 'yazD63NT' \
    --gameMode 'w8Uf5usd' \
    --isSoftDeleted 'rxFZwfv2' \
    --joinability 'Ocf73R9v' \
    --limit '46' \
    --matchPool 'nDk1B0q4' \
    --memberID 'aPmEgDyR' \
    --offset '24' \
    --order 'APaSKvPZ' \
    --orderBy 'S7X9x1Lp' \
    --sessionID 'MUL9rqd8' \
    --status 'p36Bz5z3' \
    --statusV2 'p7WPeCR6' \
    --toTime '8oEIEvmj' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryGameSessions' test.out

#- 10 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'fEM2zYJW' \
    --namespace $AB_NAMESPACE \
    --sessionId 'BilSWA1C' \
    --statusType 'LNA78zSD' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGameSessionMember' test.out

#- 11 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'SPR1Dx5z' \
    --key 'KHvMGxCI' \
    --leaderID '1lpWbwpW' \
    --limit '12' \
    --memberID '6C90ZW6h' \
    --memberStatus 'YLflOu9r' \
    --offset '71' \
    --order '421EkJdn' \
    --orderBy 'fRbsghbo' \
    --value 'WLFwKGcr' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryParties' test.out

#- 12 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'JjssBIeJ' \
    > test.out 2>&1
eval_tap $? 12 'AdminQueryPlayerAttributes' test.out

#- 13 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'vklHeRl9' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerAttributes' test.out

#- 14 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"vlKrISHR": {}, "wowHQtAn": {}, "uOJC84nr": {}}, "backfillTicketID": "wSsctDmU", "clientVersion": "IdSfaAw8", "configurationName": "yjOKodeA", "deployment": "hfBFQEiX", "inactiveTimeout": 72, "inviteTimeout": 29, "joinability": "H4i1gb9v", "matchPool": "ICg09dfS", "maxPlayers": 2, "minPlayers": 45, "requestedRegions": ["YpuNavMu", "FVUhFnDM", "zTXEx3GO"], "serverName": "Co4feFXI", "teams": [{"UserIDs": ["nhYfk9Uo", "l4BzIcn4", "KqvdmSAB"], "parties": [{"partyID": "mUWUtBAC", "userIDs": ["MZDb9ow5", "Px0ar69A", "tdsk1kGi"]}, {"partyID": "Y1znAs8E", "userIDs": ["CyoeEVfw", "UMIqcj3y", "CURA2RoF"]}, {"partyID": "146QPxLd", "userIDs": ["ylP8s6Vm", "QJIM1Twt", "oNWqJGDS"]}]}, {"UserIDs": ["6FYwOwMN", "7jQOUzWq", "BSvebaMf"], "parties": [{"partyID": "5jABLyft", "userIDs": ["x7Tk4WKs", "SgtODNAj", "qfk9XiSL"]}, {"partyID": "ofg4q2Hz", "userIDs": ["RY8jNJIf", "MbKc8Dy4", "5KqaoAJz"]}, {"partyID": "fcK4v6Au", "userIDs": ["JAGa6t1l", "N950pCQp", "2o0SceYd"]}]}, {"UserIDs": ["MFRvsR5w", "FSF7a34L", "gwsR8enJ"], "parties": [{"partyID": "fTaJkSfS", "userIDs": ["uu0bw3aC", "4ef02hc2", "7Oyc6PxD"]}, {"partyID": "FbHh4iKn", "userIDs": ["XdX9XHat", "u1iV9uof", "2wecM2d7"]}, {"partyID": "6C6UmcYw", "userIDs": ["W72y4uaJ", "GANZKchU", "qEz4DFiZ"]}]}], "textChat": false, "ticketIDs": ["T8YPZ1xi", "AX7V5reE", "5UGefiMp"], "type": "dHAgppGr"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateGameSession' test.out

#- 15 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"dZ6OvWlt": {}, "wZeZJmIN": {}, "PKey7HTO": {}}' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessions' test.out

#- 16 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'ctrD382q' \
    > test.out 2>&1
eval_tap $? 16 'GetGameSessionByPodName' test.out

#- 17 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'MGoNgAyG' \
    > test.out 2>&1
eval_tap $? 17 'GetGameSession' test.out

#- 18 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '6exxrJv1' \
    --body '{"attributes": {"GvUwK8l6": {}, "ylRqBEAr": {}, "qpn48GNm": {}}, "backfillTicketID": "93u6dGc2", "clientVersion": "ASG0g2mY", "deployment": "0CU7Xa7x", "inactiveTimeout": 8, "inviteTimeout": 7, "joinability": "HZjXpT5j", "matchPool": "XO8uojft", "maxPlayers": 19, "minPlayers": 20, "requestedRegions": ["GwKGGVH0", "WmxyT6nV", "xI1rPs7T"], "teams": [{"UserIDs": ["p5g7Gz5X", "TzkeyinP", "O6gEfHzv"], "parties": [{"partyID": "tosDG6li", "userIDs": ["JTDU0IBl", "Cu7hwRpJ", "B6cUOf51"]}, {"partyID": "FDfhYjer", "userIDs": ["OROiA4Rp", "tMu0W4vw", "M1l7MB1Q"]}, {"partyID": "lld4Ek6v", "userIDs": ["NHY1FrC4", "DTbgTejb", "URpHOXYt"]}]}, {"UserIDs": ["PtTi3Xw9", "macXFbvc", "g7naiGw3"], "parties": [{"partyID": "IIattVJE", "userIDs": ["WKLEHo9R", "JWKMhA8u", "TDzXLfP7"]}, {"partyID": "3BOnOLP8", "userIDs": ["fhdS921e", "xTRAfSKt", "UND7ZmXj"]}, {"partyID": "DBVlMZpM", "userIDs": ["KeODfRix", "k72JTHXS", "7eH5EAf0"]}]}, {"UserIDs": ["1O7ftUWm", "bANqI8Bk", "2hQkVc6w"], "parties": [{"partyID": "MI1Rq63f", "userIDs": ["duYhgW2s", "2Y1Xz45f", "trssnC7I"]}, {"partyID": "PBfDXRPH", "userIDs": ["T0gFB03S", "JGsWI2G7", "YFDn0TQk"]}, {"partyID": "FVwOozkH", "userIDs": ["r5EL5llN", "6rfhH4QN", "2hGhjUhc"]}]}], "ticketIDs": ["uEwjKH8a", "RBZILZBg", "p85r3b9s"], "type": "BVbsScy5", "version": 84}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateGameSession' test.out

#- 19 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'JxXP2DxY' \
    > test.out 2>&1
eval_tap $? 19 'DeleteGameSession' test.out

#- 20 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '9b2Y5WOp' \
    --body '{"attributes": {"Q3iPk0NJ": {}, "ug1914Ra": {}, "xtvwIJ5v": {}}, "backfillTicketID": "2V0J89FE", "clientVersion": "EaBTGs21", "deployment": "sLkVCpuV", "inactiveTimeout": 15, "inviteTimeout": 54, "joinability": "BtbhvFMk", "matchPool": "omF4ROPp", "maxPlayers": 12, "minPlayers": 71, "requestedRegions": ["mg0MNFtR", "Cj8v62jL", "xq0RvgSt"], "teams": [{"UserIDs": ["XerzH3tE", "oMl2z9zK", "BAdr0ewR"], "parties": [{"partyID": "CFRvuThq", "userIDs": ["Rhpk32MK", "GKnsVGxp", "eQEPVct4"]}, {"partyID": "6rKvezRG", "userIDs": ["jnAYE6tA", "68yi6SMx", "5m3YXtCG"]}, {"partyID": "H5Ust4ru", "userIDs": ["ChYjjMj9", "NFVpT0NC", "VwW61f86"]}]}, {"UserIDs": ["Ku3g6DMy", "xYw3AEyz", "dlDQCt2b"], "parties": [{"partyID": "01uG2aEC", "userIDs": ["VtOStImj", "i9hONJqX", "ZI5gnkPP"]}, {"partyID": "QZzvawMz", "userIDs": ["mcHTOrCo", "hup0XJzy", "g7iorS3n"]}, {"partyID": "HEPj0Ijf", "userIDs": ["c4phVBOQ", "xRGxQEr8", "OhgxDZ19"]}]}, {"UserIDs": ["dHPgL7IA", "iVYKKy85", "bFo40bP5"], "parties": [{"partyID": "g1pDoJBZ", "userIDs": ["yyrh5Mp5", "7AxrudOf", "bX4CkIja"]}, {"partyID": "ODKUEfF0", "userIDs": ["0svW4U9l", "j18vWdFp", "dfAK5eH9"]}, {"partyID": "0tRgupjO", "userIDs": ["2lHGrLJI", "0hrQigix", "qg9utjeh"]}]}], "ticketIDs": ["6OrxiRWs", "DHo6OCnK", "zhikXMxy"], "type": "oDCiGekN", "version": 89}' \
    > test.out 2>&1
eval_tap $? 20 'PatchUpdateGameSession' test.out

#- 21 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'Zxv88SXi' \
    --body '{"userID": "zgM02VJU"}' \
    > test.out 2>&1
eval_tap $? 21 'PublicGameSessionInvite' test.out

#- 22 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'oyuYlrj0' \
    > test.out 2>&1
eval_tap $? 22 'JoinGameSession' test.out

#- 23 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Wmuwvin9' \
    > test.out 2>&1
eval_tap $? 23 'LeaveGameSession' test.out

#- 24 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'Gy2YcURM' \
    > test.out 2>&1
eval_tap $? 24 'PublicGameSessionReject' test.out

#- 25 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "dyyhivHT"}' \
    > test.out 2>&1
eval_tap $? 25 'PublicPartyJoinCode' test.out

#- 26 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'w2MjOcYR' \
    > test.out 2>&1
eval_tap $? 26 'PublicGetParty' test.out

#- 27 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'yrnSYo01' \
    --body '{"attributes": {"euoUnhg4": {}, "Vvot7lAW": {}, "mI9kiUaE": {}}, "inactiveTimeout": 23, "inviteTimeout": 69, "joinability": "4QEa0EPR", "maxPlayers": 14, "minPlayers": 53, "type": "JUcEYTMh", "version": 92}' \
    > test.out 2>&1
eval_tap $? 27 'PublicUpdateParty' test.out

#- 28 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'CQ4n6WkU' \
    --body '{"attributes": {"8g6o1oty": {}, "w9MHjI4b": {}, "quNOklUd": {}}, "inactiveTimeout": 69, "inviteTimeout": 4, "joinability": "CbSitadO", "maxPlayers": 10, "minPlayers": 34, "type": "4Ab5mQF0", "version": 62}' \
    > test.out 2>&1
eval_tap $? 28 'PublicPatchUpdateParty' test.out

#- 29 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'dNuFCVIS' \
    > test.out 2>&1
eval_tap $? 29 'PublicGeneratePartyCode' test.out

#- 30 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'LjvFD6iw' \
    > test.out 2>&1
eval_tap $? 30 'PublicRevokePartyCode' test.out

#- 31 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'wu3j6zEZ' \
    --body '{"userID": "KZCWKNDG"}' \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyInvite' test.out

#- 32 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'EM2Gxu7K' \
    --body '{"leaderID": "0e5O0oPy"}' \
    > test.out 2>&1
eval_tap $? 32 'PublicPromotePartyLeader' test.out

#- 33 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'vAKwnuRr' \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyJoin' test.out

#- 34 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '9nEQRO1V' \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyLeave' test.out

#- 35 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'afJeYWGa' \
    > test.out 2>&1
eval_tap $? 35 'PublicPartyReject' test.out

#- 36 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'uCuDwLaa' \
    --userId 'i7tPhusu' \
    > test.out 2>&1
eval_tap $? 36 'PublicPartyKick' test.out

#- 37 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"M07tEHGq": {}, "HcuYgpoY": {}, "7qkSxFxo": {}}, "configurationName": "re3qB5nS", "inactiveTimeout": 7, "inviteTimeout": 10, "joinability": "Gc9Rj6Oi", "maxPlayers": 66, "members": [{"ID": "IqUWqm36", "PlatformID": "4Kpr7Iv0", "PlatformUserID": "2uYuVFCa"}, {"ID": "0oEnzoAH", "PlatformID": "IbccgeZQ", "PlatformUserID": "Xl0yZaBY"}, {"ID": "bWtlMw3n", "PlatformID": "14X4lQRG", "PlatformUserID": "oOoGLp2I"}], "minPlayers": 54, "textChat": true, "type": "lUIX8kFm"}' \
    > test.out 2>&1
eval_tap $? 37 'PublicCreateParty' test.out

#- 38 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'PublicGetPlayerAttributes' test.out

#- 39 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "data": {"624vlG5y": {}, "S08xmQDa": {}, "dL9aafNp": {}}, "platforms": [{"name": "QgHcH3ho", "userID": "9fAa96GC"}, {"name": "Kl89k3mG", "userID": "J5Thg1jt"}, {"name": "WGlDtY7H", "userID": "c25PO8q8"}]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicStorePlayerAttributes' test.out

#- 40 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'PublicDeletePlayerAttributes' test.out

#- 41 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'A8PDECJn' \
    --orderBy 'uIzXl3Kv' \
    --status 'V1C0JIzZ' \
    > test.out 2>&1
eval_tap $? 41 'PublicQueryMyGameSessions' test.out

#- 42 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'kxt8KLhd' \
    --orderBy 'y3DR9CBG' \
    --status 'f6wGnl5F' \
    > test.out 2>&1
eval_tap $? 42 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE