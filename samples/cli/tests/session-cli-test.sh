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
echo "1..47"

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
    --body '{"clientVersion": "mLx6baOd", "deployment": "08sC1i7b", "inactiveTimeout": 62, "inviteTimeout": 83, "joinability": "1f4N5HIS", "maxPlayers": 4, "minPlayers": 13, "name": "HsAurdCh", "persistent": true, "requestedRegions": ["BO2J503w", "GXbJFHWM", "x512tVaG"], "textChat": false, "type": "4D6xdZiV"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateConfigurationTemplateV1' test.out

#- 6 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAllConfigurationTemplatesV1' test.out

#- 7 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'WFTZelMa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminGetConfigurationTemplateV1' test.out

#- 8 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'pyZOejQY' \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "yCZdm03z", "deployment": "fVjRKAyg", "inactiveTimeout": 68, "inviteTimeout": 72, "joinability": "yzqocfPI", "maxPlayers": 74, "minPlayers": 74, "name": "FIqvs1OS", "persistent": false, "requestedRegions": ["R6AfGTMD", "V5IXIsyO", "saeudMjX"], "textChat": false, "type": "EwlYYY0M"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminUpdateConfigurationTemplateV1' test.out

#- 9 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name '4tNI1ddt' \
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
    --configurationName 'AHy8HC0r' \
    --dsPodName 'u3W8P9S4' \
    --fromTime '4WrjuqIg' \
    --gameMode '99MU4rqF' \
    --isPersistent 'pNtxg4VK' \
    --isSoftDeleted 'L5wgz01k' \
    --joinability 'zzSgEt4s' \
    --limit '61' \
    --matchPool 'uDv5kq8b' \
    --memberID 'DS31u43I' \
    --offset '85' \
    --order '6kNAgx9e' \
    --orderBy 'Tmle75uO' \
    --sessionID 'alFqciGx' \
    --status 'Am1tb18h' \
    --statusV2 'o8QUa1s5' \
    --toTime 'xY6j0nMr' \
    > test.out 2>&1
eval_tap $? 12 'AdminQueryGameSessions' test.out

#- 13 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId '5OoX3K07' \
    --namespace $AB_NAMESPACE \
    --sessionId 'BP5ALQNp' \
    --statusType 'zZQ7RPge' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateGameSessionMember' test.out

#- 14 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'IAWxJZnt' \
    --key 'GW8fK24K' \
    --leaderID 'Erp849O2' \
    --limit '28' \
    --memberID 'ggFSLcL8' \
    --memberStatus '0HO0apye' \
    --offset '33' \
    --order '6kvZA6r7' \
    --orderBy 'WpC02TDA' \
    --value 'XcxgTXeo' \
    > test.out 2>&1
eval_tap $? 14 'AdminQueryParties' test.out

#- 15 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'r4HtO47K' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryPlayerAttributes' test.out

#- 16 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId '4gt4vIEM' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetPlayerAttributes' test.out

#- 17 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"zESDyciD": {}, "8rK4LdJQ": {}, "ny5Ebrdd": {}}, "backfillTicketID": "JanqLUaa", "clientVersion": "z4rVEZau", "configurationName": "s3nyqTQW", "deployment": "SmHxzYhF", "inactiveTimeout": 87, "inviteTimeout": 11, "joinability": "HG2w43NR", "matchPool": "4TuMSvBn", "maxPlayers": 57, "minPlayers": 87, "requestedRegions": ["j2fNDKqn", "WCu9D4fA", "Vhumywpg"], "serverName": "YniYzGLl", "teams": [{"UserIDs": ["vLiS4H8j", "U3ICAuSC", "pDj3GeHQ"], "parties": [{"partyID": "kWgyZAch", "userIDs": ["E5to7wfC", "jwO8z5NN", "oFBEuGU9"]}, {"partyID": "hi091AEE", "userIDs": ["cnEMU6Cw", "6kgFeTwC", "YvwMglr4"]}, {"partyID": "D6BFfec0", "userIDs": ["w0M2prTB", "eAvCShyf", "GM9BZCMW"]}]}, {"UserIDs": ["VA9MZM2s", "f0UYsWEA", "S1q4ePRq"], "parties": [{"partyID": "NFQlycTT", "userIDs": ["rQj8XK0q", "6lJ0sppv", "0SXFVaQV"]}, {"partyID": "YL7oJgYz", "userIDs": ["aHh9o0KS", "kRoPfzGp", "aRmcsMbR"]}, {"partyID": "V97I3S3K", "userIDs": ["gXaUhsuq", "ujNPeNS8", "j3SBO2oN"]}]}, {"UserIDs": ["ALySiivt", "HDv30sdq", "iGBy77BF"], "parties": [{"partyID": "iztBSud6", "userIDs": ["U7Tp2rCH", "vW1a7fwF", "48Ssgl9A"]}, {"partyID": "3SiZR9ho", "userIDs": ["ZBruVEFY", "krOLlVfx", "fFyLeIbq"]}, {"partyID": "3F4zeIxh", "userIDs": ["c900EqPV", "OfYqm7Ta", "P3PaD5D0"]}]}], "textChat": true, "ticketIDs": ["bBv7V77k", "6OxpKMAg", "9JV6EnFY"], "type": "sh5QGhmr"}' \
    > test.out 2>&1
eval_tap $? 17 'CreateGameSession' test.out

#- 18 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"7EgxE7Rv": {}, "ArNfsGOY": {}, "ihMth6vH": {}}' \
    > test.out 2>&1
eval_tap $? 18 'PublicQueryGameSessions' test.out

#- 19 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'NXI0NGsC' \
    > test.out 2>&1
eval_tap $? 19 'GetGameSessionByPodName' test.out

#- 20 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'jDBSD1Td' \
    > test.out 2>&1
eval_tap $? 20 'GetGameSession' test.out

#- 21 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'MrTZqdKK' \
    --body '{"attributes": {"RsXSAYgN": {}, "EOK4tUw6": {}, "jEgwEu2p": {}}, "backfillTicketID": "w8YLUkQM", "clientVersion": "1Xq4iMKV", "deployment": "l794uA6H", "inactiveTimeout": 51, "inviteTimeout": 46, "joinability": "lmApn8O9", "matchPool": "ojHULVD1", "maxPlayers": 5, "minPlayers": 41, "requestedRegions": ["VVI4LhUA", "zuh6tV3t", "wylKCUoR"], "teams": [{"UserIDs": ["Ad6ETyet", "FysxptO7", "rbCdA9pB"], "parties": [{"partyID": "s6Ux0Ers", "userIDs": ["w271CLnT", "W47ljomj", "hUtyQTIf"]}, {"partyID": "KuBEbidJ", "userIDs": ["HjDgfjDG", "ywgqflIw", "Iex2vtpQ"]}, {"partyID": "VHLBKaHP", "userIDs": ["AOGbbmMo", "onwC8Sgu", "OOzKq5Ph"]}]}, {"UserIDs": ["0KwNDRuj", "HdopsUvc", "JIHWK3Ap"], "parties": [{"partyID": "J1Wuqqu2", "userIDs": ["vaUeAQil", "4CEqmko2", "VlFzuYW1"]}, {"partyID": "CqGL2PaY", "userIDs": ["1HNWDIld", "bJtF4mOO", "WJYiTvTs"]}, {"partyID": "YyzFEfOC", "userIDs": ["4wrUp6Bo", "AcHBfswd", "06a0uyD7"]}]}, {"UserIDs": ["kxlVdG7I", "lpzEClfw", "X5gVlejY"], "parties": [{"partyID": "7l3adwIa", "userIDs": ["bQMGxs51", "wpHlI1x4", "q0a7wOns"]}, {"partyID": "ae8SJU78", "userIDs": ["fjjJZJcF", "5UVrKbEb", "DyDIShUq"]}, {"partyID": "9gjHeiNv", "userIDs": ["4RMLAk8M", "dkBHnG79", "TdkmWS7k"]}]}], "ticketIDs": ["oD8r21ZL", "cwaNp6yy", "wqqNrnOY"], "type": "AgjntY7k", "version": 17}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateGameSession' test.out

#- 22 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'qnoiPGbt' \
    > test.out 2>&1
eval_tap $? 22 'DeleteGameSession' test.out

#- 23 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'MK9uQ67Q' \
    --body '{"attributes": {"1lC64qdZ": {}, "caV7hGZ7": {}, "BhyQMtMq": {}}, "backfillTicketID": "4kocrm73", "clientVersion": "Dvydaipv", "deployment": "BMP4e0no", "inactiveTimeout": 23, "inviteTimeout": 92, "joinability": "ATbTjKnZ", "matchPool": "kwLpdoFR", "maxPlayers": 26, "minPlayers": 47, "requestedRegions": ["O8cTQ157", "fuamuLRD", "jjmE9Iag"], "teams": [{"UserIDs": ["2brDzJJT", "BY3PCdXf", "lD4r5OcU"], "parties": [{"partyID": "iCDxc5HR", "userIDs": ["k4b9EKHA", "7ottmF4P", "MBUWO6CC"]}, {"partyID": "hByDiqIK", "userIDs": ["2AQPGFuL", "OMJYjYuY", "toeTln0h"]}, {"partyID": "d7rlGmVo", "userIDs": ["xHnXHax7", "vHYpTBLv", "CJpGZyYq"]}]}, {"UserIDs": ["KopgFXQ4", "4KPd5EJ3", "kqvPk95b"], "parties": [{"partyID": "R8ec9eA1", "userIDs": ["BzuFjjVj", "Zgr6XqJE", "vsqSythq"]}, {"partyID": "CIAMiq0B", "userIDs": ["VgqILZeL", "CZAYYsvW", "WJ7bAwRA"]}, {"partyID": "ttDPAtxr", "userIDs": ["BZGNB5ay", "p6RY62sW", "hS0c7nkQ"]}]}, {"UserIDs": ["WG0LIo4o", "ganrfWbg", "Ys5tNfPZ"], "parties": [{"partyID": "g6dF1Jxw", "userIDs": ["JsBR7kyy", "VVnwjdS5", "HK0mGbuU"]}, {"partyID": "1U0qxG9k", "userIDs": ["Ar1qC5M3", "msCMjfRW", "qvODhmS1"]}, {"partyID": "tWwwmAfh", "userIDs": ["VbdfCmfL", "UBAFHhTC", "ERBKrdMq"]}]}], "ticketIDs": ["C0su7Q7V", "kxnN9q1t", "EFNenuzJ"], "type": "T2mnnl7s", "version": 45}' \
    > test.out 2>&1
eval_tap $? 23 'PatchUpdateGameSession' test.out

#- 24 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'Ka9o5ZjQ' \
    --body '{"backfillTicketID": "59VbiVbW"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateGameSessionBackfillTicketID' test.out

#- 25 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'VU59m38L' \
    --body '{"userID": "9lWz9KG9"}' \
    > test.out 2>&1
eval_tap $? 25 'PublicGameSessionInvite' test.out

#- 26 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'rl2YaFiA' \
    > test.out 2>&1
eval_tap $? 26 'JoinGameSession' test.out

#- 27 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'DqHUrMSY' \
    > test.out 2>&1
eval_tap $? 27 'LeaveGameSession' test.out

#- 28 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId '98bkaSyC' \
    > test.out 2>&1
eval_tap $? 28 'PublicGameSessionReject' test.out

#- 29 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'XyajLfeI' \
    --body '{"additionalMembers": [{"partyID": "asikyq7r", "userIDs": ["MIQ9YUHx", "LeJtLnxk", "AZ1pqeqW"]}, {"partyID": "v7ZGln6d", "userIDs": ["m5rYnrFr", "nWtPTgkF", "26ocePVt"]}, {"partyID": "20DJjZqW", "userIDs": ["GGCsLpNb", "EuaS4040", "IkjqvV9d"]}], "proposedTeams": [{"UserIDs": ["yGU1VzCj", "jT1Turfh", "PZv6YlIr"], "parties": [{"partyID": "Qlk2AnEg", "userIDs": ["UkNKteFa", "bt6bmQvX", "ZyptwCSj"]}, {"partyID": "ilGDkKpp", "userIDs": ["9zPkiBTl", "7OizbsW0", "G6TW0qq5"]}, {"partyID": "D9Qrydb5", "userIDs": ["KSLZKgAc", "dqUcHRYt", "dw99QvKo"]}]}, {"UserIDs": ["PE41hElK", "27v7BGTu", "Jm94UxGQ"], "parties": [{"partyID": "H3VJ7MjI", "userIDs": ["rXBktygz", "ikCAu9xX", "4WoPUuZJ"]}, {"partyID": "wNqgCtez", "userIDs": ["ENyjWzWc", "I1ZiWF1v", "bPJtDbsc"]}, {"partyID": "CRaHqVb2", "userIDs": ["yYYICn3j", "9ywa6xcw", "TQiYv2ld"]}]}, {"UserIDs": ["hFdXt4qn", "Yt9GsYqw", "beYQEoFS"], "parties": [{"partyID": "Ss7g7UOh", "userIDs": ["rWl0w4ta", "dutH1Cg1", "tMS0fyST"]}, {"partyID": "nt2MBKNo", "userIDs": ["J4UHa4Th", "nHy7MKrX", "8GKkZ5oK"]}, {"partyID": "H5q2blI4", "userIDs": ["VR6AEyCM", "CX85sSjp", "hdxN2JzR"]}]}], "version": 95}' \
    > test.out 2>&1
eval_tap $? 29 'AppendTeamGameSession' test.out

#- 30 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vWU22mts"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicPartyJoinCode' test.out

#- 31 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'P86mP3cj' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetParty' test.out

#- 32 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '1dE7DctE' \
    --body '{"attributes": {"eJAJ5fmf": {}, "9AvecloU": {}, "5uHIaKUm": {}}, "inactiveTimeout": 82, "inviteTimeout": 57, "joinability": "tWHMX7m9", "maxPlayers": 12, "minPlayers": 38, "type": "Jv9SOMTy", "version": 16}' \
    > test.out 2>&1
eval_tap $? 32 'PublicUpdateParty' test.out

#- 33 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'zrcf4F7o' \
    --body '{"attributes": {"Afliu39m": {}, "UO9MLn4y": {}, "dyw8APui": {}}, "inactiveTimeout": 16, "inviteTimeout": 97, "joinability": "6FwNirS0", "maxPlayers": 72, "minPlayers": 21, "type": "J9AFGEQ0", "version": 19}' \
    > test.out 2>&1
eval_tap $? 33 'PublicPatchUpdateParty' test.out

#- 34 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'FY6cwSIZ' \
    > test.out 2>&1
eval_tap $? 34 'PublicGeneratePartyCode' test.out

#- 35 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'pHtdl1Mr' \
    > test.out 2>&1
eval_tap $? 35 'PublicRevokePartyCode' test.out

#- 36 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'XApZVoZd' \
    --body '{"userID": "RAiwx9tB"}' \
    > test.out 2>&1
eval_tap $? 36 'PublicPartyInvite' test.out

#- 37 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'wOBSQXbT' \
    --body '{"leaderID": "silNxnCM"}' \
    > test.out 2>&1
eval_tap $? 37 'PublicPromotePartyLeader' test.out

#- 38 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'bDL8EBEf' \
    > test.out 2>&1
eval_tap $? 38 'PublicPartyJoin' test.out

#- 39 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '3mqgRxuL' \
    > test.out 2>&1
eval_tap $? 39 'PublicPartyLeave' test.out

#- 40 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'OCc9r0Jt' \
    > test.out 2>&1
eval_tap $? 40 'PublicPartyReject' test.out

#- 41 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'RjYA0utX' \
    --userId '7Sm09mKA' \
    > test.out 2>&1
eval_tap $? 41 'PublicPartyKick' test.out

#- 42 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"Lt612yJX": {}, "slM2lhWw": {}, "fZShZOUm": {}}, "configurationName": "qh9szi6u", "inactiveTimeout": 84, "inviteTimeout": 79, "joinability": "m1IDYMFI", "maxPlayers": 78, "members": [{"ID": "6KiACC20", "PlatformID": "XBoqkbt2", "PlatformUserID": "10PCZeRM"}, {"ID": "NngSx0OB", "PlatformID": "eKEKyuNy", "PlatformUserID": "NLPZzba7"}, {"ID": "bVok9MoY", "PlatformID": "j4qEveqY", "PlatformUserID": "3FxZDvhr"}], "minPlayers": 23, "textChat": true, "type": "bHLs6Z1X"}' \
    > test.out 2>&1
eval_tap $? 42 'PublicCreateParty' test.out

#- 43 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'PublicGetPlayerAttributes' test.out

#- 44 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "data": {"aztuLoyy": {}, "KB3JtJBD": {}, "QOUDCfqR": {}}, "platforms": [{"name": "T5zSNJAT", "userID": "eo2k9cSX"}, {"name": "MYLv9Y9l", "userID": "CQZgenLI"}, {"name": "89P9ErZB", "userID": "gj4VGght"}]}' \
    > test.out 2>&1
eval_tap $? 44 'PublicStorePlayerAttributes' test.out

#- 45 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'PublicDeletePlayerAttributes' test.out

#- 46 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'Xb5sxBRp' \
    --orderBy 'DhupoiaD' \
    --status 'RcoQBddl' \
    > test.out 2>&1
eval_tap $? 46 'PublicQueryMyGameSessions' test.out

#- 47 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'Rl1708kQ' \
    --orderBy 'sMtiVfmA' \
    --status 'xJzMTgBk' \
    > test.out 2>&1
eval_tap $? 47 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE