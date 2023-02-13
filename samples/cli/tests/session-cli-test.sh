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
    --body '{"clientVersion": "pNsBQfzP", "deployment": "HEqcztUV", "inactiveTimeout": 82, "inviteTimeout": 50, "joinability": "qfCM5kq6", "maxPlayers": 33, "minPlayers": 5, "name": "GQNmHfKf", "requestedRegions": ["cCXC5i3k", "Kj6Gat7I", "oIEks5s1"], "textChat": true, "type": "XT9hiw8w"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateConfigurationTemplateV1' test.out

#- 5 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetAllConfigurationTemplatesV1' test.out

#- 6 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'PVhFypSe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name '2Duls8rh' \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "5NSnJ9ZJ", "deployment": "Ku40JqDO", "inactiveTimeout": 14, "inviteTimeout": 80, "joinability": "DLv3Taqh", "maxPlayers": 80, "minPlayers": 89, "name": "TjiFKym5", "requestedRegions": ["mFjWq3NL", "MEyPl3jy", "s50Q22MJ"], "textChat": true, "type": "K0jf29f0"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'xsnXYbZB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationTemplateV1' test.out

#- 9 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'OrwMnGdq' \
    --dsPodName 'XoDLBzVv' \
    --fromTime 'CBxV4yUl' \
    --gameMode 'JbhzEp79' \
    --isSoftDeleted 'lmXj4Zjx' \
    --joinability 'XI35MG2g' \
    --limit '65' \
    --matchPool 'YvP6eCZD' \
    --memberID '9h4kXcxc' \
    --offset '38' \
    --order 'msNmNXFl' \
    --orderBy 'wRtqo3MW' \
    --sessionID 'URfDkoI6' \
    --status 'GtMcapwA' \
    --statusV2 'xHnLlWAL' \
    --toTime '7YTqM65U' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryGameSessions' test.out

#- 10 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'Y8kiqa8U' \
    --namespace $AB_NAMESPACE \
    --sessionId 'hggNE01r' \
    --statusType 'EwZ9a78J' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGameSessionMember' test.out

#- 11 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'Gs681Trk' \
    --key 'rEV8tYST' \
    --leaderID '00zh610d' \
    --limit '16' \
    --memberID 'uX7dVRA5' \
    --memberStatus 'E2vwsQUM' \
    --offset '26' \
    --order 'romX1GjQ' \
    --orderBy 'Ac14Vf7R' \
    --value 'ulKAtd2Q' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryParties' test.out

#- 12 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '5NL11X5c' \
    > test.out 2>&1
eval_tap $? 12 'AdminQueryPlayerAttributes' test.out

#- 13 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'j6D7WsiJ' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerAttributes' test.out

#- 14 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"2ndbeBnK": {}, "Om4eK6hf": {}, "EPLSphQU": {}}, "backfillTicketID": "p33GlAhg", "clientVersion": "HTykA2E9", "configurationName": "suoVq8tY", "deployment": "P8HU4Rvq", "inactiveTimeout": 22, "inviteTimeout": 64, "joinability": "2pUHWfC2", "matchPool": "tJBx1XGC", "maxPlayers": 30, "minPlayers": 44, "requestedRegions": ["A5QPqoCc", "ZQqMp9th", "7GJSv5g7"], "serverName": "dlxoJsCT", "teams": [{"UserIDs": ["kJ2HJy88", "eTYswXgs", "GwJOfGzc"], "parties": [{"partyID": "8ZWRUisi", "userIDs": ["wabCMCAV", "43b54avJ", "yvAvf8bi"]}, {"partyID": "PNyLsGzH", "userIDs": ["ZQlWNpgr", "wplXnSOO", "ZhtR5bC3"]}, {"partyID": "N9YALLZv", "userIDs": ["beroAutH", "V7Ou5RXv", "OvCXtwrQ"]}]}, {"UserIDs": ["FQLCrXqX", "cF5f6UR0", "PrvRf8Uq"], "parties": [{"partyID": "mZF96yR7", "userIDs": ["E7OuUxPH", "BN2BSNRl", "bAfXFHyN"]}, {"partyID": "83DW90dk", "userIDs": ["Eo25IJqh", "Jz0c685w", "2CVjsDQF"]}, {"partyID": "c1BFs2Ya", "userIDs": ["1NrOvpLH", "VDnQCwCP", "JcPx0s1W"]}]}, {"UserIDs": ["L8vclOK3", "gr8kn3wL", "PBHA7Ckt"], "parties": [{"partyID": "ocnvRDFj", "userIDs": ["qlreIRba", "qtedmL0m", "kkSNmQ9R"]}, {"partyID": "PuK8mVBT", "userIDs": ["BLVY9t1P", "SDPUZVVZ", "J9WA16bN"]}, {"partyID": "OG6xY7r7", "userIDs": ["kemltxKc", "dOiGJoo6", "FFcH3rYA"]}]}], "textChat": true, "ticketIDs": ["nRVECsdx", "IR2PqLQ6", "oX2CHtY7"], "type": "6q9UlKeD"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateGameSession' test.out

#- 15 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"jhi6Hbuv": {}, "Z5vCR8qc": {}, "B6F5ulbr": {}}' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessions' test.out

#- 16 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'MZ3hlUhN' \
    > test.out 2>&1
eval_tap $? 16 'GetGameSessionByPodName' test.out

#- 17 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'MSAPjTz5' \
    > test.out 2>&1
eval_tap $? 17 'GetGameSession' test.out

#- 18 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'K2JBoBHy' \
    --body '{"attributes": {"XQKNnsKG": {}, "viAAn74A": {}, "lcJf7JtB": {}}, "backfillTicketID": "5aqVffzj", "clientVersion": "WJRqIFT4", "deployment": "280mtAp9", "inactiveTimeout": 53, "inviteTimeout": 21, "joinability": "TRB3MviC", "matchPool": "jDYpeN9i", "maxPlayers": 96, "minPlayers": 71, "requestedRegions": ["1jQ5xpJx", "VEXJnlqx", "UyRvx5al"], "teams": [{"UserIDs": ["xbC01JiO", "LHOPsS5h", "L5VkSC44"], "parties": [{"partyID": "odc5E0h9", "userIDs": ["j20GjGcM", "S74wfzXA", "rpuDkwRM"]}, {"partyID": "e0OikfqM", "userIDs": ["YSxVhw5Z", "awCyiuwY", "SaA4jOds"]}, {"partyID": "vjfoCv6P", "userIDs": ["pGNm9fBX", "3xIeAhmR", "VNPwu3eU"]}]}, {"UserIDs": ["ALj9IOaR", "Nx57opTU", "cdHgopVk"], "parties": [{"partyID": "OuBabFQX", "userIDs": ["mma0RcUK", "TwYKLHXm", "Q5Nh1DTk"]}, {"partyID": "CaMTiLqM", "userIDs": ["SYXaXORZ", "Kyc25LYk", "U14nbhuT"]}, {"partyID": "X9Zg2Ztz", "userIDs": ["8ZHil1PS", "k6x384ab", "FwbTLcUt"]}]}, {"UserIDs": ["M9VbEUSp", "9OZGlBfc", "IMFriZCv"], "parties": [{"partyID": "y4UiZ25d", "userIDs": ["ZB9pbIZz", "A1FlfbhX", "IxNy1naR"]}, {"partyID": "1rDxw6xa", "userIDs": ["f0b7qBCe", "6dKArrn7", "J4IMwiVT"]}, {"partyID": "cbdkPf6p", "userIDs": ["8ymt1FzH", "bdjQT5Xx", "J8QnRv8w"]}]}], "ticketIDs": ["dJELlUM0", "e40ym09g", "WghUhYUD"], "type": "bN9zkVhE", "version": 100}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateGameSession' test.out

#- 19 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '1UvTMLaL' \
    > test.out 2>&1
eval_tap $? 19 'DeleteGameSession' test.out

#- 20 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'WvmCdqJq' \
    --body '{"attributes": {"p3aZQLJw": {}, "mj0lWJ94": {}, "CkxSeJmX": {}}, "backfillTicketID": "BMWxiLNN", "clientVersion": "JS820VCE", "deployment": "eNnrZk8u", "inactiveTimeout": 57, "inviteTimeout": 75, "joinability": "51KnQ66o", "matchPool": "Tsox9rtz", "maxPlayers": 22, "minPlayers": 60, "requestedRegions": ["DOmvIlZe", "3H3oXQac", "1xK4FDEJ"], "teams": [{"UserIDs": ["0QhburwH", "UVvHPx8C", "Q2vqDNIR"], "parties": [{"partyID": "yIkS6Frn", "userIDs": ["MSNZRY1G", "QqE7HAg6", "7Ijb4aFp"]}, {"partyID": "MFBxZ7rN", "userIDs": ["P726l6xU", "xiPD4hjO", "vdKynKgu"]}, {"partyID": "S6nC2SPh", "userIDs": ["WiHAJoXJ", "4TSSEeqf", "5UEfoOJF"]}]}, {"UserIDs": ["RKGYtNc6", "NLLDM0cQ", "1QoOnb51"], "parties": [{"partyID": "4m73fNtt", "userIDs": ["B6ix0kAo", "cNHX2rVQ", "Wt9Lk5qY"]}, {"partyID": "wkqXlzXa", "userIDs": ["Kyhoj3KL", "4CVrviEq", "uEHOzFmb"]}, {"partyID": "3tjxh3Zw", "userIDs": ["dcZnRzSU", "WIEJpLWy", "lupN6oWC"]}]}, {"UserIDs": ["glb1kt11", "gBx0VmJs", "7Zn2qkWE"], "parties": [{"partyID": "rE3eIbzt", "userIDs": ["5vVzihBf", "HhZaQRb0", "n2v2xC01"]}, {"partyID": "vAdIF0f0", "userIDs": ["YHrJYxhq", "is65mybq", "f05dS1bV"]}, {"partyID": "V2pdyHmm", "userIDs": ["W3xLpy9T", "fEpMKOu3", "N4ioPCAj"]}]}], "ticketIDs": ["Mkg3TZLM", "bGaPcmCJ", "pJT1Lmhh"], "type": "q8EE8h4e", "version": 81}' \
    > test.out 2>&1
eval_tap $? 20 'PatchUpdateGameSession' test.out

#- 21 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'otGt9d9g' \
    --body '{"userID": "oKYwvpcd"}' \
    > test.out 2>&1
eval_tap $? 21 'PublicGameSessionInvite' test.out

#- 22 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'znuOE2S8' \
    > test.out 2>&1
eval_tap $? 22 'JoinGameSession' test.out

#- 23 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'PYZf7333' \
    > test.out 2>&1
eval_tap $? 23 'LeaveGameSession' test.out

#- 24 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'JmC5oIpU' \
    > test.out 2>&1
eval_tap $? 24 'PublicGameSessionReject' test.out

#- 25 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "e5azPM5p"}' \
    > test.out 2>&1
eval_tap $? 25 'PublicPartyJoinCode' test.out

#- 26 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'EaJfLhvC' \
    > test.out 2>&1
eval_tap $? 26 'PublicGetParty' test.out

#- 27 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '4eAM2tz0' \
    --body '{"attributes": {"cgcmyT6Y": {}, "PHf2Sx9p": {}, "FDVyzVHg": {}}, "inactiveTimeout": 61, "inviteTimeout": 47, "joinability": "PknLfQ12", "maxPlayers": 96, "minPlayers": 25, "type": "kAx6c0ud", "version": 10}' \
    > test.out 2>&1
eval_tap $? 27 'PublicUpdateParty' test.out

#- 28 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'QQ8k3AQK' \
    --body '{"attributes": {"2TqGX2kM": {}, "0V563fx2": {}, "164WEsJB": {}}, "inactiveTimeout": 4, "inviteTimeout": 11, "joinability": "4tcEHfBe", "maxPlayers": 64, "minPlayers": 46, "type": "vEYzLM8d", "version": 0}' \
    > test.out 2>&1
eval_tap $? 28 'PublicPatchUpdateParty' test.out

#- 29 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'd0ahJE9w' \
    > test.out 2>&1
eval_tap $? 29 'PublicGeneratePartyCode' test.out

#- 30 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'FeV5ekcA' \
    > test.out 2>&1
eval_tap $? 30 'PublicRevokePartyCode' test.out

#- 31 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'MXwhopOF' \
    --body '{"userID": "y28vivxz"}' \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyInvite' test.out

#- 32 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId '7k78FAC1' \
    --body '{"leaderID": "RfnvarTI"}' \
    > test.out 2>&1
eval_tap $? 32 'PublicPromotePartyLeader' test.out

#- 33 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '8FvEQAQM' \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyJoin' test.out

#- 34 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'caeCJulB' \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyLeave' test.out

#- 35 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'RGGoxOnz' \
    > test.out 2>&1
eval_tap $? 35 'PublicPartyReject' test.out

#- 36 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'K5DpQeuj' \
    --userId 'RxarYGvB' \
    > test.out 2>&1
eval_tap $? 36 'PublicPartyKick' test.out

#- 37 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"u1NBzhXP": {}, "Ffga8bEw": {}, "nHRZWgpc": {}}, "configurationName": "cPGtvAki", "inactiveTimeout": 98, "inviteTimeout": 85, "joinability": "ZADVgYxQ", "maxPlayers": 9, "members": [{"ID": "CaoH6Zzc", "PlatformID": "2HNRe0Dh", "PlatformUserID": "5pgSIcNt"}, {"ID": "z0frNIEl", "PlatformID": "Rz0CMt7F", "PlatformUserID": "dU4Gxxq7"}, {"ID": "bH3c2qUn", "PlatformID": "HMQapWWm", "PlatformUserID": "CEgya83Q"}], "minPlayers": 0, "textChat": true, "type": "H8F7jzuA"}' \
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
    --body '{"crossplayEnabled": false, "data": {"hmBniYC2": {}, "kNKfasPq": {}, "TxSgg41v": {}}, "platforms": [{"name": "VyQ2qi3g", "userID": "g9xJ9rWS"}, {"name": "wotbE4cZ", "userID": "Vh8R2dcw"}, {"name": "lSTRgYHQ", "userID": "Sub1uUH8"}]}' \
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
    --order 'WZgUJVNy' \
    --orderBy 'rjZi6GP5' \
    --status 'KEFNLXk8' \
    > test.out 2>&1
eval_tap $? 41 'PublicQueryMyGameSessions' test.out

#- 42 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'zTFso5Yb' \
    --orderBy 'J3JKXsex' \
    --status 'Bl3BoKSK' \
    > test.out 2>&1
eval_tap $? 42 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE