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
    --body '{"clientVersion": "ZMh1XaFU", "deployment": "FlbYBPD4", "inactiveTimeout": 56, "inviteTimeout": 98, "joinability": "yKyUF6FW", "maxPlayers": 66, "minPlayers": 59, "name": "6MraBu01", "requestedRegions": ["qfCLaHMu", "90a1YHDR", "cqanBAxt"], "type": "QpvVruss"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateConfigurationTemplateV1' test.out

#- 5 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetAllConfigurationTemplatesV1' test.out

#- 6 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'dDEQkSSy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'e6EqX7bn' \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "pWq9w5US", "deployment": "ldQA3i4Z", "inactiveTimeout": 79, "inviteTimeout": 16, "joinability": "es0wHbKm", "maxPlayers": 11, "minPlayers": 59, "name": "ENt3hIsu", "requestedRegions": ["U5jy3La8", "o5P8w8DT", "lm2J22r5"], "type": "fPEJluF3"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'YXdHeqbA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationTemplateV1' test.out

#- 9 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'GKoUwHZQ' \
    --dsPodName 'UMTu6ZUs' \
    --fromTime '0vsI14MN' \
    --gameMode '6sFTLNU0' \
    --joinability '2QqucvYR' \
    --limit '94' \
    --matchPool 'OxPl7MpL' \
    --memberID 'BX18HusC' \
    --offset '33' \
    --order '5dm7aVIP' \
    --orderBy 'JNXV0feq' \
    --sessionID 'wMSvJcOz' \
    --status 'X62R8kD1' \
    --toTime 'KjZrroae' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryGameSessions' test.out

#- 10 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId '12Fh2fY5' \
    --namespace $AB_NAMESPACE \
    --sessionId 'abGCHTrr' \
    --statusType 'HCbJAgUL' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGameSessionMember' test.out

#- 11 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'vF59hgHN' \
    --key 'XMNsgzo9' \
    --leaderID 'jByH9nfo' \
    --limit '40' \
    --memberID 'pFuJzr4J' \
    --memberStatus 'Cj7ujBHy' \
    --offset '32' \
    --order 'hA4XZWbU' \
    --orderBy 'nh2mqq5i' \
    --value 'Z1jiLaae' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryParties' test.out

#- 12 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"W58jo7Ja": {}, "vLSD95Nd": {}, "F3PIWLpk": {}}, "backfillTicketID": "kinEHnW0", "clientVersion": "1d0vNKsV", "configurationName": "jsBeIqHO", "deployment": "6jdIow5u", "inactiveTimeout": 73, "inviteTimeout": 15, "joinability": "7ACQSMAL", "matchPool": "3udOQgyh", "maxPlayers": 30, "minPlayers": 57, "requestedRegions": ["zR4BJ5Ok", "LmR0bQ1A", "HEEDFfE4"], "serverName": "ikdNYQcL", "teams": [{"UserIDs": ["CESV8HiD", "Q1vTvX5C", "RYNnQCHk"]}, {"UserIDs": ["XnaQLwHp", "JRkPNt5Y", "ymAufvEB"]}, {"UserIDs": ["NChwNw5n", "Lrnxa3k3", "2A0qCc2A"]}], "ticketIDs": ["vYXYH6Ln", "hhGLboEm", "PQXUxP1F"], "type": "5ovujmGY"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateGameSession' test.out

#- 13 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"KbXj6h1w": {}, "ChLVr9J4": {}, "QUnNAPkV": {}}' \
    > test.out 2>&1
eval_tap $? 13 'PublicQueryGameSessions' test.out

#- 14 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'qqGFrmbk' \
    > test.out 2>&1
eval_tap $? 14 'GetGameSessionByPodName' test.out

#- 15 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'VCt4F3pH' \
    > test.out 2>&1
eval_tap $? 15 'GetGameSession' test.out

#- 16 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'MlpJccGf' \
    --body '{"attributes": {"cW1GZiY4": {}, "6VgqG8Ac": {}, "IyVMNNvG": {}}, "backfillTicketID": "s8MRg0AB", "clientVersion": "WXiBUGqA", "deployment": "uAkpDbEZ", "inactiveTimeout": 27, "inviteTimeout": 8, "joinability": "5p1uadVy", "matchPool": "ElXFGOEz", "maxPlayers": 93, "minPlayers": 97, "requestedRegions": ["Z4LyWXFv", "XRH3UweG", "dPEfFPAs"], "teams": [{"UserIDs": ["n0m7oCbT", "KgEQpPJx", "kc4J8zWo"]}, {"UserIDs": ["qU1lRmWW", "RmAjC1CT", "k0CP3o12"]}, {"UserIDs": ["uAPcLfwj", "dBMfCv2q", "UuHoIDzX"]}], "ticketIDs": ["BpHaJk6x", "gdj82rUP", "bcHMqi3O"], "type": "Ie5o638m", "version": 64}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateGameSession' test.out

#- 17 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'xQm0cunQ' \
    > test.out 2>&1
eval_tap $? 17 'DeleteGameSession' test.out

#- 18 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZOEV18z5' \
    --body '{"attributes": {"rs5R2GYT": {}, "w7w3gyFJ": {}, "7PaWtmIj": {}}, "backfillTicketID": "oG8fRj9B", "clientVersion": "SJGYiima", "deployment": "3wrjYTgR", "inactiveTimeout": 57, "inviteTimeout": 92, "joinability": "YDXDmtbQ", "matchPool": "jw4LK436", "maxPlayers": 59, "minPlayers": 67, "requestedRegions": ["hBdltvjj", "yAdpxXIW", "CwUgXKtA"], "teams": [{"UserIDs": ["wgz1mPf6", "ovoGw1EB", "EzG6D3eP"]}, {"UserIDs": ["adoxXdND", "2jcS6OoT", "QDSppDq7"]}, {"UserIDs": ["4GcuTFDK", "D5pIf3hV", "BSXenVji"]}], "ticketIDs": ["l6MOymmp", "gG1FtC5U", "lNUiytmo"], "type": "JfSLvXUn", "version": 36}' \
    > test.out 2>&1
eval_tap $? 18 'PatchUpdateGameSession' test.out

#- 19 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'Fbxv6yV6' \
    --body '{"userID": "Lgt1idZp"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicGameSessionInvite' test.out

#- 20 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'TKAO06wq' \
    > test.out 2>&1
eval_tap $? 20 'JoinGameSession' test.out

#- 21 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'SE9mvTCu' \
    > test.out 2>&1
eval_tap $? 21 'LeaveGameSession' test.out

#- 22 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'sIN0WaEH' \
    > test.out 2>&1
eval_tap $? 22 'PublicGameSessionReject' test.out

#- 23 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "EhawXQl4"}' \
    > test.out 2>&1
eval_tap $? 23 'PublicPartyJoinCode' test.out

#- 24 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'k2otFdjj' \
    > test.out 2>&1
eval_tap $? 24 'PublicGetParty' test.out

#- 25 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'ma5Ug9Fo' \
    --body '{"attributes": {"IRm85M9j": {}, "E5wKEL4a": {}, "HnBcYkNX": {}}, "inactiveTimeout": 25, "inviteTimeout": 71, "joinability": "MnKwXyj7", "maxPlayers": 65, "minPlayers": 33, "type": "PsmQgvvU", "version": 32}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateParty' test.out

#- 26 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'RNs32DV5' \
    --body '{"attributes": {"48oEwYoD": {}, "TSdDJhV9": {}, "qAjkLGvk": {}}, "inactiveTimeout": 86, "inviteTimeout": 21, "joinability": "qY8ucyFN", "maxPlayers": 10, "minPlayers": 80, "type": "Kqzj9KgJ", "version": 73}' \
    > test.out 2>&1
eval_tap $? 26 'PublicPatchUpdateParty' test.out

#- 27 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'IhkdNCfJ' \
    > test.out 2>&1
eval_tap $? 27 'PublicGeneratePartyCode' test.out

#- 28 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '7nr6AxVx' \
    > test.out 2>&1
eval_tap $? 28 'PublicRevokePartyCode' test.out

#- 29 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'qTjim73U' \
    --body '{"userID": "QYLZvmG2"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicPartyInvite' test.out

#- 30 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'YOwHxBHx' \
    --body '{"leaderID": "Sc1l9KnV"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicPromotePartyLeader' test.out

#- 31 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '6li27NIj' \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyJoin' test.out

#- 32 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '3VNKjYVM' \
    > test.out 2>&1
eval_tap $? 32 'PublicPartyLeave' test.out

#- 33 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'o3wh4mjO' \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyReject' test.out

#- 34 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'pmsfSEbE' \
    --userId 'H2ZggZm1' \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyKick' test.out

#- 35 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"PUr2890i": {}, "76He31GJ": {}, "9wCObciY": {}}, "configurationName": "OqojzmyO", "inactiveTimeout": 31, "inviteTimeout": 8, "joinability": "ac3p3RBc", "maxPlayers": 99, "members": [{"ID": "21rpxf42", "PlatformID": "bKqZY4DA", "PlatformUserID": "21PFNF5r"}, {"ID": "daxyW1IJ", "PlatformID": "DeU8YlgH", "PlatformUserID": "Un4U6oor"}, {"ID": "ITswpKZv", "PlatformID": "HCzhzUEo", "PlatformUserID": "MFmunW6I"}], "minPlayers": 71, "type": "35gp5egI"}' \
    > test.out 2>&1
eval_tap $? 35 'PublicCreateParty' test.out

#- 36 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'PK34A8IX' \
    --orderBy 'jO5oXHya' \
    --status '50Du4vb0' \
    > test.out 2>&1
eval_tap $? 36 'PublicQueryMyGameSessions' test.out

#- 37 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '9INer4qT' \
    --orderBy 'oOIJkfbn' \
    --status 'FyzykSTx' \
    > test.out 2>&1
eval_tap $? 37 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE