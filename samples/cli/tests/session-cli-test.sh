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
echo "1..66"

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

#- 5 AdminListEnvironmentVariables
samples/cli/sample-apps Session adminListEnvironmentVariables \
    > test.out 2>&1
eval_tap $? 5 'AdminListEnvironmentVariables' test.out

#- 6 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationAlertV1' test.out

#- 7 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 84}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationAlertV1' test.out

#- 8 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 60}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateConfigurationAlertV1' test.out

#- 9 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminDeleteConfigurationAlertV1' test.out

#- 10 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 12, "PSNSupportedPlatforms": ["jKFK1eKsMEaFPQiL", "tXUbaCqCiA79Vm9d", "D0boKgh52E0mjfKF"], "SessionTitle": "15dUNNEhNHDXE3go", "ShouldSync": true, "XboxServiceConfigID": "OJZHv79LqqgO5gGd", "XboxSessionTemplateName": "M7oOX9dy6JLuKOkn", "localizedSessionName": {"ZHmqxFRFniQCanYN": {}, "KnkmeDNv0yzZyU7l": {}, "g93PaPHD51xzi1u1": {}}}, "PSNBaseUrl": "e5DNIle1kMYjD1yB", "autoJoin": true, "clientVersion": "LlH2mXO5mbxeI0Wa", "deployment": "tW78mZ9Bykr4oolQ", "dsSource": "TIjnPM7d9DnQbyaI", "fallbackClaimKeys": ["PiD0OXbYtheIpeFO", "8oiXTqUka1qKLLct", "l6FMwpL51LECyG7R"], "immutableStorage": true, "inactiveTimeout": 40, "inviteTimeout": 78, "joinability": "U8GnXu7xJy7blFmx", "maxActiveSessions": 18, "maxPlayers": 89, "minPlayers": 34, "name": "XlKRLxJjFLIE6UU0", "persistent": true, "preferredClaimKeys": ["locRmoGepvqUsekX", "kJmplotLwcqeWCpN", "v9cb3q9CjPCQDOKm"], "requestedRegions": ["bfprmSYqNmf2km7t", "gA2sX3fDOtUA28As", "BaqUIv9R67QozpEm"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "DcqxT121P7enwpi2"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateConfigurationTemplateV1' test.out

#- 11 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --name 'dOsNSEi79ESnBLZB' \
    --offset '51' \
    --order 'QA6zKFLQoQEWq4Z2' \
    --orderBy 'f4j8VQGOxvrw6wXM' \
    > test.out 2>&1
eval_tap $? 11 'AdminGetAllConfigurationTemplatesV1' test.out

#- 12 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'DvoKNqpxLS0RzWcj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetConfigurationTemplateV1' test.out

#- 13 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'zhWmoe9idVrVkYT2' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 64, "PSNSupportedPlatforms": ["mveyUIBSCsz7q8ew", "sngymigJXIe4zd7j", "ccqcp4J2z2g1hv9T"], "SessionTitle": "l0mQqFdQedgVmjEX", "ShouldSync": true, "XboxServiceConfigID": "lzL38MVfjSUeWnfC", "XboxSessionTemplateName": "1krSNwxATefmK8tm", "localizedSessionName": {"JBgH9F0OoxMdXjLt": {}, "7akCJs4czWakrPei": {}, "fJg4GxQUwGCIGzVg": {}}}, "PSNBaseUrl": "4oeQuyinJTwa2Too", "autoJoin": true, "clientVersion": "wYXHV5tj7KyCsz24", "deployment": "e1hc145Lvu7iH60U", "dsSource": "MowF5Hi3xHiYodPg", "fallbackClaimKeys": ["Eq8Qp9jpHdNeGSzc", "1ao78mFhCPHn4HjF", "WadPZErWjcyyIhJI"], "immutableStorage": true, "inactiveTimeout": 18, "inviteTimeout": 48, "joinability": "8UyIAm25Tpo0Xxoo", "maxActiveSessions": 20, "maxPlayers": 8, "minPlayers": 33, "name": "3JsHXC1SVIHm7uTi", "persistent": false, "preferredClaimKeys": ["1a63sym4THf5cGn4", "gsqn7gzZpWp8ZWJJ", "Vo32VhOXJJ7ZdtvL"], "requestedRegions": ["i44h1uc6JcWN1t7m", "Vv74ZwtE57RGuWXo", "wJJxWRPiGzwVK8AL"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "Jqlx1URwt9vjAkD2"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateConfigurationTemplateV1' test.out

#- 14 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name '1UqoSQNfZMyCWtB8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteConfigurationTemplateV1' test.out

#- 15 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetDSMCConfiguration' test.out

#- 16 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminSyncDSMCConfiguration' test.out

#- 17 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'bv8F1OlEhC6Vvkvn' \
    --dsPodName 'eEBFp4hxq4WPXCQn' \
    --fromTime 'euUyc9fsu9DmR0W0' \
    --gameMode 'Y2Ysic7oRtGvJgqy' \
    --isPersistent 'cZbsL0UAfd1bxmx6' \
    --isSoftDeleted 'TSNggLQGRY0dD395' \
    --joinability '9QkRsyHM3Eg81SeV' \
    --limit '38' \
    --matchPool '7pQ3K1sP86i1III7' \
    --memberID 'J4Z1UtuyNFCVOVXm' \
    --offset '0' \
    --order 'omYt6kxg5hV9Ecgp' \
    --orderBy '1f8YIxkDNAncjhpG' \
    --sessionID 'ivSfomVU0EBwelxv' \
    --status 'QlG34OAJCFAFb3NX' \
    --statusV2 'hOilh6ZdnOfpJCkf' \
    --toTime 'RHjJ8R12nOmp1gty' \
    > test.out 2>&1
eval_tap $? 17 'AdminQueryGameSessions' test.out

#- 18 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["ijPlUBmkew3HIDyl", "cN0q2j8VX5N2L4DI", "OOT99sSIruKdR9MU"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteBulkGameSessions' test.out

#- 19 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'BlgFgxfjBnHVYcoz' \
    --namespace $AB_NAMESPACE \
    --sessionId 'l5bqELamZtlXgFUX' \
    --statusType '85puNvHU5ZQ5GNan' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateGameSessionMember' test.out

#- 20 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'Ol4dcbOEYspogych' \
    --key 'NqwCIyIfB0T31RK0' \
    --leaderID '39xiz9Q9mHZ5GMp8' \
    --limit '48' \
    --memberID '7jlNErVaGzXdFY7n' \
    --memberStatus 'HhbNd8r9Vf82laxe' \
    --offset '52' \
    --order 'Mi5Nsn5FRQBl6KNq' \
    --orderBy 'phIqSUVBaXc3oWb4' \
    --partyID 'opetyXscRQBbfLAk' \
    --value '1g6BBsuifoEoBgY6' \
    > test.out 2>&1
eval_tap $? 20 'AdminQueryParties' test.out

#- 21 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlatformCredentials' test.out

#- 22 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "pdYMtfhU40g7Ja6V", "clientSecret": "ifpHI0E4uc7oFBcg", "scope": "71D1D6Uhko79uim3"}}' \
    > test.out 2>&1
eval_tap $? 22 'AdminUpdatePlatformCredentials' test.out

#- 23 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminDeletePlatformCredentials' test.out

#- 24 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'K7ZxK9eiokuZLIBi' \
    > test.out 2>&1
eval_tap $? 24 'AdminReadSessionStorage' test.out

#- 25 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'N06ITHbaoqkcjkbn' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteUserSessionStorage' test.out

#- 26 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'JVQjrKsxv9JY88s5' \
    --userId 'nQNIQYNZheKvG5k0' \
    > test.out 2>&1
eval_tap $? 26 'AdminReadUserSessionStorage' test.out

#- 27 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'c877Ay6fwPD1hoO6' \
    > test.out 2>&1
eval_tap $? 27 'AdminQueryPlayerAttributes' test.out

#- 28 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'hY9zsEkkBGpsNBrR' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetPlayerAttributes' test.out

#- 29 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"UwjfHB2GgM3PNHDN": {}, "eSeBGao5ElcSVdJ2": {}, "wfJlwrh7vBgKCEHW": {}}, "autoJoin": false, "backfillTicketID": "YWn9itAHSgJyC0G0", "clientVersion": "EjYn4Sbht37NHkye", "configurationName": "4jVRRWkLs5NLxpzc", "deployment": "w4RHppnOFA53IHcC", "dsSource": "FvOhfRbCm7mNYfWR", "fallbackClaimKeys": ["TWuwCXvxp6u41R74", "CsacebGpsFFn3YuD", "r2MNgxHtOgI3bmWG"], "inactiveTimeout": 97, "inviteTimeout": 52, "joinability": "V7NPJ2H7zRpI8NB7", "matchPool": "o06hMpH4OFW4B5w8", "maxPlayers": 38, "minPlayers": 87, "preferredClaimKeys": ["ItAM4Zyhm2H9yb1M", "zZ5bNkSrKv8dPwnJ", "rq6P4Ql5z0eikeF6"], "requestedRegions": ["uUR2prvvxC84E8Lg", "VZIdVbnU1U9Mm3pe", "7XyL7M4pkQWDwsli"], "serverName": "ChLvuAQArFaUPNLS", "teams": [{"UserIDs": ["goZvUaDr3UwlMFQn", "m6Jfd90R2Ak38AEo", "Vb4URp95Rn8UivSV"], "parties": [{"partyID": "fXQirXCb75bskkwO", "userIDs": ["paVAvHOpGQaaUA7Y", "mY9n6MoT7Y5gtTPy", "XTlKvRlc6oU6PKNd"]}, {"partyID": "U3E6syZoP4ETkT1o", "userIDs": ["TuEAZiFx1JszPpyW", "l81N8YJb0pK3nNi4", "zFxrSerI7l2dwW5F"]}, {"partyID": "jTr7777WW7ZhnFYx", "userIDs": ["vGcfT4uX6KNBs12t", "uS67XK36WQJE6OFV", "8t6osgZkyhUUejtN"]}]}, {"UserIDs": ["Qz2jq3HKZZEaSJ4B", "5A9eaf3PNsorwRO6", "UBSmbfwv3Z9RCtwt"], "parties": [{"partyID": "TIXGMJG7tGftIC9y", "userIDs": ["a88U7vuJztECCEAu", "T0e2R2XpEx3hIS73", "7JtnWPwGgioP2jcS"]}, {"partyID": "TfGl2f7anyhxg0ig", "userIDs": ["FOJ0D6sK8PCEN3kq", "PchvZFZluiYlUoLE", "kJnoPNIsYbK4I8Pb"]}, {"partyID": "bLJpNxB3O5dc4WYo", "userIDs": ["6lDPNhjZzBJrPC2Z", "ZCdsZpHJkMS1vvms", "1PCRkdtsoml522q7"]}]}, {"UserIDs": ["Kq5W4daKMDFnI0wa", "v44akUKygfHTGPB1", "aYEwWB8L21Kw2BhS"], "parties": [{"partyID": "UJ7Uf0VwO5ebwhkD", "userIDs": ["bhhSjkIeosllvyui", "H00VENMhrQFNyXoF", "LEZKZhbtzKFfGdFm"]}, {"partyID": "MpQkeDthc16uy6xB", "userIDs": ["ktv6xwjnFqnl0fnf", "RSBJK0tTBCwiCNI0", "DO6nibFGs4GQJcpI"]}, {"partyID": "eLbN2W1idVnEzQPM", "userIDs": ["NgUv7TGNSpuDv7qP", "GRLhclPmpHM3AwXv", "q9JQH5FCFQL8YFGh"]}]}], "textChat": true, "ticketIDs": ["PoQUNkXdUtZABHpG", "inU51h2gdab3dIe5", "KA9DN3dauEunVcDI"], "tieTeamsSessionLifetime": true, "type": "YKVAmglmtgdgyB9B"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateGameSession' test.out

#- 30 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"D29SQO0a8ZKLjjtN": {}, "RcTS3L5pEPIP0zQA": {}, "D25wNMvJINkLvx7J": {}}' \
    > test.out 2>&1
eval_tap $? 30 'PublicQueryGameSessions' test.out

#- 31 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JXvSGuRhlqofCMy4"}' \
    > test.out 2>&1
eval_tap $? 31 'PublicSessionJoinCode' test.out

#- 32 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'CZC1oEW5iA61kgwS' \
    > test.out 2>&1
eval_tap $? 32 'GetGameSessionByPodName' test.out

#- 33 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Ju8s3WqjJp1wUUWc' \
    > test.out 2>&1
eval_tap $? 33 'GetGameSession' test.out

#- 34 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'yuLbiJ8RmAonkK8T' \
    --body '{"attributes": {"RVqOt5qZ15b4cWJC": {}, "kEnTa3EchvpDfxCd": {}, "VtTqrJGdKhT4AT9t": {}}, "backfillTicketID": "FO5Aq9PPCoISpSx1", "clientVersion": "jZG24RAXKnlDZPfv", "deployment": "MaNp2e27YEFMZLJp", "fallbackClaimKeys": ["LaHkvDcxuGFiT2S5", "ink6yaFilz08JbJy", "2DVk1qFeVMUKzx1h"], "inactiveTimeout": 100, "inviteTimeout": 68, "joinability": "ccjFIrnbDzqsORs2", "matchPool": "IuCO0ehTDPG0hwfC", "maxPlayers": 65, "minPlayers": 29, "preferredClaimKeys": ["s8EAAOCdz95tEbVt", "1tiwCvh2Ynu14BzX", "8MurSpWxsfmYfeQr"], "requestedRegions": ["kMXEeOr2mL4AvNvB", "V65FE0BtXROWzPpi", "8VsIdiqDP9srXe1x"], "teams": [{"UserIDs": ["A8uxABTfuZnZhKEp", "TUEdxpSQ3CcB96H2", "SeCxEXLbbpAiE4sa"], "parties": [{"partyID": "NBSFnoq6aAVXQqn7", "userIDs": ["T58SYxAb3egRptvC", "c47y96Y5iN60T8cS", "SKAuYChnw2TCu2WL"]}, {"partyID": "G5OtslIZ9fTl3mA1", "userIDs": ["vTzfBypEWpJbFVtm", "mfcN36mf1d9pDXws", "QJO5SYoXG00yQPVW"]}, {"partyID": "WOAhlEqQetg4bFO8", "userIDs": ["f0DDU08VxYlErdSf", "bfSLkLuuIMSuWZTC", "mpMG5klwGnHdqQU2"]}]}, {"UserIDs": ["yqGL9I8vZT2WyMbL", "ireqlH3EuNRhk2Nc", "tUUtGEjrLmsMtntM"], "parties": [{"partyID": "e8UsWeLyHPMepUtQ", "userIDs": ["eIwdlTwQXhK7xZEn", "C6fEBj9nGoDOLC8M", "lKKac0D7vEDsf6bM"]}, {"partyID": "8P8t0f9BUWWanQN8", "userIDs": ["uIo2YCs4pNHQF1l7", "xeizU4xCJaTpCTkr", "jjweI3BGMOAXNQTQ"]}, {"partyID": "zO093CPsA8572XBc", "userIDs": ["7DrV0F39DOvRWzHw", "YPb6e6PdqsXGGJvC", "UwADUzezohbNb17i"]}]}, {"UserIDs": ["QQblLbf0FAoWJdry", "KSAH3TM9dlGOTDT7", "zHQOYhwhjuyKwo3T"], "parties": [{"partyID": "NqSHltnrtcMg0FVu", "userIDs": ["hznklzCWD492JAv6", "ouZXh5qq1NMyFh5P", "Ek4WNWadgyFEdXlI"]}, {"partyID": "9ZY6qeBUWzhFlY4U", "userIDs": ["269C4D6fs0eNp6Ob", "Nv3zuTzk0ZKsMWpW", "KDzcuijAgfXhyByL"]}, {"partyID": "VbVzSu0PJWbBts6h", "userIDs": ["NNR0zmzrwy0bdvfL", "7VE3XcQmxFeMZ4zG", "A0y9iF977WhJjwUX"]}]}], "ticketIDs": ["OuGHacdS7nVGnrNV", "5vUVy0oMWTAygo7k", "D6xKvna2A3zFUmZd"], "tieTeamsSessionLifetime": true, "type": "O7wxeIhWMCtoZqfw", "version": 11}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGameSession' test.out

#- 35 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'uz3lQHeNsPT5KHAW' \
    > test.out 2>&1
eval_tap $? 35 'DeleteGameSession' test.out

#- 36 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'v0CeHgZIw4RkVXvj' \
    --body '{"attributes": {"2FqXY1C0rXGDx4Uh": {}, "ntuBr1D0UoiJzS7b": {}, "PPGNfZQ5DF8YXSPF": {}}, "backfillTicketID": "LLj1hVkjMGqmEQo4", "clientVersion": "gKfXfntDm1iANLfR", "deployment": "lGPvIpFrgW7A9Edf", "fallbackClaimKeys": ["BAL0qSHLHCYmPMjN", "CrZGCy1kfXsDfo3Q", "mmEXAj3OFd6VmoEy"], "inactiveTimeout": 72, "inviteTimeout": 53, "joinability": "uftCfSKc87XrfHLR", "matchPool": "y2nHexOAWde6akEF", "maxPlayers": 87, "minPlayers": 87, "preferredClaimKeys": ["1SdOxLUUSmOY9Vee", "XrjWPnX5M04mb62a", "qXwcGJgdKEeFXp57"], "requestedRegions": ["ATuG8t8BE6C1ETQz", "nXyjGS2qkkXa4ofj", "RSqMbgeEzlYJ6tXw"], "teams": [{"UserIDs": ["CIjdJwofrlvYnjp6", "odY4k2Wz5T6ya992", "FKvcWyIg84j2KhJZ"], "parties": [{"partyID": "VD8SP24qWtxWqYsB", "userIDs": ["jzh0BA0OXY7Cz2QF", "A1VPfDRckghJrlEj", "iPmd0h2HTThlCgZh"]}, {"partyID": "jaGNXcjQDWqM4gxU", "userIDs": ["Xy1vPo0PIsCtC2ly", "cVHj8gXKMScXvjV9", "OTZF7aFkidMYGISt"]}, {"partyID": "iuQGp4cURTAcmMQ7", "userIDs": ["aLIKfA8e5a4xVCAe", "T16Z4tozECEDf5aR", "IAhVYrTph1f8DlOm"]}]}, {"UserIDs": ["wwjlIaLRY0pnqbma", "CVzGFa5uVwr6lLIS", "P34pYtjgPcAhnVAa"], "parties": [{"partyID": "vZICrGp1uFo1Mee3", "userIDs": ["RyMBgDGZBXrZFDzP", "6NV0rSUhRmhNslmz", "URA1LgA9TDNY4HQq"]}, {"partyID": "ptdmURWWuQit9Dxm", "userIDs": ["pp5TwwLEI9VmIm1w", "tHitej6SIFcjy3mp", "LIAKRcGhmP9o7wmB"]}, {"partyID": "dSGdCXZHCHL5lWW4", "userIDs": ["7yUCXKe7pqNiUuZr", "GzQ9nmGM2IfRjMop", "4Ezo1oULhA2UNYtg"]}]}, {"UserIDs": ["Kudybo0RrDsbPq0i", "rQCCqB7S8H4M4g42", "rbyfLqa1clT38I4H"], "parties": [{"partyID": "FYMzZoHIGP3xBmYX", "userIDs": ["nhwctM0R7c3SQOu9", "kSTdzI5L0WIuGW1B", "0pVc8yard4RNVW5a"]}, {"partyID": "9Ndqqigivq8UpHZX", "userIDs": ["toKWY9Qiw7Ot4cuc", "MazmzbHAmpiimqMD", "ArPXyEuUGqK9O6y6"]}, {"partyID": "VuULZGsrE2QRC0Rt", "userIDs": ["c0s21JhQ01CXAJSU", "ViySh4O3313mpeqZ", "EDT8oa9BLAOent1l"]}]}], "ticketIDs": ["7bJaHFRCvQxdapj7", "KbBbtioQvHHe7KF5", "E3JpyGwh05RPfqfv"], "tieTeamsSessionLifetime": true, "type": "l5hWiqs8j4RzCZ0m", "version": 9}' \
    > test.out 2>&1
eval_tap $? 36 'PatchUpdateGameSession' test.out

#- 37 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'hFTdlw2tpnrQrN44' \
    --body '{"backfillTicketID": "afXUFpnquAWTqRRw"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateGameSessionBackfillTicketID' test.out

#- 38 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '31WmTVOPc5kWJlMo' \
    > test.out 2>&1
eval_tap $? 38 'GameSessionGenerateCode' test.out

#- 39 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId '9iPkUbG7ta2llJ5g' \
    > test.out 2>&1
eval_tap $? 39 'PublicRevokeGameSessionCode' test.out

#- 40 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'hPSFJDtRw0uDdACm' \
    --body '{"platformID": "T4lVMQDwqss34KBF", "userID": "74BJ12lkSXRdzmNu"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicGameSessionInvite' test.out

#- 41 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'PszwGB8tiIakwtsP' \
    > test.out 2>&1
eval_tap $? 41 'JoinGameSession' test.out

#- 42 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'vo9y2NHLyIvziMmf' \
    --body '{"leaderID": "W6rqrRykW1p1780l"}' \
    > test.out 2>&1
eval_tap $? 42 'PublicPromoteGameSessionLeader' test.out

#- 43 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'w1P11xtAUFuCOVJt' \
    > test.out 2>&1
eval_tap $? 43 'LeaveGameSession' test.out

#- 44 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'Gh5fRW26JAbJ6rKN' \
    > test.out 2>&1
eval_tap $? 44 'PublicGameSessionReject' test.out

#- 45 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'D9ueouEgej8Le0Ot' \
    --body '{"additionalMembers": [{"partyID": "OsaXysLSNRrZf3Th", "userIDs": ["SAm3RR9yBXsvTYIA", "ScnAusP8J8T0YsFW", "t8E5ZjTsR1owOch3"]}, {"partyID": "O1Fdj6DDz89OAhIX", "userIDs": ["ZCfpJxZGkeuEf0Z6", "eZGVLf29MqmKp5Y1", "wLtRA88bwXqd23Ts"]}, {"partyID": "fwSGZgjzFyW7XWMG", "userIDs": ["zwhE8Wj7VfhWHalJ", "Bm9dM3NkYgPZejwj", "IQOllu8u742ZO4xA"]}], "proposedTeams": [{"UserIDs": ["2trGUy4uy7wWRxDh", "DgchxKA1JvKnCpYv", "qC8G9fXOejh1DAtN"], "parties": [{"partyID": "BBQhDwgeSpxDmLIZ", "userIDs": ["wo9m3kSw4NyuhNgv", "ttT44YMLWTs9jJ4N", "wnZfmHzUoY2x8QY8"]}, {"partyID": "CPgGEPU7FgNnfOJm", "userIDs": ["cD4zhA8aPqQzU0m1", "QKyhIrTKzNBpLWV1", "tOkUp5UIeTqx4iYA"]}, {"partyID": "NBK3TAxhptzhuxKI", "userIDs": ["qXkBnXLGPsO7he5r", "4MUYVLA4ENTwOH18", "rEd6JUdWHnJjZEHG"]}]}, {"UserIDs": ["DQ069d6SPqaat1k6", "Kjd2EFtwQ3tVwaAo", "X440XUjOIZyz0Hvm"], "parties": [{"partyID": "hMIRuQJ4ki8openv", "userIDs": ["g42NANwq4mlfTmNE", "qK0wPffM3hBrZaXv", "1naZDJG6cZmRrqdz"]}, {"partyID": "9dN5faKOcdci8FUV", "userIDs": ["HCQrjIwi6n9wj0ST", "dkNIBCqBav9aSpUS", "1oGmCJjUJxF2k9Ui"]}, {"partyID": "IjjNyEgoXXoJbVuq", "userIDs": ["8caGF9YrdCTkRoqT", "Ts2wKzuEXmAAYuXE", "MQ0gK2LhBGM7VuRB"]}]}, {"UserIDs": ["ZYOWamoqyMMA6GhC", "cXvuT4mLuH7Myh10", "prkKZe1OtStuS1Q4"], "parties": [{"partyID": "ONUo96Fk2vtWHyAS", "userIDs": ["oOJK86GfGBNPLb9s", "8A7JeleIZgvwtigV", "bw5OdHXESZHsdVBW"]}, {"partyID": "yuUNPbKwurFQUta4", "userIDs": ["YCfr4xiCvQPDvUWl", "z2EUGAjsXovaOHhM", "FKglel3B1aTjXpiG"]}, {"partyID": "AxUUukiCyxpmowhx", "userIDs": ["xEMectLc5u6NXbou", "fWjWSQsif6tWIMJY", "cpQzrFo9pQxLhGfI"]}]}], "version": 41}' \
    > test.out 2>&1
eval_tap $? 45 'AppendTeamGameSession' test.out

#- 46 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "7aWzzzoH93ZWr4xF"}' \
    > test.out 2>&1
eval_tap $? 46 'PublicPartyJoinCode' test.out

#- 47 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'WXtdvkue0IaTkPRF' \
    > test.out 2>&1
eval_tap $? 47 'PublicGetParty' test.out

#- 48 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'WrQW2y9wf4t70m1K' \
    --body '{"attributes": {"8jelBI6lJdjiH062": {}, "rF03aCRz2CBWYMiT": {}, "q0IoDgVbP445zhDx": {}}, "inactiveTimeout": 93, "inviteTimeout": 77, "joinability": "ZzmZsZnOKrxQrGQZ", "maxPlayers": 18, "minPlayers": 53, "type": "vfJZkDIscrNkqO7G", "version": 41}' \
    > test.out 2>&1
eval_tap $? 48 'PublicUpdateParty' test.out

#- 49 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '3b8SLR8wxc35hfiG' \
    --body '{"attributes": {"WUcSQcozXp29zGGS": {}, "pOiMX9efTDpcsfPo": {}, "XkIReR58oLsHfJ5A": {}}, "inactiveTimeout": 6, "inviteTimeout": 57, "joinability": "mkdoTGOId6Jj3RDb", "maxPlayers": 53, "minPlayers": 53, "type": "QVfenTjLpLCJZIVy", "version": 29}' \
    > test.out 2>&1
eval_tap $? 49 'PublicPatchUpdateParty' test.out

#- 50 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'wOz47zmIVW0lBzcq' \
    > test.out 2>&1
eval_tap $? 50 'PublicGeneratePartyCode' test.out

#- 51 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'U79b3E92FYyYECHm' \
    > test.out 2>&1
eval_tap $? 51 'PublicRevokePartyCode' test.out

#- 52 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId '30Zk7TgV24hSayYq' \
    --body '{"platformID": "CdwN9vwlpxZMulei", "userID": "YfhzmomhVTTmZOA3"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicPartyInvite' test.out

#- 53 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'AkT7ZmVZ1q9G9iaz' \
    --body '{"leaderID": "ap5OApSgemWaCRUm"}' \
    > test.out 2>&1
eval_tap $? 53 'PublicPromotePartyLeader' test.out

#- 54 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'GTlNXk4aYXwcoULq' \
    > test.out 2>&1
eval_tap $? 54 'PublicPartyJoin' test.out

#- 55 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'rxEZXHrtLtWM31yY' \
    > test.out 2>&1
eval_tap $? 55 'PublicPartyLeave' test.out

#- 56 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'tQ7ZoJRAYAh8BjKm' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyReject' test.out

#- 57 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'X5fFB7nv3RqjDkZB' \
    --userId '1QwwB8cGhlGwK2WQ' \
    > test.out 2>&1
eval_tap $? 57 'PublicPartyKick' test.out

#- 58 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"3qNLJL5JCOGYr5Ir": {}, "vm5tuHXEjDN4TGK3": {}, "SZHasLOvFEl7Gekv": {}}, "configurationName": "TZO4pgehVZIlIdrz", "inactiveTimeout": 81, "inviteTimeout": 75, "joinability": "YVSR0NkP4BBuDglE", "maxPlayers": 75, "members": [{"ID": "rLND83YBa6ULM8Sv", "PlatformID": "6eL2oZ8BNYCvO2a1", "PlatformUserID": "3dvDzUHMljzsnqRm"}, {"ID": "VuRMVBdySWATwmOV", "PlatformID": "zBJHK4bp9MkiPn76", "PlatformUserID": "937moURcSkHbn6IY"}, {"ID": "8kmPnfwJUhfRE6v9", "PlatformID": "L2ALC7YW3vjEcwWo", "PlatformUserID": "FodCacrlKHa8YPnp"}], "minPlayers": 47, "textChat": true, "type": "14MObqtFBWK9ZPy5"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateParty' test.out

#- 59 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'nWUfDEXYmwbKpJ1r' \
    --body '{"nGJXVxzBArtc1tdU": {}, "qq33eOhcG1L9siIs": {}, "Y3gpE7zK7vrcsMgL": {}}' \
    > test.out 2>&1
eval_tap $? 59 'PublicUpdateInsertSessionStorageLeader' test.out

#- 60 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'oR0N08KTZAFvxBZ4' \
    --userId 'JIJ88nxtuOGQnl0L' \
    --body '{"8g7WEVsVwqmTySAf": {}, "plzMTJjfx0mwP6d5": {}, "O6nOXecHyBFbcyjk": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateInsertSessionStorage' test.out

#- 61 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["2Dr7ClgeEE0112of", "C9vD7nyxc36gA9s4", "Bj4jF8xbc5LpHiwr"]}' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 62 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'PublicGetPlayerAttributes' test.out

#- 63 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "9udC6vHYAlf3hn4y", "data": {"LcUDSIE6qOcRVwvh": {}, "ZWJNgeSvXBgVH2jr": {}, "48g5bF2HvN820Jhg": {}}, "platforms": [{"name": "8A9y5kRveUn8U9a4", "userID": "8bx595B5h9O3LXpm"}, {"name": "BJ8JOfLjIzOE78DO", "userID": "bRZ8XB9coucn1nsH"}, {"name": "oe3QVFkxpKoqlmX6", "userID": "Mardf52KVFaoCdPt"}], "roles": ["j4LnnuziFJqxgb8s", "MQcHB3iJNOxLbll9", "dJmNII4GOwQE4Xh5"]}' \
    > test.out 2>&1
eval_tap $? 63 'PublicStorePlayerAttributes' test.out

#- 64 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDeletePlayerAttributes' test.out

#- 65 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'sAj9q3bzpGTwX7f2' \
    --orderBy 'EqxIAZwnBT61SLAo' \
    --status 'wkcVQKiDx5f5yaYn' \
    > test.out 2>&1
eval_tap $? 65 'PublicQueryMyGameSessions' test.out

#- 66 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'lmY7hkiSaZJdx4ck' \
    --orderBy '1pdSJxRusm63WYh2' \
    --status 'ADoOSzDJ3XdxlusM' \
    > test.out 2>&1
eval_tap $? 66 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE