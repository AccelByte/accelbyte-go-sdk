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
echo "1..74"

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

#- 6 AdminListGlobalConfiguration
samples/cli/sample-apps Session adminListGlobalConfiguration \
    > test.out 2>&1
eval_tap $? 6 'AdminListGlobalConfiguration' test.out

#- 7 AdminUpdateGlobalConfiguration
samples/cli/sample-apps Session adminUpdateGlobalConfiguration \
    --body '{"regionRetryMapping": {"BnRfZkjn1PwZBljH": ["9cZWy1NMXLbOEIUo", "G8O7Yxv4K0gpjwY6", "Sj8rSNsjpsLB6Gqs"], "NjZDokmrBW2vauvU": ["6uUfuIuCk4WroN8C", "nPZKy62QC3hxaBW1", "7FIGojEo9D4Wd63w"], "LE03S5EoiFx1LTDc": ["OolbLtGzaJKwMHjG", "Upmm4ulVXFstOJ6b", "JINFE1zGO75HaDpF"]}, "regionURLMapping": ["d0qDcznJ7aaPNwPl", "WPtvQLP1K0Q0xln0", "kwUQ5QwTznra6EUD"], "testGameMode": "uy5KBld30d97NHGa", "testRegionURLMapping": ["zKf0Tkc5lVeEvOvK", "3VGJdYU7YqUyDo8D", "mFNH3VbLXX4q7drs"], "testTargetUserIDs": ["wzdCoZu1jTBDcKef", "TNYIFHHVM7KD1UuP", "gbYwXV9CqrPELQWI"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateGlobalConfiguration' test.out

#- 8 AdminDeleteGlobalConfiguration
samples/cli/sample-apps Session adminDeleteGlobalConfiguration \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteGlobalConfiguration' test.out

#- 9 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetConfigurationAlertV1' test.out

#- 10 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 43}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 11}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateConfigurationAlertV1' test.out

#- 12 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteConfigurationAlertV1' test.out

#- 13 HandleUploadXboxPFXCertificate
samples/cli/sample-apps Session handleUploadXboxPFXCertificate \
    --namespace $AB_NAMESPACE \
    --description 'RCS7WJ7Bf0duEnio' \
    --certname 'y90D30b2DpKG7EYy' \
    --file 'tmp.dat' \
    --password 'lypfe3oVHHSYEluV' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 46, "PSNSupportedPlatforms": ["qTPqGYU0R9Hu4ZY0", "rpyom6kRYz5KSKd7", "MOfKSisnH22I45Ht"], "SessionTitle": "Kt3CJkBsy1yPwfPd", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "8qFyH8zyMtmUtCBL", "XboxServiceConfigID": "Mmugw88gb7LmQMXO", "XboxSessionTemplateName": "G1Oj3DyTknUPpMj5", "XboxTitleID": "SVJ6WRVMYD21CmfK", "localizedSessionName": {"RR0BgEAKXV9OqONp": {}, "68LpXRdb9an5RyCm": {}, "A5fPzDcP2YvYwh04": {}}}, "PSNBaseUrl": "QYSPmjuuVbw7iJwn", "autoJoin": false, "clientVersion": "mwQk4qxDNLGfi6sU", "deployment": "61PxMz2msSTGgrLX", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "pzQdUWiqpenhq6ld", "enableSecret": false, "fallbackClaimKeys": ["0RmGfhpslBmf0WAI", "YeJ73VJz7Uluv0ae", "BcRqBrvk6SX3Kfq4"], "immutableStorage": false, "inactiveTimeout": 53, "inviteTimeout": 3, "joinability": "dJMWA4QoFHa8AX46", "maxActiveSessions": 41, "maxPlayers": 45, "minPlayers": 48, "name": "V4BLnaHNe7adxHSB", "persistent": false, "preferredClaimKeys": ["pByznDQgG54GIVn4", "iLUewffgA52yfTkc", "XMuxnqWjH64WCVHi"], "requestedRegions": ["eONn0wPF3jQjatob", "ENg1b6SRwXWCa5iQ", "3wFRVqckpD48jDyG"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "y8bn9PWvi3Szt16H"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --name 'vwwf0uY26f6osvnq' \
    --offset '100' \
    --order 'wNh6EQdcX3QKqnC0' \
    --orderBy 'P4zU5QAoi8KnLFlC' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'KQgIUJCabFcY52PD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'eizjau11m0SCM7zi' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 3, "PSNSupportedPlatforms": ["6q4h1Wg5jxNHNLBm", "86Y2eqmNlyjjwAeM", "jduxfcsHhlVswIiT"], "SessionTitle": "A085EjdSgSTI7dfY", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "1ue97fpOwBoXw8yX", "XboxServiceConfigID": "1aARgOd5N1aoKOcx", "XboxSessionTemplateName": "vfdlGx0oYM0azXgN", "XboxTitleID": "pVgLJsAgMmpdhLUa", "localizedSessionName": {"W6OPuVJmA8YyzNyh": {}, "7N5kpT58etWnXMGO": {}, "gwwrdpp0WzSDEwZF": {}}}, "PSNBaseUrl": "9uXEHLizeSqf8Gz3", "autoJoin": false, "clientVersion": "Zh1ucn8dJHFssNwt", "deployment": "fgxbkdmkgffvPqaB", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "9PFZlznGb9AEfD9j", "enableSecret": false, "fallbackClaimKeys": ["bHJrwmG5jrTm8I2v", "kytEYHuJj8sKOkXd", "NeJYOwNHKIP3BNtC"], "immutableStorage": false, "inactiveTimeout": 0, "inviteTimeout": 38, "joinability": "oFOIDpsWLiKFwiq9", "maxActiveSessions": 56, "maxPlayers": 25, "minPlayers": 64, "name": "3kRGnWHQVZqFhFKu", "persistent": false, "preferredClaimKeys": ["qEoTzuLyFt4LBaIZ", "ZW2FOSEAbPBOnQlY", "KjvcbMiEiFGDQiw7"], "requestedRegions": ["4x0bpgqi2eO9184m", "xxioZk0F1Vhc20L3", "VBdSd3pqDh92Bnr0"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "fJAttlz3cuL9NtKX"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'Quxt2GMdhT5QpRsc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'WvQ6fYp1A5kCNMrn' \
    --namespace $AB_NAMESPACE \
    --userId '9w5wPuFRr1rNcfVw' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'VdBvdUA2Q4dLmGf5' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "MVXpWlWMHDs7PDfG"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminReconcileMaxActiveSession' test.out

#- 21 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminGetDSMCConfiguration' test.out

#- 22 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminSyncDSMCConfiguration' test.out

#- 23 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'XAlhfxEf7iPt9wmO' \
    --dsPodName 'pWIBPxEX4QILmI6c' \
    --fromTime 'aP3oNNvEA45knRAG' \
    --gameMode 'jgiPe6sM6ppIw67N' \
    --isPersistent 'z69gVcS0KGxGZ2vV' \
    --isSoftDeleted 'TSYSUA4HX0nio4yE' \
    --joinability 'lPw8xPPrfJZCFNye' \
    --limit '64' \
    --matchPool 'Oa27z2KaOZ9WTcQm' \
    --memberID 'RcBDOxZip12XmGfQ' \
    --offset '68' \
    --order 'dwIT1wpl0nwGgZr0' \
    --orderBy '26NUTrlIzNBl6FcD' \
    --sessionID 'Kk0WHPNuESuUpU7c' \
    --status 'cmFEn1q5rYOgIal5' \
    --statusV2 '9YgtclgT0pFT8B5a' \
    --toTime 'esG3lxtsHfwDelhR' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"I7zWh3kcTbwOU66E": {}, "RVq6p1DUuVliJo4P": {}, "gu8uaRm9kNvZRCwC": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["Dt1ikqNpv6x9HZg8", "0DEbG5KyvyhcBVlt", "YKGyclyctrfKngyH"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'NkUAdbtyaLRBnzDu' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'Iy1TGQRO472b1UOg' \
    --namespace $AB_NAMESPACE \
    --sessionId 'UJuaJubOKh5Eri6W' \
    --statusType 'RGq0f5uc891Lf9hV' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability '1kUGKEwqsjAk9cQd' \
    --key 'kIUUyeVFsHU2OtjE' \
    --leaderID 'mus7VkaTnnmZpCfA' \
    --limit '61' \
    --memberID '03mUcISGyRmb5qlG' \
    --memberStatus 'EO5pcYfN8Hw0rabZ' \
    --offset '47' \
    --order 'GyKQzjTYDfk7RnmB' \
    --orderBy '4XjXAUyEL5KQllTG' \
    --partyID 'KWu4p6ssJnCu4QxI' \
    --value 'g8WAK7mtx3LY2iRr' \
    > test.out 2>&1
eval_tap $? 28 'AdminQueryParties' test.out

#- 29 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'AdminGetPlatformCredentials' test.out

#- 30 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "Q6fXxMPywl6RHCYu", "clientSecret": "sYCPDrDWBSxpCztA", "scope": "ZrefW1MpDvfSQqgH"}}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdatePlatformCredentials' test.out

#- 31 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'AdminDeletePlatformCredentials' test.out

#- 32 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'M0CTyii2EwWqi12P' \
    > test.out 2>&1
eval_tap $? 32 'AdminReadSessionStorage' test.out

#- 33 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'HHoSYVFXRsNdBshS' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteUserSessionStorage' test.out

#- 34 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'tQ0DzQ342ceWw0BA' \
    --userId 'SwAM78hb9aNnWnWY' \
    > test.out 2>&1
eval_tap $? 34 'AdminReadUserSessionStorage' test.out

#- 35 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'vdumyGWxRYaUINyt' \
    > test.out 2>&1
eval_tap $? 35 'AdminQueryPlayerAttributes' test.out

#- 36 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'vncs49bjPxeqEW8X' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlayerAttributes' test.out

#- 37 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"uHJQjvqmuhEbu3wf": {}, "lIGtmfsA0Y3WrPjx": {}, "iWw7c4KRLDr8ODIM": {}}, "autoJoin": false, "backfillTicketID": "gGNNgavo7XXEDLYU", "clientVersion": "c71Ms2lpzlI8bZp2", "configurationName": "In3H0psuXu1TdoYm", "deployment": "DpR8db2cQnGDX9bB", "dsSource": "y0gfPmS3VkJPv8JP", "fallbackClaimKeys": ["DLTtw7kI5yF8GV1c", "FXfWUUlWK4h9FYhH", "kGai4fBepC25akBM"], "inactiveTimeout": 42, "inviteTimeout": 34, "joinability": "Q1ZygQ29otCCJHQh", "matchPool": "2bWipby6xgJ8A5xB", "maxPlayers": 73, "minPlayers": 31, "preferredClaimKeys": ["EsAYhvPY273b8uzR", "mSRS9jslDGU6JNFU", "TI07PEw0MA0sl47o"], "requestedRegions": ["bR9hF1yWCoMsNoiR", "v3p304b7hzTDevFg", "HiVZFECl4B0bKdcm"], "serverName": "mUBDG5jhOTJq5zCz", "teams": [{"UserIDs": ["Q9EwbiiHsoUjqTPv", "boUbYHUjAKja19YF", "v7dTl2kTaTokhB2w"], "parties": [{"partyID": "3yf0GWp6zX6Woqsm", "userIDs": ["fGIUuVpEefzMY09Z", "LWb4qCfYe8H6m4qV", "D57DrIC4fsVDK6vQ"]}, {"partyID": "zTrob83UNSBMej6O", "userIDs": ["UrIN80WhQ4t6nCOx", "48PpbQHiTOsU9OpQ", "H2qvPNYXSNq4GSau"]}, {"partyID": "YjtDKwzuOb8vXaC6", "userIDs": ["M7tqEU5ufuxyyixv", "SkpcKg1cGx7VzD1g", "Qm1fKA9BLOx8YPm0"]}]}, {"UserIDs": ["rygcYzadBUe6SzNq", "0rCvXFN9T5uGHi2I", "0Mr6nDlWxYDXCF1g"], "parties": [{"partyID": "5po1CSMdKcw9VUE1", "userIDs": ["ijZ9hFedICyJiL2D", "JdqPDYHvZVvAPgCa", "tjBTkKuHjwzBzUND"]}, {"partyID": "BZs9Boc2CKHlAV8P", "userIDs": ["Ncwf2wNFEoJ12wob", "EIalliACE00E6RZn", "OqClz8qDHXtZGkeI"]}, {"partyID": "dT6xuqFogGzxC6jB", "userIDs": ["cXmyzIU5MkaUw9Ec", "UVaHe8pMbfbmkKjl", "gzkF3vuwNONKK25R"]}]}, {"UserIDs": ["P7Imm6W8209DhYGB", "iJputQfXDF9bp0IM", "Y0r3JIp95t0752ab"], "parties": [{"partyID": "FRgi4cnLmyugEy7U", "userIDs": ["VrbaFUtTq5htnwp8", "G5kTgmSLFxS7ANS1", "wBscoaUKgiXBF1Er"]}, {"partyID": "hfVlVUa180f6TTZe", "userIDs": ["4KaFyCAyDcipKmq1", "YpVxxtJYutRh6nkf", "daa2cFt6puSpx1f6"]}, {"partyID": "KLZ7sSlXGM18kcOu", "userIDs": ["Omtw9610yrN5ohxV", "uMky7m2je4z2SufR", "kqMFBWbPYA8lpC50"]}]}], "textChat": false, "ticketIDs": ["9IT9tqSzcl7ULYLR", "1fMmLtgXOBloQmbZ", "JR8IRqYCGRuzPafy"], "tieTeamsSessionLifetime": false, "type": "0C7lLDT6OUwP0B64"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateGameSession' test.out

#- 38 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"ScDFzF4dmT6yAkBw": {}, "hdAyGqQsbMDRQtS5": {}, "gnidftKfy3rO9ocU": {}}' \
    > test.out 2>&1
eval_tap $? 38 'PublicQueryGameSessionsByAttributes' test.out

#- 39 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "l1dZxbnxHLd3aAHd"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicSessionJoinCode' test.out

#- 40 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'SxFekPMxwbCdxLes' \
    > test.out 2>&1
eval_tap $? 40 'GetGameSessionByPodName' test.out

#- 41 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '9YLKnMgwfaKhAbKH' \
    > test.out 2>&1
eval_tap $? 41 'GetGameSession' test.out

#- 42 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'EopIxnEkyyASPBAM' \
    --body '{"attributes": {"HsSh0scod7TAr4zY": {}, "FQp434Ues1Vauz7H": {}, "qZZS0S1FiITkFfe1": {}}, "backfillTicketID": "G7ONyl7zqb4sxQDK", "clientVersion": "B0G5Cdc4REd7PlrF", "deployment": "ytJpNIRmSeyWCpox", "fallbackClaimKeys": ["E3bEcA0AuAoUdWQ1", "Slqb3JzKmf5ldIVt", "3tY9NTNecwf8Z9Sm"], "inactiveTimeout": 12, "inviteTimeout": 95, "joinability": "Rf9TzqIRQzERaR9q", "matchPool": "IsoFydCsdS0OYVo7", "maxPlayers": 17, "minPlayers": 0, "preferredClaimKeys": ["LlFDN6qwQgDjOpWS", "U3OPuQAX7iFFlFnY", "PP2LfdbpAQUVuVp2"], "requestedRegions": ["kbyalLaxWswIVswg", "ybujvdPQuIrRtNIJ", "IEdKF66jhvyOFnWb"], "teams": [{"UserIDs": ["ylK7GwfTDfaUIqRD", "Y9GtCfO0pxrDL9Yb", "h9jA7JbVOQXnhDcG"], "parties": [{"partyID": "pUONICUtvV1yBadB", "userIDs": ["kEDyfe1IKM95Ger7", "BTP3qBohFKCFiY7k", "TpkfWAL8rgIfcUij"]}, {"partyID": "H64MpB7XkjYUT6e8", "userIDs": ["3YtfpRXtbcDkzGuS", "fjXyi8pkjCZUI9pn", "zNmhKNmQ6GKJEdek"]}, {"partyID": "O8DFDi7hFHBBVgeS", "userIDs": ["wCpGiJDn9yo3Y4HO", "LN4ZSiMJGgsBLWpp", "ZSeeZ7OLzj8zGr9k"]}]}, {"UserIDs": ["1G2YUjwmX8BoKG6X", "TmG6MAakR6DvvrOo", "EvJIjbj0QJuW8Nun"], "parties": [{"partyID": "aCGvMirFywpc4iTA", "userIDs": ["6ma8huAfxOMFSSgt", "LR0RHTlXmuVBbRQl", "IQd4J4D0pzZl34VW"]}, {"partyID": "zMKYtc2KDVcYkRdy", "userIDs": ["ux2meFT1yJspIeQJ", "l96I7ar5PpkSETBu", "5JrBmEV2PZjymp7g"]}, {"partyID": "x8a4nMoNMCIydGnM", "userIDs": ["8ERC6tw32aNhwx1d", "pkId4XM0bvAhjGv8", "FxWXNMOMp9gLNXWG"]}]}, {"UserIDs": ["z5smdrluoy2Zv8kF", "YwsUgPI8uqdZWdn6", "deJBn61eMzGFhwfj"], "parties": [{"partyID": "tQeTLJWjOvuMH1FN", "userIDs": ["bOrJirFwayOnEPHp", "3x0KE2H3dpkHro5o", "Q8N4kLBO8SPIQwWE"]}, {"partyID": "H2EAKCTm13ru3YvS", "userIDs": ["BQX84uqZxFdHAEbe", "nJThHWzSA3bu0fHZ", "SZnnBa2pxZMSzgXf"]}, {"partyID": "osj4yUapGh3kvyVE", "userIDs": ["JqvaOj6pF7VxMqqx", "SsepAyLOklK3Gclm", "bgBRX6X73M77BsnR"]}]}], "ticketIDs": ["8GVMSbvkuA8ojvAH", "FKbgaCRdj7pQhVX9", "et2roWJZ1UMImXBE"], "tieTeamsSessionLifetime": false, "type": "aoShjNFuhdc4qmCY", "version": 75}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateGameSession' test.out

#- 43 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'nhMDy0ZCgVPZfm1j' \
    > test.out 2>&1
eval_tap $? 43 'DeleteGameSession' test.out

#- 44 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'pbf4sXBnhD83IZIb' \
    --body '{"attributes": {"LhpEkh0hmzRMVs2Z": {}, "8E6oVL0UPpvsqSfT": {}, "kwmd6VEnQyICyD5y": {}}, "backfillTicketID": "pdvoA39d6mVIhCb0", "clientVersion": "OpDlDI90cBoVasrr", "deployment": "Yh5shZosjq5NTxMK", "fallbackClaimKeys": ["zjrrzrrQWQtdEHbo", "j4bN0wZnqnQqjlTE", "GaQiTE5yHXUDaRwn"], "inactiveTimeout": 23, "inviteTimeout": 1, "joinability": "tuFDGvvPkjkjaoEn", "matchPool": "pXbCMcnQpwSRC3Bj", "maxPlayers": 37, "minPlayers": 87, "preferredClaimKeys": ["fNKAeO9406kEShRM", "bhsPLeBYVxA2CC9D", "5NVm4gUbIXKuxmLL"], "requestedRegions": ["js5RRcImLT35EopJ", "jpS6O8lSXvWdsm3m", "KYTY8JM8B0Gm6eKH"], "teams": [{"UserIDs": ["UQfeqMneKLPOAM5m", "E6J25VnWaKFYhnr5", "dNU5U9q8F23DiXof"], "parties": [{"partyID": "ToBGvSPxCpxjRzSR", "userIDs": ["0WbOzu6q4UTwWOat", "U1N5jYucCDIh98VC", "aZ9ckdCfIZAAhF3i"]}, {"partyID": "s33ErMiCEALf81y6", "userIDs": ["uJnXn89UQb2xkgYn", "8wU28CEWyF7TJuHn", "in304Cq8cjgGURaM"]}, {"partyID": "SFmHMXWgDnbPyAw7", "userIDs": ["SSnXgpTDhsXyMPBZ", "MwpoGCuWocm9f6Ro", "LfOmT2FIdCbcIEtW"]}]}, {"UserIDs": ["zSmpd3NprKPsFp8T", "bkXh1ED5q0IOz7uS", "HNAxnaU7qV0JyVaH"], "parties": [{"partyID": "iHrx84syob8Q4G3m", "userIDs": ["fCEtbXtr2C8NJmIe", "zi5IN9DYCuYRy7V5", "P4seHc8Z5boig8vr"]}, {"partyID": "x8vtixosE3Gb9FoK", "userIDs": ["qMjVnOGq1lRfElC9", "A6tI0vTVPtgeVYMy", "0Z1IlZMClntcCeg2"]}, {"partyID": "lZngmrNpUMDLK3aI", "userIDs": ["VgscvrM4rayot1QV", "JtN4OLM64eH0LFE6", "uI34Oj0HyQ2yUVe0"]}]}, {"UserIDs": ["6i5IwtPEeeEB43Lg", "WvWqh3v4HhVP0wUw", "Oc9xc9myVMpCMuJv"], "parties": [{"partyID": "mjMuQxgMtRS64ArS", "userIDs": ["tgyOnpdFK1pdfiA6", "Q93499tgIsmNN1rg", "vEsrlmfOdKnks4B9"]}, {"partyID": "PxSUzcghSxGjWEEd", "userIDs": ["eh4P9JzQGyjulp4p", "GJfeShTUAXPUDQVT", "n0MW9iH81fKUbJYh"]}, {"partyID": "b0HsWme4JontmU2N", "userIDs": ["SvrKSXg3GtuhGlBd", "nUR9P2O0Yp6kizX8", "OVTokVxD5ILZcU79"]}]}], "ticketIDs": ["g5RGiGEgTvuW6V9u", "nAx9ymWthcsoMGaG", "9yDxhagZYBQVlEpc"], "tieTeamsSessionLifetime": true, "type": "nmoCLpUw0vYePRXw", "version": 74}' \
    > test.out 2>&1
eval_tap $? 44 'PatchUpdateGameSession' test.out

#- 45 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId '5awPJPcLlQTnS2Ki' \
    --body '{"backfillTicketID": "NVutq8DrDAp2Qgll"}' \
    > test.out 2>&1
eval_tap $? 45 'UpdateGameSessionBackfillTicketID' test.out

#- 46 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'cHg9iufn8u5dqdWW' \
    > test.out 2>&1
eval_tap $? 46 'GameSessionGenerateCode' test.out

#- 47 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'W3TwzkjUy5orOdYh' \
    > test.out 2>&1
eval_tap $? 47 'PublicRevokeGameSessionCode' test.out

#- 48 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'xqOpqcVH8K5gtnsA' \
    --body '{"platformID": "rh9K2YeZoFYiO5w3", "userID": "zNTGUt1BHVmqqAhT"}' \
    > test.out 2>&1
eval_tap $? 48 'PublicGameSessionInvite' test.out

#- 49 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'QiWQvjM27TaDqhUQ' \
    > test.out 2>&1
eval_tap $? 49 'JoinGameSession' test.out

#- 50 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'THNgLl142zmsi1oK' \
    --body '{"leaderID": "zp0vJJHURacHAyEs"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicPromoteGameSessionLeader' test.out

#- 51 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'NS9d1SX9Lt2nL1ve' \
    > test.out 2>&1
eval_tap $? 51 'LeaveGameSession' test.out

#- 52 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'Ps0Xsg9z2ZIdE8eJ' \
    > test.out 2>&1
eval_tap $? 52 'PublicGameSessionReject' test.out

#- 53 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '0420XMEiZryvHMJF' \
    --body '{"additionalMembers": [{"partyID": "gWwFYdlvemLzO0YS", "userIDs": ["z664kP28iBwV3BTy", "dvxOGrh0thWaxPh7", "sTHXa4xkhUvnY38Q"]}, {"partyID": "76laTYCWTU0Zxnmd", "userIDs": ["LZ2ogXLFbuGMMVlE", "TAsBVN6phNCWOKZi", "4llRCTqp5hQ45rnC"]}, {"partyID": "SzDfwMch9vLGPZia", "userIDs": ["UQTGhFGZuCKxyG1Q", "qGIxDxDW26RrQkj7", "O6ZTPV1dFev7sAMM"]}], "proposedTeams": [{"UserIDs": ["4YDViJAHHp0HBPoS", "98UnaS76NdfI0KTp", "decJk7qJSZa8EGbc"], "parties": [{"partyID": "f1But9A4OGqhtUKx", "userIDs": ["uQFidJUILcUNlBNa", "m76pzHcfwukqn0CG", "nKWhgcK3TiKjGm38"]}, {"partyID": "KMXZRjXekn7vYf89", "userIDs": ["7CMElUS7lyR5zB2o", "Uo53UD4TQP1ELU8O", "PeQ6ySd8WQ7keQzL"]}, {"partyID": "IUCdKEbY3XjaO2XN", "userIDs": ["pxgeTYiIyqD94e42", "IPAXrX6yquFGZy6P", "pQSLqH18jwnpyin4"]}]}, {"UserIDs": ["9Z5SaCoyXnAVjykL", "JuKvrZ4f2IY55W06", "nTEkZZ34Gmq99DUE"], "parties": [{"partyID": "1ZCCkDbhnpWlaEtt", "userIDs": ["S27kemDjghgFAtSf", "KLdZsJzQxCgmyFWd", "nvzulq0nYNPzHxJc"]}, {"partyID": "EkAwPafykZtUOpPd", "userIDs": ["pnDyaK8tEKWRO4gJ", "vB4T8MYybZNebIaX", "V4bASm4h3UnBEJfN"]}, {"partyID": "MxBMMaCbZEhuhwAF", "userIDs": ["Zlq5X9mqZXt5ts3v", "C5NyNd0BnI6ydfDl", "GOhrGGZs1pFjCuCv"]}]}, {"UserIDs": ["tssm8Ee971ANZJq2", "qW1oVMnXqfbxZ8nZ", "5zKZKhqkfZBHQmXZ"], "parties": [{"partyID": "Cszqwj9oGxXpnPsb", "userIDs": ["kXXi32HOGpHtVS0M", "HtgAukVva13G3R3Y", "wKv7rKceVpZx2dvY"]}, {"partyID": "7BZwamDHgj52ptpN", "userIDs": ["NEKX3kACdot4wz3j", "pvfQVDzEJXJodQ9B", "o7OhUeT0z0nrQ9kd"]}, {"partyID": "O9xipedzMBsYtbFh", "userIDs": ["fLx2gMtAHbFfNAKX", "SjKbcL5NFTmICuJZ", "ZdWIc7sToMOdzYiK"]}]}], "version": 78}' \
    > test.out 2>&1
eval_tap $? 53 'AppendTeamGameSession' test.out

#- 54 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "AUfaR1krNpQgRXy0"}' \
    > test.out 2>&1
eval_tap $? 54 'PublicPartyJoinCode' test.out

#- 55 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'EBJsiGVZRKSyhNzc' \
    > test.out 2>&1
eval_tap $? 55 'PublicGetParty' test.out

#- 56 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'xGAsW6B60oMeld1k' \
    --body '{"attributes": {"FEzjinXUfwuA2DBm": {}, "QfyoBntFjHoCtCnU": {}, "3D3k6QnIFc0JuUYS": {}}, "inactiveTimeout": 1, "inviteTimeout": 78, "joinability": "1T9bOhXTW5SCp6wi", "maxPlayers": 2, "minPlayers": 32, "type": "fhohEYCDrFiyQSts", "version": 72}' \
    > test.out 2>&1
eval_tap $? 56 'PublicUpdateParty' test.out

#- 57 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '4U1wPnsIFXBlsRGu' \
    --body '{"attributes": {"X8InfDgl5gMU0KVH": {}, "o4aQ1qA5cTyzoEWU": {}, "FVkOjeQOK6Bd0InJ": {}}, "inactiveTimeout": 38, "inviteTimeout": 58, "joinability": "e4fS1uzkH2cdqQTj", "maxPlayers": 51, "minPlayers": 42, "type": "9gm2TEUCtS1HqJ2S", "version": 85}' \
    > test.out 2>&1
eval_tap $? 57 'PublicPatchUpdateParty' test.out

#- 58 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'q65Tx2ly9PyTVDS2' \
    > test.out 2>&1
eval_tap $? 58 'PublicGeneratePartyCode' test.out

#- 59 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'R4RBptg3l61BUfbr' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokePartyCode' test.out

#- 60 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'YvBnLFficqB6g9He' \
    --body '{"platformID": "Sjm3nFXeqnUrwtRU", "userID": "4sB9Iaj6Xs9JKzDc"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicPartyInvite' test.out

#- 61 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'aVmbPOEjkUU7Aakh' \
    --body '{"leaderID": "ynVJ48xHrPaYwVbM"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicPromotePartyLeader' test.out

#- 62 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'ngTcXHeim2AvxqBl' \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyJoin' test.out

#- 63 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'hdIzqmP2JOvphIHf' \
    > test.out 2>&1
eval_tap $? 63 'PublicPartyLeave' test.out

#- 64 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'L2pAZG8KfLAEUR70' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyReject' test.out

#- 65 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'OEVBYP1kezywtasu' \
    --userId 'Z92N3HtMfLMTot4Y' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyKick' test.out

#- 66 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"FlcAIR7bdX0SDNsz": {}, "iL0GY3PtTjbwFw4y": {}, "URVImTvarqrS9puT": {}}, "configurationName": "hTrCBG3cceaoSg1O", "inactiveTimeout": 68, "inviteTimeout": 68, "joinability": "7gIgEaySuRkvcruz", "maxPlayers": 27, "members": [{"ID": "1kLQNgyZQLD0EyCN", "PlatformID": "jt0V0nBk2JgM11yL", "PlatformUserID": "IgA6Ujmdn2xqwb4N"}, {"ID": "ypUawFuoj3Wpad2S", "PlatformID": "7NIoGhgp4ZVy7bUz", "PlatformUserID": "uKhkYHXubs0aGZdi"}, {"ID": "dZa9xjn4qweDgQLW", "PlatformID": "aXvECxx8jdXIZRNU", "PlatformUserID": "enph3rWonoHgQO1B"}], "minPlayers": 72, "textChat": false, "type": "LddZyJvB09Ag9NUw"}' \
    > test.out 2>&1
eval_tap $? 66 'PublicCreateParty' test.out

#- 67 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'ukTqgFXLaOn3T293' \
    --body '{"wMVZVZKe1yvS5Vmr": {}, "25uNudX7oEQMv1tk": {}, "PNOrxJBmgmP3n02C": {}}' \
    > test.out 2>&1
eval_tap $? 67 'PublicUpdateInsertSessionStorageLeader' test.out

#- 68 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '26Qtyjz4Ahkc9iFi' \
    --userId 'HAgrMoD7YWYtq0em' \
    --body '{"GilJPfnTFU0uCSxa": {}, "t0wsSh2BeA3mLrlM": {}, "aKCzKwF7nOzGANaT": {}}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateInsertSessionStorage' test.out

#- 69 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["g3sGdxGqVDEP04gP", "gau0SrqzQsVxF6lD", "bGmUboHiDwCuvlfn"]}' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 70 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'PublicGetPlayerAttributes' test.out

#- 71 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "XmzjC2aJwmSeBKWF", "data": {"uXKsIroQ0KdOuRfB": {}, "1hVwPaQPE8oMRL1a": {}, "KVPDClrqymXLcFyo": {}}, "platforms": [{"name": "aYP2SRSnIxYLgm0B", "userID": "hneN2N8H5f0I9qIQ"}, {"name": "0pkro0wr4nLRD0Ju", "userID": "g6jVu67zoY33Z955"}, {"name": "17HcjEqesmdyDpAE", "userID": "LVo2rXM3SruU7SLP"}], "roles": ["DGoNHBXceyLVr9N6", "0IW5NrEZXrDLtSQ1", "Kuvo8WVFicoV8W4S"]}' \
    > test.out 2>&1
eval_tap $? 71 'PublicStorePlayerAttributes' test.out

#- 72 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'PublicDeletePlayerAttributes' test.out

#- 73 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order '1y4vYk5RgcvV5SaU' \
    --orderBy 'gFObydgJbzLT3ol0' \
    --status 'zR6DlwV69EXAJhRT' \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryMyGameSessions' test.out

#- 74 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'QCEIelwS0CBynsyY' \
    --orderBy 'VtTAiZbnAl9113S1' \
    --status 'pg050GTHowd5nYnp' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE