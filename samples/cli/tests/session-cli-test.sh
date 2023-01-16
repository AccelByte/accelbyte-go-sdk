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
    --body '{"clientVersion": "wcXVZB7n", "deployment": "XxiuPoaD", "inactiveTimeout": 89, "inviteTimeout": 14, "joinability": "p9ixnuuU", "maxPlayers": 31, "minPlayers": 57, "name": "xtKofjGG", "requestedRegions": ["8ZfXw7V5", "qaayt8Pj", "60xPe1Hb"], "textChat": false, "type": "4AlvDshN"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateConfigurationTemplateV1' test.out

#- 5 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetAllConfigurationTemplatesV1' test.out

#- 6 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'X8nlxyY2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'gs2ujOCO' \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "9tpAK1A2", "deployment": "vMY8OGAE", "inactiveTimeout": 3, "inviteTimeout": 59, "joinability": "K9dIVVXg", "maxPlayers": 88, "minPlayers": 52, "name": "QrOyi6KC", "requestedRegions": ["ubJEDBe8", "6LUy0Qhu", "VbWoBqT8"], "textChat": false, "type": "MYPvJfoV"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'zgGHsSq2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationTemplateV1' test.out

#- 9 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'nfo8Qfq7' \
    --dsPodName 'QDLrkSl2' \
    --fromTime 'xtTxvFDj' \
    --gameMode 'pfkQJGKA' \
    --joinability 'wS9j7nJ3' \
    --limit '36' \
    --matchPool 'BRLN6iE3' \
    --memberID 'wFqgxuUD' \
    --offset '32' \
    --order '2VVyUB1p' \
    --orderBy 'aAOOU7FD' \
    --sessionID 'kEUx8NMd' \
    --status 'ssbpr3Bq' \
    --statusV2 'MDJo7k1m' \
    --toTime '2hPqxIfJ' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryGameSessions' test.out

#- 10 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'h6aODeJl' \
    --namespace $AB_NAMESPACE \
    --sessionId 'IuEvOnwt' \
    --statusType 'RNP5kBdd' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGameSessionMember' test.out

#- 11 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability '2TUniS9x' \
    --key 'qtUIroNf' \
    --leaderID 'EcVUqaZe' \
    --limit '70' \
    --memberID '4jkEmncH' \
    --memberStatus 'goBP5pXC' \
    --offset '79' \
    --order 'W9pPtCO7' \
    --orderBy 'MahAdMUr' \
    --value 'Jg9LBlvN' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryParties' test.out

#- 12 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"UsDNJTzU": {}, "AKJDsQmW": {}, "pwGD9RKe": {}}, "backfillTicketID": "bLFEZ9LW", "clientVersion": "nJloKsLy", "configurationName": "AKVbv7Di", "deployment": "hAituOoT", "inactiveTimeout": 47, "inviteTimeout": 26, "joinability": "Kp11LP4N", "matchPool": "fbOzoCus", "maxPlayers": 100, "minPlayers": 26, "requestedRegions": ["hAJomr6L", "jEtjHz7a", "dxKv8F5G"], "serverName": "q1ifeeFj", "teams": [{"UserIDs": ["QPjTyRCl", "SsT3cwx7", "kJVpFjuC"], "parties": [{"partyID": "YHhAFffy", "userIDs": ["dvDnh5YX", "x0SH36xJ", "4ntVtEdK"]}, {"partyID": "MgpWiKOI", "userIDs": ["iMuyfEO0", "UoHdA158", "4W8jBFcl"]}, {"partyID": "1PyR2167", "userIDs": ["LjahCNnD", "c4MRavTM", "ReP3GyVN"]}]}, {"UserIDs": ["SyCUMdog", "PfP5EtPb", "wPi0T4qw"], "parties": [{"partyID": "5JFFuVNO", "userIDs": ["9jBzZopp", "DpVfvbyC", "Cpey5WgY"]}, {"partyID": "tU3VixR6", "userIDs": ["Srv3Hodx", "5PqXh8Cj", "7jc9BEsM"]}, {"partyID": "6VIffCQ1", "userIDs": ["kGX7Vmuu", "KtgHwzKU", "CO0KXNoC"]}]}, {"UserIDs": ["6hm8LkOL", "PxfduZ1w", "nbTvumWw"], "parties": [{"partyID": "zX0369Xq", "userIDs": ["v5gxyk8U", "bLYHHI0d", "5DYqhH7I"]}, {"partyID": "qw6EyOUK", "userIDs": ["PuTpLVuF", "u2J7oRnt", "qigJpVWa"]}, {"partyID": "lEWxnJwy", "userIDs": ["tBURM9Pc", "evgSGQLf", "L1iz1pU8"]}]}], "textChat": false, "ticketIDs": ["HOJKsuys", "1ftO1i9q", "RCynKUM5"], "type": "zDAGcWyE"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateGameSession' test.out

#- 13 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"vyufBk9V": {}, "SlqBEfCv": {}, "UMOxLpqY": {}}' \
    > test.out 2>&1
eval_tap $? 13 'PublicQueryGameSessions' test.out

#- 14 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName '8d8D1dJC' \
    > test.out 2>&1
eval_tap $? 14 'GetGameSessionByPodName' test.out

#- 15 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'K7yYqzyx' \
    > test.out 2>&1
eval_tap $? 15 'GetGameSession' test.out

#- 16 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'MAck6u5X' \
    --body '{"attributes": {"ON3CsIrp": {}, "gZsCvU55": {}, "OsOm7l5J": {}}, "backfillTicketID": "joSGe7D9", "clientVersion": "0yujH79T", "deployment": "Ix0UzPgX", "inactiveTimeout": 34, "inviteTimeout": 95, "joinability": "pVrU8KCy", "matchPool": "AMMBTPuS", "maxPlayers": 36, "minPlayers": 49, "requestedRegions": ["Zry2hRp0", "ekCrc7VX", "zp7UG0vX"], "teams": [{"UserIDs": ["xJZt4YOt", "z2avXCRN", "2QsdKJiV"], "parties": [{"partyID": "cbl3iGXe", "userIDs": ["aluhzSIU", "H0W4hUgm", "YgguRcLZ"]}, {"partyID": "6bXeHBVq", "userIDs": ["sd9bF6lv", "nmD0AQW2", "4ECzEgu2"]}, {"partyID": "okKU85ow", "userIDs": ["mJIzhQxh", "9Ia4MhFT", "BC8e92aM"]}]}, {"UserIDs": ["1fVzUriy", "DZUDYkNi", "dwrTJmNp"], "parties": [{"partyID": "Dz1GjBu0", "userIDs": ["46UUoMS6", "yncyHnjj", "sf2DNd7l"]}, {"partyID": "FIYzLmLN", "userIDs": ["pOichAQM", "OurSKYC0", "1HK67jjV"]}, {"partyID": "LbMOccwT", "userIDs": ["0nZHBKMo", "jAOMGIG6", "8Wb9do3z"]}]}, {"UserIDs": ["f3fXFdMq", "t1H5IlyH", "WVJbbSn4"], "parties": [{"partyID": "j5ZgW5hs", "userIDs": ["Xuxw239V", "wOTDBVAy", "MRNVezf3"]}, {"partyID": "errw6q02", "userIDs": ["16hEJbje", "tuZXUbQp", "iIzYDjIR"]}, {"partyID": "nP92Haxi", "userIDs": ["Yku4WY5E", "B41rsLFD", "Ln278UbE"]}]}], "ticketIDs": ["veKYWccV", "t0TkHria", "h7vQ9xYe"], "type": "svViqni2", "version": 45}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateGameSession' test.out

#- 17 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'bvnnYSVz' \
    > test.out 2>&1
eval_tap $? 17 'DeleteGameSession' test.out

#- 18 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZxnFVaJz' \
    --body '{"attributes": {"WgGW2LL8": {}, "wzE4IQjg": {}, "GwZN7eMy": {}}, "backfillTicketID": "ShjXGZcB", "clientVersion": "KNTn4L1A", "deployment": "o1yTcLOO", "inactiveTimeout": 73, "inviteTimeout": 61, "joinability": "FN3SjGU1", "matchPool": "PO71NoGe", "maxPlayers": 46, "minPlayers": 96, "requestedRegions": ["dubS8A8R", "ojYt3IOI", "P7W6kd2Y"], "teams": [{"UserIDs": ["kBatFCpE", "ZXOe0B2L", "y12Z7UMT"], "parties": [{"partyID": "VPS3YKZH", "userIDs": ["xcfUPkGr", "R2YZuchd", "tlYLM4R3"]}, {"partyID": "6US7z0cF", "userIDs": ["i5IbWZpY", "al9LOExz", "EtRLHSdG"]}, {"partyID": "lFGp5VeC", "userIDs": ["EWDZSv4Z", "Ugu1RDiN", "wG0vj3G3"]}]}, {"UserIDs": ["UBOQondD", "RNksIrdh", "njmeJGXy"], "parties": [{"partyID": "0fgxrlUx", "userIDs": ["b9PLK4pm", "tGyzkZYn", "s17jI2HJ"]}, {"partyID": "kY1YeodF", "userIDs": ["LPfpraVG", "TqkGksr7", "qwpij1js"]}, {"partyID": "BDoSyG6q", "userIDs": ["eJv8ECLV", "Y0DZRZM5", "x5gVMjpD"]}]}, {"UserIDs": ["xLSrTLz9", "gbtj3X6N", "0Ykc9Hot"], "parties": [{"partyID": "RyWrWqLu", "userIDs": ["06QhlvwM", "2twv9qog", "GYWVeJP8"]}, {"partyID": "kn6jaXNi", "userIDs": ["JjLGxb3J", "Q2kEvyMu", "EkTc7Mt2"]}, {"partyID": "lXOcns7Z", "userIDs": ["dMhroES8", "DtAvocum", "C376Cxtx"]}]}], "ticketIDs": ["saGfajcp", "0eMK8RzY", "SO3WCK5P"], "type": "VNhPW9JC", "version": 39}' \
    > test.out 2>&1
eval_tap $? 18 'PatchUpdateGameSession' test.out

#- 19 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'xj6ve5qg' \
    --body '{"userID": "77Ffv6EY"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicGameSessionInvite' test.out

#- 20 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'WJ1jIOiC' \
    > test.out 2>&1
eval_tap $? 20 'JoinGameSession' test.out

#- 21 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'faUtBRo7' \
    > test.out 2>&1
eval_tap $? 21 'LeaveGameSession' test.out

#- 22 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'I43C8JXt' \
    > test.out 2>&1
eval_tap $? 22 'PublicGameSessionReject' test.out

#- 23 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "uWe7id7B"}' \
    > test.out 2>&1
eval_tap $? 23 'PublicPartyJoinCode' test.out

#- 24 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId '1D7gVuJg' \
    > test.out 2>&1
eval_tap $? 24 'PublicGetParty' test.out

#- 25 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'fzqrLFdW' \
    --body '{"attributes": {"tjJDw8jq": {}, "9FdFh7ek": {}, "u7lzsSjE": {}}, "inactiveTimeout": 8, "inviteTimeout": 40, "joinability": "J0mo3RuJ", "maxPlayers": 19, "minPlayers": 67, "type": "v2BAQQrb", "version": 70}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateParty' test.out

#- 26 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'hDn3CPpv' \
    --body '{"attributes": {"STFQteXK": {}, "Vk7BGKGg": {}, "YoNWkNSA": {}}, "inactiveTimeout": 75, "inviteTimeout": 23, "joinability": "jVkyaAS6", "maxPlayers": 11, "minPlayers": 69, "type": "wJ2oPku1", "version": 27}' \
    > test.out 2>&1
eval_tap $? 26 'PublicPatchUpdateParty' test.out

#- 27 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'THl4hZtG' \
    > test.out 2>&1
eval_tap $? 27 'PublicGeneratePartyCode' test.out

#- 28 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '1UPEXg4v' \
    > test.out 2>&1
eval_tap $? 28 'PublicRevokePartyCode' test.out

#- 29 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'ZXRpMqiy' \
    --body '{"userID": "i95CGTDi"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicPartyInvite' test.out

#- 30 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'b8qfJGED' \
    --body '{"leaderID": "VvRBoI91"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicPromotePartyLeader' test.out

#- 31 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'IyLihxtV' \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyJoin' test.out

#- 32 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'GrDVTveK' \
    > test.out 2>&1
eval_tap $? 32 'PublicPartyLeave' test.out

#- 33 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'JMHS65aR' \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyReject' test.out

#- 34 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'yqb62qKo' \
    --userId 'nzvVK8nA' \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyKick' test.out

#- 35 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"tvGrhdlo": {}, "oTlIN7WZ": {}, "NnYZvt1t": {}}, "configurationName": "xRtzN3zx", "inactiveTimeout": 47, "inviteTimeout": 6, "joinability": "sV84hiIr", "maxPlayers": 23, "members": [{"ID": "qSjsc9Eo", "PlatformID": "jtNS1sOa", "PlatformUserID": "5PqWjNef"}, {"ID": "B6qKZtA5", "PlatformID": "uWiXciYv", "PlatformUserID": "JnLAH12w"}, {"ID": "w4ky1yC0", "PlatformID": "TwNfhNRE", "PlatformUserID": "M7KAoqNr"}], "minPlayers": 80, "textChat": false, "type": "ftlCSmCx"}' \
    > test.out 2>&1
eval_tap $? 35 'PublicCreateParty' test.out

#- 36 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'KPu9WBDj' \
    --orderBy 'HtOoSzHq' \
    --status '4RCA1yAq' \
    > test.out 2>&1
eval_tap $? 36 'PublicQueryMyGameSessions' test.out

#- 37 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '2Y4CABG9' \
    --orderBy '5cE216z5' \
    --status 'Ln78sJoP' \
    > test.out 2>&1
eval_tap $? 37 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE