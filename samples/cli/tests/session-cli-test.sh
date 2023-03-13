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
echo "1..43"

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
    --body '{"clientVersion": "EAxcVpFr", "deployment": "ttufHIRd", "inactiveTimeout": 68, "inviteTimeout": 59, "joinability": "9UzVRiXb", "maxPlayers": 33, "minPlayers": 1, "name": "lAw7r6W2", "persistent": false, "persistentTTL": 69, "requestedRegions": ["tQG0h5JA", "av5kRa62", "WopBJHPt"], "textChat": false, "type": "MTwE6I56"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateConfigurationTemplateV1' test.out

#- 5 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetAllConfigurationTemplatesV1' test.out

#- 6 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'IaRDBXxy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'aNoMR6hk' \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "spInrAip", "deployment": "6lyzSxwE", "inactiveTimeout": 24, "inviteTimeout": 52, "joinability": "FHHdgs21", "maxPlayers": 73, "minPlayers": 81, "name": "ub74CUkN", "requestedRegions": ["mKJfh5pU", "kHODpoMF", "78NY4YkH"], "textChat": true, "type": "5tWEIC32"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'ogW7olvb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationTemplateV1' test.out

#- 9 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'TgrhRTcP' \
    --dsPodName 'iSuL0Sly' \
    --fromTime '6XM4OI18' \
    --gameMode 'mAQLnzjM' \
    --isSoftDeleted 'f8GZ2WBZ' \
    --joinability 'qxYG3aRE' \
    --limit '55' \
    --matchPool 's1PXhT5F' \
    --memberID 'vdiRilZ7' \
    --offset '30' \
    --order 'i7pKxR8d' \
    --orderBy 'l0zRVW4E' \
    --sessionID 'ZG9m0Xcg' \
    --status 'GVbMqSsz' \
    --statusV2 'E8GHavj7' \
    --toTime 'AorKsxwk' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryGameSessions' test.out

#- 10 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'osAVerXp' \
    --namespace $AB_NAMESPACE \
    --sessionId 'c1C8XfwH' \
    --statusType 'uKeb9l3r' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGameSessionMember' test.out

#- 11 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'GN9A3sNm' \
    --key '84hddSpH' \
    --leaderID 't0P7MIIR' \
    --limit '42' \
    --memberID 'CkyF6C7d' \
    --memberStatus 'uuyZ0GhD' \
    --offset '29' \
    --order 'FdxLzFQN' \
    --orderBy '05MYzYiK' \
    --value 'We5dNRlj' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryParties' test.out

#- 12 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'v7IPrDQQ' \
    > test.out 2>&1
eval_tap $? 12 'AdminQueryPlayerAttributes' test.out

#- 13 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'Rgat0Sev' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerAttributes' test.out

#- 14 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"kLGMS0ly": {}, "uI9a2I9u": {}, "6Vpbsx5w": {}}, "backfillTicketID": "8hqUI06U", "clientVersion": "pOXGSLmC", "configurationName": "VuHOPlLl", "deployment": "kvR8sKgn", "inactiveTimeout": 41, "inviteTimeout": 94, "joinability": "RkgghGoY", "matchPool": "upD391C2", "maxPlayers": 33, "minPlayers": 59, "persistent": true, "persistentTTL": 85, "requestedRegions": ["SCwGrncq", "mLtjQHAf", "8TgoNm03"], "serverName": "VLisV6zw", "teams": [{"UserIDs": ["Puo3td6T", "C6I3lMjG", "SWN2laRl"], "parties": [{"partyID": "xfcjHfYa", "userIDs": ["kUCTqGkE", "7wcWfDsl", "pJSqGAXQ"]}, {"partyID": "0yYoNRKd", "userIDs": ["3IL5TAQ6", "iiPlSC2u", "E4o5Vwdo"]}, {"partyID": "3fePqIJA", "userIDs": ["8IHtrkmu", "0hpDDWVA", "la2l5BYN"]}]}, {"UserIDs": ["tIuS5S5X", "UdjsoqwG", "yzzWi9gw"], "parties": [{"partyID": "QYv7t1o7", "userIDs": ["TTr1Dmrh", "Zv15T7qu", "IOvBMcaY"]}, {"partyID": "mvCkGZ5d", "userIDs": ["AgqxpBFm", "aLoxozr6", "wfNPX2bO"]}, {"partyID": "ItRMvqtl", "userIDs": ["B2jJCSQT", "279ZZPYG", "u0rdlgdW"]}]}, {"UserIDs": ["yOtXi3ch", "oQrpOsDB", "U5SepjCh"], "parties": [{"partyID": "B3V0v52D", "userIDs": ["lym6puQ2", "3xoJ8aeC", "naLpUKp4"]}, {"partyID": "4YUDjasW", "userIDs": ["IPUvmEej", "tGeoyIPa", "8ZRrvjj7"]}, {"partyID": "il35MXbN", "userIDs": ["9oCMNqq9", "8SjTvhZN", "kSQ70D0H"]}]}], "textChat": true, "ticketIDs": ["BXksUC9b", "6i5lZC9x", "v32e8c5c"], "type": "sSovoqsZ"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateGameSession' test.out

#- 15 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"NBdte9ND": {}, "UPVJf6c2": {}, "Z0QZxfgP": {}}' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessions' test.out

#- 16 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'ubTDIHrv' \
    > test.out 2>&1
eval_tap $? 16 'GetGameSessionByPodName' test.out

#- 17 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'qAThuwjR' \
    > test.out 2>&1
eval_tap $? 17 'GetGameSession' test.out

#- 18 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'HpKKTlmV' \
    --body '{"attributes": {"r9XuoJbR": {}, "FQSKVPHb": {}, "n4Xxtu7L": {}}, "backfillTicketID": "QRENjEEz", "clientVersion": "tx1WsYSi", "deployment": "Zqan0nSB", "inactiveTimeout": 73, "inviteTimeout": 36, "joinability": "9YBHqaTH", "matchPool": "eKtW18iG", "maxPlayers": 8, "minPlayers": 9, "requestedRegions": ["Ulc9d9so", "gWa24CKN", "S0GqVvUf"], "teams": [{"UserIDs": ["HQvsHXNU", "Ne4mhgo5", "QB65lSAi"], "parties": [{"partyID": "YnNjkfZr", "userIDs": ["QvGgbLdL", "sFzHkBMr", "1yrOMlNF"]}, {"partyID": "SrUEirnj", "userIDs": ["X9fDmIbe", "ZxzfTcyi", "uATus9hs"]}, {"partyID": "fpFDcSDG", "userIDs": ["8aMVGLiB", "NrDjqoxc", "wgGLXpUL"]}]}, {"UserIDs": ["4pp2ncYA", "HdNzDmeI", "P6rOvDz9"], "parties": [{"partyID": "KOsb392k", "userIDs": ["6YmJFfRB", "yjlBiuFM", "3FIoVk8T"]}, {"partyID": "3GpAnkCm", "userIDs": ["BUqg2SCn", "qntX9y1a", "ZSWMiVi1"]}, {"partyID": "0sG6vxkf", "userIDs": ["UcmqRRbc", "eJ5i0EeD", "xOgBnhhq"]}]}, {"UserIDs": ["ElIaDml4", "8wdNFLTm", "5T50x9WT"], "parties": [{"partyID": "0GfH2rtO", "userIDs": ["a4EXsXzO", "XQAk4mqr", "xzTtuLl4"]}, {"partyID": "XlbGL8QO", "userIDs": ["xtjzm8y2", "wNhmwoYZ", "yI4EFZKB"]}, {"partyID": "cYrCEAE7", "userIDs": ["WIsfmx40", "NLRc6m8h", "eKnWhzfe"]}]}], "ticketIDs": ["2NubeoKF", "eIaFQCYo", "DPICpndu"], "type": "EEQlULdJ", "version": 51}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateGameSession' test.out

#- 19 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'n0hEoRCA' \
    > test.out 2>&1
eval_tap $? 19 'DeleteGameSession' test.out

#- 20 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'cf80zfFy' \
    --body '{"attributes": {"abWAgIUX": {}, "iI07A68e": {}, "aqC2J9jy": {}}, "backfillTicketID": "EW6GLbc0", "clientVersion": "NaKDUL3s", "deployment": "a13lk1dQ", "inactiveTimeout": 56, "inviteTimeout": 68, "joinability": "bit0VWn3", "matchPool": "CO39PXDN", "maxPlayers": 48, "minPlayers": 95, "requestedRegions": ["tXgeO3Fg", "kXhjDzaQ", "Y3snn2Zk"], "teams": [{"UserIDs": ["P7cFdP43", "e5dC9XIB", "udfZgrbH"], "parties": [{"partyID": "DIDm4hMz", "userIDs": ["F4Txoden", "SrUTvfqU", "0bfoMm5c"]}, {"partyID": "TtFWbotQ", "userIDs": ["yXJRcQWs", "mqPNs92e", "pxk0i8Vx"]}, {"partyID": "sZNereSv", "userIDs": ["f9699mCE", "HThUJkET", "AsSp7gh4"]}]}, {"UserIDs": ["TeUTkOkA", "YfJB8AT9", "t4Tv207Y"], "parties": [{"partyID": "2QD3oD5f", "userIDs": ["LCr3OOlX", "Vv8ZGF7u", "YnGzpipN"]}, {"partyID": "DigNJma1", "userIDs": ["MbqqZtfN", "Wql4nmwA", "ft4gqkNN"]}, {"partyID": "lWkD9eOz", "userIDs": ["iYRFOn0j", "JLHC9Lxh", "vNXTwGBC"]}]}, {"UserIDs": ["tohLtl9Z", "uhytm5UD", "rT6QXCs5"], "parties": [{"partyID": "SPBbRPZT", "userIDs": ["F6oQAXVG", "7tnsZg5Q", "gXjvyGJP"]}, {"partyID": "N4eXbJE5", "userIDs": ["Vs2Gcyom", "QoIXimBJ", "ehyxlNsj"]}, {"partyID": "UgxBkF6w", "userIDs": ["FPoJeQed", "iogEhhM2", "rIizGdKv"]}]}], "ticketIDs": ["OPdq5xrg", "xSmy1DN9", "LFkYW5DQ"], "type": "yj4bj5Ro", "version": 29}' \
    > test.out 2>&1
eval_tap $? 20 'PatchUpdateGameSession' test.out

#- 21 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'ogaKt2uj' \
    --body '{"backfillTicketID": "QSa3Zdb6"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateGameSessionBackfillTicketID' test.out

#- 22 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId '5UXmy0Zp' \
    --body '{"userID": "6iIaTIKU"}' \
    > test.out 2>&1
eval_tap $? 22 'PublicGameSessionInvite' test.out

#- 23 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'kmkk9QM0' \
    > test.out 2>&1
eval_tap $? 23 'JoinGameSession' test.out

#- 24 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'NBMA9ORx' \
    > test.out 2>&1
eval_tap $? 24 'LeaveGameSession' test.out

#- 25 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'pzwLR2AK' \
    > test.out 2>&1
eval_tap $? 25 'PublicGameSessionReject' test.out

#- 26 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6eXUGPJs"}' \
    > test.out 2>&1
eval_tap $? 26 'PublicPartyJoinCode' test.out

#- 27 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'w1fiP80G' \
    > test.out 2>&1
eval_tap $? 27 'PublicGetParty' test.out

#- 28 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '9Pclxcft' \
    --body '{"attributes": {"2ulIJzPy": {}, "rVEiOG4U": {}, "cqsuGKHh": {}}, "inactiveTimeout": 78, "inviteTimeout": 69, "joinability": "RWLVd3Dl", "maxPlayers": 16, "minPlayers": 85, "type": "LuIpomM8", "version": 38}' \
    > test.out 2>&1
eval_tap $? 28 'PublicUpdateParty' test.out

#- 29 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'dlwuUccE' \
    --body '{"attributes": {"536ugBp3": {}, "HBvepnDC": {}, "jgyJlXe3": {}}, "inactiveTimeout": 25, "inviteTimeout": 13, "joinability": "nx4V709x", "maxPlayers": 2, "minPlayers": 42, "type": "nGezKsDw", "version": 66}' \
    > test.out 2>&1
eval_tap $? 29 'PublicPatchUpdateParty' test.out

#- 30 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '24T805tV' \
    > test.out 2>&1
eval_tap $? 30 'PublicGeneratePartyCode' test.out

#- 31 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'g8JqU0jZ' \
    > test.out 2>&1
eval_tap $? 31 'PublicRevokePartyCode' test.out

#- 32 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'pjvsugAO' \
    --body '{"userID": "S7u8RiWy"}' \
    > test.out 2>&1
eval_tap $? 32 'PublicPartyInvite' test.out

#- 33 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'erCSa8SR' \
    --body '{"leaderID": "gwsAj1ik"}' \
    > test.out 2>&1
eval_tap $? 33 'PublicPromotePartyLeader' test.out

#- 34 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '1jglaDXT' \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyJoin' test.out

#- 35 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'vKCWwNTA' \
    > test.out 2>&1
eval_tap $? 35 'PublicPartyLeave' test.out

#- 36 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'hd2wrS0u' \
    > test.out 2>&1
eval_tap $? 36 'PublicPartyReject' test.out

#- 37 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'Pdjhdinp' \
    --userId 'ng5BLy8w' \
    > test.out 2>&1
eval_tap $? 37 'PublicPartyKick' test.out

#- 38 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"bhMssAHj": {}, "apIkY9Rf": {}, "4wP57dBZ": {}}, "configurationName": "NR88YbCt", "inactiveTimeout": 25, "inviteTimeout": 7, "joinability": "Ky8M9zVr", "maxPlayers": 20, "members": [{"ID": "BdHb2slt", "PlatformID": "71B1SmZp", "PlatformUserID": "2JZp50Cn"}, {"ID": "Pb71ORYc", "PlatformID": "mQbTU5JX", "PlatformUserID": "8ccLjMXJ"}, {"ID": "Rk0eaKQD", "PlatformID": "OJvrTefg", "PlatformUserID": "lSs6g4iY"}], "minPlayers": 42, "textChat": true, "type": "2aCNYIWe"}' \
    > test.out 2>&1
eval_tap $? 38 'PublicCreateParty' test.out

#- 39 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'PublicGetPlayerAttributes' test.out

#- 40 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "data": {"tuUjjt9l": {}, "IMGql5El": {}, "Ea9EIIlG": {}}, "platforms": [{"name": "cHB3CfR3", "userID": "ncDlwi3v"}, {"name": "3MFFJ1Ke", "userID": "sKoELCpo"}, {"name": "bBEG8X64", "userID": "5xpdXpai"}]}' \
    > test.out 2>&1
eval_tap $? 40 'PublicStorePlayerAttributes' test.out

#- 41 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'PublicDeletePlayerAttributes' test.out

#- 42 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order '0rYaT5hO' \
    --orderBy 'Pjaf3H0t' \
    --status 'YighU0VU' \
    > test.out 2>&1
eval_tap $? 42 'PublicQueryMyGameSessions' test.out

#- 43 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'fcYHJbBf' \
    --orderBy 'AKSiPW3V' \
    --status 'gsZXiR1D' \
    > test.out 2>&1
eval_tap $? 43 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE