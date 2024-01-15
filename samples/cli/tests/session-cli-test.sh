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
    --body '{"regionRetryMapping": {"MFy5sC5HFngQwLa9": ["dMye8AesYR5POYhi", "Dddw865V0bZCnXfz", "nJL1LyfJvXcnV1yT"], "9aOLeryy0Lffvy6A": ["13vA4Xje8ugiaF8L", "BpSeDzVh3J6xgsW0", "d1IYbVkIAmi88qRg"], "l5NnxGMwEsL9Ch4C": ["EpA0JVlsL8JyssuP", "HI30yciJxAAGquCk", "XkYzAsb2KBhLTAsb"]}, "regionURLMapping": ["1jci4bcgMpZYb1xI", "o7QdlOcslGKe7ZiJ", "AXBJgfjAuHaPASV1"], "testGameMode": "15fHMnWOOWwKGS59", "testRegionURLMapping": ["GScY1Mr1vSUXE9mj", "i0TRMGx2QGlZ5dEb", "YVgxUE6qI7jAlkLl"], "testTargetUserIDs": ["2epbYnVPz7jzRPhL", "Hq6zSz2VKLveKNpS", "1i7ZTaoXS3ErhwvN"]}' \
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
    --body '{"durationDays": 86}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 80}' \
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
    --description 'jurrEJcb56VaOC6K' \
    --certname '15rRo1pNRFUzrxll' \
    --file 'tmp.dat' \
    --password 'vFUuqvJRDJ85YWbN' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 59, "PSNSupportedPlatforms": ["cR619HEgcM0YqxAO", "rcVADCl2GyGPZWzs", "bjm8LrFZbMTUPUyM"], "SessionTitle": "a6Dc1SOEBzUKLLak", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "gmn3e6ePwaBbZ9ZI", "XboxServiceConfigID": "Vfw9swEJX7Qd4GOD", "XboxSessionTemplateName": "aOE0MwjJqYd8qGdL", "XboxTitleID": "HW5a3RCobln8mMft", "localizedSessionName": {"BRLUCJ47SRS4AluN": {}, "P4ON7XyaFfbozg6i": {}, "B9DuTz5QRPuh7lXd": {}}}, "PSNBaseUrl": "a99g219YxUsWQQPS", "attributes": {"zs6RtleWlgJndKwU": {}, "wTzBuh5V2D4eVZAR": {}, "Fu5czjsdXvwcY7mA": {}}, "autoJoin": true, "clientVersion": "pjSlMWT6ONiQUJDe", "deployment": "pokRVAknTSyA9IZn", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "6xBXCxdvG9gJRcBe", "enableSecret": false, "fallbackClaimKeys": ["tAO2tCtxd5FwPGur", "IojDRi8IJhvDPt1o", "rkeRPhxhCRoV8Teo"], "immutableStorage": false, "inactiveTimeout": 68, "inviteTimeout": 16, "joinability": "nwhIFibOMfZ4mFnC", "leaderElectionGracePeriod": 66, "maxActiveSessions": 79, "maxPlayers": 2, "minPlayers": 30, "name": "TEJPZiGi54QG0e2a", "persistent": true, "preferredClaimKeys": ["vePPeWax6vYoQnGQ", "8dVCIJ9mQGFrp9eA", "eXW0mJAm1C9lu2bJ"], "requestedRegions": ["vU1O9LgvkB8p914S", "dnatE9RFawcvNfxK", "5BhvOygCc6yZTtOo"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "lyirZiGSNRHkPLfn"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --name 'NYCq0f5axkRMhiTY' \
    --offset '10' \
    --order 'Gj2kZfvfvzcoAKkX' \
    --orderBy '92WchRZXqczD4Gyy' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'swGj46NgRAEojcJw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'BWDzedBPyQocDtul' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 17, "PSNSupportedPlatforms": ["tZ8IwxX8Rpt1ri5C", "bRvoDxua4WUwWEjE", "C3mdHaPo3dqvCsVS"], "SessionTitle": "YwvSN9IoUmcOx91a", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "54Uu5zjgOlGBahIf", "XboxServiceConfigID": "0D7frENh4asMHwbZ", "XboxSessionTemplateName": "YoK8hEJ69NZdFyCM", "XboxTitleID": "nnMcH9KBuRPBHy4Z", "localizedSessionName": {"DFaIkgP6oLdBf9p4": {}, "XEkxkzwN1s69Ozsg": {}, "kKnXWiSVrES4TCJb": {}}}, "PSNBaseUrl": "y0qphsEEhfklYDFy", "attributes": {"GPd9l6RIkclewNjC": {}, "IKNFpfGyLt6VRtrm": {}, "JeiPoKpxDUuLgFCj": {}}, "autoJoin": false, "clientVersion": "na6PBesfE6X7uD5p", "deployment": "hZxs8aT7HGeuOZli", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "CSSSg7ZqG2sNrLpg", "enableSecret": false, "fallbackClaimKeys": ["FB7jCyoaBlc4PCjp", "OHhJrYjPjUjfS5eq", "piaQdpYVtYWYMXPq"], "immutableStorage": false, "inactiveTimeout": 14, "inviteTimeout": 30, "joinability": "kSVAlbnMh9qjpR21", "leaderElectionGracePeriod": 70, "maxActiveSessions": 47, "maxPlayers": 85, "minPlayers": 34, "name": "DaMX5krLxnYNjhW4", "persistent": true, "preferredClaimKeys": ["cN0qjP5MEftoEmn5", "ktS2gjaboE1SxOGn", "iSM7RP1iX8VxUCCp"], "requestedRegions": ["x6bphZwH1QExdd3S", "TlsK8Xv84KGSoiKU", "3Zl65i5ScHhPaHlG"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "9v0GJrpeEs6btzjF"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'EoZI4V9kO3ay3JcT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'azKmt0xt6QRr4AM4' \
    --namespace $AB_NAMESPACE \
    --userId 'xgeKt7nBIWWkBr9H' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'm9M1tLtN6BxLoAFJ' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "BKva3cwwps11sQLl"}' \
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
    --configurationName 'WzP6fPHsklHO60xR' \
    --dsPodName 'WpgMAMyQWTrn5AgZ' \
    --fromTime 'ySg6S4CQ87uzH7GY' \
    --gameMode 'EzbAmOGHgd61IuuB' \
    --isPersistent '39iPugYtxujdxoR7' \
    --isSoftDeleted 'RKwW9IRZoLCVJAij' \
    --joinability 'Cf50mzN4uQQx7g7h' \
    --limit '18' \
    --matchPool 'By6C7UPAG5QCUUjj' \
    --memberID '22x7cgZkuRmqMIcK' \
    --offset '100' \
    --order 'u5NhmEEBZZ5hnYmc' \
    --orderBy '3fvZgwqEowPwrpAF' \
    --sessionID 'moKgt1bjB6Z0tVgR' \
    --status 'bvpi83ToiBxA8RtI' \
    --statusV2 'AEvq6Cbo9xkk1wym' \
    --toTime 'Qsit6am9Ntlis5e6' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"22g9xL41AmViueB7": {}, "mwwN5i1sx8KCSPqK": {}, "lAzlxWRSSZMgal3P": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["akWEDckqeOJykQHa", "rso4VevSoxWIZtTF", "hOdmGWtAZvbWaB4u"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'Oph9EYl5SeoVDUob' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'PW6kp5TxtaKdyc9M' \
    --namespace $AB_NAMESPACE \
    --sessionId 'uFKU9Xe47N4JN9VZ' \
    --statusType 'Nh3ysEeFyJKX52ZH' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '69' \
    --order 'gfm783B6X4CRrTyn' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetListNativeSession' test.out

#- 29 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'yD5Ii1C15ncm6fpb' \
    --key 'nawGtctaDgMIqrSa' \
    --leaderID 'uxziTmbijgryo6rM' \
    --limit '57' \
    --memberID 'GvB1RsjRuqeziPUS' \
    --memberStatus 'l6FwFp2R7ySxl79r' \
    --offset '75' \
    --order 'bYMYVUn0zHITZjBQ' \
    --orderBy 'LV3gMG6BToewEAKV' \
    --partyID 'xlGb0F6c9dzfUSQC' \
    --value 'q1Bhs6dxiun6NkOM' \
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
    --body '{"psn": {"clientId": "2iN1sQcMz9kvprbV", "clientSecret": "d8LYy4DvKz8vVKID", "scope": "YfVYZQgrlBSq729w"}}' \
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
    --sessionId 'WDXlqfejOIutL9N1' \
    > test.out 2>&1
eval_tap $? 33 'AdminReadSessionStorage' test.out

#- 34 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'fXYM4H1UfQOpgHqi' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteUserSessionStorage' test.out

#- 35 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'MVRSYnqtuoOT4g4w' \
    --userId 'yFBCbd3gGwVUAVDH' \
    > test.out 2>&1
eval_tap $? 35 'AdminReadUserSessionStorage' test.out

#- 36 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'VtnfuatJBi4fOUHR' \
    > test.out 2>&1
eval_tap $? 36 'AdminQueryPlayerAttributes' test.out

#- 37 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'LsWmTHzcuQhWEFn7' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerAttributes' test.out

#- 38 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"e6DZ5gxK6nBM8aHP": {}, "bROFpN8elmL4K51Z": {}, "quM96g3YktuZjgad": {}}, "autoJoin": true, "backfillTicketID": "zkGTxZDaei55kMrl", "clientVersion": "uyXsKDyaiomKjnI9", "configurationName": "sd8XnWESWp8tEoGF", "deployment": "CWCfkAU11V0uPLf4", "dsSource": "rbJjZCoimabN6rRJ", "fallbackClaimKeys": ["jm2as4bSDi7IfsEP", "NXjEYmdtT2w2FV7B", "Cbx03MfW62r36CbC"], "inactiveTimeout": 75, "inviteTimeout": 72, "joinability": "vCt0TTo1GsoSVIwj", "matchPool": "RyiaDowH4PWOd1SK", "maxPlayers": 15, "minPlayers": 58, "preferredClaimKeys": ["fWpwVOn0n2Mp2Sr5", "gLhMURz1Af0BS4rY", "tfSjrS2aYejPzxnw"], "requestedRegions": ["BAS8okwWRU4zKAVl", "ZSQDzAoAjyFQ49kV", "t9W1cqiNaWKITkqB"], "serverName": "drpgfwG60uK3ccPr", "teams": [{"UserIDs": ["FT3zDTazKM9REwD3", "GZUevEcyjdLzgin0", "YTpcGZBwyVE2TysV"], "parties": [{"partyID": "uuAxofRUr1iPepT9", "userIDs": ["8gjvTlOwrnv5YO8i", "AljpHQNeOyxWYQJi", "WYDiGlRZwIImyRr0"]}, {"partyID": "xL8flNFOApvLetC7", "userIDs": ["fcvn0X3SYhHpLj3k", "J1nXfq00jzodZYaQ", "WbMIeo128FqC4Vpn"]}, {"partyID": "1d5qRiE4mzYFUj7U", "userIDs": ["amBJqV9fqQkKawge", "k84ipPcLoSTEcr8y", "A7ckMWYdhaJbOlrx"]}]}, {"UserIDs": ["8zEB9I7FuXMrSRxR", "vUA1MYyaAVhskN4F", "uE80z3FdLrZVVNcI"], "parties": [{"partyID": "KcPUc6brODIwtz9c", "userIDs": ["UhXAZJLC8ccR6Y5G", "Z7iwVEGHeIRlV1Pd", "OFN5pDyqUPuIRZOv"]}, {"partyID": "qmdqyh3j4x2d6rNv", "userIDs": ["K0a5OEDYXYSMkZiU", "LGwWUCzi8hM8nRdl", "u7xewBhjnopb5v9t"]}, {"partyID": "rR4rpUwrLTOMMosP", "userIDs": ["Iq17olPazC4aAjsg", "ThgXx1J34edfr7CG", "n0twgjaiGnI4lYlF"]}]}, {"UserIDs": ["u7s35oYv6CFUd2MK", "UilHNmKb6VcnrmG1", "NHNkspsjNx5Y81vg"], "parties": [{"partyID": "MdPKACVVRzuYgnLn", "userIDs": ["ljx8aAICM5R4HHtk", "VyJMkPgph53zCVKq", "OqTPUfuPDCj4rDc0"]}, {"partyID": "sGNn6CvA2SDgOYaS", "userIDs": ["NQ9JlEJGtURJPTfa", "vam3Lc4RRekcWTxC", "LwZNiktOiKMmLB0S"]}, {"partyID": "7VmZ92laayruxuoo", "userIDs": ["GuvjU7h7DQEfZEXp", "OCpzctEk7Hj5RPWZ", "FueFa0K7jayMF4Dw"]}]}], "textChat": true, "ticketIDs": ["77XWNGGDDoAS3Bqb", "65coXurUWTRkyX3g", "yEnwk2pzv2t0ukip"], "tieTeamsSessionLifetime": false, "type": "kUmfO5fvMn23jmvI"}' \
    > test.out 2>&1
eval_tap $? 38 'CreateGameSession' test.out

#- 39 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"IVBedUWbWYT0LJB0": {}, "nWJi8j00bAfdJyF3": {}, "XlH2EVCqK2d5gsgC": {}}' \
    > test.out 2>&1
eval_tap $? 39 'PublicQueryGameSessionsByAttributes' test.out

#- 40 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "VsS4PtEE2IMIkSMm"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicSessionJoinCode' test.out

#- 41 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'Fmwe2ih6GpZ8ijIj' \
    > test.out 2>&1
eval_tap $? 41 'GetGameSessionByPodName' test.out

#- 42 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'm4KF8t4ZElYXrRJi' \
    > test.out 2>&1
eval_tap $? 42 'GetGameSession' test.out

#- 43 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'HYKqvKNBghQY1SiK' \
    --body '{"attributes": {"6l8FdcjP44Bu92wq": {}, "oQOGr69Ec8OUEvX9": {}, "WeTu2q4uFnDcvimt": {}}, "backfillTicketID": "RG7YRC5rswWsNb1t", "clientVersion": "ViHhYd2FWxN5DVy1", "deployment": "7Kf0FdUUV8la8joh", "fallbackClaimKeys": ["EauIRJOxj65B5kAh", "b1ZQtzuuU8Gpn8KD", "C4ODHmvoIP29EiuO"], "inactiveTimeout": 36, "inviteTimeout": 98, "joinability": "QuOv1soxUSZhVfuf", "matchPool": "q9Mf7Wtij6j60EBu", "maxPlayers": 100, "minPlayers": 1, "preferredClaimKeys": ["J4Q1JfZ6dfxRLjE2", "yhZiE6ZnbW70c2EC", "yZVblfQQRDoUMoUM"], "requestedRegions": ["SbJA9Yc9IMifrov9", "lp0s6Oj5UPSH2ZXS", "GY35IN2VJVNMfh9b"], "teams": [{"UserIDs": ["521vSfpCSCurLE4t", "FtNiIZQesCOthKEz", "H8iCqKsltFhUaJBa"], "parties": [{"partyID": "SyGBmvvGRfDoT5Lp", "userIDs": ["bQNQzUY8dsVwiml7", "evdkVMGOmz7RS9nD", "MYouTOtzAc9tsSDq"]}, {"partyID": "mRWxuX0BMBXOZIYM", "userIDs": ["3yCx06eWzvl0981X", "VTH9AwgrZsQUizPO", "pPuQxtSiCP5U9MLT"]}, {"partyID": "5f0Qz29Yw8Vrlkyt", "userIDs": ["Ti0NvC1HvsWBktHC", "j0JGBlaDlxiYoEig", "o1gsAajI2T7eTdah"]}]}, {"UserIDs": ["n8kRrRWWAALu7pL2", "m7LGNtBjcdmhWM1W", "EK2pWvi69o3UdlSj"], "parties": [{"partyID": "n02isYYZFKlGMHLr", "userIDs": ["xsy0W1QxsjfQVYN9", "1tC5pbKyFoNBn4q3", "moXSBKyA9L1jUh9A"]}, {"partyID": "27FjRtQoUN7WxHaE", "userIDs": ["1LiVF3I6bnLHvyz4", "WhXlbxJAeYiTnuhb", "4eO96mzKqnd6Ovje"]}, {"partyID": "x5KKcfpJunOR1Iwb", "userIDs": ["wVUSm3dayRoxL9q1", "qs5RUHE1evDVFDIT", "6s3ZnxDxDmxCiMxm"]}]}, {"UserIDs": ["ogSXTPhbhGAFGkvm", "bZPzZCw71E4ZRzPi", "ohJoAwhq9midUBck"], "parties": [{"partyID": "g6zTKavPY4ZPwyNb", "userIDs": ["R3cLhbJK1wC9EXSV", "1PQ6itBogLWlUXS9", "eQiMycMjKAlnMc1I"]}, {"partyID": "J6BIOSkUEK0fSR66", "userIDs": ["e6q1PisXFUwaIgan", "o8K3ksARmR5SkbMX", "o3UA5BBBRTCJzZym"]}, {"partyID": "aYcoOH2MrSCHzW9m", "userIDs": ["48b0auMj7pGjHDD9", "Kk5viqHu0YeYcuAA", "htCz3MTNRKt6X2tR"]}]}], "ticketIDs": ["aXocnHqU20T2dAJB", "vk1GE2NtjxRt4g49", "0gTeNJ8uJbCvMSux"], "tieTeamsSessionLifetime": false, "type": "MsSIxnr1uJxErZuG", "version": 51}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateGameSession' test.out

#- 44 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'lRQEEP3OTZ7B4sBS' \
    > test.out 2>&1
eval_tap $? 44 'DeleteGameSession' test.out

#- 45 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'tvvFCutleAyE1QoS' \
    --body '{"attributes": {"TseDlmDyItc8Zd6M": {}, "ZicRMyVbDkzKAJmO": {}, "s4vBKDUJobbhS4ib": {}}, "backfillTicketID": "5Kjq8kP8kwdSXAiQ", "clientVersion": "BgQypeOoRWgjjSiH", "deployment": "EVxVu3O1wm0AcLNY", "fallbackClaimKeys": ["U74jF09FgMZLkFq2", "v4zKMYxXXSalNNRE", "VwqpgvzHVdFqHFW2"], "inactiveTimeout": 71, "inviteTimeout": 5, "joinability": "RmP2tju4CkzznXmS", "matchPool": "XemEREqzkWGO0zYF", "maxPlayers": 74, "minPlayers": 5, "preferredClaimKeys": ["bBLloWL8ONekRqBW", "mmzfzNjYMxcN1FQG", "RVl1ZqFCOmk68AY3"], "requestedRegions": ["afUWtCykt7iAjWFz", "goGRVAY1urURfe9V", "UcA6MMjXNPEQ3VMg"], "teams": [{"UserIDs": ["B3n631XJz6s5kMLf", "H7zzdQ8NWzaXGyHL", "7jlqWYW82Lksq3SY"], "parties": [{"partyID": "KpYBz1L8dBo4eZoW", "userIDs": ["MRM9H3WBgvnsjX4x", "8rDn3bkodCHtatyv", "c71ukG25l3MvmiRe"]}, {"partyID": "sfcQwsUbC1WuryVM", "userIDs": ["LRnBmoryEAOZeFMP", "5HwT1N8iWIZMNmNZ", "9FreUvWAg4ZUDpuZ"]}, {"partyID": "jUhPnySkO7gk9bcz", "userIDs": ["sseWBXgbDWaKSU6D", "f3jSesRX5s3psbrT", "WdEsSbtQkSl7hyqp"]}]}, {"UserIDs": ["GpyLmXG87uhQKx73", "YnZnw3iYrezRhMh4", "QkjTo3NbRq91dkgX"], "parties": [{"partyID": "pHYX2W5zGnmke5q1", "userIDs": ["gOB1t6AeQ2kYt9kJ", "CRo22l0pGXWjGVCy", "LAeh47lXQ6ZL90IU"]}, {"partyID": "sOiZPk8Eju6m5ins", "userIDs": ["GU9seduxlD6Ylx7P", "P4uLxIVbmcapcSPc", "kpmRaIOyFWMqpdKT"]}, {"partyID": "wmSNOigl0E2WOEtr", "userIDs": ["svLRJwkyOpA90erM", "X1A20csFt8ojSBhG", "c0XOMSm8GxusSDXV"]}]}, {"UserIDs": ["OFxKfpwDmFuOB0l5", "0c9ni1FlTgwNW3pU", "GmMYHl6kB9NK9IC0"], "parties": [{"partyID": "gD8PUsWKHTCf8U4C", "userIDs": ["Z37CFNuWqqY2aDaD", "rgI6RZYNpAdG1srT", "POdsMnac70pcp8ON"]}, {"partyID": "FQOHaY0f6SwXwCaA", "userIDs": ["uCgyB5jC0GQGktNl", "RoLmILdSJjTxL01G", "lvzryeDtQfzSRhhP"]}, {"partyID": "EO3zVDQe6DvHLskc", "userIDs": ["yqQvVzLat1i7EDEo", "suMIGV8kADJhazxH", "WxGmWx2oZVxF4cWO"]}]}], "ticketIDs": ["wmbX4F9zgjmxZ8gX", "Qjfgbmd9AKbBMJCo", "23XIFEQvvMg7VGCb"], "tieTeamsSessionLifetime": true, "type": "TkxQoKYJSMxPDxlP", "version": 31}' \
    > test.out 2>&1
eval_tap $? 45 'PatchUpdateGameSession' test.out

#- 46 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'nh3ZwrJ2dAjEm8um' \
    --body '{"backfillTicketID": "SXPSc2q8iFCUiOWB"}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateGameSessionBackfillTicketID' test.out

#- 47 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'AHqLMdP9gooqOfxM' \
    > test.out 2>&1
eval_tap $? 47 'GameSessionGenerateCode' test.out

#- 48 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'FFhY992fEDMsxSIY' \
    > test.out 2>&1
eval_tap $? 48 'PublicRevokeGameSessionCode' test.out

#- 49 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId '0mvclHgwOFIYZKRB' \
    --body '{"platformID": "Q9pxGotRVtl94DeA", "userID": "75huFnVYWAS8zArl"}' \
    > test.out 2>&1
eval_tap $? 49 'PublicGameSessionInvite' test.out

#- 50 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '88jVi0AMK8RYpYiY' \
    > test.out 2>&1
eval_tap $? 50 'JoinGameSession' test.out

#- 51 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'U929FhllBQIwp2sl' \
    --body '{"leaderID": "pDziZ5Go81mV3Qsa"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicPromoteGameSessionLeader' test.out

#- 52 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'kdFB3YxzbJHGjCLs' \
    > test.out 2>&1
eval_tap $? 52 'LeaveGameSession' test.out

#- 53 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'Rr2bgrnyRgAxzN1k' \
    > test.out 2>&1
eval_tap $? 53 'PublicGameSessionReject' test.out

#- 54 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'FCR0d0J97ksSQmPW' \
    > test.out 2>&1
eval_tap $? 54 'GetSessionServerSecret' test.out

#- 55 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'I2Dum3fMudH4lYv4' \
    --body '{"additionalMembers": [{"partyID": "26JzPAcKdKQdjJqa", "userIDs": ["pWWvFiQmEGzS4fRM", "DxeQqblTUXTkWa3D", "x0GosWzQk3wNhXbc"]}, {"partyID": "g9ttloL4c1mDZQ7b", "userIDs": ["pZdoBdoRznlyOZ5j", "1uUd3FU0K2fb9MXj", "gipPYvOcqViLwYHT"]}, {"partyID": "BROI4TbkVjxmBfUL", "userIDs": ["NVr9dH2BLmHcIA9U", "fIJhJJcfcJbOxGHm", "XwxPquhXdqndfBnL"]}], "proposedTeams": [{"UserIDs": ["EIG0VzInYUYoxUJJ", "1DbhF1XMqhW4YENU", "e4g92lEjw5u2nRHH"], "parties": [{"partyID": "KWM5rNqW9fPSg1gm", "userIDs": ["7eyVQ03S6Ci9ykyw", "lXZXwZriq1JxttvT", "Wxv4PdiczYBuGTS5"]}, {"partyID": "oywxE2UhdOFogAg4", "userIDs": ["5IYYaLr7WLefKDOu", "zxS3EIQadqSL7Xex", "hbnAp2T9x6QqJLxH"]}, {"partyID": "4X7hCeoaeda0naxo", "userIDs": ["HyyZE4kthzbZZeE1", "uLDX0BWqo7EBprZz", "HFLLCJONvQVpS8zk"]}]}, {"UserIDs": ["RLPNiI131y26qoK4", "5Ftxx3JNCdx3UXGf", "yyOEhRGpEEu6Mui5"], "parties": [{"partyID": "WrNiNe09eyJkNkjg", "userIDs": ["SNO0yetHDP7qn35I", "CL2wLt7BEAbQRBR8", "dR1mANt3EsAoj9t7"]}, {"partyID": "PO9AgGpHlZQiV5L6", "userIDs": ["n0j7E4zu1NLtVVOH", "0HTvReXrWOcXkEFA", "QVE0GHoESnGpE5uZ"]}, {"partyID": "WC6XFLA4hwIqxFCv", "userIDs": ["DE67JlpDrS6Pi3Fp", "AQcuwitaG2LgXh9y", "nGgLP6XOvVA4NpxN"]}]}, {"UserIDs": ["qb1MEQzIIMxmxAxN", "HycYB8YoYvDqL1ms", "Do5WXA1bW2kDdJwF"], "parties": [{"partyID": "CuERyerpOzbopJdc", "userIDs": ["8Yw179GjHfb46sXu", "z2T0upDyX2aPVTma", "zd1jy7wNFu9bFHlO"]}, {"partyID": "hu8GKtrQVuQ9gS0p", "userIDs": ["sFi9W5gIQ26gZym2", "9tXsYd5hII53L76Q", "uB5X5OIMTnJy7WJ9"]}, {"partyID": "f43xqy5QdXfnfWTM", "userIDs": ["Db4DXoNKWqfbKGVg", "BIAPllQZyNekeYJ5", "SRm84gDD3RgdYWW6"]}]}], "version": 9}' \
    > test.out 2>&1
eval_tap $? 55 'AppendTeamGameSession' test.out

#- 56 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "CRvxYwkYtcHpejws"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyJoinCode' test.out

#- 57 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'ZKN85X3lXWWQsgq8' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetParty' test.out

#- 58 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'ZQ0plxeY2Tsq8KIp' \
    --body '{"attributes": {"9KQRpzzHWSbpW9Ls": {}, "OjMgAielyvgXPPLp": {}, "BYo94SzWNyu84ysJ": {}}, "inactiveTimeout": 64, "inviteTimeout": 68, "joinability": "NNGzRbr3l15mEyPC", "maxPlayers": 28, "minPlayers": 73, "type": "gsGtoNuL8a34JMJG", "version": 64}' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateParty' test.out

#- 59 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'HjHIN1F9nJVbap4N' \
    --body '{"attributes": {"F7N2V3PJDnITjz96": {}, "LXKDD1ViWNfhePDL": {}, "EC4doVpMu9POg2x5": {}}, "inactiveTimeout": 70, "inviteTimeout": 66, "joinability": "KFXsSqbeIYpbRejQ", "maxPlayers": 70, "minPlayers": 50, "type": "84ytCoBanZkFbBAS", "version": 70}' \
    > test.out 2>&1
eval_tap $? 59 'PublicPatchUpdateParty' test.out

#- 60 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'xOobJ2nQ0Ty5cN2N' \
    > test.out 2>&1
eval_tap $? 60 'PublicGeneratePartyCode' test.out

#- 61 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'Smi4R2t71zDxkar1' \
    > test.out 2>&1
eval_tap $? 61 'PublicRevokePartyCode' test.out

#- 62 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'nHNX4hyQzchEmS7C' \
    --body '{"platformID": "rO70narkIkm7yRM8", "userID": "ANmx2LZO3NjPxw4b"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyInvite' test.out

#- 63 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'zJjWhoOLrsfCB32E' \
    --body '{"leaderID": "AVj0fXeaYYS2kaNN"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPromotePartyLeader' test.out

#- 64 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '8GJ6eU3CTjBZ8Jvq' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyJoin' test.out

#- 65 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'W7WbQpOH5ZlGUHRS' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyLeave' test.out

#- 66 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'TRuuPYQtEfrykiX9' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyReject' test.out

#- 67 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'NLFYDcdQycaBcz8I' \
    --userId 'vkAAHPJ5SHGxtcMh' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyKick' test.out

#- 68 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"7Q0feLsValx87bgF": {}, "q2I6JSguMw9kZPOl": {}, "5o5RUJ8Mo1pIgXMF": {}}, "configurationName": "cZeixJt199R67OT6", "inactiveTimeout": 18, "inviteTimeout": 84, "joinability": "CzCpdS77O8yzfi7G", "maxPlayers": 47, "members": [{"ID": "CtMqNrvr8vfPdL4O", "PlatformID": "XRC6O41qUXzM0ZNH", "PlatformUserID": "nU2l1aJ8QiQKZ7Vb"}, {"ID": "Tem19UfcDIBEHmtV", "PlatformID": "jZ6DfAiLDpqUtzw9", "PlatformUserID": "NxJwNfKu2j6w2DTO"}, {"ID": "AZGdlvEStcu9zbi4", "PlatformID": "qF6U2LliGJsg59wV", "PlatformUserID": "KZRD9UbNYtiKW4Fx"}], "minPlayers": 51, "textChat": false, "type": "3W1lbQRoNZnFZvX5"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateParty' test.out

#- 69 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --userId 'hViX2ScyRzxmB7DC' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetRecentPlayer' test.out

#- 70 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'PWHOhvVJGKaFNprb' \
    --body '{"rYuvLeTIZ0yeXxrn": {}, "zjkIdb8nPJ1ARSBM": {}, "0pcUR1SEBotskxb7": {}}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateInsertSessionStorageLeader' test.out

#- 71 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'SBQAEMeMi2kVa3Ze' \
    --userId 'kZrgBYeERqnNJRq9' \
    --body '{"fzLzssEhcQXlJ7fv": {}, "lXgVOBC3QWNTDist": {}, "Wqm2CdP049lGvSGo": {}}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateInsertSessionStorage' test.out

#- 72 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["GkcxpIkfHf96x8Ii", "aLF0nDy3q2CGtVGG", "QYZJatbdFJHLVnXk"]}' \
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
    --body '{"crossplayEnabled": true, "currentPlatform": "gH8hXUQkJS55U8Rv", "data": {"utMCrv9dAGvSHZXl": {}, "BX01m1V06PMA49RW": {}, "JHQaM20F1n82lHwb": {}}, "platforms": [{"name": "Pf7bJ9UYEzclotWh", "userID": "A6oUUpDgzi0uVT2l"}, {"name": "S4Ezx9QLv61R3u47", "userID": "66ZsutPuJtBDfVMq"}, {"name": "jCgAKt75C9VA40l6", "userID": "METoBH60J1V209sr"}], "roles": ["BKX8gOGzSuWn5uQ8", "04apUs0fq6CzYQIi", "xMq3QzXBa1asVT73"]}' \
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
    --order 'CVqBDzq2ZJjUuNel' \
    --orderBy 'IKVqAbLh4JPNCJyk' \
    --status 'p1LgJPNBUScU9mb9' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryMyGameSessions' test.out

#- 77 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '2r2zVF4no1VOstrg' \
    --orderBy 'kdSoqXxeKHbrLqgF' \
    --status 'wji1mmXg2f98T0do' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE