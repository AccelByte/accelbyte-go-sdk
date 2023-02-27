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
    --body '{"clientVersion": "VWFm37ia", "deployment": "1Kc5Ic6F", "inactiveTimeout": 65, "inviteTimeout": 75, "joinability": "wmZDjufO", "maxPlayers": 4, "minPlayers": 11, "name": "slh23eFO", "requestedRegions": ["AIeMOJWY", "xtriVpfT", "OKOJiJIl"], "textChat": false, "type": "f8B9S0tM"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateConfigurationTemplateV1' test.out

#- 5 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetAllConfigurationTemplatesV1' test.out

#- 6 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'KVJonB84' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name '0YXj1NfY' \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "Hthjf7VJ", "deployment": "0NwRYbhx", "inactiveTimeout": 71, "inviteTimeout": 40, "joinability": "voG6N2WT", "maxPlayers": 9, "minPlayers": 19, "name": "Igt5bB6Z", "requestedRegions": ["R4UhhrFJ", "oBMeqh9i", "DJpMu1jx"], "textChat": true, "type": "ikpvF2o3"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'bIeGN5xk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationTemplateV1' test.out

#- 9 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'M3SofXPl' \
    --dsPodName 'UU0Ped51' \
    --fromTime 'k5YdCq8S' \
    --gameMode 'HZIyXAAL' \
    --isSoftDeleted 'k6g0yQt4' \
    --joinability 'NvG8QqZf' \
    --limit '81' \
    --matchPool 'TWtxRj84' \
    --memberID 'amRplyrq' \
    --offset '7' \
    --order 'WBcSrYLb' \
    --orderBy 'm9ZLPD3h' \
    --sessionID 'OnKUop8F' \
    --status 'T7rGwe08' \
    --statusV2 'TrQW7uT0' \
    --toTime 'F2re8kM9' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryGameSessions' test.out

#- 10 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'c8UPJwrx' \
    --namespace $AB_NAMESPACE \
    --sessionId 'ooWzRafd' \
    --statusType 'zBOZeTya' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGameSessionMember' test.out

#- 11 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability '0z1qZM5z' \
    --key 'UfW3riGM' \
    --leaderID 'ATWNZRkG' \
    --limit '49' \
    --memberID 'xHOaM3aT' \
    --memberStatus 'E4T3LV89' \
    --offset '31' \
    --order 'splqDst3' \
    --orderBy '2V1jFUaG' \
    --value 'bPs8IuBW' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryParties' test.out

#- 12 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'shr7C19E' \
    > test.out 2>&1
eval_tap $? 12 'AdminQueryPlayerAttributes' test.out

#- 13 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'NsLtYwK3' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerAttributes' test.out

#- 14 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"7yzLvrzf": {}, "Sg2AzoR7": {}, "P89NJiJt": {}}, "backfillTicketID": "9Q5r7atY", "clientVersion": "uAsAwfvN", "configurationName": "y67nZQDY", "deployment": "E3YCR5Ri", "inactiveTimeout": 94, "inviteTimeout": 12, "joinability": "vXo29znZ", "matchPool": "IKTLwamU", "maxPlayers": 34, "minPlayers": 35, "requestedRegions": ["ue0TCYhp", "r0tHhCOH", "OOhYpHek"], "serverName": "nyhXMfgR", "teams": [{"UserIDs": ["FhngU8L0", "M9S05tyn", "ZDbx2xLO"], "parties": [{"partyID": "Ctqe6tHn", "userIDs": ["D1fjUcQQ", "o5WIi5Tq", "ZatASfCr"]}, {"partyID": "Naw0VfMN", "userIDs": ["ASTGzfpm", "bmTuuFKo", "VFsMGjQ7"]}, {"partyID": "OXwUsnEd", "userIDs": ["pnW4PjFZ", "aINQjkXG", "eEdLri51"]}]}, {"UserIDs": ["fgSLxXr4", "iCj6Bw8g", "qEixugMa"], "parties": [{"partyID": "zAXU1vT4", "userIDs": ["4oHj7lDa", "k89r22kU", "5dQYkUwR"]}, {"partyID": "iyh29A3Z", "userIDs": ["2IDF92nM", "MveBzuNY", "ubsjjTdx"]}, {"partyID": "TegtjfmH", "userIDs": ["I079jcKr", "9H8O8yIf", "DqAuN9xi"]}]}, {"UserIDs": ["TvG308YK", "bu6sVeh1", "3KLt3Cvk"], "parties": [{"partyID": "Ipsf4iRE", "userIDs": ["VIaEGuHg", "DkcsDfkX", "tIS63itm"]}, {"partyID": "2LmGt9rX", "userIDs": ["lkflbt9k", "guC9MJ8A", "vfLZOy5i"]}, {"partyID": "rUj62oKP", "userIDs": ["4L16W7Qa", "kIYsdp5o", "Sc3ZrOdO"]}]}], "textChat": false, "ticketIDs": ["GxL75Boj", "ApfwR4YT", "L5IAzGYU"], "type": "R57Jo441"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateGameSession' test.out

#- 15 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"SZwhKj4y": {}, "B8irLeTU": {}, "Y9NJsuRW": {}}' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessions' test.out

#- 16 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'pFOnEDdV' \
    > test.out 2>&1
eval_tap $? 16 'GetGameSessionByPodName' test.out

#- 17 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '1OSxt4W3' \
    > test.out 2>&1
eval_tap $? 17 'GetGameSession' test.out

#- 18 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'dk0tYhOU' \
    --body '{"attributes": {"oqEpTIA5": {}, "VE0276Av": {}, "op4YdvMG": {}}, "backfillTicketID": "l774jZxB", "clientVersion": "ypv2hoAb", "deployment": "60vH3mO3", "inactiveTimeout": 28, "inviteTimeout": 61, "joinability": "s6GxyACh", "matchPool": "Cmxp7CGf", "maxPlayers": 69, "minPlayers": 33, "requestedRegions": ["X6SIsWSU", "szAL9w4z", "9tPUd1JN"], "teams": [{"UserIDs": ["Qq1IVs90", "iPifRUB8", "7HI2ZZRp"], "parties": [{"partyID": "f3YyPnV8", "userIDs": ["8fkAg4bH", "66RtHk4h", "Pi2j07rF"]}, {"partyID": "vilKdu4q", "userIDs": ["glHuuEOy", "KSK1Mqci", "L2zK8En2"]}, {"partyID": "c3re8cP0", "userIDs": ["zthzA54Y", "zZN2Ep2y", "hBsVYfkC"]}]}, {"UserIDs": ["QZoojpDi", "qlznZRbS", "4MW1jnNZ"], "parties": [{"partyID": "s6GU57Ee", "userIDs": ["Cp4NKlTF", "1fTAyiry", "KC5LCC3I"]}, {"partyID": "BDdHbgXH", "userIDs": ["RQNBlvA8", "EzFawbxU", "vfK5OXZR"]}, {"partyID": "oUH4gyWK", "userIDs": ["HYKIe57n", "cPLNcsFN", "ZaSawnqd"]}]}, {"UserIDs": ["ZrmIF12Y", "FlPl9E4C", "tHsvT3yS"], "parties": [{"partyID": "4kqj34P8", "userIDs": ["wYwkEp9E", "tPt6vtfy", "Ds2jcd0s"]}, {"partyID": "AUduROcZ", "userIDs": ["iF910tCd", "TZA8GgOa", "dULgYley"]}, {"partyID": "PYk08iVh", "userIDs": ["6fQ6sod5", "hn6RTBFU", "91QqT7Nm"]}]}], "ticketIDs": ["jQhs9d46", "Rk4DhVsF", "5cyKl3Pc"], "type": "qXzU6qCy", "version": 82}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateGameSession' test.out

#- 19 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'd2VANM7m' \
    > test.out 2>&1
eval_tap $? 19 'DeleteGameSession' test.out

#- 20 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '7DVMLVar' \
    --body '{"attributes": {"gKAB1Pjq": {}, "RwTkNl6G": {}, "oUKM8Fmi": {}}, "backfillTicketID": "ZpxLESC2", "clientVersion": "NHhyJmEh", "deployment": "ihGgyZTi", "inactiveTimeout": 4, "inviteTimeout": 78, "joinability": "ttEGj6r8", "matchPool": "nBPEJtEM", "maxPlayers": 63, "minPlayers": 6, "requestedRegions": ["q8qSqRlW", "V3aG2zcS", "TbYrXUYn"], "teams": [{"UserIDs": ["jFUjCktv", "U1KH6x2Y", "eGdYt058"], "parties": [{"partyID": "AndiCpXq", "userIDs": ["F1ahOfIA", "NZwKBATQ", "6ctMg5ae"]}, {"partyID": "ixTIUzGY", "userIDs": ["2tkxSOIy", "jAgER4mQ", "rooafbsf"]}, {"partyID": "84Ag9M0A", "userIDs": ["64WwtOH9", "5nqdDRpk", "EwSs3JJX"]}]}, {"UserIDs": ["eN9pCrO7", "1An4qWET", "oJ9MQ2od"], "parties": [{"partyID": "zWmVblpy", "userIDs": ["VuVDxbxQ", "yTIojhJm", "IXqQSk30"]}, {"partyID": "SnKkm6pw", "userIDs": ["VSkQAls1", "es1CKPkK", "dzQW7xVH"]}, {"partyID": "7ZbhZBxj", "userIDs": ["vCcIbQqf", "NvwjLWhm", "hhooD34S"]}]}, {"UserIDs": ["NzOgu3aS", "ZfepikPF", "swg1XcsT"], "parties": [{"partyID": "VvLRkivg", "userIDs": ["FnRRanU8", "5uiZb1Gf", "okZnIWCz"]}, {"partyID": "tszrkKex", "userIDs": ["2MIJyP8t", "3PpmYhjD", "0JHaJuo7"]}, {"partyID": "7SFD4vvY", "userIDs": ["nH069tj8", "Ma7glxxY", "AIsC9UGJ"]}]}], "ticketIDs": ["ds2JKolz", "MRlOFFM9", "Ez4Fq7uH"], "type": "Zg9VBUhY", "version": 86}' \
    > test.out 2>&1
eval_tap $? 20 'PatchUpdateGameSession' test.out

#- 21 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId '7ZBdSB4Z' \
    --body '{"userID": "qwRMdd9n"}' \
    > test.out 2>&1
eval_tap $? 21 'PublicGameSessionInvite' test.out

#- 22 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'vfsRGPQw' \
    > test.out 2>&1
eval_tap $? 22 'JoinGameSession' test.out

#- 23 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'cnyylhlP' \
    > test.out 2>&1
eval_tap $? 23 'LeaveGameSession' test.out

#- 24 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'odweOFhh' \
    > test.out 2>&1
eval_tap $? 24 'PublicGameSessionReject' test.out

#- 25 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "0OZ9ssYB"}' \
    > test.out 2>&1
eval_tap $? 25 'PublicPartyJoinCode' test.out

#- 26 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'GWRPCeBG' \
    > test.out 2>&1
eval_tap $? 26 'PublicGetParty' test.out

#- 27 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'hB3zjhl2' \
    --body '{"attributes": {"b8aDE6yy": {}, "OaRPt7BU": {}, "Obwbk7H1": {}}, "inactiveTimeout": 0, "inviteTimeout": 33, "joinability": "6r5NzgBV", "maxPlayers": 5, "minPlayers": 25, "type": "I1Zpj85S", "version": 72}' \
    > test.out 2>&1
eval_tap $? 27 'PublicUpdateParty' test.out

#- 28 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'TFypHsDU' \
    --body '{"attributes": {"m2FKiVhy": {}, "tUwLST0C": {}, "XL16JUXJ": {}}, "inactiveTimeout": 45, "inviteTimeout": 85, "joinability": "ASqSzFHm", "maxPlayers": 54, "minPlayers": 92, "type": "Crn0xdhX", "version": 86}' \
    > test.out 2>&1
eval_tap $? 28 'PublicPatchUpdateParty' test.out

#- 29 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'mMlGmewF' \
    > test.out 2>&1
eval_tap $? 29 'PublicGeneratePartyCode' test.out

#- 30 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '1FeFJCRJ' \
    > test.out 2>&1
eval_tap $? 30 'PublicRevokePartyCode' test.out

#- 31 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'u0XsI848' \
    --body '{"userID": "8337wMkr"}' \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyInvite' test.out

#- 32 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId '8u2nTuwn' \
    --body '{"leaderID": "gKVLsa41"}' \
    > test.out 2>&1
eval_tap $? 32 'PublicPromotePartyLeader' test.out

#- 33 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'm1AYPdK1' \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyJoin' test.out

#- 34 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'mglylQpZ' \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyLeave' test.out

#- 35 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'VoEyXYNd' \
    > test.out 2>&1
eval_tap $? 35 'PublicPartyReject' test.out

#- 36 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'jeNi6hS3' \
    --userId 'DkM0jpKP' \
    > test.out 2>&1
eval_tap $? 36 'PublicPartyKick' test.out

#- 37 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"06s7yJAk": {}, "DXrYq4gS": {}, "lwauponl": {}}, "configurationName": "WZAaSulb", "inactiveTimeout": 9, "inviteTimeout": 20, "joinability": "8DeBhf7V", "maxPlayers": 90, "members": [{"ID": "uPpZ0AP7", "PlatformID": "b5uyIMem", "PlatformUserID": "CZKhX8JG"}, {"ID": "jcdpGEps", "PlatformID": "EOzWz638", "PlatformUserID": "nUpqjr8J"}, {"ID": "MdSLJgx1", "PlatformID": "vRzU4wbn", "PlatformUserID": "lfEBBEY2"}], "minPlayers": 51, "textChat": true, "type": "Q7YyC17U"}' \
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
    --body '{"crossplayEnabled": true, "data": {"BLRUrOfj": {}, "ej7uiZR6": {}, "z0IPZfkX": {}}, "platforms": [{"name": "ZjdMn3hl", "userID": "GdEyk3JY"}, {"name": "rwajIUqZ", "userID": "bPBXp4GM"}, {"name": "9YnKMP1R", "userID": "bZ3WPrwS"}]}' \
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
    --order 'hxQCbGT1' \
    --orderBy 'oDBAXoDp' \
    --status 'TgSdpNvK' \
    > test.out 2>&1
eval_tap $? 41 'PublicQueryMyGameSessions' test.out

#- 42 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'jQyIoIqz' \
    --orderBy 'jITWd1X4' \
    --status 'KyIRVuXq' \
    > test.out 2>&1
eval_tap $? 42 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE