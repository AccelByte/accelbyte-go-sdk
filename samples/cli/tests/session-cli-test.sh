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
echo "1..60"

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

#- 5 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetConfigurationAlertV1' test.out

#- 6 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 50}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateConfigurationAlertV1' test.out

#- 7 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 49}' \
    > test.out 2>&1
eval_tap $? 7 'AdminCreateConfigurationAlertV1' test.out

#- 8 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationAlertV1' test.out

#- 9 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 92, "PSNSupportedPlatforms": ["r1a8GkTiV2V5QgaK", "j3eRDarQheWIHmXL", "xtcMNMP6FPPuRQOZ"], "SessionTitle": "tVEzOPDNACw84b8A", "ShouldSync": true, "XboxServiceConfigID": "gw3HoKqq9Y0KyjN3", "XboxSessionTemplateName": "BgrtESMVpdTq2RbG", "localizedSessionName": {"8RALw4ndKBg79j4o": {}, "FrEghv0IIlyqgwOg": {}, "7bRs58AsTiTYLUpg": {}}}, "PSNBaseUrl": "o9jBkAddoQ3Dlrii", "autoJoin": false, "clientVersion": "mF6XzPs2vdv2kiJk", "deployment": "kmfaqnGOsUUXAeeJ", "dsSource": "vQcxzjkMtOTIWyN4", "fallbackClaimKeys": ["uZRbe5moVTk1emC0", "ZdNE8zws6MeiY1Ui", "34iZeDuGmV9qKGpE"], "inactiveTimeout": 31, "inviteTimeout": 39, "joinability": "bfFaER5jlIz733mb", "maxActiveSessions": 72, "maxPlayers": 55, "minPlayers": 8, "name": "5E5K0FaBLRsr5tbB", "persistent": true, "preferredClaimKeys": ["BRoHD5RoB0sXW8uk", "CgPmCQGPwyyjiEJK", "IKpxOZok3fu1LoXT"], "requestedRegions": ["iXuwnycRdxyHZiLv", "cDeUSmrr5hI004dv", "OxLdozl1m6DB9Srg"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "IlEYK1mM2T4QOm9d"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateConfigurationTemplateV1' test.out

#- 10 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --name '2D7ArYYNHVz1XX3H' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetAllConfigurationTemplatesV1' test.out

#- 11 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'UAHp9cu4HEEvr63I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetConfigurationTemplateV1' test.out

#- 12 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name '1VLBCAJTENLeTamv' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 18, "PSNSupportedPlatforms": ["dUtJE025FgK7jYMP", "ZNeDvrT5OgXSQ2v3", "pKnrds1KrexbDKJC"], "SessionTitle": "cL9CnG2m9rKip7QF", "ShouldSync": true, "XboxServiceConfigID": "TlJdI4QgXnsOQL8u", "XboxSessionTemplateName": "y4lCKgOFhTQpvUPh", "localizedSessionName": {"Uza0eR9WVGVgDFQO": {}, "ziKyFEWuC6Dn0vp6": {}, "owwU5NCWVkKuzxFI": {}}}, "PSNBaseUrl": "xGVPTwMmLKrPPFZk", "autoJoin": false, "clientVersion": "V3s2INrKViwp8948", "deployment": "NXQzC03GP69GcWSh", "dsSource": "02u1z5JGjEytXZaj", "fallbackClaimKeys": ["dAlBRcZUmAAqCp39", "twTSc9NMaYlqXnwC", "GaiMC4Pt2hSFLiOE"], "inactiveTimeout": 100, "inviteTimeout": 16, "joinability": "6kRnB5vsZwrOt6y9", "maxActiveSessions": 91, "maxPlayers": 92, "minPlayers": 22, "name": "L16Btrnxw6QzjWgk", "persistent": false, "preferredClaimKeys": ["0Y3DqgKoXDCz8DaW", "5gzRXc10ntlktpbb", "P6FcouBeKurnbNQv"], "requestedRegions": ["WpKvl0uQoUZORHFU", "MI1jZm1Q58dJJv7j", "WlQEQf3GBIXcUVik"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "0hwun69HNHs9JMV7"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationTemplateV1' test.out

#- 13 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'PCQMvH4IZtMEDq2X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteConfigurationTemplateV1' test.out

#- 14 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminGetDSMCConfiguration' test.out

#- 15 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminSyncDSMCConfiguration' test.out

#- 16 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName '0cfDfXSBKyPUWS3k' \
    --dsPodName 'AemDAWOTLhRtVckO' \
    --fromTime 'xXdMco8kVKhp2E8I' \
    --gameMode '7Hrq45jP5EyeovXG' \
    --isPersistent 'B3ugDTOuYPIPxCb0' \
    --isSoftDeleted 'SU8ZjJgjbn2sKbSf' \
    --joinability 'fQwZSSLuc35F77na' \
    --limit '27' \
    --matchPool 'b8RSPXV0rUL1DtdE' \
    --memberID '9sOcGmGb83GxmPvJ' \
    --offset '71' \
    --order 'bHiegHh5p2gCdvgH' \
    --orderBy 'o9OODINk7g6wzNKo' \
    --sessionID '7hiAiXDWgOLgh2v1' \
    --status '1qH10wR1uDEz70Bf' \
    --statusV2 'TH70FCMXNHBLSLIU' \
    --toTime 'dnyI81JbKESRfGY0' \
    > test.out 2>&1
eval_tap $? 16 'AdminQueryGameSessions' test.out

#- 17 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["zqmk0dQ97w5xjNPQ", "fMQsWdQA6zD958tq", "yadIs3tNZwklEEyD"]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteBulkGameSessions' test.out

#- 18 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'f4XiesjzBmYflThI' \
    --namespace $AB_NAMESPACE \
    --sessionId 'znWA9nxTdzQaiOQj' \
    --statusType 'wTsyHTp9P4VEMLuO' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateGameSessionMember' test.out

#- 19 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability '4Mvr4cZ9PcBQD3Mr' \
    --key 'HmI9CfRbvxf89639' \
    --leaderID 'OAKwzJkDHfVZs5eR' \
    --limit '67' \
    --memberID 'FtKVt406Vr9HfFar' \
    --memberStatus '2zJePoHkrgPC3UkB' \
    --offset '23' \
    --order 'DyJ1hykrKMrrmT8N' \
    --orderBy 'rEVeaC7suze3YoX8' \
    --partyID '6v8n49bADW52qXF2' \
    --value '7CCqcQi6CVygiZgQ' \
    > test.out 2>&1
eval_tap $? 19 'AdminQueryParties' test.out

#- 20 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminGetPlatformCredentials' test.out

#- 21 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "941r06az3U47scHN", "clientSecret": "1Cgka9ZPlmJdpUs9", "scope": "0evW530BzF84jD4E"}}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdatePlatformCredentials' test.out

#- 22 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminDeletePlatformCredentials' test.out

#- 23 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'skZ08olqxx9SZdgk' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryPlayerAttributes' test.out

#- 24 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'em3RSz5W7AITFeRg' \
    > test.out 2>&1
eval_tap $? 24 'AdminGetPlayerAttributes' test.out

#- 25 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"kHTnAyUDwtuAhJPT": {}, "hjbwEaWjuo1Lw7ka": {}, "EcdkCTWt6N2N3mR6": {}}, "autoJoin": true, "backfillTicketID": "JzO6HbwGJSsKCn0z", "clientVersion": "s5czu2dXVwvdWRQw", "configurationName": "RKZv3VUDEaZtxYvA", "deployment": "98nj3qR3gvS0491y", "dsSource": "lM5fVLCZ43XNQF5y", "fallbackClaimKeys": ["hhUmhIxdAUrkJEcH", "qpiWrHtcjqd2Gqnm", "n4WlGZwGEsYAfsaA"], "inactiveTimeout": 66, "inviteTimeout": 85, "joinability": "dCEBoaZmyZiTAimp", "matchPool": "GLt2ri9rn0NGPW83", "maxPlayers": 50, "minPlayers": 33, "preferredClaimKeys": ["bFjZuMtsUChJTVtD", "ZzjF60x79uxqeeCa", "oiy4BsWqqkzMwpgI"], "requestedRegions": ["9EikmhiV1A0iFbZM", "TOS6A7sAXjC6QwJ9", "DHi570ZDSV43ZqoK"], "serverName": "8XtXeyW0Yb0mHtvs", "teams": [{"UserIDs": ["Wh9IPxlLUGriNLse", "3M2E9C3qdeTXlq4x", "9CbQy2iR0VBU4RyV"], "parties": [{"partyID": "nkC5VPonbFPWPHxA", "userIDs": ["7M9OMI73LmbfdwCc", "xCsrzjWpz5OLYdW3", "gWv1qW5kdVR2P78E"]}, {"partyID": "YVgz5hNue3AGdZtN", "userIDs": ["3vb42I2qZS8Y6Oww", "1zhuNjoA6ZJxt9nY", "KSilDgO2L568Zcyq"]}, {"partyID": "8dcDyvfeksq3DFfT", "userIDs": ["i7v7SnriDgVCtmA8", "NaDPobIaYdAjYnim", "HqmcTF31IsuMweBS"]}]}, {"UserIDs": ["l5DGJJaMdJYK91ck", "42LQil7bnJOypg43", "NpRwLLduFFC9Vfcv"], "parties": [{"partyID": "uAszu3ltf5TFGzWH", "userIDs": ["LTsifdWedJNHft0m", "dHSR11KUBCFLBc4X", "fXOnsrHkNr4eAwpl"]}, {"partyID": "XdylzkbPtjCXAEjc", "userIDs": ["muXfU82DpAf8YCq8", "AOzao1xFILbm1sL8", "pDhNvsRM3hJpewoh"]}, {"partyID": "eN2Dk6I9hNp9A5A5", "userIDs": ["S9z7RtBOH19eJO1c", "0tighmJYEzYXQ7yD", "BDin5HDLqvu1EMbj"]}]}, {"UserIDs": ["5Sm0hDKRuT5Me2SK", "YLGB16xXpEiDQsBp", "dpOuK5T5Sm5i1HiG"], "parties": [{"partyID": "WKIvtD3i60BZWNdg", "userIDs": ["PDv41Sk0npQXI2PA", "5lBg9yYzyZ2N55Je", "6v26NfDC2S3CyykW"]}, {"partyID": "5scqJdPN6n8iZrDN", "userIDs": ["HefiZXI8S1W9ZT12", "LWVVEE465rMdSYQj", "jfIni5bXfvtUwG4O"]}, {"partyID": "LWfPnsk6U5aR6z7h", "userIDs": ["PySZV7MnfJtXygV1", "W8RjaMJ3v8dlPRJW", "TsKlezqXq6r7YuXz"]}]}], "textChat": true, "ticketIDs": ["TIOUIl2sm5udykNt", "wYgGicvZLrF7ibnN", "eLTdM7J7NWV7k6Ka"], "tieTeamsSessionLifetime": true, "type": "O6mCQEKYwOMcqUbZ"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateGameSession' test.out

#- 26 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"x9NsJouKNlq0ZUam": {}, "EJ5yYluM1AUE1CMp": {}, "ssIQGoOkH8ZqGXoe": {}}' \
    > test.out 2>&1
eval_tap $? 26 'PublicQueryGameSessions' test.out

#- 27 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8Zglze2HuR3TVtDu"}' \
    > test.out 2>&1
eval_tap $? 27 'PublicSessionJoinCode' test.out

#- 28 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'yzOpHnvWPAjuR3Mz' \
    > test.out 2>&1
eval_tap $? 28 'GetGameSessionByPodName' test.out

#- 29 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ynf0bJAWuZrhDej6' \
    > test.out 2>&1
eval_tap $? 29 'GetGameSession' test.out

#- 30 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '8IU6g9CK3vTDpnBM' \
    --body '{"attributes": {"1oAVRToagxALsnzA": {}, "PxipX7kkjbyvTjug": {}, "wRMd86Fcw3cq8SRh": {}}, "backfillTicketID": "Dl7YE7Q3M5k40liF", "clientVersion": "pQm2wFsagEGsswqz", "deployment": "Y5zFZoFNz5x3vlJP", "fallbackClaimKeys": ["zQXK0OOn6DgeU5hD", "AnV5ZuEuVEG3xHcs", "NpDwObWaSbizM9j0"], "inactiveTimeout": 39, "inviteTimeout": 7, "joinability": "LWqOuxZUaYMHcHoe", "matchPool": "dwGgdmdTIQN0SHPH", "maxPlayers": 32, "minPlayers": 86, "preferredClaimKeys": ["D8dPaRHlf1zjZiYO", "K1BLu0wZyHqAS0tj", "H5hXVdidKzMfwFlj"], "requestedRegions": ["OgsRu1dhkvKRZJMn", "B4i6rsJauIq2pjKg", "n3PYzuoNrGdu22sn"], "teams": [{"UserIDs": ["QpDmLqKSX6JpZLGI", "JP2yk0R640BjxlyV", "W3rzbl9mVD8Mv35T"], "parties": [{"partyID": "D0pofpR3vBviQfEs", "userIDs": ["ZUl95bIkykQnl7pU", "89d1whmPAb6RvEEo", "qiZdf5cpPwW0sAKc"]}, {"partyID": "VAc7fDaLuPZfkL2n", "userIDs": ["NbrbEFTWuIMjIDjm", "ORzU7U6zH3zBmuvL", "A55vAey4KCoyiwCm"]}, {"partyID": "jE0f5EKnlj2Al1d1", "userIDs": ["VZrMHZ1fbtY5dIZm", "ToXihwKBlrEQR7y6", "DRuqDmJIp3TzOKlC"]}]}, {"UserIDs": ["oSd4SuokaZfl5p5T", "bgrE4jXEXuCLxcIu", "3toR5poIsCMytL4R"], "parties": [{"partyID": "s66CCCYlOre4q3R4", "userIDs": ["fPkFotDQ6ueem13Y", "ZPhYnoaNzZgRexK0", "X82CBQySQ0kzAlVd"]}, {"partyID": "jzI3p9Sd4BYzRzTZ", "userIDs": ["lAzdMoa9xCaQsKtA", "G88OcqhLijATMCMJ", "RzqRuabIibFWSKBx"]}, {"partyID": "9E8FWV5EDne7qrou", "userIDs": ["4mW9bJ5hdrnodgaN", "HdXfsId4FJqrxeWw", "jqKqL4aVOQvybfbe"]}]}, {"UserIDs": ["d4EmlKP2GFjup2kq", "DQWPTFj1w5ZVEN5D", "Tu2xuIDmxVSLQnVd"], "parties": [{"partyID": "GPDYCE5YyLid0V85", "userIDs": ["mN4pV4ikWioYNpYC", "cVft5zpfTGbEPyWn", "KAUYBupVZhsuOGD8"]}, {"partyID": "MaxIa0viTJIE5dLE", "userIDs": ["hBou8D1Uvh8JxW1x", "jA4hyoRXpKgfVm5D", "qdjjQ6soRQXG6Kga"]}, {"partyID": "yyeKTLfqYq4d9FPY", "userIDs": ["o6nW0Z8k0VzoGLyf", "H0BFqxiMoFcxio8U", "0MHM8H237kMcRY9F"]}]}], "ticketIDs": ["3pWEHCDVNko0yzzb", "AHI0OjMJuCqCCmey", "XwcKSGwQ8eh5cQuo"], "tieTeamsSessionLifetime": false, "type": "NpKrhCIOTVGK9QPo", "version": 68}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateGameSession' test.out

#- 31 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'gYkoupbFn7LsuwAP' \
    > test.out 2>&1
eval_tap $? 31 'DeleteGameSession' test.out

#- 32 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '8YxoqrV6RLLhAOLj' \
    --body '{"attributes": {"ocp2QHzH1DUWuwG7": {}, "Wy4nwf4bwwqKjfB4": {}, "BJ1jE5Raywrnvyul": {}}, "backfillTicketID": "8L1YsVeDQ9ziuHNt", "clientVersion": "MnF4H9i75L41f7x2", "deployment": "o7NJpnYBnWvqTUSb", "fallbackClaimKeys": ["2j9vrfMnZv9QsQst", "w6tFQPMOpWRhVOsZ", "lHGMuuGxtChxJW8j"], "inactiveTimeout": 12, "inviteTimeout": 18, "joinability": "9S4psmXWkv11woGN", "matchPool": "bAZSDHqMtmaP2E8N", "maxPlayers": 28, "minPlayers": 72, "preferredClaimKeys": ["2Daav9FYfBe4tICM", "7SAGAwWHhkEvTekY", "6XaPugw4vOYGPhZg"], "requestedRegions": ["8nPRLmgjEZGCbVA0", "giS47XZiiHPK0Ikt", "AfAGPuhC5bnatWXq"], "teams": [{"UserIDs": ["lNBkZtg8stKisgkN", "miGOnTepxJp0uGpK", "dAFlaHyzW3H6iMom"], "parties": [{"partyID": "JPdXEH74XFrVjjOr", "userIDs": ["HpqahIxxNYcy7Q3U", "qmDGB9LBTbhJKHNM", "1LKvAwA9AtWJPv0T"]}, {"partyID": "h3L7wlvzoZs1firj", "userIDs": ["ozwevGxAOowZ1Oya", "hMhZDTWqx59YFblz", "5FsIO41ifeFq575d"]}, {"partyID": "kuSYTI55mjwyp2bE", "userIDs": ["qpHk8AzasbB43ZC3", "y5ANd6Pd5lUR4iDM", "QzpMXEGf1Budh135"]}]}, {"UserIDs": ["gO7pRloK1Sh6HXKv", "2p30neQcL01YYZXu", "7BEkaQkmXIS1z7wD"], "parties": [{"partyID": "M6hQhoYH7JfoVpAz", "userIDs": ["sYpc6YqxnSLWH2SZ", "ZkEJsccqBMVfc2JU", "Ll6GS67jQpNfP89m"]}, {"partyID": "optVdAK3cY9NkwXQ", "userIDs": ["RqMe4qv36y7uTOHD", "kT882kGmhhWXijfj", "TVFfE3ZK8acoZULw"]}, {"partyID": "9Js1xzxSNUxymgh2", "userIDs": ["JhTu26LZB1tIHFiZ", "NKCGLkkme5j1Mv81", "ULYBqDceQE9uSJxG"]}]}, {"UserIDs": ["FWrC5gH19DwQx9ln", "cWT22n19iuYrzvd8", "E8jHvwrrwQ3SXaEG"], "parties": [{"partyID": "6JCWqWXSAOv2CRcP", "userIDs": ["hG6f5dbTh0srpH0x", "aBZa85OTIoh3sM8O", "dlCcyusTrYqd07Wb"]}, {"partyID": "VdcortQSgsUBD6Xb", "userIDs": ["teJEE9cxirPo7u6R", "EfB2GMduA3qJOhhC", "jUuNtTsnASNhRstZ"]}, {"partyID": "DVt42U7QEHYhcEh9", "userIDs": ["lXYp4cgqrHPY07aC", "RUfCVZca1UNUYQY8", "HKlZmtqKD0grmG1o"]}]}], "ticketIDs": ["vZ4fQjZsQ9xNaIi0", "lBhGiRStzTot9Qpi", "GbM4c9GFemvybijp"], "tieTeamsSessionLifetime": true, "type": "ofEEK6KrDTWpRhn1", "version": 68}' \
    > test.out 2>&1
eval_tap $? 32 'PatchUpdateGameSession' test.out

#- 33 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'NXgFe0cCCPf6FCYt' \
    --body '{"backfillTicketID": "3rtJYbIY5EGxFvNS"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGameSessionBackfillTicketID' test.out

#- 34 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'HiOxaZOciKL0GeO5' \
    > test.out 2>&1
eval_tap $? 34 'GameSessionGenerateCode' test.out

#- 35 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'pACQWVkw8CaSMaYm' \
    > test.out 2>&1
eval_tap $? 35 'PublicRevokeGameSessionCode' test.out

#- 36 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZPqM6rk15BPec5YL' \
    --body '{"platformID": "JQ9HlvuhU2EtGZ9D", "userID": "ZTzix52GSuWgtTO0"}' \
    > test.out 2>&1
eval_tap $? 36 'PublicGameSessionInvite' test.out

#- 37 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'qcpraF7jVZFmI4IH' \
    > test.out 2>&1
eval_tap $? 37 'JoinGameSession' test.out

#- 38 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'xR2c6qPTwwL9lfGo' \
    --body '{"leaderID": "L9fOzBllfXRa9GZn"}' \
    > test.out 2>&1
eval_tap $? 38 'PublicPromoteGameSessionLeader' test.out

#- 39 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Gghbdv6dsLGQjyvp' \
    > test.out 2>&1
eval_tap $? 39 'LeaveGameSession' test.out

#- 40 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'PmvtNPCgxr1WvkQx' \
    > test.out 2>&1
eval_tap $? 40 'PublicGameSessionReject' test.out

#- 41 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'VEHy3vOR9s2wdNQE' \
    --body '{"additionalMembers": [{"partyID": "gwXJ63si0iIDQuqN", "userIDs": ["wxIG0wKvHOXTTkgk", "qmYbHHqTs3vZeWYo", "qT3GmEd2w4eNm9Im"]}, {"partyID": "kBGT72ayZQwAl5jy", "userIDs": ["L4Ks26RcjIIUO5bA", "8Lw0dzhmEq69xBM5", "UZeJlzHWaQhGvTyB"]}, {"partyID": "vetpXSLs8s4Py76A", "userIDs": ["YOHvkRxFxdHpnUYk", "ZrljdEmflixZpBzk", "tCnvcT5NR62qDyCk"]}], "proposedTeams": [{"UserIDs": ["e4vK9TMOedadaCfK", "wS6epJOC5bUREmaj", "FUS95UzAHEmrt0LR"], "parties": [{"partyID": "BV8mJ4eKXvHe24SJ", "userIDs": ["F43YGXboXcaGPqoH", "z9fcTIOKqI44zUaC", "zV5nJsvafnykEdn1"]}, {"partyID": "9EVjbwv5vF21EfvM", "userIDs": ["HD8HgyeJ0Vm3ZGFe", "BlMUm72AzYoeWDQf", "8L0bKLLfZJI8hVzn"]}, {"partyID": "wSTVKz3gzXVpFRTB", "userIDs": ["LJyyOg3dsSsNRIDY", "cuS3cUevK9j0hYCu", "puDxqii1R5CBVsVS"]}]}, {"UserIDs": ["vR7qB9mMbVYFD9lC", "MTTN2478BEe0kThf", "GgWzwPkcSzNGIQDm"], "parties": [{"partyID": "nGiwewuEO5YBS1vW", "userIDs": ["N0rt88dXCvv2YvXu", "Bd93SvfD33kh3ucY", "BPCtiM9cg9V2DtiG"]}, {"partyID": "4Q1m6ixxHWLVVG8Q", "userIDs": ["6Ba4eK3JpipTygb9", "qHxvcYJdkxXf6zam", "DLR3KncoxyUChY9u"]}, {"partyID": "zdgOrERKOBDxie9e", "userIDs": ["g3r2yElYWUdnNBfO", "rgJ1Nru5GffnXmvS", "qVpBspFrxKejhKvj"]}]}, {"UserIDs": ["ZYKh9cSopjwtWj7P", "A6xFHs511BCvLuen", "QzCOQavejvjJVLcB"], "parties": [{"partyID": "LJYl2kRObjclcRlH", "userIDs": ["swOFtG0sNJlgZ6Av", "igQeYYH0W9eQg3gI", "PeS8FvrgWh83OxXD"]}, {"partyID": "uMgteIVkQj5FcE9F", "userIDs": ["5e00eNKhIv1rehrT", "glFOXr44Wj4N3S9q", "6b5iMcLiJLN056J3"]}, {"partyID": "b7tNNBe7UXo002Ji", "userIDs": ["EYROHBWxfHYx1Oo4", "rLc6VQqklO2nchoM", "Yxer02BhF1W8cGLx"]}]}], "version": 43}' \
    > test.out 2>&1
eval_tap $? 41 'AppendTeamGameSession' test.out

#- 42 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "YRMNemXw4ercuUZl"}' \
    > test.out 2>&1
eval_tap $? 42 'PublicPartyJoinCode' test.out

#- 43 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'l68w5HnOBuJ9GFR9' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetParty' test.out

#- 44 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'j0AZ4sPurlf2X0gD' \
    --body '{"attributes": {"rjjUHIhsKB1ypvF8": {}, "r1VaC9b4sj2gWttW": {}, "oMj5FAXY9e0RUixo": {}}, "inactiveTimeout": 52, "inviteTimeout": 54, "joinability": "sdNj5VdvACsKC8iq", "maxPlayers": 0, "minPlayers": 84, "type": "rh3koXaUIrILUvJH", "version": 92}' \
    > test.out 2>&1
eval_tap $? 44 'PublicUpdateParty' test.out

#- 45 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'FBHuY0s6osnH8x04' \
    --body '{"attributes": {"2ZSTf61eRFXoQwkJ": {}, "fPSDBGkqPNwrhz8C": {}, "Egzs9vW9Z9jQ1NmM": {}}, "inactiveTimeout": 85, "inviteTimeout": 89, "joinability": "8hmJsKEKcGccp5oY", "maxPlayers": 45, "minPlayers": 55, "type": "HaLNAhE2InsUIrJN", "version": 63}' \
    > test.out 2>&1
eval_tap $? 45 'PublicPatchUpdateParty' test.out

#- 46 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'e2Fr5W80J5inYnwR' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratePartyCode' test.out

#- 47 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'Js36cWd8mplF3vli' \
    > test.out 2>&1
eval_tap $? 47 'PublicRevokePartyCode' test.out

#- 48 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'nGbJxvJp7Jcuc5O4' \
    --body '{"platformID": "6054NSLUNEPePEmF", "userID": "TLIX7TLrwbnCgwoZ"}' \
    > test.out 2>&1
eval_tap $? 48 'PublicPartyInvite' test.out

#- 49 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'viK9g4lQhrHazJwR' \
    --body '{"leaderID": "ZlWvXcurlwsYLFJ9"}' \
    > test.out 2>&1
eval_tap $? 49 'PublicPromotePartyLeader' test.out

#- 50 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '2cNamTL2J44ddHll' \
    > test.out 2>&1
eval_tap $? 50 'PublicPartyJoin' test.out

#- 51 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'tYo1ttPOl431N02c' \
    > test.out 2>&1
eval_tap $? 51 'PublicPartyLeave' test.out

#- 52 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'Y4VTQSwWdVbomBWW' \
    > test.out 2>&1
eval_tap $? 52 'PublicPartyReject' test.out

#- 53 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'kIsTPmW3WD2xhJet' \
    --userId 'VI7KCiffhSDZR1eO' \
    > test.out 2>&1
eval_tap $? 53 'PublicPartyKick' test.out

#- 54 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"piDqHwKkd10kj43Y": {}, "mbv05Nhu70YmoVgM": {}, "Wfms0crsR2UeqAcu": {}}, "configurationName": "0PwdEM1ZWmATGva2", "inactiveTimeout": 39, "inviteTimeout": 79, "joinability": "NUhaLvyXfJqA3qbp", "maxPlayers": 0, "members": [{"ID": "eQIRxfnCvtdkIqm9", "PlatformID": "oZb1XyWHeGZ4ZlSl", "PlatformUserID": "MVwW9iuYQr8UbJ1x"}, {"ID": "VbfBWAcqAJcx9Ekk", "PlatformID": "OzRhbju2t2OttquD", "PlatformUserID": "dfcz9RJVzVLi0Teh"}, {"ID": "M4FAiAaAtdXAIhqb", "PlatformID": "JsZcPjv3vwNyEXaO", "PlatformUserID": "cQdHP26lIYj6GRWy"}], "minPlayers": 58, "textChat": true, "type": "zD1wuyPqqBhjiQAG"}' \
    > test.out 2>&1
eval_tap $? 54 'PublicCreateParty' test.out

#- 55 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["jpOPHKGyUvBsV346", "33wdvIORnCJMG6Eo", "9IShW5ZWoVz8lQdX"]}' \
    > test.out 2>&1
eval_tap $? 55 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 56 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'PublicGetPlayerAttributes' test.out

#- 57 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "zuub45B6yLci5V5g", "data": {"6lKG3VvnduajrvjA": {}, "x2DIO5qmZm9rACTq": {}, "hHfjYPR5FhetDH5V": {}}, "platforms": [{"name": "CSUm8oVfkbSvTAxQ", "userID": "oJhdBHfS8dqhiZZD"}, {"name": "xqsZ7A8ysOIpa2tE", "userID": "jHCM8orJRfsVw186"}, {"name": "pIWmXPjmFjUUSaZ6", "userID": "Id7QVp5DD1vc4xC6"}], "roles": ["0ArSBiV0FZCbrEyw", "rNOvSXD9U1vdTMMH", "1JVpn7ptNqEEgbsC"]}' \
    > test.out 2>&1
eval_tap $? 57 'PublicStorePlayerAttributes' test.out

#- 58 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDeletePlayerAttributes' test.out

#- 59 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'toNAYtanW3Us3PGH' \
    --orderBy 'pBoxjz7TTKVAzxJx' \
    --status 'eVIjnQggEH00b5j6' \
    > test.out 2>&1
eval_tap $? 59 'PublicQueryMyGameSessions' test.out

#- 60 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'b7opMlBnj8u9fWsI' \
    --orderBy 'gLpX706oVJexN8JW' \
    --status 'yqlTf47lCCqbFZhX' \
    > test.out 2>&1
eval_tap $? 60 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE