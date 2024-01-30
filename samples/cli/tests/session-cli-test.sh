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
echo "1..77"

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
    --body '{"regionRetryMapping": {"dVxbudO6oAEt32ZA": ["F6nKdhcPg2FNlPAv", "S0dSBE5K84lZwuZy", "QuoXTZHCsoyvftqi"], "kgzH5bWdc7gRAfok": ["Ter7dpqeeVCMFqxe", "BtiggI7nf5l8eVx2", "WOUlyV7yHePeOVxB"], "ZpgBIWp9Tl3QfB39": ["wUzViMKiLDytfm57", "iBK6AdRFSZbbRLMA", "keSEcnSjhxaw9zdY"]}, "regionURLMapping": ["M2E6pnPM9RAeghV8", "AIbqIxtlJvO6zDyR", "PJMr9OYvhLL0H9Lx"], "testGameMode": "LjTjeQPI3hzLlIRC", "testRegionURLMapping": ["bSHi6PCfspwlhrn7", "uTDClLnM8sx5VcBV", "Rnz7y1GgH1w7Dtgl"], "testTargetUserIDs": ["Ej0ViqK58c5OkAJd", "ZIiY6d0j0hKMgZZr", "tqSYksYT7lFiifjq"]}' \
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
    --body '{"durationDays": 8}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 52}' \
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
    --description '91XJMGUPGRcuEC6t' \
    --certname 'AEWJu4r7PcsWyT0Y' \
    --file 'tmp.dat' \
    --password 'nD7bxflRYj0B56EM' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 40, "PSNSupportedPlatforms": ["8agTlzU5OaiyCAh8", "GqwAAgnHHbUtJelb", "SZXHJsN6ypRaxBMr"], "SessionTitle": "8s6rBbUToFukWO2y", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "xSIajdlNltXpN8Xi", "XboxServiceConfigID": "adQxbAgCsPK0V3cJ", "XboxSessionTemplateName": "BjU5tiaRySvqciA1", "XboxTitleID": "0LR52ikEsBz1RFIE", "localizedSessionName": {"IBDbJbhH2Fq22vyT": {}, "eNImar7Z5YpqQHuh": {}, "tZlu5khpcn3JB5Qj": {}}}, "PSNBaseUrl": "qmwMsz2AgsUcOK2Q", "attributes": {"NlGulzXJt4EWQq9o": {}, "FK5HmMLfAsNPI4Qp": {}, "SmoVIO6KaoV6Lvbz": {}}, "autoJoin": false, "clientVersion": "pwTAcrbhIoHVC3Cz", "deployment": "fDsUsPQTYHNGWuY4", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "qhrJFA8h9iL4fEoz", "enableSecret": true, "fallbackClaimKeys": ["HjQZalLage1VhLH4", "ESybR6TtEcIxYre9", "CCyX0V6WCHvRSrmz"], "immutableStorage": false, "inactiveTimeout": 99, "inviteTimeout": 86, "joinability": "LCYr9ikhrALmsugg", "leaderElectionGracePeriod": 87, "manualRejoin": false, "maxActiveSessions": 53, "maxPlayers": 5, "minPlayers": 30, "name": "kM5yyrZ7QCCKUHHf", "persistent": false, "preferredClaimKeys": ["uURtvHAUxZ0r0Yoy", "Baa3GoOMYP4xTynK", "XINfHIhRJxJswdki"], "requestedRegions": ["pPAokCfmTRLER98A", "KuT8ewjpcQyk9QhT", "2S9ltM1NJrq8xlJP"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "9JQmzI2hhJwNEviU"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --name 'n7GHyje8MbsjdJx4' \
    --offset '58' \
    --order 'ShpAXmDm1ismelM7' \
    --orderBy 'OzmGIrX0Xqes0GzY' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'Opw3WyNrm2n9MHgI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'nl3T5vl2stvzG88N' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 16, "PSNSupportedPlatforms": ["QUnzPgzVmnWyM7GG", "lH5mo6s8DENyh59A", "fU3SMKk6UJCxh28u"], "SessionTitle": "qznAIcLqJMNg5XbO", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "dUv657pUek4ojFvt", "XboxServiceConfigID": "dWY7l857eEyW9h0Z", "XboxSessionTemplateName": "t7BDXnAM7y3PymRc", "XboxTitleID": "6iRAXg66OHSN0sUx", "localizedSessionName": {"QMp8vvqAfpBL9kMK": {}, "mcLw3v2nwYTvYPdq": {}, "rObcLKu2F4FN459S": {}}}, "PSNBaseUrl": "MuLrwpUnRY3mbX3H", "attributes": {"jjH4ZW2lGwyoxwZO": {}, "ZFzM5a73I8mB9er6": {}, "igxz9BOSs54eCgke": {}}, "autoJoin": true, "clientVersion": "JCdFgLkTq4nxClhS", "deployment": "ZUA9tEK83LeMEHig", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "V9rTKpSAuTpwMwPo", "enableSecret": false, "fallbackClaimKeys": ["Cx0yvFDNYrXTQsiC", "uh4iEE54Gz8H5PIs", "S3DAUUeRrVrK5WuI"], "immutableStorage": true, "inactiveTimeout": 51, "inviteTimeout": 64, "joinability": "wQHgQl6onQz7iA0x", "leaderElectionGracePeriod": 16, "manualRejoin": true, "maxActiveSessions": 87, "maxPlayers": 21, "minPlayers": 27, "name": "Orb7edY3lal2AotZ", "persistent": true, "preferredClaimKeys": ["byuhd0mKJnXzCnty", "YG3m8hVq0iiacGjX", "oa3Uh7TUN0kcFQ1L"], "requestedRegions": ["VpuiUSCh5EcqMIK0", "Cb1UGZNIQOMVeWd0", "5wFBhfEmCaBkoX9Z"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "yJjlqTalQu0bTGMR"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'SMAz0lXQe4AasYEA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'deuq511STCC5GNjF' \
    --namespace $AB_NAMESPACE \
    --userId 'mIub1rGm3RekeeIq' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'Q4QeWlynVx4xnWf3' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "VIOwNga0xmpcgiqT"}' \
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
    --configurationName 'kXg9dyPAeMpD9PdV' \
    --dsPodName 'dKtSjly4NIQTzaFM' \
    --fromTime 'ZZnyI3GmV8ThoRKq' \
    --gameMode 'PgMKMd020qRDKPXv' \
    --isPersistent '239PYTbjIdj77I3W' \
    --isSoftDeleted 'wgTeenIylm3kMLna' \
    --joinability 'VE9GAzsrPXrkEQIV' \
    --limit '33' \
    --matchPool 'NZY2SIkV246TXtlS' \
    --memberID '0wjkAcJG97Qspwii' \
    --offset '47' \
    --order 'nEEXVMWKwDeZ8zMA' \
    --orderBy 'QPBWJo8qUOxZyDTi' \
    --sessionID 'aP7GTyzba75s6ItO' \
    --status 'hpHR9Hxq8wLQzAuc' \
    --statusV2 'Z79RwgaLCUJVyNpR' \
    --toTime 'NF94FXGOQeBPabzH' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"4rmNT28Me5FOCEEO": {}, "nQGkQKilZCSsEkFk": {}, "aiwrNwk3hSO8W9l4": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["zkneFVJCp0FRrkU7", "k3bvRsgviaom0G6u", "CqCTWMIg2pROVyim"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'CcoBOiuIkUdiyg6D' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'Y9zzTds6CT2A6XZo' \
    --namespace $AB_NAMESPACE \
    --sessionId 'JGw3uQV3XYeARDCT' \
    --statusType '4Xpn5e4S0LXvF7MY' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '10' \
    --order '0yoOKB091jDPQk4p' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetListNativeSession' test.out

#- 29 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'YDmMEWZrm4NmJaSr' \
    --key 'gVjX4plY1xGFRSVC' \
    --leaderID 'i9UKCumNOXJzvcsD' \
    --limit '22' \
    --memberID 'DDA3gUCG6lLF8Asv' \
    --memberStatus '8EgVJOxbMMmoL0VB' \
    --offset '48' \
    --order 'SsVgumZRKVuja485' \
    --orderBy 'icLLUOLgMMFudTm5' \
    --partyID '8IRjOFYrOyXFWeBl' \
    --value 'jTk39hzabEzIQdby' \
    > test.out 2>&1
eval_tap $? 29 'AdminQueryParties' test.out

#- 30 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'AdminGetPlatformCredentials' test.out

#- 31 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "Jo3MPbWw8Adccyo4", "clientSecret": "mLpdGnT1CoAgYHT3", "scope": "R6ufavGXGV82JjDp"}}' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdatePlatformCredentials' test.out

#- 32 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'AdminDeletePlatformCredentials' test.out

#- 33 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'BibmOKmAxVLppRXX' \
    > test.out 2>&1
eval_tap $? 33 'AdminReadSessionStorage' test.out

#- 34 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'JI13pXygV1kMJUqQ' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteUserSessionStorage' test.out

#- 35 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'pL2Art1mkypDFrTH' \
    --userId 'Ri1GB8Gau6BrLBE1' \
    > test.out 2>&1
eval_tap $? 35 'AdminReadUserSessionStorage' test.out

#- 36 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'amVGaL3Ex55w9f3S' \
    > test.out 2>&1
eval_tap $? 36 'AdminQueryPlayerAttributes' test.out

#- 37 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'FjajZb4JmYkUfGyE' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerAttributes' test.out

#- 38 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"Jjj6XmlFhxyilvKQ": {}, "aJFfOmJQtkLrE2QE": {}, "lEaWShDdqRrqoDt2": {}}, "autoJoin": true, "backfillTicketID": "GW5rWdvWnflM9MvB", "clientVersion": "H6nSF5ZIKSYiCuvr", "configurationName": "BYQvb9VUlBpI6DBd", "deployment": "Qs9oj6XNiS8ULw8v", "dsSource": "Q5FdTABXKMx6s6fI", "fallbackClaimKeys": ["SvIAjDqLsiSUcblT", "vOfc6t4k0x1sKTVJ", "i5iQWcsxDprxPBo2"], "inactiveTimeout": 21, "inviteTimeout": 18, "joinability": "PXyvVdB7oz3eq4mb", "matchPool": "Jf9nrJAkPSQ81O6l", "maxPlayers": 8, "minPlayers": 52, "preferredClaimKeys": ["uhh1NTHQyPP9RrZv", "Mku5v1y8ZIInTYKY", "YdYBpEmdlhqg1H4k"], "requestedRegions": ["1YC0Hkspx0sWtQH0", "mAljQCinsWHBe5WU", "GOORvPJ47VYrUs7Y"], "serverName": "6gZETaLRTcCpEyWu", "teams": [{"UserIDs": ["s547e9sLOHZIz6Ob", "n6sKAan2jzgfH5RS", "ir5BmgkKHMBkY9ji"], "parties": [{"partyID": "OxpQZrajSMKir9TZ", "userIDs": ["kRk9Hvs0Xv9wFXG7", "R9HXqoI18XZAHOrK", "uP88DBASpL5i4eW3"]}, {"partyID": "1nCTn876eyfkBrEk", "userIDs": ["3iptY9JmtgaXlvav", "OH5OfFyNQ8zLq2jr", "tFojqYevz686bdjj"]}, {"partyID": "BInEUt5laQp5X57s", "userIDs": ["AOVESXlogvq29BOC", "s6rq5s3VquSFvOLr", "MLu02hWt9b3EyUqL"]}]}, {"UserIDs": ["cRi2cJ8fnBSGotA5", "92mzRAWvSkzrpbbX", "KtduruakzjjaBEyQ"], "parties": [{"partyID": "rSzW9jFtbI7EaQwt", "userIDs": ["M2FdQUs808XWfaFg", "LlE3HXGGDhkFPpwM", "U1OIjAamngyh8fRF"]}, {"partyID": "zrQkAeNk0gKDfvkt", "userIDs": ["oGy9QgcUPYYFRgNO", "LU1F48nue7Spyy5e", "N7a5YtxnTCMy1ueg"]}, {"partyID": "r0m6COwZIFRMOwHq", "userIDs": ["zQT7ozg7lDXMoDVr", "UOTsnmyi2zsBplJL", "mFeP9MIiYRtsjt5G"]}]}, {"UserIDs": ["J8XKnxTTf2evpKfW", "cwabqYX3AbmNqZzr", "wiPrxpJRg8fRiAsV"], "parties": [{"partyID": "qYgKnVrYgsI2bb0F", "userIDs": ["dA4H7RhSZBQk0E5E", "C0dyCZuAdEcdaAu1", "JEVCu9YH1psqOgXk"]}, {"partyID": "IA6MBZKRqt6ppdvy", "userIDs": ["oK7dfdhxU0RpY7Qb", "Ais65YLwiFrDgdAK", "MO0Y1s36Utn8cOZE"]}, {"partyID": "7uCYW1On3fGTFnfj", "userIDs": ["O2kU2dzEGCYVllet", "WkfaJFcr7F7vlh5d", "fxxB34QmhKMEWs91"]}]}], "textChat": true, "ticketIDs": ["96Y3ZeZHGrTdVmjf", "lQjUk1RKsvgSo4Y3", "WTVdkvKeodALZB85"], "tieTeamsSessionLifetime": false, "type": "kzesqwvjASGwUWjS"}' \
    > test.out 2>&1
eval_tap $? 38 'CreateGameSession' test.out

#- 39 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"OdJHtFUiovfizgxF": {}, "ErXuDkfGVEOBaC3s": {}, "cDKifXIrKCO1eAy1": {}}' \
    > test.out 2>&1
eval_tap $? 39 'PublicQueryGameSessionsByAttributes' test.out

#- 40 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "F2kGTXdRThzBIdTh"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicSessionJoinCode' test.out

#- 41 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'ZPDcknOshKABAdxw' \
    > test.out 2>&1
eval_tap $? 41 'GetGameSessionByPodName' test.out

#- 42 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'QLjfWsCucHN8YRn7' \
    > test.out 2>&1
eval_tap $? 42 'GetGameSession' test.out

#- 43 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'JjuEJ7KyjGhsmmxo' \
    --body '{"attributes": {"mtJ1pBHuvtJQzmTG": {}, "01b3B6dLnM0NjqrZ": {}, "0VmIBVuNOA5EeSo4": {}}, "backfillTicketID": "oXPmAddSyyU1dFY0", "clientVersion": "YywQBpfIeb1aGXCG", "deployment": "R7RE95eznQI4apdf", "fallbackClaimKeys": ["xqMP378WsBwkbEsX", "Fc7JgPcNaD6kInVs", "EpDCkv31SO2ugld6"], "inactiveTimeout": 27, "inviteTimeout": 90, "joinability": "WkVBeULdgDLKgo7n", "matchPool": "4Lv5IS6IxMSPQwsb", "maxPlayers": 16, "minPlayers": 76, "preferredClaimKeys": ["ekjvwNZWA55LLJXF", "5v8WPqOpCBkLk4BD", "pEN6RSMbcj9N9l5W"], "requestedRegions": ["BNWmlVE4E7V3fuzP", "MaIYvRTDXQB7bGOu", "k5a8N2VY389iAFwb"], "teams": [{"UserIDs": ["WdoLUfKXQbrMaHSc", "5pvVKCsx1zs0NDhI", "qkDZvLhAWNGBPfRC"], "parties": [{"partyID": "pvTUfaddugDpE0Is", "userIDs": ["5ujwxkeVnR8knC9u", "GVf2cxbP88I59FM1", "W9Z9sXJseqRiOXaZ"]}, {"partyID": "NRKbV7CbeYcc2hWF", "userIDs": ["M8NqNmwe28ML2hV4", "UL1ghS2c2uXkS9cT", "1kCODVDoyeVoa343"]}, {"partyID": "B412ykQY37Ic8fYm", "userIDs": ["MlqsF7OajDxA8sy2", "O3sP755S5tMCkIXz", "IUbI0BlYQn2dYRUl"]}]}, {"UserIDs": ["bts1ow8OSseYBWqR", "dYdNcDnebl91NKHr", "x1uGOBhaJYlAdH7g"], "parties": [{"partyID": "g5mUJAHsE6cnFLkk", "userIDs": ["srE3eITiEpJATA0c", "PwZsFPZWJ3jvG051", "8XHNpdw5xACOlRxP"]}, {"partyID": "uNHhdQVfcZ09TSEe", "userIDs": ["1CLNdmhetvr8DyjJ", "AyrB1SpMgL41mkca", "GcE1DNshYI6xRXlW"]}, {"partyID": "912geomSd75MNEY8", "userIDs": ["T2iNyKaGhnVk5OVJ", "KD5xhQt9DZ4rz9hv", "r3v2vw8WqyuNR2Sz"]}]}, {"UserIDs": ["BkBzXEBYXJOlEjwV", "qKp8oAozGfce7yDb", "NznCaVPDVipNDZHY"], "parties": [{"partyID": "cCgciikMamh1iHrs", "userIDs": ["NRvW1W9ubOURWLHP", "DWU6KI7kgtChtcVA", "VNLGTnlrz6qAsAbW"]}, {"partyID": "g4jegh3B9rqcSE9i", "userIDs": ["DpJobsjcdrH6Tjwv", "Hdj25ADULN6gM84q", "D70pXYVra87muqYT"]}, {"partyID": "0ws5KxshHdPQjsaW", "userIDs": ["mf4yFzZLHTBSZrbS", "gtJD75Fg0ny0ZnKm", "IVbeCrdnZiqRrT0N"]}]}], "ticketIDs": ["Y2hVyZgdB012jHMG", "TBbJih8lZ5KqwAw1", "yIxl9L6GEVH4aohs"], "tieTeamsSessionLifetime": true, "type": "q6jFjPZ9AOh3gb9b", "version": 78}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateGameSession' test.out

#- 44 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Ryva1pTcCkJxtWeD' \
    > test.out 2>&1
eval_tap $? 44 'DeleteGameSession' test.out

#- 45 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '8ExGNvrrcmZfEeJK' \
    --body '{"attributes": {"Ly646cCWGx6MKljt": {}, "B4yEuZyvUZwSZG4h": {}, "vP89skjw0Ii7GhGE": {}}, "backfillTicketID": "qWbrWRhv47HC0qsj", "clientVersion": "wenugIONPnQcsYya", "deployment": "IvgIZFv1f8LIIJMO", "fallbackClaimKeys": ["gldpOK65N36lZV5V", "nlTgWYppZjS45h8X", "xKalhNWzQSngPHMy"], "inactiveTimeout": 8, "inviteTimeout": 18, "joinability": "cNJU1wVHjTwIRy9O", "matchPool": "gWIuV7kLmL0k992n", "maxPlayers": 61, "minPlayers": 27, "preferredClaimKeys": ["pvqHDoOtyJooEHhL", "niOjCiJXde4SAJ9W", "S8UK4sraX4R3ZqSk"], "requestedRegions": ["1F1zTJSMRxsO4AcR", "rORkt4TKtx11FnpX", "5gEBFnC8poiurmTh"], "teams": [{"UserIDs": ["9l9piRy1H4Lkg3Ab", "jrCFCuSFESnycEn5", "wgmogTth3lUc4Rtf"], "parties": [{"partyID": "KoU208ak9hUUIgyh", "userIDs": ["sQifYscyJ7SyMPmw", "WewrgAfHyl1PMHwO", "7VBGNrvn0TjXjeAV"]}, {"partyID": "JHN79oFIuXMSlBSI", "userIDs": ["BNvCWsoYN8zQf0GN", "yN0W8MF8TE0C6FiK", "5paUjb13UPjCNmCD"]}, {"partyID": "Z9CsE4ECzWZTePV9", "userIDs": ["ZGH86oxgDBoOK68X", "XE4bJdUwrMlMOM3I", "i3AkOQYXsTaxoK8j"]}]}, {"UserIDs": ["oahdcJpKAJJatK1D", "uvwnf8OQ6Kizbe02", "DUNV0ANdSMl6iP6b"], "parties": [{"partyID": "OsAseoACsm1EFmQC", "userIDs": ["lK4Zz9FN3FWbMnkL", "rxkebztNwgY69rG2", "WYUDmNgS8fVNkWMR"]}, {"partyID": "D3d0L9l81PfYsI6f", "userIDs": ["pEjWs1BBegvVy2sg", "gpESjEKSPPya43md", "EQJEy8aMTYcOzvLd"]}, {"partyID": "VuWVm1hrDqOUWkhH", "userIDs": ["lU2hCPgAkLaj16Zw", "0uy7jcqqWHtgCpz2", "DsZZcc7SXuVdeMHJ"]}]}, {"UserIDs": ["3oi898ujDP9dIfNA", "BVbgYenfdjz88t2b", "ldtfVuUTlH1Mjoge"], "parties": [{"partyID": "emK7z7DSc37HcaUc", "userIDs": ["X4G24R97BQ4r4bp2", "knJFB24IZuy7o6as", "FBEuGPs9rfm8gpGL"]}, {"partyID": "PoiJ9taxSdKHertk", "userIDs": ["mIPWzUDL4AcFgZex", "IrbGILVn5dydwD6l", "BFSqXg0s7pP3py2l"]}, {"partyID": "1p4adAYtrJmmX2Kq", "userIDs": ["MxKew6YoFIb3r56D", "eOFgj42zfjpehHrG", "duYDN7pb1dJeuvV2"]}]}], "ticketIDs": ["Kabtow8r8eQg5BU5", "i4jkXf2LGEZS2iou", "I8ytr7w675udip4X"], "tieTeamsSessionLifetime": false, "type": "oSHt9bCiewrCxC50", "version": 66}' \
    > test.out 2>&1
eval_tap $? 45 'PatchUpdateGameSession' test.out

#- 46 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'NeqImeB9FguPqbc8' \
    --body '{"backfillTicketID": "SI3zUctwWPMlhyhZ"}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateGameSessionBackfillTicketID' test.out

#- 47 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '750T1En8M6acDvq4' \
    > test.out 2>&1
eval_tap $? 47 'GameSessionGenerateCode' test.out

#- 48 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'WKXdA2CEAC2ie7TV' \
    > test.out 2>&1
eval_tap $? 48 'PublicRevokeGameSessionCode' test.out

#- 49 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'c70YuRuQfoVoxcGA' \
    --body '{"platformID": "RWImqHxXJ03MQ1iV", "userID": "HtCJFd8n1kndw6CA"}' \
    > test.out 2>&1
eval_tap $? 49 'PublicGameSessionInvite' test.out

#- 50 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'JdSKfPmvqkYyJcsh' \
    > test.out 2>&1
eval_tap $? 50 'JoinGameSession' test.out

#- 51 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'VFfsNrzSbCLbF2wT' \
    --body '{"leaderID": "aFUYLpQKrBPYixhO"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicPromoteGameSessionLeader' test.out

#- 52 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '9aDYtz1cisYqNCMb' \
    > test.out 2>&1
eval_tap $? 52 'LeaveGameSession' test.out

#- 53 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'uX98QXvQhM2O5zMV' \
    > test.out 2>&1
eval_tap $? 53 'PublicGameSessionReject' test.out

#- 54 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'Xn0a8PGfq8k6aGqT' \
    > test.out 2>&1
eval_tap $? 54 'GetSessionServerSecret' test.out

#- 55 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'apt8cd4Z2p652BZy' \
    --body '{"additionalMembers": [{"partyID": "rFKM2ZinXMitJBaM", "userIDs": ["BXJWvokCMz1KxgPW", "fR7GxKTJ57jkZdKn", "sjozZ4HJSPK80Lat"]}, {"partyID": "yeJzh8b6YrbNs0lV", "userIDs": ["mrwrh7pS0bfTKYsl", "aed4C5hGQUJvnY7O", "H2gqD0WFHdatTjpr"]}, {"partyID": "omXfxOOIEKoMuR4x", "userIDs": ["2CA7kFsihyz4lO16", "zmIXfwLhN5T92wOG", "jDdSOjJL8flpc3m6"]}], "proposedTeams": [{"UserIDs": ["MawutFyRHZ4QKncd", "EIsQL4O09DfxnVcd", "rszlkpi2EvbglHd8"], "parties": [{"partyID": "JzMHiMntoN4BwSAg", "userIDs": ["pOVa9wU4t13BOpEc", "QS9eg5wAzrOJSGk7", "9sdOv6G59q50UzpW"]}, {"partyID": "kd2hIpK2sfBzVmMo", "userIDs": ["7raiFBDNmcS4BBsU", "uLWe0QXtEPLGQZcU", "uTNul4lsKCatjzdt"]}, {"partyID": "zGQwIXg4onT5KubA", "userIDs": ["ozYKu262e8nmg2oq", "3qmpUctOjSNmGG7d", "WafUAF2V5v6ASt6t"]}]}, {"UserIDs": ["sdId1FgIz0Lz8VP6", "3BzZKoJZ4Nsmr46K", "2b5O9tlS3LcNeiCQ"], "parties": [{"partyID": "zwlBP7oCPRKUrPaN", "userIDs": ["ZjpM2MYVrrW0ftWE", "EPi96WLdYi7P67JL", "g1bZWGq0jfRLv2km"]}, {"partyID": "AWxjRgJLfU7pHfQJ", "userIDs": ["VK5IkWBRK6drrGC5", "qZUR0x4pTXkI1uty", "7Ld2NvVybMxWQgRn"]}, {"partyID": "ekGNiTvaSMlxZ4v0", "userIDs": ["UhjfvXMrizq0oVLB", "kJTjqOs0Ase4aNw6", "sWf7vjgws6DmXVQa"]}]}, {"UserIDs": ["5PxPHlpR2cxEqbL5", "klDb3PLVjbpR7m5e", "epaJJyPhJ66imhwt"], "parties": [{"partyID": "sAqGgG9YPD3LSGGv", "userIDs": ["hsWICKkBOGJGiTM3", "vSzGRwA18cJh2fdG", "oU20iycJuGh05Ukw"]}, {"partyID": "fbHqiKxPi5RIyEZr", "userIDs": ["mLj73Mh72edjqPeN", "vD2ArobdjV0lz6C5", "FvsMp8EF1f91cLyy"]}, {"partyID": "fyqg462WYG2IXgMZ", "userIDs": ["WwxTJMlQ2vRo12vr", "UXV0Fm2aNFoxStHZ", "U9UcLFndLfSYe4ev"]}]}], "version": 65}' \
    > test.out 2>&1
eval_tap $? 55 'AppendTeamGameSession' test.out

#- 56 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "mN8PBq8e4IuloUGt"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyJoinCode' test.out

#- 57 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'P6CFGNZqXm4SMYoX' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetParty' test.out

#- 58 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '7iiv5OdpBwsTMnvd' \
    --body '{"attributes": {"yrvyGdII4i0IYhhB": {}, "1TMLITnEMfEcd1VQ": {}, "k901JN4sz6m2TKgQ": {}}, "inactiveTimeout": 66, "inviteTimeout": 35, "joinability": "KQnlU1Xh7gQ71S3M", "maxPlayers": 62, "minPlayers": 11, "type": "4XYcqt78het8uVmX", "version": 31}' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateParty' test.out

#- 59 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'KAVpvfUODJovSuKN' \
    --body '{"attributes": {"OPrGPb0NgXegkG23": {}, "DX2D4ZUrlKYUqYjq": {}, "CLBLroLERCLCgLcF": {}}, "inactiveTimeout": 87, "inviteTimeout": 77, "joinability": "Tq5Nb1zFQFvNS71p", "maxPlayers": 33, "minPlayers": 68, "type": "zpqrF4IvzpMdEJSf", "version": 26}' \
    > test.out 2>&1
eval_tap $? 59 'PublicPatchUpdateParty' test.out

#- 60 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'savRA0WCt7N1bTjV' \
    > test.out 2>&1
eval_tap $? 60 'PublicGeneratePartyCode' test.out

#- 61 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'il8NiXLHZGZAyZ4H' \
    > test.out 2>&1
eval_tap $? 61 'PublicRevokePartyCode' test.out

#- 62 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'exN7jiktZudlne8U' \
    --body '{"platformID": "J0BmT9umfj98oYVN", "userID": "bee7YXPIf0zrVnOf"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyInvite' test.out

#- 63 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'kECuh4VXzJxgG371' \
    --body '{"leaderID": "4G4TNTNZ6ypXGbKE"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPromotePartyLeader' test.out

#- 64 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'MqXuY4sVh2wcJGwJ' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyJoin' test.out

#- 65 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'n7oaLoDqpyiRgLRa' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyLeave' test.out

#- 66 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'dBUysz76u7QlT5VH' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyReject' test.out

#- 67 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'RSfplLcAIH04bLsE' \
    --userId 'dt0x7Rb1qr1nhA7T' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyKick' test.out

#- 68 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"tXWSam6ubT9o8xPc": {}, "btIrfcdKcfWEBIuh": {}, "qroIqmTo9qO6Ph8I": {}}, "configurationName": "bBGazvEDu2zG7Gzc", "inactiveTimeout": 24, "inviteTimeout": 96, "joinability": "5SDej4jY7t20hFcW", "maxPlayers": 29, "members": [{"ID": "6E4jEf22P4CRT3KM", "PlatformID": "af3gTlIi9dQd8p71", "PlatformUserID": "vzOJzdMcfSdZyw2C"}, {"ID": "AVWwMUpWb5VpunBx", "PlatformID": "GaSHDQYvrt4rvlwC", "PlatformUserID": "cP1Dc14i5eQm2dCY"}, {"ID": "k5WzSaPDWVvbCs5R", "PlatformID": "ddGcxMgSIpeMyK5j", "PlatformUserID": "rOHwbxjKoXlZXRhY"}], "minPlayers": 31, "textChat": true, "type": "iYXOZLULPrtj9KSD"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateParty' test.out

#- 69 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --userId 'loPG4p6Emhfp2yu3' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetRecentPlayer' test.out

#- 70 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'J6NV6SB77wv6VLyl' \
    --body '{"5hDIZaMFWj4MGqNf": {}, "vSXnecEcApkJJNFk": {}, "uDtfeg3vdVfqlCR3": {}}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateInsertSessionStorageLeader' test.out

#- 71 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '2jUsiZMI3ocPu6w9' \
    --userId 'OeCRnGKXrwkVDzkh' \
    --body '{"wxxvgCpRf4wTIia0": {}, "NTuvcN7BSCuFKSE0": {}, "WN5xjAo5JnfUDbel": {}}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateInsertSessionStorage' test.out

#- 72 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["oRwyylTALP7TF3pl", "9N8FhSJeUPSg343V", "V0PmTFM9WsfN4722"]}' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 73 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'PublicGetPlayerAttributes' test.out

#- 74 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "Pv6xK9c56ZS6ZrZE", "data": {"1MlLCuFRzHmDKVg4": {}, "szzNQLOQx4jfbZoD": {}, "lfxWLLk9PzeRR4R2": {}}, "platforms": [{"name": "0VtF2bSfpQ3v6gUE", "userID": "0JQBuYIDyPIKREFw"}, {"name": "y4S2b1ENNf3M6Rmc", "userID": "Rdi4RAbIM9lVPF5i"}, {"name": "DG6Z2ZlvBWjoAMcT", "userID": "OyU6HS2Jb0zK2qXG"}], "roles": ["JJ5dU8xiL9Thl5lX", "5zDneTcUGjEw3vqf", "MN8OwnENBK2S0OFI"]}' \
    > test.out 2>&1
eval_tap $? 74 'PublicStorePlayerAttributes' test.out

#- 75 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'PublicDeletePlayerAttributes' test.out

#- 76 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'UD9gDtXHHIEE5HQ2' \
    --orderBy 'dyaEmuCJhZQS8wcj' \
    --status 'WzCG3uc8gCKCA3sE' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryMyGameSessions' test.out

#- 77 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'k86reqKVqFUVk1Cm' \
    --orderBy 'QfmzTdRMZUAWit63' \
    --status 'V6LU24MF1zYoFKBj' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE