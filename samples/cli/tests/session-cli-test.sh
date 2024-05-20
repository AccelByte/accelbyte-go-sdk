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
echo "1..82"

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

#- 4 AdminGetLogConfig
samples/cli/sample-apps Session adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 4 'AdminGetLogConfig' test.out

#- 5 AdminPatchUpdateLogConfig
samples/cli/sample-apps Session adminPatchUpdateLogConfig \
    --body '{"logLevel": "error"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminGetDSMCConfigurationDefault
samples/cli/sample-apps Session adminGetDSMCConfigurationDefault \
    > test.out 2>&1
eval_tap $? 6 'AdminGetDSMCConfigurationDefault' test.out

#- 7 AdminListEnvironmentVariables
samples/cli/sample-apps Session adminListEnvironmentVariables \
    > test.out 2>&1
eval_tap $? 7 'AdminListEnvironmentVariables' test.out

#- 8 AdminListGlobalConfiguration
samples/cli/sample-apps Session adminListGlobalConfiguration \
    > test.out 2>&1
eval_tap $? 8 'AdminListGlobalConfiguration' test.out

#- 9 AdminUpdateGlobalConfiguration
samples/cli/sample-apps Session adminUpdateGlobalConfiguration \
    --body '{"regionRetryMapping": {"AbeyD3miBK4OpILp": ["5NcOUD21bkdOgqiC", "qDXWkNQEHA5JGKLz", "Bq8Uay8WvNhFinan"], "YVEMVQQEidlwURH0": ["pHr3dnC74EDDfMg9", "OcgDrUMjyIBZP6Sy", "UMq6bAkG1IGvPHzc"], "xuBNWbM0fmFqZ8Uc": ["WWWE4ttLaZfr1vy2", "g8YxqudQL89GJwSP", "x8dpzduoRwMumuHD"]}, "regionURLMapping": ["5o2fxHIBBoPuvMF3", "EjvQyyY0Q5aBoJsO", "y9ueiTNKIBBxVydg"], "testGameMode": "c2nUA27U6TE9mGDX", "testRegionURLMapping": ["EbI71QKht7ZWXaKj", "FdcxvwPtut1WxBrd", "dfdCDfI13dfvY1Dr"], "testTargetUserIDs": ["JJn8gu3vUHdw2Pyu", "knvMulr4F4QnmhNQ", "zOWp4tEV8lZ3cviP"]}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateGlobalConfiguration' test.out

#- 10 AdminDeleteGlobalConfiguration
samples/cli/sample-apps Session adminDeleteGlobalConfiguration \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteGlobalConfiguration' test.out

#- 11 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetConfigurationAlertV1' test.out

#- 12 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 92}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 52}' \
    > test.out 2>&1
eval_tap $? 13 'AdminCreateConfigurationAlertV1' test.out

#- 14 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteConfigurationAlertV1' test.out

#- 15 HandleUploadXboxPFXCertificate
samples/cli/sample-apps Session handleUploadXboxPFXCertificate \
    --namespace $AB_NAMESPACE \
    --description 'xa23OvqOFdh6Gj2L' \
    --certname 'Dmymtdt3I5mgLFws' \
    --file 'tmp.dat' \
    --password 'LrMj4FevzweTwBNR' \
    > test.out 2>&1
eval_tap $? 15 'HandleUploadXboxPFXCertificate' test.out

#- 16 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 3, "PSNSupportedPlatforms": ["bWFxPZFam9QaFJxw", "Ds2F2DexI35WEPcD", "yTjhnxm9CQqd8bQq"], "SessionTitle": "Wl2dLS7Q42JYtoXx", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "KX6DOJ522eOKzaiC", "XboxServiceConfigID": "VpSkoQuCmVjOAaDx", "XboxSessionTemplateName": "zUw51Bs9CDozy7IT", "XboxTitleID": "Jxv43XKDAlmiLS9p", "localizedSessionName": {"TVBKONp7Af6Z0CGC": {}, "mVwTdel6v6OmdlbL": {}, "AjZLGQfkzKIOU4sK": {}}}, "PSNBaseUrl": "Ds3drO4RPK4zWRrX", "attributes": {"fRwgHjrxGYuWrmTj": {}, "hwb6BEcLssu8wOd1": {}, "FOz8U3fxyliaLHLu": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "C5gbYes7pLcmGS87", "deployment": "3tiOPzjGudr3myXh", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "rDnZWKamRzb5k349", "enableSecret": true, "fallbackClaimKeys": ["F4Za4Cv5eDYIQMoe", "bJgrTPBhuzw6gi1t", "9mlaMqnmlzV2jjBh"], "immutableStorage": false, "inactiveTimeout": 19, "inviteTimeout": 71, "joinability": "X4ixNvgdwLo5OErZ", "leaderElectionGracePeriod": 41, "manualRejoin": false, "maxActiveSessions": 70, "maxPlayers": 69, "minPlayers": 30, "name": "AJOxM3Kmf6mO0pCk", "persistent": true, "preferredClaimKeys": ["DEYa8dOCvSUqfikY", "kXqQfIWiCuDtDuXM", "1LtUtytoqfn43dSc"], "requestedRegions": ["1tk9NZtkhNPm89uV", "szhejNpn31JnfHGI", "ZKTRuZYZ793jGCFu"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "tjCi092O1874BMcd"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --name 'xidLoWwuiP0oW3EO' \
    --offset '92' \
    --order '8VI4CUwbP17nZFFh' \
    --orderBy 'a7APpFXbwxDMcz6P' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name '8DbCmrzWH5jjf5fM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'nSMweYV4p94aySjp' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 0, "PSNSupportedPlatforms": ["vNPHKSPDbv723xYb", "PHWNSLoRubkKwXO3", "GAJqIyTNRl6eGW7q"], "SessionTitle": "BK0Qm4iH5QINnNHz", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "FnZxbbNnY11x3P8U", "XboxServiceConfigID": "8mPQRTYdh7DAWrNJ", "XboxSessionTemplateName": "H4Mcp80myoYatZDA", "XboxTitleID": "63mFVJ29dxVvjDuO", "localizedSessionName": {"zCzOXAp0ANakMRhu": {}, "ddhIm9Ljl2MtMBuz": {}, "IlydiQOw2AlntHx2": {}}}, "PSNBaseUrl": "74bLHWihualpp6PD", "attributes": {"sdf4kBEqzX9P9cRH": {}, "ntjgyBw0kC3j9jGj": {}, "GoXquGGzBCDXNOnc": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "odJpmFXppowwc8fd", "deployment": "Ohm44ql6CP1dGrXR", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "PpeArACWKvcPXMS7", "enableSecret": false, "fallbackClaimKeys": ["HsfRCvPh2mStEX6C", "qRhQFGCGtnPVM8R9", "hWbhmI6E7UYNhe5O"], "immutableStorage": false, "inactiveTimeout": 66, "inviteTimeout": 49, "joinability": "pTNNNyX5OghT6iUO", "leaderElectionGracePeriod": 93, "manualRejoin": false, "maxActiveSessions": 49, "maxPlayers": 30, "minPlayers": 86, "name": "e1eyTDGZStcDCnVf", "persistent": true, "preferredClaimKeys": ["aJr9DqAURjg7sJHc", "wB802HQXbkVMxU83", "geyfS6fiFRrwM2yF"], "requestedRegions": ["peP2RTqmjM3alGAl", "wzDR9xJWNYcoOrlq", "Z5mc5GhljlFQs3JJ"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "V2fl4gG2JtYbRox6"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'MeugCY8ykCLmuitl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'ofLlJKO5TcUiqzlv' \
    --namespace $AB_NAMESPACE \
    --userId '8KvOHevwjDEuKsqt' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'nkifn9GbICHF7Fce' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "AdQNvZ4IoIP4Ske2"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminGetDSMCConfiguration' test.out

#- 24 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminSyncDSMCConfiguration' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'WgrWfUA8cKtHBipe' \
    --dsPodName 'ysnAR50pnXFzqhzB' \
    --fromTime 'kLXiDbYcs3SS5ktI' \
    --gameMode 'bl2zQOTPv7D75PEU' \
    --isPersistent 'jvF9BnSSjuY9lpWy' \
    --isSoftDeleted 'NElwZaUJcdNQs1Ij' \
    --joinability 'Ag9OeTToO4gbDg1V' \
    --limit '45' \
    --matchPool 'ksxKDBCtlePjdbK3' \
    --memberID 'ihmWdSjIWqcSR1ka' \
    --offset '15' \
    --order 'sIW2JOvFdWHN9FNq' \
    --orderBy 'yYrzqFLvwA440m8Z' \
    --sessionID 'EHIKPTp1JDTnoZpn' \
    --status 'srQX5qcbu4fGaxoE' \
    --statusV2 'rsJx9OYLxJi8j7Vi' \
    --toTime 'Mb30FWEVrh9VNiaq' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"UYYqZUEt977jdkjf": {}, "P3KJvsTyjUpDcUd8": {}, "nX3IJgrukSITuFSd": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["1lL5RQ2nEzCtn052", "PGdXuSLM0ixY0dj9", "hw9eQ6Uo6spKMqsT"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'eFKjcKLpO1pYY1RD' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'tucxodtRbEu114Ml' \
    --namespace $AB_NAMESPACE \
    --sessionId '4KfxgcU4MECnK469' \
    --statusType 'SzwGeG71Ry5Tp14U' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateGameSessionMember' test.out

#- 30 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '17' \
    --order 'lw60f31olqbaWAQQ' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetListNativeSession' test.out

#- 31 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'iPLlNG86Gs3Jn9JY' \
    --joinability 'GUF5Uj8OSNro496E' \
    --key 'dJG7BkMFdqDNkjgj' \
    --leaderID 'uU3TY7lStByqx2Wh' \
    --limit '99' \
    --memberID '3d4sH5rvKCwsQYWV' \
    --memberStatus 'FRfORd7tQPSBvan1' \
    --offset '79' \
    --order 'yCkEEKNlyPtSo4Es' \
    --orderBy '89Mcl9uH8vaECdye' \
    --partyID 'kgTyzngjdnxrSGa2' \
    --value 'JTm4AiLnjiTqFfSx' \
    > test.out 2>&1
eval_tap $? 31 'AdminQueryParties' test.out

#- 32 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'AdminGetPlatformCredentials' test.out

#- 33 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "3ews1NaUdAlJCcOg", "clientSecret": "My0UYbWtualQKrPj", "scope": "NWvqyUV1Z1S9usRV"}}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdatePlatformCredentials' test.out

#- 34 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'AdminDeletePlatformCredentials' test.out

#- 35 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --userId 'ZBnad6oqZ7zyJquM' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetRecentPlayer' test.out

#- 36 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --userId 'oYSPsiZAJxoeIUC5' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetRecentTeamPlayer' test.out

#- 37 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'gkojmIrQZMsTVFdo' \
    > test.out 2>&1
eval_tap $? 37 'AdminReadSessionStorage' test.out

#- 38 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'YCQcLfIx8F2Q3JE4' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteUserSessionStorage' test.out

#- 39 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '73I4XDcbQC5AzCX0' \
    --userId 'vqVSLTt3H6mVinwu' \
    > test.out 2>&1
eval_tap $? 39 'AdminReadUserSessionStorage' test.out

#- 40 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'ae1Cgt4W324XpPy3' \
    > test.out 2>&1
eval_tap $? 40 'AdminQueryPlayerAttributes' test.out

#- 41 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'AdhPXfJ8HqknFvDm' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetPlayerAttributes' test.out

#- 42 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"QZUHI23Yw4lwcPrI": {}, "Q7vWuykS2qL7zwHL": {}, "k45kbMOlz0FPeYze": {}}, "autoJoin": false, "backfillTicketID": "OsrlhTXvyrwedtpY", "clientVersion": "MbNQK4DIAsal7Le2", "configurationName": "KKQSG2R0pEuz8ysB", "deployment": "rYKeEWDb4vdOLbed", "dsSource": "2WWoVnNqbKa5fV8G", "fallbackClaimKeys": ["0kebZp3ScG4UCOBb", "fMbMtNhl6dCZZktT", "MajQqXxrI13o2x5k"], "inactiveTimeout": 33, "inviteTimeout": 17, "joinability": "6OhrAmiRxh3bL9Qv", "matchPool": "AYX0YK02hJGmV4OY", "maxPlayers": 25, "minPlayers": 97, "preferredClaimKeys": ["ZOLlzMMLggFiGxog", "lXeBFkPIUKgERXO4", "EYoP5c4TSBorITQJ"], "requestedRegions": ["9JCvOL0UjTHxepcw", "Nm6hvcFBm3nd0RuI", "1s4Ok0DDUu7zgxPS"], "serverName": "lxUIi9Lc0rhdywXo", "teams": [{"UserIDs": ["sRS95wcSfpFJgWJl", "ni6N6NhopLt0cKPe", "7Y1E8Bh4JvfcGzki"], "parties": [{"partyID": "cThMGY7lbBHmHUhf", "userIDs": ["n2YDpfrHQI3G7LGU", "IfaIwUhtCs8OBAz1", "mxBty2BONorJCNcn"]}, {"partyID": "o4WkcbdZQan8QLul", "userIDs": ["ZtObzrkj71EZ2lDe", "YIvyWpbVxflib5TQ", "X1uBxhCg6y0wvg3i"]}, {"partyID": "vFsMrV5AI0h4q9bE", "userIDs": ["Pe0Q5xs1SafBXURz", "M3bbX55WoEVxpDwV", "573ERApZHC1AF2gh"]}]}, {"UserIDs": ["3CNFkH1LVjpZx27A", "lUVMEnKzpOW6ofZS", "cv11y5dwJ7RCTnBg"], "parties": [{"partyID": "BidSCBFBkqTtNFks", "userIDs": ["rkZQENITPoRXWmvM", "tNRXOMCpWdZ2A3An", "ZVbO66xeU4YkTnW3"]}, {"partyID": "eLhITJcgZpoVdFTq", "userIDs": ["BNdj3loMWchTbhEf", "0AQtc6pHab7KpMge", "WjXS9d9lnMISEfaP"]}, {"partyID": "ZGm2eA8Lu9apFQ8z", "userIDs": ["CjllPrpMFXe6H5w7", "BxbBegraSTm5Lwbh", "amJ0wG5GQciPfTwa"]}]}, {"UserIDs": ["QA7jxW9Ziqp0S3tz", "3Y9USl0sU4cZJoff", "FUztR7qfvHc4UG4L"], "parties": [{"partyID": "Y2Vn5kYKg3Is0xVV", "userIDs": ["TF7T2LPF3UyYhmmt", "rcVGdag68VKaaRZI", "ZrRIsMWnSUDwfF52"]}, {"partyID": "2fzkG0DzH1fG78pB", "userIDs": ["hmuFOzbeL7OGJOmK", "LYcJPWVTeFjJvBWv", "Og2heGpzg1KDCpM3"]}, {"partyID": "VrzEAifnRKrfeT2m", "userIDs": ["lhJcYuIq2WSwU4UI", "uHZRRCi4iyg6eYQO", "9XuhZn3YXkyr3AlE"]}]}], "textChat": false, "ticketIDs": ["vjrbRIZg3g2Jp9EY", "1S2O6LFlV74wItp3", "qPLJOANnoa9uQzMG"], "tieTeamsSessionLifetime": false, "type": "t4cQCG9gcehYIATS"}' \
    > test.out 2>&1
eval_tap $? 42 'CreateGameSession' test.out

#- 43 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"h3OVpfS7C0pDrFRX": {}, "LbbG3utxToCMy4k6": {}, "8nENoA3FBj18wwdo": {}}' \
    > test.out 2>&1
eval_tap $? 43 'PublicQueryGameSessionsByAttributes' test.out

#- 44 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "LVBz14neGgt1I1j2"}' \
    > test.out 2>&1
eval_tap $? 44 'PublicSessionJoinCode' test.out

#- 45 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'aWtAxJlHVRZZgJEs' \
    > test.out 2>&1
eval_tap $? 45 'GetGameSessionByPodName' test.out

#- 46 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'O6hZPyeGE2KwlzVu' \
    > test.out 2>&1
eval_tap $? 46 'GetGameSession' test.out

#- 47 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'XODvMexBY37KZrEG' \
    --body '{"attributes": {"tuvrp8TZFiyTBwDl": {}, "I4gFEOlVmqFFfP9u": {}, "owYKUobCV9Q9NVrI": {}}, "backfillTicketID": "FM37kpFHTY6Vbt09", "clientVersion": "VHBjh9KAY90331ko", "deployment": "sjoZq3u1OTQwSF31", "fallbackClaimKeys": ["SIVandHLnFBSwUaA", "npIhK3Wq6psBJ2Tr", "OuK02LRBxpTfEj48"], "inactiveTimeout": 96, "inviteTimeout": 52, "joinability": "7KjzFDarQWiuYARU", "matchPool": "NtAgvbilAtLcRt4A", "maxPlayers": 50, "minPlayers": 23, "preferredClaimKeys": ["4C5bWVBX8ZhF4nMD", "LxwKP8Pvzb2wBJSh", "GWGkK529ps3Jj0KC"], "requestedRegions": ["dkxs5GMBxSf6iEjv", "kkSlk5ZsnAbcI8Ch", "TwfBOpWlbM5qOX8C"], "teams": [{"UserIDs": ["eoYQYuikROFQkl7V", "GwtvXF5KFTgwzwbg", "iHBCfxhtlOyJwb8I"], "parties": [{"partyID": "F5k2tb1ooI1gg7SL", "userIDs": ["1X5vrtXAwghQK6rj", "dBkKqodn67VRqLCg", "t8k1M9qNiv9UFh6E"]}, {"partyID": "Ozt1P8XqqF6WjCBT", "userIDs": ["hYt9KlLSMeLOps8C", "jkmc4PBEykEB0uvv", "Tq521ZgDNRgunHOc"]}, {"partyID": "vM2VM3T8Q0Br56U8", "userIDs": ["NifjPaL6sYrZ1dO7", "0lG6EkFHSdBHY4Wn", "VNk2AbgZnfn0hB2W"]}]}, {"UserIDs": ["uJ1pyAHCKnn5wZyt", "5A5YUdWAptXBU45y", "3qdI0ErZWamjkQF9"], "parties": [{"partyID": "soZbYkvxJn7Gix8C", "userIDs": ["pe2DRwh0wmfbAJRv", "1aWU0bP7Rc6eWniY", "bzofE3o2bYBoKkA6"]}, {"partyID": "nQ2vBMUxueRqveAB", "userIDs": ["tP3FsfdDEYjQdWYs", "sYnP9gOrxfZTpNWR", "3vqR3d7sLBEBDYvT"]}, {"partyID": "rldEruqmLu5SuO8T", "userIDs": ["4ny7Sj6OK65ZuTWe", "Nn0eyP3DwnWbHtYY", "PGEDIzvdoBxRv2G7"]}]}, {"UserIDs": ["FCiZRjoZmiD2rIw6", "OHR6aQIPZVfYzMK8", "rHfljv57heCMYErX"], "parties": [{"partyID": "Bh5Q0gnRbKKh76S8", "userIDs": ["GKK6oP3G9yvQNvgp", "hddZlTX6SA1jUptJ", "MnAYWhLJpL1FTOYQ"]}, {"partyID": "Zsbd0IX51viVda5H", "userIDs": ["P5LkzMX99cE4Alpn", "rdJ7n4Iu5kTqxOXw", "JAD3CmdWSoBkb8wu"]}, {"partyID": "z8mOeJJtxZCkT3I5", "userIDs": ["H9zbwBjqxNHMjrCN", "68jhje9AoKIg2htj", "swmJVlWz2RUoiCIo"]}]}], "ticketIDs": ["sl0enxaspMRs6hCQ", "uVKF2wBNsndwD2Ms", "DypzFu4eHjmTNm26"], "tieTeamsSessionLifetime": true, "type": "RnsIsYiUltlU3vl1", "version": 62}' \
    > test.out 2>&1
eval_tap $? 47 'UpdateGameSession' test.out

#- 48 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'CjHo1OuWfbDEiMrF' \
    > test.out 2>&1
eval_tap $? 48 'DeleteGameSession' test.out

#- 49 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'nfsniOSVV9AQqtTC' \
    --body '{"attributes": {"OCijcOzQGi4fQdLN": {}, "KKjMm9g8WA6ciaU0": {}, "K65ic2WUl2m5J8Va": {}}, "backfillTicketID": "2fO0qBdbr98KctuT", "clientVersion": "DUOR403XzQtTYYTI", "deployment": "P8ipYgc2DD6Pmi9B", "fallbackClaimKeys": ["blJk0HycqUaz1Azn", "1U8UZhhmJusjfCSV", "ZTPSwS5rZEXBS15c"], "inactiveTimeout": 10, "inviteTimeout": 7, "joinability": "D6OuFeJGtX3Gawl3", "matchPool": "2DVKv49gQi9TJ1sS", "maxPlayers": 76, "minPlayers": 26, "preferredClaimKeys": ["sBHOt2XvxOpuQEZH", "6hek4mKhnsYy0D6F", "NVLsUMcQLLPL9aPb"], "requestedRegions": ["OFrTMtveCtV76RBS", "VMMpcCsMMBNetyM6", "m5cTqTPkWJgo6pbC"], "teams": [{"UserIDs": ["BvNxaowDSRRdR4OY", "q88hWX9Glt7Kp7UR", "sWVG65E3VsU3lYBF"], "parties": [{"partyID": "azC7q1GfRXUuJ2s9", "userIDs": ["C9SbhJsa0N7OHfta", "jrlzrvU6DAD0xvqO", "U2LlJeq4HOZqJG52"]}, {"partyID": "OJoAdTfKaWxAs3H2", "userIDs": ["Gz9X2rOxjCeEEMa4", "liY90EJIndPMwFAa", "MKP2Gpp1IjoZt67J"]}, {"partyID": "hZlWOsYHDXZUHpVu", "userIDs": ["AvSdPUr7MMfkRBfY", "1FxK1zYxKJEH7487", "8HF4yMAGZim23eN6"]}]}, {"UserIDs": ["LzWnzUlhauzcfnma", "fdTmM7nwRK7UQphs", "RpWApeBNNbLKwvvy"], "parties": [{"partyID": "x8y3UoPiEpHkhnk1", "userIDs": ["nMvTDnE5lFrPgcrS", "mrAafA91JQYIK8OJ", "DNMrdZ1coO8oLoMU"]}, {"partyID": "wWcBZEeoBsoFcelW", "userIDs": ["BNZQl7D95QZVbO1R", "a6TrFGrgclENXhC3", "2MPpNAGwRLj62TGP"]}, {"partyID": "CFSjEuwXuSvdzfNH", "userIDs": ["PheNF3U94nDff5IY", "HpRudujIR3EFU50M", "4NvGLgvkW8I0nnz8"]}]}, {"UserIDs": ["RZKlPeQRQx2LQdEq", "tueXNC2TLMyBagTi", "GBvTagIplVJjXU4I"], "parties": [{"partyID": "djbLneFytcfs977i", "userIDs": ["Ciwb78fOJuyN3p1l", "gqfNlt3C5ojuIxJJ", "soVQJs6ILHjvUfjz"]}, {"partyID": "gvMZKESLVvljVNTU", "userIDs": ["9uEKVeGGD0gBbD2d", "E4SAUeTfgPgs2ewa", "c52BWDUMMwr3rZ2W"]}, {"partyID": "dTE80XS3ZkvEpFvu", "userIDs": ["mah9XxaBo0THccTo", "xFzKvcdeHWXUrcfS", "A8BdIXnnGrioMM81"]}]}], "ticketIDs": ["QguFb2YNrNIPkJdK", "XXhRduQ7waXiDExT", "jz4f37VTVQcKglct"], "tieTeamsSessionLifetime": false, "type": "NOdN7XUlUPotu33C", "version": 14}' \
    > test.out 2>&1
eval_tap $? 49 'PatchUpdateGameSession' test.out

#- 50 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'inR0IuR2nubtWiiz' \
    --body '{"backfillTicketID": "uhPYbWnrPoKQcXpJ"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateGameSessionBackfillTicketID' test.out

#- 51 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'XblXZRp4nlB4JxEe' \
    > test.out 2>&1
eval_tap $? 51 'GameSessionGenerateCode' test.out

#- 52 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId '0cWJg3Pu4nbuUKoZ' \
    > test.out 2>&1
eval_tap $? 52 'PublicRevokeGameSessionCode' test.out

#- 53 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'hfaMGbTAkE9N6pt2' \
    --body '{"platformID": "i6kEzUHBhH7PWGgc", "userID": "53CjDW4Nx7O7NKfP"}' \
    > test.out 2>&1
eval_tap $? 53 'PublicGameSessionInvite' test.out

#- 54 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZqxZO7JleUk3ns03' \
    > test.out 2>&1
eval_tap $? 54 'JoinGameSession' test.out

#- 55 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'uwQvL6mZaSyNBbFa' \
    --body '{"leaderID": "bJCo8kBky0FI6bmu"}' \
    > test.out 2>&1
eval_tap $? 55 'PublicPromoteGameSessionLeader' test.out

#- 56 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'sq1Bzv0CuYFceEhD' \
    > test.out 2>&1
eval_tap $? 56 'LeaveGameSession' test.out

#- 57 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'gnLWY5P3s2oK769O' \
    > test.out 2>&1
eval_tap $? 57 'PublicGameSessionReject' test.out

#- 58 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'j2rEoOEJ48FMvREG' \
    > test.out 2>&1
eval_tap $? 58 'GetSessionServerSecret' test.out

#- 59 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'tC1Te1vdNB2mEMof' \
    --body '{"additionalMembers": [{"partyID": "8yz9gBdIaEtCZPen", "userIDs": ["8XsSRa2MmnnNqu8V", "YjoMQ5gwNJQcgnEE", "0Bb9YtszLdFT9BQD"]}, {"partyID": "6NjFqs5rvxVo3UmJ", "userIDs": ["1jpwkfCeWHAxl7YX", "eeZRHrL5hSKoKJYu", "65NZFuPh7WNf5CD3"]}, {"partyID": "GiyV2CSXhngnKcG1", "userIDs": ["Jpq7jrToGS2xv5jC", "5oSoWCD8hMVbHTIQ", "6mXvPDVeYr7xikXT"]}], "proposedTeams": [{"UserIDs": ["PF8PieBHdrHFqF2Q", "HGh5MItQQNxXOevK", "tORulrZxAw1x8NLN"], "parties": [{"partyID": "j9VwbUBbICEWtLmf", "userIDs": ["yi9SfRqfcs5Ffaf0", "QMMr3P9Jtctopn4k", "TGpH0ldDB6l9V6yT"]}, {"partyID": "Zs77wMo4fg9PqhDg", "userIDs": ["7369wwmB9ivX8d9I", "r80KHuCDaJtrTWjx", "U0c9bxeqYCk3RdHC"]}, {"partyID": "n4soTIQMcE4BPuUl", "userIDs": ["rwpBVwvcK05Fqt0Z", "PQf3Mu2pKXPZQlHq", "QC7aqpMfURqNdRv5"]}]}, {"UserIDs": ["ZZj3R11svwaqMxfk", "7yirZLLx06nCW3ob", "JSwm5b2tJy7Tc2GP"], "parties": [{"partyID": "jlmgJIyQegPAcXZX", "userIDs": ["W0W3hoCuFGjxg6MR", "jVja8WCSyolOIZlY", "rjCRZorJ4oRVbCqB"]}, {"partyID": "q9P94JSRFP1bzKbR", "userIDs": ["mIwc2moM7Eo7a8fF", "6FmjCPFPIia71uux", "bcSSbBCowj40CMHE"]}, {"partyID": "58K2KnWPU11AOxJQ", "userIDs": ["SqCGyww83lS5oMCP", "s5s1FIGhfCJiNopo", "AbomgSoBKZYSvHex"]}]}, {"UserIDs": ["4SQ9oQlgzN7IL4bK", "g7RF6oU1QQMaEKlV", "oetMiny3bryjUW8v"], "parties": [{"partyID": "0RaGgRyo1aBQz1o8", "userIDs": ["o4HaH3IUotQg7j3Z", "zxNWDdt4YluzmckH", "nGiAoRnnja8siD5T"]}, {"partyID": "pF4bFM2OXwF7Za0B", "userIDs": ["Swz24ZdZIZ0jdPzk", "SdqzGFifeTp17nxw", "qn3TQiYJHiAsBqaw"]}, {"partyID": "pqMSM8rRFkxPPrla", "userIDs": ["B2inuITWQyFfwVbl", "WdsqXLf81XKECrbf", "QZ3tCJpv1CF1Rwka"]}]}], "version": 4}' \
    > test.out 2>&1
eval_tap $? 59 'AppendTeamGameSession' test.out

#- 60 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "rV8deXcX91Z5CXrD"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicPartyJoinCode' test.out

#- 61 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'iFhQNOnaEJrIp7rw' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetParty' test.out

#- 62 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '9sRQvSUUWXRNa6e3' \
    --body '{"attributes": {"jVJ1kv7liOKfXuw6": {}, "17JTruww0P2GmfqY": {}, "YnP0dXSBSsuLbHlS": {}}, "inactiveTimeout": 29, "inviteTimeout": 96, "joinability": "gxHtRlFWM6QgMMS6", "maxPlayers": 90, "minPlayers": 47, "type": "gywZLnSTApvsdEyp", "version": 2}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateParty' test.out

#- 63 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'PZ7isQE0bQI4KKBs' \
    --body '{"attributes": {"Bvw4HUV7gDChBFmo": {}, "eWEOp5WHyAa4orCx": {}, "tvY1ZP3BRQuysgt0": {}}, "inactiveTimeout": 90, "inviteTimeout": 94, "joinability": "3loFX7rUFRMOMRjN", "maxPlayers": 14, "minPlayers": 2, "type": "7QujDnLcjpMU0nT1", "version": 62}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPatchUpdateParty' test.out

#- 64 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'oFntfpWg8ku90I7r' \
    > test.out 2>&1
eval_tap $? 64 'PublicGeneratePartyCode' test.out

#- 65 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'douklvI9hd83OFy0' \
    > test.out 2>&1
eval_tap $? 65 'PublicRevokePartyCode' test.out

#- 66 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'X4f2LNpt0nrSoCcs' \
    --body '{"platformID": "yBDIvMpTMb70b2a5", "userID": "abE8bI5HgStibhXI"}' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyInvite' test.out

#- 67 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'AUAvF8vI0XXOseQz' \
    --body '{"leaderID": "RzWR7dRr7mUHcO0O"}' \
    > test.out 2>&1
eval_tap $? 67 'PublicPromotePartyLeader' test.out

#- 68 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '8VjYzxjsDQclzT28' \
    > test.out 2>&1
eval_tap $? 68 'PublicPartyJoin' test.out

#- 69 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '0kr0mqDQifzdvI8u' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyLeave' test.out

#- 70 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '3p0s2NFOxp3cfkSd' \
    > test.out 2>&1
eval_tap $? 70 'PublicPartyReject' test.out

#- 71 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'zfnTbSRFLIFyXrRx' \
    --userId 'yYY7A4jxSqK3oP8G' \
    > test.out 2>&1
eval_tap $? 71 'PublicPartyKick' test.out

#- 72 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"akYL818cOzIJLH3Z": {}, "KkzzEe7zGXrDYnZA": {}, "0wgfcUkBS5vWptJM": {}}, "configurationName": "B7pmIppH6bJXUwzp", "inactiveTimeout": 54, "inviteTimeout": 68, "joinability": "jZJDzDRMnL2QqkKH", "maxPlayers": 55, "members": [{"ID": "lK39OW9VO2CSiaTP", "PlatformID": "LcDlqk8XChA9vFEA", "PlatformUserID": "euHUzQFO6uhOq1it"}, {"ID": "WkM9ZWM2MZCoXZAD", "PlatformID": "GrRq5OIRxM9y8PjA", "PlatformUserID": "VL9Mwy5DSvaTsIgq"}, {"ID": "coYiGhhWz6kGWjua", "PlatformID": "et479KcpcHcwRfmi", "PlatformUserID": "P2gFHpRp3iqZKpsN"}], "minPlayers": 92, "textChat": false, "type": "cbExowCC1ngLXiyy"}' \
    > test.out 2>&1
eval_tap $? 72 'PublicCreateParty' test.out

#- 73 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    > test.out 2>&1
eval_tap $? 73 'PublicGetRecentPlayer' test.out

#- 74 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    > test.out 2>&1
eval_tap $? 74 'PublicGetRecentTeamPlayer' test.out

#- 75 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'uL2BzQh8HgTmx63q' \
    --body '{"OpdtmQPQXs49BxBE": {}, "SSlV7Ys3GYKjqID6": {}, "K0d2wWb7pOPCwT9V": {}}' \
    > test.out 2>&1
eval_tap $? 75 'PublicUpdateInsertSessionStorageLeader' test.out

#- 76 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'RlwJjoi6DKZ8ZLsb' \
    --userId 'yX6JvalziaUdo9Pv' \
    --body '{"1qOZGkHGFpZ1D0ZY": {}, "WxhKIvUgCda0GNOR": {}, "HvrYqxvDVedzm4ML": {}}' \
    > test.out 2>&1
eval_tap $? 76 'PublicUpdateInsertSessionStorage' test.out

#- 77 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["O9SdShCGmWelpkVG", "aJavc99BxV8jErke", "hwpBS5LT2x3rqUPH"]}' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 78 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'PublicGetPlayerAttributes' test.out

#- 79 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "ETRMMlySvoYVeUDy", "data": {"Omj80hitA05FbF7O": {}, "VL6ROshQhvDqrOqP": {}, "xG5geYSqP47ghaPP": {}}, "platforms": [{"name": "Tv41KC7ykiyNP8FJ", "userID": "VBZsPuahG2UmQqo2"}, {"name": "sbEANs3sTBi1G6an", "userID": "2ousz9WchyK4jtAY"}, {"name": "wpXzjwNyZtnrdtxS", "userID": "iZ8c9YJqDJUaZLRW"}], "roles": ["DGueMoyNQNHMoLa3", "kInVmeVDd1ppfWgm", "w9EgfYPG4zgkHILX"], "simultaneousPlatform": "qfc0IYFnO44n7xnV"}' \
    > test.out 2>&1
eval_tap $? 79 'PublicStorePlayerAttributes' test.out

#- 80 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 80 'PublicDeletePlayerAttributes' test.out

#- 81 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'RxTwc5532J2FNsYT' \
    --orderBy 'aFr32QEESq42lD8b' \
    --status 'VsemjhGxkEThhyDt' \
    > test.out 2>&1
eval_tap $? 81 'PublicQueryMyGameSessions' test.out

#- 82 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '6V8sMgYi768UAHwe' \
    --orderBy 'IcRss40XSPg9E7Dc' \
    --status 'h55pUnJo6kfPCiwG' \
    > test.out 2>&1
eval_tap $? 82 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE