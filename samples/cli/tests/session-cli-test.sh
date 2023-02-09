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
    --body '{"clientVersion": "AK8sRpVl", "deployment": "9ttbK2JS", "inactiveTimeout": 65, "inviteTimeout": 15, "joinability": "DSWwIJm4", "maxPlayers": 35, "minPlayers": 56, "name": "A2m10Lfv", "requestedRegions": ["rw3ZLBJm", "M87n7Bfo", "658fGJbh"], "textChat": false, "type": "BhX25uIe"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateConfigurationTemplateV1' test.out

#- 5 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetAllConfigurationTemplatesV1' test.out

#- 6 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'zQr5jIKb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'qk6Zvq0z' \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "41ZPwbP1", "deployment": "JiDQhAoy", "inactiveTimeout": 79, "inviteTimeout": 45, "joinability": "5dTkXvH9", "maxPlayers": 87, "minPlayers": 13, "name": "3up1AIyO", "requestedRegions": ["XXmLKcU6", "WgbeckXN", "DJtr7Juv"], "textChat": false, "type": "6riodYP4"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'J9vbxXRO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationTemplateV1' test.out

#- 9 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'GAQTKRc7' \
    --dsPodName 'J59CXpzg' \
    --fromTime '3kl5fYiY' \
    --gameMode 'PWaOuJMl' \
    --isSoftDeleted 'l8RkOS0v' \
    --joinability 'IVYXXeRB' \
    --limit '68' \
    --matchPool 'X4RuTY5Q' \
    --memberID '4vKOGgp8' \
    --offset '52' \
    --order 'K5DBnfIN' \
    --orderBy '9MAwfiIq' \
    --sessionID 'p6q5DLyp' \
    --status 'iyWqeRmL' \
    --statusV2 'nmL6lJX2' \
    --toTime 'g818mmv2' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryGameSessions' test.out

#- 10 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'vTS7bjhr' \
    --namespace $AB_NAMESPACE \
    --sessionId 'EkV7cwdA' \
    --statusType 'Hu9y0T0j' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGameSessionMember' test.out

#- 11 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'aYNIJhYJ' \
    --key 'yvNDyBKb' \
    --leaderID '9Syx6qJE' \
    --limit '37' \
    --memberID 'IHGxl3ua' \
    --memberStatus '7EjUNFUp' \
    --offset '41' \
    --order 'py0mpiR7' \
    --orderBy 'MPf5RPaD' \
    --value '7yn8MMNL' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryParties' test.out

#- 12 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'VkkiiXBk' \
    > test.out 2>&1
eval_tap $? 12 'AdminQueryPlayerAttributes' test.out

#- 13 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'Kuh2IAlN' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerAttributes' test.out

#- 14 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"S5HGUHL6": {}, "kvPhL7F6": {}, "chatsL0O": {}}, "backfillTicketID": "kN2lYJdN", "clientVersion": "sjKNh6Bq", "configurationName": "QLXUt398", "deployment": "4DOpLnQk", "inactiveTimeout": 6, "inviteTimeout": 99, "joinability": "VgLOFNiz", "matchPool": "vxDQVpvN", "maxPlayers": 86, "minPlayers": 6, "requestedRegions": ["pWqeimeR", "8Wr023GN", "mtO2wl97"], "serverName": "DzVjQTab", "teams": [{"UserIDs": ["NTxSK4HF", "gxqMriCY", "qW2IyqYP"], "parties": [{"partyID": "sqziL4M7", "userIDs": ["XYuJ8Vjw", "a6KTKa9z", "QQVB2UTu"]}, {"partyID": "eHwQ0lVU", "userIDs": ["glKM9K3E", "OaJgoX7Z", "QExRL6qo"]}, {"partyID": "qVuTFijG", "userIDs": ["9iHlT3Mx", "CZlMK6Oz", "5m80Ur4N"]}]}, {"UserIDs": ["P0E8dA90", "7hDSvHsj", "AqYWZYjY"], "parties": [{"partyID": "Ww3UzrYw", "userIDs": ["1qmc9SE6", "SWp42zgx", "BdERIQ06"]}, {"partyID": "uOEy0lNG", "userIDs": ["q0obevB1", "PEqZAeNx", "fw1UaVXc"]}, {"partyID": "6F0YFtm9", "userIDs": ["oWhsW8zn", "YLDLO7oG", "CNtNmMVe"]}]}, {"UserIDs": ["1j82et71", "QsGDVvcw", "jMnBTbFZ"], "parties": [{"partyID": "O2BOmoyc", "userIDs": ["0kG6mrp4", "fuLa5Jeb", "AclBkNKL"]}, {"partyID": "VWylEAGZ", "userIDs": ["inF15zof", "HqyY7rNz", "k7kuldgJ"]}, {"partyID": "I9f1VoL5", "userIDs": ["E7tZf2zk", "JTlM8QJW", "2ysr9EBN"]}]}], "textChat": true, "ticketIDs": ["ZrjCLs4b", "ZZsI32LG", "nSErGJHi"], "type": "ekNSLwIY"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateGameSession' test.out

#- 15 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"igu8o23M": {}, "GY3INUB8": {}, "OLOmmCLU": {}}' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessions' test.out

#- 16 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'FtCRxOvC' \
    > test.out 2>&1
eval_tap $? 16 'GetGameSessionByPodName' test.out

#- 17 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'QFMmqV2M' \
    > test.out 2>&1
eval_tap $? 17 'GetGameSession' test.out

#- 18 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'CJkJsinp' \
    --body '{"attributes": {"JfedpHaP": {}, "iRU5EZla": {}, "y8YLNkLF": {}}, "backfillTicketID": "ZLQF6lOW", "clientVersion": "kZH8rc6V", "deployment": "j0pCOe1v", "inactiveTimeout": 15, "inviteTimeout": 24, "joinability": "he8L7hCA", "matchPool": "TNRB2O88", "maxPlayers": 87, "minPlayers": 90, "requestedRegions": ["3cuEs1PC", "Gf8RMZvo", "FWaslgwH"], "teams": [{"UserIDs": ["VMFWuEIV", "uXVlaUsj", "8cFyEQSj"], "parties": [{"partyID": "RHCmu6Qj", "userIDs": ["bxaeDfaM", "RkDb4xsK", "MVl9TdKx"]}, {"partyID": "sPkVuViV", "userIDs": ["oqIe4nWW", "M8TJzojs", "buIzBFBP"]}, {"partyID": "QvvjwjaB", "userIDs": ["IXNtSWwa", "iB8MSgyR", "IQcx7cyC"]}]}, {"UserIDs": ["m5aTUYFq", "zkZoip7o", "x1igDB2r"], "parties": [{"partyID": "oEyfxMK0", "userIDs": ["TF9tHH7l", "N3p1qnOi", "0Ska3jRP"]}, {"partyID": "jLDbu5oW", "userIDs": ["SAsT0Ioa", "QEfm3h6w", "gU8sFXNg"]}, {"partyID": "SDlGigf3", "userIDs": ["tSWbvwbc", "ToQqGip6", "pr7WcNkE"]}]}, {"UserIDs": ["FDBSoXPh", "Hbe3hHC9", "igVAqTOG"], "parties": [{"partyID": "kB5lQ2Sq", "userIDs": ["cpESRMnk", "RRr3IQBj", "9oQzBPa1"]}, {"partyID": "dm4K8XLI", "userIDs": ["gX4o0vMa", "uiIw9G1O", "I48Meg6a"]}, {"partyID": "j1qHRtIu", "userIDs": ["LXrg1uA5", "TNvIoMJk", "Voy5u5oB"]}]}], "ticketIDs": ["z2Q8gO0R", "wByQJOkX", "EicOOEbV"], "type": "CoeSXL9m", "version": 44}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateGameSession' test.out

#- 19 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'zIoG5Kjg' \
    > test.out 2>&1
eval_tap $? 19 'DeleteGameSession' test.out

#- 20 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'psCHMBw1' \
    --body '{"attributes": {"9NW8sXjt": {}, "CmoV0pjK": {}, "S0MjhX5z": {}}, "backfillTicketID": "Oq1MR20n", "clientVersion": "yWl2Zt0f", "deployment": "vqFFiCrm", "inactiveTimeout": 85, "inviteTimeout": 38, "joinability": "91qT08EC", "matchPool": "He74tGka", "maxPlayers": 62, "minPlayers": 83, "requestedRegions": ["wnQOn1oy", "5CwThkEh", "IkEyNIvg"], "teams": [{"UserIDs": ["FO3exzjE", "HNusHzCa", "VY6ci8oS"], "parties": [{"partyID": "71e2oQIs", "userIDs": ["qhsOtPK1", "z72o9YrA", "EYNWCafX"]}, {"partyID": "Q2RA1vwG", "userIDs": ["l5eGCPBV", "RbW3Nijf", "vA1cdoJK"]}, {"partyID": "8vNZhL1Q", "userIDs": ["dEx0fTiP", "Y1VoYeWY", "Keqhwbbr"]}]}, {"UserIDs": ["5scJorJH", "j7xlNZog", "0OZIHrOt"], "parties": [{"partyID": "nSZrsigc", "userIDs": ["dYDaV8Xc", "Nr5H2luj", "p8mH9yyX"]}, {"partyID": "EidGWZt7", "userIDs": ["4QpAcF8H", "DccyXf8a", "EfdgOngO"]}, {"partyID": "ORenOrbz", "userIDs": ["4dumDcWO", "cNc0145G", "XSELJvH8"]}]}, {"UserIDs": ["X3dZxHYi", "IwzawEg0", "0IkdkCH6"], "parties": [{"partyID": "gLNXD8dR", "userIDs": ["FMWN9gjI", "aACQqdEK", "z3AZto7q"]}, {"partyID": "mtwzmVlV", "userIDs": ["xnxyVFg6", "GxFWyoKL", "wJBtqLIo"]}, {"partyID": "bQPnQmzf", "userIDs": ["1pG64vaw", "VNF2vlHF", "zWQIHrGk"]}]}], "ticketIDs": ["e6SRRTTR", "2MEgOrQZ", "TyPqzxYO"], "type": "QKwbY4pI", "version": 91}' \
    > test.out 2>&1
eval_tap $? 20 'PatchUpdateGameSession' test.out

#- 21 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'DqHmgV40' \
    --body '{"userID": "oaZYRp8V"}' \
    > test.out 2>&1
eval_tap $? 21 'PublicGameSessionInvite' test.out

#- 22 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'vREKHzZV' \
    > test.out 2>&1
eval_tap $? 22 'JoinGameSession' test.out

#- 23 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'k25MurQE' \
    > test.out 2>&1
eval_tap $? 23 'LeaveGameSession' test.out

#- 24 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'Rs4Germk' \
    > test.out 2>&1
eval_tap $? 24 'PublicGameSessionReject' test.out

#- 25 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vVQ3bysN"}' \
    > test.out 2>&1
eval_tap $? 25 'PublicPartyJoinCode' test.out

#- 26 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'A7QaAEFC' \
    > test.out 2>&1
eval_tap $? 26 'PublicGetParty' test.out

#- 27 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'gQrCjp7h' \
    --body '{"attributes": {"HUxTQSbs": {}, "nPIYckVB": {}, "nYLbQWt4": {}}, "inactiveTimeout": 95, "inviteTimeout": 77, "joinability": "baQWRguT", "maxPlayers": 43, "minPlayers": 58, "type": "TLM8a6kg", "version": 59}' \
    > test.out 2>&1
eval_tap $? 27 'PublicUpdateParty' test.out

#- 28 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'M3NtbHgi' \
    --body '{"attributes": {"twVDpCIY": {}, "YEGYfaLz": {}, "c9ScXdyJ": {}}, "inactiveTimeout": 79, "inviteTimeout": 51, "joinability": "GZ5Z9QnU", "maxPlayers": 6, "minPlayers": 70, "type": "q9AgOP6T", "version": 71}' \
    > test.out 2>&1
eval_tap $? 28 'PublicPatchUpdateParty' test.out

#- 29 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'HCE8l2dE' \
    > test.out 2>&1
eval_tap $? 29 'PublicGeneratePartyCode' test.out

#- 30 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'EAS2ieYy' \
    > test.out 2>&1
eval_tap $? 30 'PublicRevokePartyCode' test.out

#- 31 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'DYXP1N0p' \
    --body '{"userID": "NlXDPqLM"}' \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyInvite' test.out

#- 32 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'GV4xFE44' \
    --body '{"leaderID": "ysgOAGqJ"}' \
    > test.out 2>&1
eval_tap $? 32 'PublicPromotePartyLeader' test.out

#- 33 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'oNsMcVMb' \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyJoin' test.out

#- 34 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'SNS5usws' \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyLeave' test.out

#- 35 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'DP84FafW' \
    > test.out 2>&1
eval_tap $? 35 'PublicPartyReject' test.out

#- 36 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'cShqeSX3' \
    --userId 'higUnUx3' \
    > test.out 2>&1
eval_tap $? 36 'PublicPartyKick' test.out

#- 37 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"QxItmIG0": {}, "JuZEJXkf": {}, "xvrM4DPI": {}}, "configurationName": "PyfJIk6d", "inactiveTimeout": 73, "inviteTimeout": 88, "joinability": "82gGHkU8", "maxPlayers": 45, "members": [{"ID": "qriPaCUM", "PlatformID": "zk7d1lmO", "PlatformUserID": "IXnGUbox"}, {"ID": "0Sd1JFrw", "PlatformID": "JUpzHOzq", "PlatformUserID": "CU5hAIvi"}, {"ID": "AtyqtGtP", "PlatformID": "PfeO9Jbi", "PlatformUserID": "WHYHhkpg"}], "minPlayers": 44, "textChat": false, "type": "qbhUdMgv"}' \
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
    --body '{"crossplayEnabled": true, "data": {"4AIgvoEy": {}, "f7adVW59": {}, "SDgw7zlX": {}}, "platforms": [{"name": "VlfzDhLv", "userID": "O4l3qGbe"}, {"name": "g2C5XNtf", "userID": "SBDiBkPk"}, {"name": "lNUGtpjR", "userID": "wD2CsQkP"}]}' \
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
    --order '8E1TZj23' \
    --orderBy 'ciaZ7SdB' \
    --status 'EcBTw8Y0' \
    > test.out 2>&1
eval_tap $? 41 'PublicQueryMyGameSessions' test.out

#- 42 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'LDz6pTRz' \
    --orderBy 'gNNaDEz9' \
    --status '42AVmNgh' \
    > test.out 2>&1
eval_tap $? 42 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE