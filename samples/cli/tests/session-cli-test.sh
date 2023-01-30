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
    --body '{"clientVersion": "ooRaQrC6", "deployment": "mSbwRPQp", "inactiveTimeout": 2, "inviteTimeout": 87, "joinability": "hYWzxxps", "maxPlayers": 98, "minPlayers": 15, "name": "6HNKBbbA", "requestedRegions": ["8Lx4amgd", "eKfclYbJ", "IhsCx5hC"], "textChat": true, "type": "RywJSQ16"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateConfigurationTemplateV1' test.out

#- 5 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetAllConfigurationTemplatesV1' test.out

#- 6 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name '6eQzbN10' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'G28HMEKl' \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "jX3IRh1j", "deployment": "fHZZM1Lb", "inactiveTimeout": 37, "inviteTimeout": 83, "joinability": "vkXsvgHG", "maxPlayers": 93, "minPlayers": 75, "name": "edjfKaTr", "requestedRegions": ["TOJqDNuI", "3ycPcV13", "TTHObcvA"], "textChat": false, "type": "9lsq1Dpu"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'WECE2zBp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationTemplateV1' test.out

#- 9 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'xbKT7dKw' \
    --dsPodName 'XyXll1J8' \
    --fromTime 'oOhJsxye' \
    --gameMode 'cKnLQYgN' \
    --isSoftDeleted 'Xlc7NblM' \
    --joinability 'af4uyg71' \
    --limit '85' \
    --matchPool 'a5wjrWB9' \
    --memberID 'VETpE76f' \
    --offset '32' \
    --order 'CV86oBBw' \
    --orderBy 'kpHPdf7X' \
    --sessionID 'nHSj7nxB' \
    --status 'bFG24OjW' \
    --statusV2 'gRR7MWie' \
    --toTime '2xfAntgF' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryGameSessions' test.out

#- 10 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId '9gl2nLdi' \
    --namespace $AB_NAMESPACE \
    --sessionId 'o01gycjk' \
    --statusType 'e57KtUXE' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGameSessionMember' test.out

#- 11 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'uG1TtVyz' \
    --key 'WLTHsgbe' \
    --leaderID 'NLm1uFcG' \
    --limit '70' \
    --memberID 'XmzN9uaR' \
    --memberStatus 'GQGgqWHm' \
    --offset '66' \
    --order 'coXho9pX' \
    --orderBy 'olPNSsIH' \
    --value 'Xt4bD1g9' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryParties' test.out

#- 12 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'DQ12GBrB' \
    > test.out 2>&1
eval_tap $? 12 'AdminQueryPlayerAttributes' test.out

#- 13 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId '4hzk0ggM' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerAttributes' test.out

#- 14 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"43VdLOSW": {}, "25ogfJla": {}, "kVwwnjgY": {}}, "backfillTicketID": "SBgfV7di", "clientVersion": "0V89jTy5", "configurationName": "xxTZpqUW", "deployment": "ZlEnqSzR", "inactiveTimeout": 62, "inviteTimeout": 2, "joinability": "MkbCC668", "matchPool": "6LvJUd1y", "maxPlayers": 13, "minPlayers": 68, "requestedRegions": ["QO1W4snF", "cQipV4aV", "bfW459z8"], "serverName": "PcDO9lMt", "teams": [{"UserIDs": ["VxRc7erN", "DrAlQAdN", "ACtcKYEi"], "parties": [{"partyID": "YcYIMLV9", "userIDs": ["bMXaBsHR", "1BVtUo0z", "MlRrB1gF"]}, {"partyID": "WzOk5TA0", "userIDs": ["HtvkIrny", "Vbat90PH", "Z5PerATM"]}, {"partyID": "b8XgR0by", "userIDs": ["3GaPFSOo", "o8Ll6gNI", "w1UviJYc"]}]}, {"UserIDs": ["Xz7bwLcz", "do2tF7xp", "LXgrJTMl"], "parties": [{"partyID": "yp8bG1JH", "userIDs": ["RfVx6tsl", "3YhI9UOT", "oBlaTa9d"]}, {"partyID": "WJD9Upj9", "userIDs": ["fu6nxkOC", "lGg8X4WV", "AV071hVD"]}, {"partyID": "fwZtzHuD", "userIDs": ["CBU7S3lU", "YkJqLVMj", "TpcAZnRn"]}]}, {"UserIDs": ["BafO86mx", "6cY4VK26", "7QM0ZyQ8"], "parties": [{"partyID": "wjVp3Mzd", "userIDs": ["26SExSQn", "y6yYGDPq", "o5kX3cGv"]}, {"partyID": "qllypJSw", "userIDs": ["jwEDMxSA", "D3UZ0o5j", "09D9wBp0"]}, {"partyID": "XB9mGXbS", "userIDs": ["SzxZiN1x", "KmZ6Ddtm", "kTVOKdoK"]}]}], "textChat": false, "ticketIDs": ["nAPtIS37", "BAW7651D", "gHVu7tnO"], "type": "XHqh5Xjf"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateGameSession' test.out

#- 15 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"woLfgrMA": {}, "E8GaQxAx": {}, "DjxcUzpA": {}}' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessions' test.out

#- 16 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'qRgXa36j' \
    > test.out 2>&1
eval_tap $? 16 'GetGameSessionByPodName' test.out

#- 17 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '2BLQksUt' \
    > test.out 2>&1
eval_tap $? 17 'GetGameSession' test.out

#- 18 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'qpqw5BGG' \
    --body '{"attributes": {"txptZNAa": {}, "N1C3DUWJ": {}, "a8pIJJ4v": {}}, "backfillTicketID": "GcAvc3eq", "clientVersion": "qDAilz0D", "deployment": "lE45y9Ge", "inactiveTimeout": 4, "inviteTimeout": 66, "joinability": "DYvUGRH8", "matchPool": "WCtVg3x7", "maxPlayers": 7, "minPlayers": 6, "requestedRegions": ["O4c1W6zk", "tlJfwPcZ", "irN77bmB"], "teams": [{"UserIDs": ["aUWTqio0", "U8TI7wCQ", "YXcwOZYX"], "parties": [{"partyID": "4HfDSKZh", "userIDs": ["vC4Fgwtf", "GwT23B8j", "upIjVp8v"]}, {"partyID": "WSN8cUsO", "userIDs": ["yx4DKh77", "POym7Ogc", "YQXIVdnG"]}, {"partyID": "tPORFGzL", "userIDs": ["DAU7ZIGk", "QIDJuN9d", "5r5xw0WO"]}]}, {"UserIDs": ["SehGfRlq", "nk60SMoE", "HEiX5lle"], "parties": [{"partyID": "NaFE4N7m", "userIDs": ["M2pu2F6y", "RF60Q1J1", "8VDGj2zq"]}, {"partyID": "7qIMfGos", "userIDs": ["nq5uzPty", "ZATdV41D", "F2Bbn7h9"]}, {"partyID": "Il28rfUf", "userIDs": ["zV2WFlBp", "9OeQSFZJ", "vHkUfslP"]}]}, {"UserIDs": ["i3kok8c3", "mTEGdUl5", "92gB3cpe"], "parties": [{"partyID": "dehurt1v", "userIDs": ["XtdUOBYL", "meNRZJhH", "JjyQlXtA"]}, {"partyID": "LzgPazG5", "userIDs": ["o3IewggS", "C5pbrhHy", "48KfJPJW"]}, {"partyID": "cb8vG1wI", "userIDs": ["Y1N4vUuN", "5QQUulVi", "9vhhwfmk"]}]}], "ticketIDs": ["iH4fUjvB", "6NzB8kom", "ea3JAyid"], "type": "H8BEajj8", "version": 87}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateGameSession' test.out

#- 19 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'qKZ30r1n' \
    > test.out 2>&1
eval_tap $? 19 'DeleteGameSession' test.out

#- 20 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '24DrOvHk' \
    --body '{"attributes": {"Y5iCEgUO": {}, "IAJzfSEY": {}, "2WwwzRH1": {}}, "backfillTicketID": "nGJtFTXf", "clientVersion": "DJxrIawR", "deployment": "4GEPXCGW", "inactiveTimeout": 63, "inviteTimeout": 9, "joinability": "AJJLMY2G", "matchPool": "2uDDofuW", "maxPlayers": 23, "minPlayers": 57, "requestedRegions": ["j2rtT5sX", "jmKQ8F9Y", "Ou1NAfeE"], "teams": [{"UserIDs": ["CvlmYvDY", "UYedlSEo", "USivZXYy"], "parties": [{"partyID": "HGdph8ri", "userIDs": ["6w3kKkDB", "y8PB9buQ", "beMdE6Rm"]}, {"partyID": "1iHLiQDi", "userIDs": ["UZvIRXrV", "FVEW2GGw", "NeHfcDPp"]}, {"partyID": "ICOMVoNI", "userIDs": ["vnUM0o6L", "Rlq2YpZc", "lLLMJZZu"]}]}, {"UserIDs": ["2A05TwUt", "OrTUJTZx", "9ZmJH26L"], "parties": [{"partyID": "nXxq2kOA", "userIDs": ["5hcDclIa", "gpg7OCGa", "7BeIMH6s"]}, {"partyID": "tSgsaI2a", "userIDs": ["Rkp4sZLY", "gkkXvDV0", "JAtnbtoq"]}, {"partyID": "H0Q0qZG2", "userIDs": ["evfUlF9r", "gtAvdBFf", "n9yIxEyH"]}]}, {"UserIDs": ["wTyaF9Xt", "l8IJ4LiI", "Mfm27Gj4"], "parties": [{"partyID": "xjGlNZia", "userIDs": ["2t1ceAV9", "PwjnHEKF", "A7pl7C6E"]}, {"partyID": "MtKNk908", "userIDs": ["9YEnbW10", "EIl3w6qv", "L6WTxtpx"]}, {"partyID": "8SeqgPxT", "userIDs": ["w0TEVqHc", "ITyYK2ny", "fMbi2IZj"]}]}], "ticketIDs": ["XBQ12qtu", "WD2D05bo", "bhmk97E6"], "type": "GEdqgneL", "version": 65}' \
    > test.out 2>&1
eval_tap $? 20 'PatchUpdateGameSession' test.out

#- 21 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'DussuT0p' \
    --body '{"userID": "PX0RZcPk"}' \
    > test.out 2>&1
eval_tap $? 21 'PublicGameSessionInvite' test.out

#- 22 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'hpnikI0C' \
    > test.out 2>&1
eval_tap $? 22 'JoinGameSession' test.out

#- 23 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'DPUjLQpu' \
    > test.out 2>&1
eval_tap $? 23 'LeaveGameSession' test.out

#- 24 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'khq3qwdq' \
    > test.out 2>&1
eval_tap $? 24 'PublicGameSessionReject' test.out

#- 25 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "LRHEAjg6"}' \
    > test.out 2>&1
eval_tap $? 25 'PublicPartyJoinCode' test.out

#- 26 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'NJPyn6DS' \
    > test.out 2>&1
eval_tap $? 26 'PublicGetParty' test.out

#- 27 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '9MApOB32' \
    --body '{"attributes": {"6LW6bDAP": {}, "5hzcpKXI": {}, "nGIE25ty": {}}, "inactiveTimeout": 100, "inviteTimeout": 63, "joinability": "EgAcWpVy", "maxPlayers": 38, "minPlayers": 56, "type": "zOCK5UVf", "version": 4}' \
    > test.out 2>&1
eval_tap $? 27 'PublicUpdateParty' test.out

#- 28 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '4XMqpz3s' \
    --body '{"attributes": {"ZBE7YhCf": {}, "z1tnNHeo": {}, "ZkpCa2sV": {}}, "inactiveTimeout": 56, "inviteTimeout": 66, "joinability": "wmT55cVw", "maxPlayers": 29, "minPlayers": 22, "type": "1n7B08NK", "version": 75}' \
    > test.out 2>&1
eval_tap $? 28 'PublicPatchUpdateParty' test.out

#- 29 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'r808OLzb' \
    > test.out 2>&1
eval_tap $? 29 'PublicGeneratePartyCode' test.out

#- 30 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'CRifaoNB' \
    > test.out 2>&1
eval_tap $? 30 'PublicRevokePartyCode' test.out

#- 31 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'rFcR4HDy' \
    --body '{"userID": "FlquF8ci"}' \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyInvite' test.out

#- 32 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'rigyAWVn' \
    --body '{"leaderID": "OZiR27Xv"}' \
    > test.out 2>&1
eval_tap $? 32 'PublicPromotePartyLeader' test.out

#- 33 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'EV2ljrU7' \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyJoin' test.out

#- 34 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'no9XVdBv' \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyLeave' test.out

#- 35 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'kUbYducl' \
    > test.out 2>&1
eval_tap $? 35 'PublicPartyReject' test.out

#- 36 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'RFg63xAL' \
    --userId 'uu5Cppd4' \
    > test.out 2>&1
eval_tap $? 36 'PublicPartyKick' test.out

#- 37 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"iiXPQLpz": {}, "ER0g7BEf": {}, "76kxM87q": {}}, "configurationName": "EtI7AzMt", "inactiveTimeout": 85, "inviteTimeout": 98, "joinability": "vOZFyno1", "maxPlayers": 99, "members": [{"ID": "ygkmJKcN", "PlatformID": "NYYkcziH", "PlatformUserID": "Qoucw1ic"}, {"ID": "l9pVSY0i", "PlatformID": "DlkDtrAT", "PlatformUserID": "q2vcVeMa"}, {"ID": "COGGgENe", "PlatformID": "VjpZ1R8K", "PlatformUserID": "N6p4tWxc"}], "minPlayers": 76, "textChat": true, "type": "ADS25edD"}' \
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
    --body '{"crossplayEnabled": false, "data": {"qtCf5VDc": {}, "gKAfD4RY": {}, "I1bAHuIy": {}}, "platforms": [{"name": "oc7JWwtw", "userID": "9B564otD"}, {"name": "fh0q04Xb", "userID": "ZJb4D7J9"}, {"name": "lF9s6lvK", "userID": "3fFWcVjI"}]}' \
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
    --order 'yj1on4Hg' \
    --orderBy 'uBZ9Qicq' \
    --status 'oBplQmrg' \
    > test.out 2>&1
eval_tap $? 41 'PublicQueryMyGameSessions' test.out

#- 42 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'B9RByg5H' \
    --orderBy 'YhgyE33P' \
    --status 'm6wCCEOB' \
    > test.out 2>&1
eval_tap $? 42 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE