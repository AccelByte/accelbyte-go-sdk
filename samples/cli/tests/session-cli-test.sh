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
    --body '{"clientVersion": "tBQoIXZa", "deployment": "axj1k9ba", "inactiveTimeout": 50, "inviteTimeout": 26, "joinability": "svr4OgvH", "maxPlayers": 78, "minPlayers": 8, "name": "EnNyiU6H", "requestedRegions": ["5FuJGrhI", "W7G8d9Xf", "LiCKXJCr"], "textChat": true, "type": "q0szlzq8"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateConfigurationTemplateV1' test.out

#- 5 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetAllConfigurationTemplatesV1' test.out

#- 6 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'g3ANZYoD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'wGNT4TY6' \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "HOMOpH1w", "deployment": "KcLVPobJ", "inactiveTimeout": 74, "inviteTimeout": 26, "joinability": "slHPOL1i", "maxPlayers": 62, "minPlayers": 20, "name": "RUF5yb2M", "requestedRegions": ["Ok0sBFPd", "9XEUv1sU", "3F9QmnSl"], "textChat": true, "type": "JJlb5t8Q"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name '0Gs4zVyv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationTemplateV1' test.out

#- 9 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'KPQzBk8G' \
    --dsPodName 'q0tu4DWK' \
    --fromTime 'cvs0lR0s' \
    --gameMode 'VIK8qHII' \
    --joinability 'op3Rff1b' \
    --limit '86' \
    --matchPool 'V8EdPkIk' \
    --memberID 'jSAkTaWt' \
    --offset '86' \
    --order '4sBaOYQm' \
    --orderBy 'qeXAHp72' \
    --sessionID '8fhRmRzA' \
    --status 'tA338SPa' \
    --toTime 'UaFPKvnG' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryGameSessions' test.out

#- 10 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'FlneE1rD' \
    --namespace $AB_NAMESPACE \
    --sessionId 'ADpb1OvJ' \
    --statusType 'eR5mws0p' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGameSessionMember' test.out

#- 11 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability '9i3dj3c9' \
    --key 'rPag9UqN' \
    --leaderID 'cSytAxvB' \
    --limit '17' \
    --memberID 'AmgfrqXf' \
    --memberStatus 'gCeQqFg9' \
    --offset '6' \
    --order '4Mw5vlW4' \
    --orderBy 'Kgec8R54' \
    --value 'v9NrRahC' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryParties' test.out

#- 12 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"TObT0yIO": {}, "vlzFqvqc": {}, "uT5THySP": {}}, "backfillTicketID": "0TXGh9dL", "clientVersion": "via3xvTj", "configurationName": "FO16X0BI", "deployment": "6A9pPsOd", "inactiveTimeout": 35, "inviteTimeout": 81, "joinability": "RKCdBJJE", "matchPool": "ahVPG7Ky", "maxPlayers": 69, "minPlayers": 94, "requestedRegions": ["e8M3iNbn", "pUKAk32z", "oYP7VGuS"], "serverName": "jWr7Rg7D", "teams": [{"UserIDs": ["Fozf9DKD", "LwlsJv0z", "K6AO6Co2"]}, {"UserIDs": ["aaRsQ8Lf", "beBqbH4M", "0i2jz1KI"]}, {"UserIDs": ["Hv59SuMx", "SjZLnRpL", "Z84iQmmS"]}], "textChat": false, "ticketIDs": ["6FVs8Qac", "BTfjZwpG", "takfUbVd"], "type": "qKpWXema"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateGameSession' test.out

#- 13 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"Ga0YnqC5": {}, "hUQshWVM": {}, "R8RUX5bU": {}}' \
    > test.out 2>&1
eval_tap $? 13 'PublicQueryGameSessions' test.out

#- 14 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'RCZftK0k' \
    > test.out 2>&1
eval_tap $? 14 'GetGameSessionByPodName' test.out

#- 15 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '2VVI80pm' \
    > test.out 2>&1
eval_tap $? 15 'GetGameSession' test.out

#- 16 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'wizWMoK8' \
    --body '{"attributes": {"vGFcSAVE": {}, "KiyOI6Fq": {}, "FtwvWPkA": {}}, "backfillTicketID": "xSpMJ59W", "clientVersion": "66RrA7Wu", "deployment": "ajhUv4kT", "inactiveTimeout": 43, "inviteTimeout": 49, "joinability": "63l7ny8I", "matchPool": "OunSPG3J", "maxPlayers": 13, "minPlayers": 29, "requestedRegions": ["r1XlqczB", "4Js3WE6U", "7cwlE8mN"], "teams": [{"UserIDs": ["LBgqeGM9", "jaXgVH99", "Nmkqs2Xs"]}, {"UserIDs": ["VuYEVhv4", "No7aJ1RW", "1hoR2qED"]}, {"UserIDs": ["6SWOpdKF", "llr0JrIx", "qIdwHheb"]}], "ticketIDs": ["K0XdlPG5", "CJAHalLG", "zakbAhxe"], "type": "aaBMD5KO", "version": 50}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateGameSession' test.out

#- 17 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'QEi3Zf61' \
    > test.out 2>&1
eval_tap $? 17 'DeleteGameSession' test.out

#- 18 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'R5FSmEQQ' \
    --body '{"attributes": {"2Gahlw91": {}, "dESZxIOQ": {}, "IDX40TYF": {}}, "backfillTicketID": "szZqrJZA", "clientVersion": "jvkQavjs", "deployment": "Uc6L8krG", "inactiveTimeout": 19, "inviteTimeout": 52, "joinability": "Wt7rOHgv", "matchPool": "niCqvjg7", "maxPlayers": 61, "minPlayers": 43, "requestedRegions": ["aYFH9w1L", "9KvJ6R7C", "0AQBztcU"], "teams": [{"UserIDs": ["J106qvNr", "IFPGBx6Z", "weH3vGMi"]}, {"UserIDs": ["newG851T", "AkqHayTg", "Iwr4bwoU"]}, {"UserIDs": ["UR1VxGh2", "Ll1lDw0V", "2LlmvzXF"]}], "ticketIDs": ["lSEsOPef", "6su0gDMo", "8jHLOj11"], "type": "0lAnUYqA", "version": 23}' \
    > test.out 2>&1
eval_tap $? 18 'PatchUpdateGameSession' test.out

#- 19 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'gfbCEtSi' \
    --body '{"userID": "VzN3x4og"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicGameSessionInvite' test.out

#- 20 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'DGgb1ey3' \
    > test.out 2>&1
eval_tap $? 20 'JoinGameSession' test.out

#- 21 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'LqU8qm2G' \
    > test.out 2>&1
eval_tap $? 21 'LeaveGameSession' test.out

#- 22 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'kdmxDWoM' \
    > test.out 2>&1
eval_tap $? 22 'PublicGameSessionReject' test.out

#- 23 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "LddGKaLP"}' \
    > test.out 2>&1
eval_tap $? 23 'PublicPartyJoinCode' test.out

#- 24 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'VxpxNKLs' \
    > test.out 2>&1
eval_tap $? 24 'PublicGetParty' test.out

#- 25 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'UvXudxMq' \
    --body '{"attributes": {"7lGi9mDV": {}, "VV89zTTn": {}, "gy0g6awa": {}}, "inactiveTimeout": 13, "inviteTimeout": 4, "joinability": "pfZnrXpE", "maxPlayers": 30, "minPlayers": 87, "type": "qr6gwCFY", "version": 8}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateParty' test.out

#- 26 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '4umAc5pd' \
    --body '{"attributes": {"v8zsrkM8": {}, "unfal51h": {}, "5dZsWSzH": {}}, "inactiveTimeout": 31, "inviteTimeout": 40, "joinability": "zM52Dqdv", "maxPlayers": 23, "minPlayers": 11, "type": "uj7zHDal", "version": 39}' \
    > test.out 2>&1
eval_tap $? 26 'PublicPatchUpdateParty' test.out

#- 27 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'yWDrhinI' \
    > test.out 2>&1
eval_tap $? 27 'PublicGeneratePartyCode' test.out

#- 28 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'hpTx83aY' \
    > test.out 2>&1
eval_tap $? 28 'PublicRevokePartyCode' test.out

#- 29 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'g692jcSP' \
    --body '{"userID": "U9lXFTtO"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicPartyInvite' test.out

#- 30 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'oQ4mkEoA' \
    --body '{"leaderID": "1QqhrXH0"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicPromotePartyLeader' test.out

#- 31 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'tHmnNDlA' \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyJoin' test.out

#- 32 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '4LjRxVoi' \
    > test.out 2>&1
eval_tap $? 32 'PublicPartyLeave' test.out

#- 33 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'wLgOu62V' \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyReject' test.out

#- 34 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'Bhrrkf2e' \
    --userId 'pbvRGWpU' \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyKick' test.out

#- 35 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"O7CK8cUH": {}, "4Uo5qAZH": {}, "WTDw2dxP": {}}, "configurationName": "vV7fqgl3", "inactiveTimeout": 65, "inviteTimeout": 18, "joinability": "hg1iiICz", "maxPlayers": 70, "members": [{"ID": "h5ahrAnB", "PlatformID": "1t7iOL02", "PlatformUserID": "etKFWx7N"}, {"ID": "rKQBZMQq", "PlatformID": "AcorY2c1", "PlatformUserID": "3qsKR1FE"}, {"ID": "LR9RPJy1", "PlatformID": "gACtDi6i", "PlatformUserID": "AFy37SiG"}], "minPlayers": 69, "textChat": false, "type": "a7rwLWUY"}' \
    > test.out 2>&1
eval_tap $? 35 'PublicCreateParty' test.out

#- 36 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'hfiKSWKZ' \
    --orderBy 'WqXrjqDQ' \
    --status 'XCop1Fz3' \
    > test.out 2>&1
eval_tap $? 36 'PublicQueryMyGameSessions' test.out

#- 37 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'C2e9iQb4' \
    --orderBy 'MwWnTEEK' \
    --status '5dW4SI0c' \
    > test.out 2>&1
eval_tap $? 37 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE