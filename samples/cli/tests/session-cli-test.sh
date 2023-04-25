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
echo "1..48"

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
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 47, "SessionTitle": "v83Qm2YCEUzUHE4U", "XboxServiceConfigID": "mYXgV10xLL66VdFC", "XboxSessionTemplateName": "9xMJWVXEwXG7KdAS"}, "clientVersion": "W2J7zfP47a2pJkUw", "deployment": "p8a6eCuM8AoYntC2", "inactiveTimeout": 35, "inviteTimeout": 8, "joinability": "SdxSx1Xcy9tcnP8n", "maxPlayers": 26, "minPlayers": 33, "name": "bkgQDnoOivWzSFnl", "persistent": true, "requestedRegions": ["BRzECO6U4VGi7UJ7", "Gby7L6hEYyYf82V3", "fC0erCE46Ax6uh15"], "textChat": false, "type": "UXlsMgdq9yO2s8EQ"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateConfigurationTemplateV1' test.out

#- 6 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAllConfigurationTemplatesV1' test.out

#- 7 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'LLwHQ8lcHKehlw7z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminGetConfigurationTemplateV1' test.out

#- 8 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'mOW4TWHjKZpqdPke' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 76, "SessionTitle": "rrZ9OrhleOLRfzUr", "XboxServiceConfigID": "OrAGOLiEd895z6tD", "XboxSessionTemplateName": "znX53QGL21taiI3B"}, "clientVersion": "VO6ZemAes9nOVtvR", "deployment": "2Dx7efLY35O0BVuo", "inactiveTimeout": 96, "inviteTimeout": 64, "joinability": "oDmAvkwr1gKeCU2L", "maxPlayers": 44, "minPlayers": 76, "name": "1IpKxSvgcIA1ubNg", "persistent": true, "requestedRegions": ["cWuCbnQ7XV2Cy2zP", "8YdBQOjYEz97tcra", "VBAsoakmCpWcfR8h"], "textChat": true, "type": "UIOmgQ0YH7So0AHi"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminUpdateConfigurationTemplateV1' test.out

#- 9 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'hi5lUABq68QUBiAP' \
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
    --configurationName 'duaN0X9vwMS1wx7m' \
    --dsPodName 'GZtfGqbcgyDxoY9J' \
    --fromTime 'nm4JYn8qksPaCQY6' \
    --gameMode 'qavbkxGULRs5EtnT' \
    --isPersistent 'JW4ZX7UiR2sbF5ug' \
    --isSoftDeleted 'k43Q4jhlDj6CslG8' \
    --joinability 'ge7SwiBpn1vq322f' \
    --limit '74' \
    --matchPool '4wFZkOMGhm8KpqGc' \
    --memberID 'aQnrfUXY80GYtRua' \
    --offset '28' \
    --order 'LBgImfnliB1E48wO' \
    --orderBy 'GSV9CMeEbWAIPb7b' \
    --sessionID 'tzeKgPfJ9Qxz0IM1' \
    --status 'ZJlqLXFubQ3Qow1I' \
    --statusV2 'E2ZqiCqJEZEqqgr0' \
    --toTime 'GVcR4qpcHjxeFi2e' \
    > test.out 2>&1
eval_tap $? 12 'AdminQueryGameSessions' test.out

#- 13 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["08BWcYMEiPP98LHU", "2PUD3bY9kGKXpxQS", "rwMrX8fP7QM8JAn8"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteBulkGameSessions' test.out

#- 14 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'hF80kjiAJiUsNqKO' \
    --namespace $AB_NAMESPACE \
    --sessionId 'D8WAPyAq1E70uC44' \
    --statusType 'HRQ7ZUoxGRbbv5f7' \
    > test.out 2>&1
eval_tap $? 14 'AdminUpdateGameSessionMember' test.out

#- 15 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'LDAioVcnwb8GJasO' \
    --key 'rOphy83ZkTYDYz7V' \
    --leaderID 'cvcc9QYc91PmDuOs' \
    --limit '85' \
    --memberID 'VScm3JliSKiZaPc5' \
    --memberStatus 'MlXiuxRSrgFe3rwb' \
    --offset '73' \
    --order '23Nop4XNgabYSKFz' \
    --orderBy 'RWr0yYgTDWHu082D' \
    --value '5rRmCQZW2JfqduGg' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryParties' test.out

#- 16 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'ITHhtgAWPCWexh4U' \
    > test.out 2>&1
eval_tap $? 16 'AdminQueryPlayerAttributes' test.out

#- 17 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'vDKa5sXE6120bA77' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerAttributes' test.out

#- 18 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"g51FVKhPx45wSFAF": {}, "vhjHnxboRLhVhxQg": {}, "tEIKcBSWsA8t7rDt": {}}, "backfillTicketID": "lPbONjQmEFCw8WFY", "clientVersion": "bWGkXGhEXGHbkQXv", "configurationName": "N2LP02KHJHtQUBQb", "deployment": "huMQcmVOUf8aZcnG", "inactiveTimeout": 30, "inviteTimeout": 28, "joinability": "OjtxS5nTJBFhCXN8", "matchPool": "nbwUQ5QyMEFFBcZT", "maxPlayers": 3, "minPlayers": 12, "requestedRegions": ["DTwqscqNRlUSoM9t", "zZ8BDlYNzB1zCXZZ", "bRecDzoYQwCD6i0D"], "serverName": "hdzdWyvUA2oOTyyY", "teams": [{"UserIDs": ["y6IKB8mkYnBHYj5B", "V59W5xa6BhjydlQj", "roCT50lQOZ7K9T8S"], "parties": [{"partyID": "04SsiPAj3HWq7MUF", "userIDs": ["qvBJ8rP9RIMqmpTP", "21rytEdwL6DRtnd3", "yKZpa2MriaIzafGP"]}, {"partyID": "u5YPpEP93KtikjmY", "userIDs": ["gQ9LDnLHM5ufWMVo", "uk2xmSFgLWiB39Fq", "j7VqZ2EjRzimFOJe"]}, {"partyID": "K7bfU1E2hkJ6A6Jn", "userIDs": ["lVpVc0Ve2mAu4mAP", "Sbotdi5Y7Dewc4sJ", "zf55vAqM5Yvxp476"]}]}, {"UserIDs": ["avkASUH9Ebgc7spQ", "SgoDGol82Et9CUDs", "HVvqR17ovjJDcovj"], "parties": [{"partyID": "vxuy0yumJce9JP8Y", "userIDs": ["b2HtrMifIEz8MGk8", "K8goElBhHEq7SpLe", "U2QZt1FZt1Bp3NFr"]}, {"partyID": "47Cv51YQ1ZmQic9m", "userIDs": ["WAM3jTWi5gWppJ3x", "LKgFiJXxOxVxIOng", "Aj8MGhkCpHiQbwgW"]}, {"partyID": "eZEnfJHvCjgRXLz0", "userIDs": ["p8ct6pyPlBueadt5", "CsfUOwKKxKzy8zD3", "4MDg1hBeX4G9WA2o"]}]}, {"UserIDs": ["tvDXz3yoHLjOakhp", "g1TeqvNrKZhlrisc", "lv7990sUa01LP4K2"], "parties": [{"partyID": "0eKU1mobuC1iX06H", "userIDs": ["SKcDxAsGNlPt09s1", "g4ZltgnW4j4RVVrf", "HvRirKqmVmEEULN8"]}, {"partyID": "SiQj7Dz7HOqZnQKF", "userIDs": ["aMaGcpvrStP8tegd", "L18S0YzFwuSsUnIk", "ulgkxeTbgtUsUhUD"]}, {"partyID": "nzslSf9Bxeip9bDt", "userIDs": ["XXP1qn9vlZCktAK8", "luHIGBbegvoMjAVn", "FMShVA0wXnb3tfYz"]}]}], "textChat": true, "ticketIDs": ["WcXFTSFPSy3t7WD3", "IfTH0QPleJsUlkfd", "atCifSrUKuklJ97t"], "type": "Gf3pu7rGmQcdKULK"}' \
    > test.out 2>&1
eval_tap $? 18 'CreateGameSession' test.out

#- 19 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"Tc6cOhPmN1d6U13N": {}, "MZIVepOlK5OiL8Cs": {}, "r7Vl69D5YUJdKcSv": {}}' \
    > test.out 2>&1
eval_tap $? 19 'PublicQueryGameSessions' test.out

#- 20 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'MZlyQJph2yp0teNM' \
    > test.out 2>&1
eval_tap $? 20 'GetGameSessionByPodName' test.out

#- 21 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '30hNSEtRPtzPMjBY' \
    > test.out 2>&1
eval_tap $? 21 'GetGameSession' test.out

#- 22 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'rTBoBPO0gOgxNEId' \
    --body '{"attributes": {"xBu7Qvv0i2KNXZyS": {}, "Mdc984GzJVPVlRuT": {}, "tOHkT3szc1aOoCJO": {}}, "backfillTicketID": "y0eBOaC7XWqw7l6p", "clientVersion": "L6OK8RRxZjLZzeHd", "deployment": "4nBlKemjvXOnNhO5", "inactiveTimeout": 9, "inviteTimeout": 39, "joinability": "30VbGNIMTA9ipVLQ", "matchPool": "YEWygMnWiK1K74eA", "maxPlayers": 73, "minPlayers": 95, "requestedRegions": ["Y8kNzzo2IeFkQ3PP", "hPVSJj5C9wY4XbjN", "e3T5khNkuAz3ROR7"], "teams": [{"UserIDs": ["M3Oe3gfu5vLC5XwC", "I0nCuyDIawhY74c9", "ruNqKy3SMGrJIvae"], "parties": [{"partyID": "uLWO4U4QiOzfVKtu", "userIDs": ["t0UDLlZlZlDiGQly", "SbIuCY9GswudHbY6", "kQdL9bADkq87ueSc"]}, {"partyID": "YfP7wQ6jLgV7YWvT", "userIDs": ["i1erFV4I1Gwsi2ap", "uAHdNxe9SDzwahyf", "ubD7t7M5zOijwrXj"]}, {"partyID": "WF9DOaRNaecwKVVF", "userIDs": ["61lT3COVmkGxrU9S", "qTt4JSrjxSoXomxZ", "QifsMg2LTLmDPmms"]}]}, {"UserIDs": ["OUZ7MNYrg3BtMdTz", "QWb8LW7I5BuVh8Wt", "HQVAJ0NDxx4gJxpY"], "parties": [{"partyID": "0247s2qJJkE00cpm", "userIDs": ["FDqiUcqtGKBiG4h7", "2f5R9MP8GxtyiCG1", "gD9Q6hOtsQCSGwEY"]}, {"partyID": "bo5tuz10dIzuEuml", "userIDs": ["Hvs3HWfOhNF8bLzp", "DFyZCgUv4PbadSHf", "HY8pF5mRrnafW4vl"]}, {"partyID": "iq1ozbHwcTYHnzmy", "userIDs": ["aB7ezCZeA5iiAqF8", "g38NyHp4laHlW6yZ", "PaxDZsMV55xwZ5SD"]}]}, {"UserIDs": ["7U0Cd8U75BkqcCu5", "b1NtZIq7KJvqnEUi", "hnL62sCJ16M5wyHg"], "parties": [{"partyID": "ZpjwyGSLa41YFdYi", "userIDs": ["SCRYN1l8rvvURAO2", "WOeuYcfaK476Syqz", "dmmXdyMOuOxgmzZD"]}, {"partyID": "mTXjeea3LxjwvlP8", "userIDs": ["bSfyOj8dPs8VxlVV", "oZGDILkQxd5ZFJOU", "xdLdFL7qFuLdfM4p"]}, {"partyID": "OW3jvk2QpPLT1Lo9", "userIDs": ["AjzAcwwWkqjy9SVh", "gZtaHDUw4uhJUpGX", "r6DLmyRv1Rf6vPzD"]}]}], "ticketIDs": ["XSxewCD6leQENCsR", "Pb4pP199mzT68FfI", "QALmHk9rho6sWoWK"], "type": "A7ugnrTa6mZGe4h1", "version": 42}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateGameSession' test.out

#- 23 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'G2w2nU7wcDiwG8h8' \
    > test.out 2>&1
eval_tap $? 23 'DeleteGameSession' test.out

#- 24 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'EWhOsVJvk2j7zldW' \
    --body '{"attributes": {"n0v4Ho8pdFoHvT6H": {}, "5fMUC0Y5jxetrj82": {}, "ueXavEZe0FkA6CEL": {}}, "backfillTicketID": "UnaAaaR01Kufv9A9", "clientVersion": "GxHQJuTC3Nd2bQDN", "deployment": "uzo4D5nw1OEYJzxI", "inactiveTimeout": 9, "inviteTimeout": 19, "joinability": "SaHS6fvlfNvSnMeT", "matchPool": "Q5CVm04A724QJlYP", "maxPlayers": 49, "minPlayers": 32, "requestedRegions": ["6LOLXxsuMowJroIU", "QGkIGDiLfLYCkxoI", "FQJF1q5kMw4MxBhl"], "teams": [{"UserIDs": ["jQXbxkD3J8SSSklK", "jPUBdjT2cdeP2bGn", "KYuNWlUFA37DHqJv"], "parties": [{"partyID": "ITakomY8UukrP7hi", "userIDs": ["KmHhgfOSY8NMeUjt", "ncXdfXr1YhYV8dkN", "kykaRweTNbBW1CKi"]}, {"partyID": "eo4SsBhUSY7xsgp3", "userIDs": ["GLoborBwUuioONOO", "EtsmT2mu25ErhO2w", "RFYPWEULRoeajVjo"]}, {"partyID": "8NdOr4HTW2DlUfzy", "userIDs": ["TMSXmmJEyck4EF8O", "8hSN8mUAPfrACnre", "mFQVAhKrZ8PN8OWq"]}]}, {"UserIDs": ["AftkkIixcsb1PIQN", "7pBAGL6S1ZByk6QB", "whrbVir0mgrogGns"], "parties": [{"partyID": "fs9adZcL052rA34X", "userIDs": ["fIzMUuCyl1C8BH6T", "aJW4CWGurfmcZ9yN", "k4wYwlCcHa4B24PL"]}, {"partyID": "6dIKfUZUWdUJ844B", "userIDs": ["BBETeoVB7Rf66i2n", "imASvgyFBiw3gdTv", "ErRrCJL2HSnWrOIj"]}, {"partyID": "8rKe2DpKb0t33lCf", "userIDs": ["lDi8EaePp7daQLmp", "nOy63sqcGBVMDjxh", "75ofKdR6yrCmZfcD"]}]}, {"UserIDs": ["J7cQ9CWZ0qdx4s8V", "96pAd7j1Dq5Xz928", "ghcparhJQOiaEHfc"], "parties": [{"partyID": "wT51EcquV698KUPs", "userIDs": ["C5qcvFQh7yFAS1R7", "t3S1ZbA5qXce3hni", "tIYK7KWdoweLJyqe"]}, {"partyID": "0hmGX3jv3gTchWMs", "userIDs": ["cxdyG9W5KmZ4rlxx", "h9BKdO7lUexqwVaZ", "GbGgvzf1QwDKKqSS"]}, {"partyID": "w97Y9j26Si5njF2p", "userIDs": ["zl1WCfHqfwZIawW2", "LUy9ZtUxLrPPkqPa", "3h5j1ob8TXgxWbZf"]}]}], "ticketIDs": ["bx1bopuyPJmDtfd8", "8fwYpnyNO8eb4lUv", "GXsbwDrdHF8lrvWS"], "type": "plunNqGmBqr6qwVn", "version": 54}' \
    > test.out 2>&1
eval_tap $? 24 'PatchUpdateGameSession' test.out

#- 25 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'ETT4Csw9b7oT9cUq' \
    --body '{"backfillTicketID": "S1Kxl482VKN1aIjp"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateGameSessionBackfillTicketID' test.out

#- 26 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'dHDLnLyUvoxRcIeZ' \
    --body '{"platformID": "TX3cPb7nDXG0v6AC", "userID": "8ob4BtFGDiaFZPa4"}' \
    > test.out 2>&1
eval_tap $? 26 'PublicGameSessionInvite' test.out

#- 27 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'WAgTIhnx8n6oIV5S' \
    > test.out 2>&1
eval_tap $? 27 'JoinGameSession' test.out

#- 28 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'wuPL4VT3pbg0BV0U' \
    > test.out 2>&1
eval_tap $? 28 'LeaveGameSession' test.out

#- 29 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'SINMQHJqBktdM2e3' \
    > test.out 2>&1
eval_tap $? 29 'PublicGameSessionReject' test.out

#- 30 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'DF91nDPzI6uStxWq' \
    --body '{"additionalMembers": [{"partyID": "Yp7IkLj4tclXYmOv", "userIDs": ["lxZ11qDJq33Xd9u8", "A0paqqLGRVy2w0Om", "eQ65DmgqxifHLZ5U"]}, {"partyID": "RiQbJWt5sJppGr1l", "userIDs": ["rzhc2jUMQxGlK42E", "NPj5i18GCL02YOri", "UTugRWuINQLTK2MD"]}, {"partyID": "1wrcRhGsHh1QAnx9", "userIDs": ["ObJaHcEBllurZ3As", "e6dFrT1SVwANFFrF", "r89ozv7exAeIeXtH"]}], "proposedTeams": [{"UserIDs": ["2PaOthkxxQ8Vj7ln", "ynkdgG0kAWcbFNgc", "b3APC1kd9iydHN7V"], "parties": [{"partyID": "unIokNQUKrtrjTNI", "userIDs": ["JdIRXiESPNQAmWE9", "qzlPTcnCk6zmYnHT", "RGowbIE3auWXc7mp"]}, {"partyID": "myL7M7EPtq1CBwgZ", "userIDs": ["cLfERTrBadDDfVT8", "czSvfP7I01GFsUh5", "aRFy149vxtl0xmaM"]}, {"partyID": "AFEk843K7uaXUwe6", "userIDs": ["rwpsdGGZXpWkIzdZ", "Ki2viYrJrl3OxIEQ", "8Hg3exFRedaSLksu"]}]}, {"UserIDs": ["7JADw9JDXiNq0mtM", "YNcZyGn1JJ3hRVM1", "2S9xUoFPwmZ4lMDw"], "parties": [{"partyID": "7SGIVh866nXlISeW", "userIDs": ["RLG1418KQCHIDcFf", "dyHtoSMrX3dQ1Nbu", "m59SYfblyWcIV8GT"]}, {"partyID": "wf7cMUCyhINOBlqB", "userIDs": ["I3HXHlL51zQR0GIV", "XrziRHa6m74bS1Hm", "vCWKIRzkh2XN63JR"]}, {"partyID": "6RGWHFWpoj6Ak5hF", "userIDs": ["bB0cKtzGICUEpPJB", "TjdLonkpkTbLcBTs", "bJHbHcXaaUpGJFXQ"]}]}, {"UserIDs": ["uSNfOVA2qd0CQ5KP", "xwyCnxSl1d1mPyoG", "mmtBzXnwi57M3Q3g"], "parties": [{"partyID": "EircloAh5w72D4bg", "userIDs": ["G6hRlQV9VF0V7G1W", "y9TOFHq51kg8pS6k", "UmAz66XdrS9ec9Tp"]}, {"partyID": "wyDHxzQBYdbVD2Ag", "userIDs": ["tLlVsm5FEpZCsRaA", "j312s7vKcuEzMhGj", "YoPysxCcbB8NnE4T"]}, {"partyID": "fJFx5PbkOew7Aw1O", "userIDs": ["JcYowEL5cFAOEqPe", "haz1AJwg1Dk600VW", "qQzkpmJa2aFk7DoA"]}]}], "version": 61}' \
    > test.out 2>&1
eval_tap $? 30 'AppendTeamGameSession' test.out

#- 31 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Fj7T73zTqUvRp4EU"}' \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyJoinCode' test.out

#- 32 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'cXqGdUSlCBBceHlz' \
    > test.out 2>&1
eval_tap $? 32 'PublicGetParty' test.out

#- 33 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'rZnACU0PKc2IIRSM' \
    --body '{"attributes": {"EKphvbfOqwhhaTog": {}, "iF0e2bsE37k8dO72": {}, "tK4Wls6SkCyBLrUp": {}}, "inactiveTimeout": 54, "inviteTimeout": 24, "joinability": "72MFiKpOS60pZp9c", "maxPlayers": 15, "minPlayers": 54, "type": "zr9a1B1w0dCV9j4f", "version": 50}' \
    > test.out 2>&1
eval_tap $? 33 'PublicUpdateParty' test.out

#- 34 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'uThn9aQnBJaQNbS7' \
    --body '{"attributes": {"zVa3FRDQl1fEFTff": {}, "AVVM07ipN2WEKsG8": {}, "LUwwKJ6vZgIeCzXu": {}}, "inactiveTimeout": 46, "inviteTimeout": 81, "joinability": "O5ItypWT5P2IdELZ", "maxPlayers": 49, "minPlayers": 79, "type": "U9zcv6C8om0sNQPF", "version": 1}' \
    > test.out 2>&1
eval_tap $? 34 'PublicPatchUpdateParty' test.out

#- 35 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'Fbw14SLt03jZkzRr' \
    > test.out 2>&1
eval_tap $? 35 'PublicGeneratePartyCode' test.out

#- 36 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'j7Hy1dgbyV0aIHdH' \
    > test.out 2>&1
eval_tap $? 36 'PublicRevokePartyCode' test.out

#- 37 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'IF2OeyD1sKXbGs2q' \
    --body '{"platformID": "1lmMfNwEgA7GdWRl", "userID": "oZGpUHU3ds9lVq3k"}' \
    > test.out 2>&1
eval_tap $? 37 'PublicPartyInvite' test.out

#- 38 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'yDiJxjhMT6NT0jes' \
    --body '{"leaderID": "zqYdxlHWcfQyTALA"}' \
    > test.out 2>&1
eval_tap $? 38 'PublicPromotePartyLeader' test.out

#- 39 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'Hua9QZpWSUn2pisg' \
    > test.out 2>&1
eval_tap $? 39 'PublicPartyJoin' test.out

#- 40 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'lwHYTXix09st8UQC' \
    > test.out 2>&1
eval_tap $? 40 'PublicPartyLeave' test.out

#- 41 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '4BN381SCxboYmXXE' \
    > test.out 2>&1
eval_tap $? 41 'PublicPartyReject' test.out

#- 42 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'KXxIA8QALda1qcFz' \
    --userId 'dGOPTnNojrkG4LMG' \
    > test.out 2>&1
eval_tap $? 42 'PublicPartyKick' test.out

#- 43 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"EtL2pFjxlPmckRfB": {}, "Qleqq4SuWfF1nJzx": {}, "EdsBpXaFU53YQxNf": {}}, "configurationName": "MWEn6YhCAAGgTCpX", "inactiveTimeout": 91, "inviteTimeout": 73, "joinability": "mZErypaeCtH4t70b", "maxPlayers": 67, "members": [{"ID": "LJhcq13LzRwd7GOS", "PlatformID": "J2yzLE9Xdt1H24Em", "PlatformUserID": "Ujxckgp9N59HNQIa"}, {"ID": "7VCuRZRJGPDxOfhY", "PlatformID": "XlZ79D64cmPtU9xy", "PlatformUserID": "I72XRtjIAUY1JyXn"}, {"ID": "PM0mIPO7NopSJwK9", "PlatformID": "wEktYKZJzAZmVLyl", "PlatformUserID": "r49wo1x43Ku2TWWi"}], "minPlayers": 67, "textChat": true, "type": "0npGTIsi9x0NSY8r"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicCreateParty' test.out

#- 44 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'PublicGetPlayerAttributes' test.out

#- 45 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "OWvvoA5tbcxX0En7", "data": {"cjAxdNmsO4mR5R4t": {}, "J1GhZ3Jggx0zOrBL": {}, "wZ1MfeTu8VcODXsk": {}}, "platforms": [{"name": "PiJJNU43aXmzDoOw", "userID": "8CD69Ab4VKSoF14i"}, {"name": "k9BIjc1zGOrBeJIO", "userID": "YGWha8XxnV5UyHdn"}, {"name": "C1Wt4f4st8lA89VW", "userID": "8x1gN4h0qHezMMyQ"}]}' \
    > test.out 2>&1
eval_tap $? 45 'PublicStorePlayerAttributes' test.out

#- 46 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'PublicDeletePlayerAttributes' test.out

#- 47 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'I0YWp3dLSVQNSqOn' \
    --orderBy 'qbPqNaTY5TErKW0U' \
    --status 'QNjncqlfFKqcNI9V' \
    > test.out 2>&1
eval_tap $? 47 'PublicQueryMyGameSessions' test.out

#- 48 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '6vsijEdeM3BKjyAV' \
    --orderBy 'YZpI90R4HqeWbtfE' \
    --status 'brgKhdJfmbCyM3Fi' \
    > test.out 2>&1
eval_tap $? 48 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE