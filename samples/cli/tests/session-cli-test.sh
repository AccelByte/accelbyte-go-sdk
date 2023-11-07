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
    --body '{"regionRetryMapping": {"3hvXu0Sog3M0qhch": ["0LAD2sMcoUuwI3KU", "hqQskD0AwYk4Runb", "eQETlTb4sNiOywlC"], "7uE7CCSFg2tgF73T": ["bddUuRFhe3cK5LtK", "G8Pnqtm19mhI8EQf", "3vWRK0zJOp1W1gyI"], "TKQbYPfsMjgGndOX": ["oyTij94trDGd8OnN", "ElOhIwY3Jgmo4hCR", "4NI08Bg69zriLaky"]}, "regionURLMapping": ["htgtgS23zOHZAfWd", "1vjsiKh9ZL6DmEif", "XRYSzLH2I3WVFcMh"], "testGameMode": "GBCkeJfO9e5P0I8k", "testRegionURLMapping": ["nQVao0ymL8XyWR8l", "J4v1wHznGaZn3JDH", "VJ9pmSQjRcJvpLkW"], "testTargetUserIDs": ["d0gpb7tYthMHqmeR", "vGWmUBPeiD8faYAS", "XBthSRF8lqqgXXfh"]}' \
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
    --body '{"durationDays": 77}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 16}' \
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
    --description 'Of2Du2HSdT6LQIGw' \
    --certname 'FVViFTBh4gKuX4pE' \
    --file 'tmp.dat' \
    --password 'zWWpUfQcbRin1o79' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 3, "PSNSupportedPlatforms": ["858awRG52MCfMvMU", "yfr32sdbjZE4dbhQ", "N1GKGhDbZRVNvjpf"], "SessionTitle": "w8yrfedFh58nNzGW", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "7DzoZopfP72uwREk", "XboxServiceConfigID": "gNHtoFN6rTD1AOgV", "XboxSessionTemplateName": "7QLwEBXvng52iqpw", "XboxTitleID": "06cN1tFY4VtAhuvW", "localizedSessionName": {"dpTluuz0ktbM7xaQ": {}, "I3kSVxFraM2Bkuso": {}, "SrNdAnH6ZnPz2rS6": {}}}, "PSNBaseUrl": "HdTbPyfdXviNuVBf", "autoJoin": false, "clientVersion": "ncPVyp4r2ISTNRPK", "deployment": "lAEOB2FbSiC1YGoa", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "TW6S6VtEXbe3ftL0", "fallbackClaimKeys": ["gRSPhOxLxB6vt1Nu", "KTW2fUaPay2Fioqh", "emHDaRkvbKUqFhwZ"], "immutableStorage": false, "inactiveTimeout": 31, "inviteTimeout": 0, "joinability": "RdwFgXYYLecMteKJ", "maxActiveSessions": 55, "maxPlayers": 31, "minPlayers": 49, "name": "mRYTS96yDuwHQVHz", "persistent": true, "preferredClaimKeys": ["usEIzUIskPL9YhR8", "FEUWzUZEKd8rpPd4", "zGKwboIS9AD4IcRe"], "requestedRegions": ["ddJ0dGYqkbUyqOyX", "gu83dqA42UYwezeg", "iRhFs2zIEcde7hcL"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "tzRV9y7OjZ2r20Ku"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --name 'stJ9eobG60pWt3hY' \
    --offset '41' \
    --order 'y4GGE7qkRG4rNq8Q' \
    --orderBy 'VKZK66XxCny3OJ1b' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'mnwFM7Y5GBdfV9aP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'IpDz1Yfc2BMRaLFq' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 63, "PSNSupportedPlatforms": ["cybOy687Fl4p47KV", "b4F7ysoF4LLGuKrb", "MjzZFE68pfL0F0jN"], "SessionTitle": "JliWGsD2oLczI6q8", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "xquYc3NwGK34HYj7", "XboxServiceConfigID": "Pb8BbXj1LgRkOpZX", "XboxSessionTemplateName": "BFVRmOtNFBcxWwmV", "XboxTitleID": "lQBykeOssVTCN8eh", "localizedSessionName": {"Tum9NaRhfshfly3C": {}, "CnNnGRPNJfzl7KXU": {}, "YN2nBDXBPT1MlxqZ": {}}}, "PSNBaseUrl": "lIcrX86ZTaW3wole", "autoJoin": true, "clientVersion": "BCsFsSLFlrh5QsMD", "deployment": "kcrN7qQ1ZiA15xtX", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "KfbrETCtYVXIEjYO", "fallbackClaimKeys": ["skiqELCuK9Iths75", "yt00zk5yxT2Ojjds", "vohbZtiWMSxKSWLA"], "immutableStorage": false, "inactiveTimeout": 54, "inviteTimeout": 70, "joinability": "r5mH6xuS0fGO9C5f", "maxActiveSessions": 48, "maxPlayers": 57, "minPlayers": 37, "name": "TkhxOb8qUl8xkPcX", "persistent": false, "preferredClaimKeys": ["yKMwiko3f8J00nb3", "7GlR7dMqrbUQXpln", "S5jNpNPQ1wu9Ww1k"], "requestedRegions": ["57zTPZ8MAEkkVKWn", "IG3ezcCwvSJCH7RA", "V3pjTlSp2IFEPATo"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "oRIN5VPjkcFuxAaG"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'DnYt0aekPi7RiiVo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'yD202GZpkg2xV5RM' \
    --namespace $AB_NAMESPACE \
    --userId 'LJtdUwKM09O0hu8s' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'MnJb4Z9iAMLAZetp' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "hJMedeMfPCLfYKS9"}' \
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
    --configurationName '60OD4aFcWKgBRuJ6' \
    --dsPodName '1xrViIRHcYoqbBzb' \
    --fromTime 'ApJO7ivy8e7n3Qh2' \
    --gameMode 'SWcX6okoLPz9MEx4' \
    --isPersistent 'QqCfKE5QwhZjanZd' \
    --isSoftDeleted '0j6c6cdJ9zSyh9BE' \
    --joinability 'jlb3hlUYCQsZF1Sf' \
    --limit '75' \
    --matchPool 'w5F7043EIqgHHwwy' \
    --memberID '8Y6PW3rRsc3bgagJ' \
    --offset '79' \
    --order 'giAL5JIKB4eByqta' \
    --orderBy 'BAybIFriWQhBZkv1' \
    --sessionID '2DqZBvBTQ3A13Jmi' \
    --status 'qJKXm2kaH3Z3ioVT' \
    --statusV2 'i8W1HZTlikKELfpa' \
    --toTime 'kO0s6xzJHey2wyDG' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"tHFUTQuRGJC78lqe": {}, "XVQyP7Ruak8DfbdV": {}, "3NeoUKXgOxSTgGg8": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["XXs9IDZaSkz7XWTf", "2IKppFdXCxMMufgE", "aQg1qibqAVIOPosT"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'UAM9mIQaxSWBgxL2' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'j2dQNmzItmbdtvnJ' \
    --namespace $AB_NAMESPACE \
    --sessionId '6oqKbqA55KvyS8Ih' \
    --statusType 'zV9xztG9UiPhl2A4' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'I8ccROuwwGY4mBzc' \
    --key 'LLSgowQqN8i5FxII' \
    --leaderID '5aSJlnfYg55dBZ54' \
    --limit '85' \
    --memberID 'nK1lgurbqboFt9Gk' \
    --memberStatus 'GMSyoUygxhYfQ1JT' \
    --offset '34' \
    --order 'hsUCFnhJGABZ9It5' \
    --orderBy 'mx3CbupKTl5mypw9' \
    --partyID 'HNcZonCQPYQk9VWU' \
    --value 'rwZD7f9f05FN4OM8' \
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
    --body '{"psn": {"clientId": "g0LtcotNS67cMRS0", "clientSecret": "mgNS69KlMOIBXEXl", "scope": "pFUzOg2ZXjoFnx20"}}' \
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
    --sessionId 'xOTVs1KhneWCzGtf' \
    > test.out 2>&1
eval_tap $? 32 'AdminReadSessionStorage' test.out

#- 33 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'L8KdodQmeCGkBZCC' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteUserSessionStorage' test.out

#- 34 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'KONIziIY4OWSvcLD' \
    --userId 'PL3G7fMF1rafThQ4' \
    > test.out 2>&1
eval_tap $? 34 'AdminReadUserSessionStorage' test.out

#- 35 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'I9dPIebic48DkTaZ' \
    > test.out 2>&1
eval_tap $? 35 'AdminQueryPlayerAttributes' test.out

#- 36 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'nvK9j8oPgrmrZaly' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlayerAttributes' test.out

#- 37 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"1gIe8N0usXCHKV4N": {}, "A0nq1nUmYfGGCo8n": {}, "Rk64GEslWQfDG1Yt": {}}, "autoJoin": false, "backfillTicketID": "k9BWEddkoVtV7OFS", "clientVersion": "FrlnE7g6IvF9agGM", "configurationName": "MHsBGsLVPUMROLXU", "deployment": "C24zHDLe6qV782cn", "dsSource": "MSNOaGam6db6wEUa", "fallbackClaimKeys": ["K6ctbufao3oOmiP3", "TkqohEn0ugm6aI5S", "2Hwy182Suz1iaidD"], "inactiveTimeout": 96, "inviteTimeout": 84, "joinability": "s3KUMZiWUmB3MzlF", "matchPool": "CsQZPoNGiR5Vh11j", "maxPlayers": 29, "minPlayers": 21, "preferredClaimKeys": ["zmFXG25DzodysQRU", "QZkrv63Fa7IE7B3F", "D42sL4U3VkNs3jBq"], "requestedRegions": ["mEdghN5NS1XbIvBf", "v5SzeLvQ3zGmIdRh", "J9feY21bYhXWn3Ai"], "serverName": "HC4NShMyb435lNND", "teams": [{"UserIDs": ["fHfqd3zNskYtFXje", "aZaflH8vewPXybfb", "v43z4CESf95s58Vt"], "parties": [{"partyID": "I75j7Boa6wL2ZcEg", "userIDs": ["t58m8KE4VCdB1v8N", "yhX5B4uMPAjZTvSu", "QkYM0BzNyvoqtAJE"]}, {"partyID": "1baMAQAEDmNzTIWb", "userIDs": ["WkL9LwahxveGPb4P", "xfvwFYDUrZ6hi0mv", "LCy9LDWthqZEwPRK"]}, {"partyID": "C5HTTMjTQnAalXUD", "userIDs": ["COiVITJwwXp6UQiP", "CW9YwZ1t2TNKZsGF", "UUXumxV1ksluI2yG"]}]}, {"UserIDs": ["yg1NDQBrmPLJ4e9J", "tDaqP6Dft9ArbZh3", "reK7VSCiPqkdYVwp"], "parties": [{"partyID": "fNGsFDfgtvB1PXQo", "userIDs": ["ZtOfmkvA5k07RdNd", "IoaENBZbctuCkbqy", "VC3wXP4lmJ5ex6ew"]}, {"partyID": "rcBjLZdeXg7fdVxB", "userIDs": ["FO0EVXgRL3lPC8yl", "86gYrGSaMMqey11e", "lc7vCJfGUmjOU8ji"]}, {"partyID": "FiixkqPJapPJvtNw", "userIDs": ["a7qu6TTDjhjtm1th", "9ROZGcJYpCWre1uO", "anlY6DKlGtUP1ax2"]}]}, {"UserIDs": ["WJYk3FkJLmWOFqWw", "bI0hMZqyHyXzIhVl", "B9gVknA0CPsHGO8Y"], "parties": [{"partyID": "PPaFiR6qt9zuHxEB", "userIDs": ["8RzG9TbL6IUQOtvs", "Vo35T1Flvqc3eZHk", "bJFEcNNNndQQ0exW"]}, {"partyID": "87Rf9eqV0U6NSMJc", "userIDs": ["77mBETS1wNiytYsy", "BlKBJVIOXuuvGXhd", "CyN2XGEwHtWYih6V"]}, {"partyID": "tPZt7yN06xQsH885", "userIDs": ["GWaFJrN2hYScUd14", "NL4V4XS1PgQWPlc3", "sOWQUCvdiVSPDJtr"]}]}], "textChat": true, "ticketIDs": ["JOxrIEt3yDFZhzx2", "2345fEIu9QyD0RgU", "mvCnKcOvQYcPAK1M"], "tieTeamsSessionLifetime": false, "type": "qjsqYiawORuJr1ll"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateGameSession' test.out

#- 38 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"gH8fGzQN5otwPNPw": {}, "tJJ0P1ZfqkNsU9tQ": {}, "1OfRGWoc5mFkJNgi": {}}' \
    > test.out 2>&1
eval_tap $? 38 'PublicQueryGameSessionsByAttributes' test.out

#- 39 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Mc2ur0vd1C2BSlIP"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicSessionJoinCode' test.out

#- 40 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'pMFIylOxce452Q9j' \
    > test.out 2>&1
eval_tap $? 40 'GetGameSessionByPodName' test.out

#- 41 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'CF5nOhBCR6ecVSnV' \
    > test.out 2>&1
eval_tap $? 41 'GetGameSession' test.out

#- 42 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'E1aOq05KCZYFd2CK' \
    --body '{"attributes": {"vU6nhBst39E0JlwI": {}, "9PWPz6zEzs79Pw1o": {}, "mqbZ9Dwd3j2wMFVM": {}}, "backfillTicketID": "llaSYXp21YUmkFm2", "clientVersion": "lYxjrElmlozCcMDU", "deployment": "AAY94MZ0Ym1JmCIn", "fallbackClaimKeys": ["uIhMDQWz4hbVSIRQ", "bg5AD6klE9UY401J", "TTPMXvFx2Nxq6XME"], "inactiveTimeout": 48, "inviteTimeout": 99, "joinability": "GEVoAAmIqpQY7WlH", "matchPool": "JI9ljmWXiQYVMU0S", "maxPlayers": 85, "minPlayers": 43, "preferredClaimKeys": ["1h1adVJqOGFJ8Ueh", "3UpjH1VDdKTKMPsP", "iTcSzqw8MAIKL3EB"], "requestedRegions": ["NOWhoJIjtSpq657T", "ctm9nFoCP13xLxRk", "zueEgCFniri9hLcR"], "teams": [{"UserIDs": ["L4QhRnNVJMRm0SsZ", "puiQKLXWwNrxKT5V", "ySEwnlTbgeEcxbJJ"], "parties": [{"partyID": "FkycydXzqyAqZiAf", "userIDs": ["C9t4f8HNVt4OrYgG", "0nTr02fdikSFvIqO", "cvZI2sRuAdt7t8DE"]}, {"partyID": "nxVMDs75NqZvE8nF", "userIDs": ["fxJu1eXzslygybH0", "YXQOVmCOGeG62HkR", "YHwIgayUVgOZGmEv"]}, {"partyID": "Xo92g3RPh3KAhcXr", "userIDs": ["itdxhzh1hbYhvAH0", "eKuKKIL29c1xcpBL", "dImn3bA1moeIkhdu"]}]}, {"UserIDs": ["dZruhnRrdUKICQzJ", "PsLZ05hqWDpnEm7s", "94c2PSMb5sIWCiMY"], "parties": [{"partyID": "DiWt4G6aAxIGtYfc", "userIDs": ["yKnpbOOJMqio3Rdw", "01vm5vUqjSlg1sLL", "6hZFVgEYZRcfxTBa"]}, {"partyID": "2tyHDCPTMB5qtXFM", "userIDs": ["XgIsAw5k1lROF1E2", "xkmiRP9LLW8ZArwc", "l2ZZFMhE7Zym2Ura"]}, {"partyID": "8KY8umZVe9jYr2RK", "userIDs": ["J5Y27A3EGjeEJg5b", "xMMQ0kKL6i3DEIZH", "cJyL4EnvRrgeBV3e"]}]}, {"UserIDs": ["Qdh2ECbwalACqKNu", "ak8jMBp4DGdTetwk", "lEgAP7IuRjFk0FQP"], "parties": [{"partyID": "xl686efzFwCzPRC4", "userIDs": ["ecEE0KB0L6DC3qVR", "4NLTCXab7RP44vYD", "B8hYoTvJR1ez7WWd"]}, {"partyID": "YtRHcvbiKHVJ2fHW", "userIDs": ["2lS3mFE5iGGRV0g9", "4b3e0QT1kJEkPBmP", "LCzGdVzeeQtgPGiw"]}, {"partyID": "OiqQgwRxdZo71iKp", "userIDs": ["qHXLGRVPuG3uwNWn", "hqYvFEKFsirCMUAU", "hExzLf0huseQ5Wbd"]}]}], "ticketIDs": ["E0tPlYGvIQ4kyde8", "K4azVqzDbiWes2xd", "JYriS1DpYdVZVkoo"], "tieTeamsSessionLifetime": false, "type": "T2CaSVs18C72xngO", "version": 14}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateGameSession' test.out

#- 43 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '6u0x4WG68ehp0fEC' \
    > test.out 2>&1
eval_tap $? 43 'DeleteGameSession' test.out

#- 44 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'LUbzf7SLMLk70wkM' \
    --body '{"attributes": {"ifzK2xdlO6noYSqc": {}, "XirWmyZkncdisV5O": {}, "434MpTOd3gKQADXF": {}}, "backfillTicketID": "82ibNXpuF5MvnVOY", "clientVersion": "cHFW7Z1cIFOZvGFy", "deployment": "Glwh0FuFooKgSuZG", "fallbackClaimKeys": ["VfVhfoa8ggyVKiS0", "IB0WmpAGOj9PJZj7", "BoVBagR9xfi3hp49"], "inactiveTimeout": 60, "inviteTimeout": 34, "joinability": "fYCRlwCmbUWD1pp2", "matchPool": "BVfB7n8UMmsaAUOI", "maxPlayers": 19, "minPlayers": 67, "preferredClaimKeys": ["QDm65i14hiQRDdMQ", "l9gx0OrPjUgRlagO", "9gadQYT5Plh6Y8AQ"], "requestedRegions": ["fm3hN1pf1c9aRDRs", "xe0R006viuJ07XbK", "MO2KhbvwCU4W8PFJ"], "teams": [{"UserIDs": ["apyqRPbvO2c8IhrE", "EokgCFxT1WHr6hYN", "RfUiP6LzC8e6aa6N"], "parties": [{"partyID": "KwewzOvXYlfbc19j", "userIDs": ["Thxkt099aCIb7pID", "sJJQShOS3mmvGlZr", "kN9RXqdzSrRhaIqJ"]}, {"partyID": "GdOBUR4ZoTvbrj5t", "userIDs": ["3Jd6T0r4bb0ImAem", "pQ84IUuhV7V2GkLm", "Pzh2LzIoj8XBmNsm"]}, {"partyID": "NKeEdMAwjIpxP4Lk", "userIDs": ["TjLuwjfIcqKanazb", "VERWYynVFxuJAi4S", "FfERqNVkGhPwm2B9"]}]}, {"UserIDs": ["ruwpupzEtZ6EsS6M", "8BRDsKHn3rxPGOeG", "9pYDrk6ya8uxIQS3"], "parties": [{"partyID": "v0eTjL7dMF9hJr0H", "userIDs": ["55PKOqugIWXyx6HO", "cOvmd4H4R1PNi99C", "ybZ8gWFW34Y1jV0B"]}, {"partyID": "pb9znXYVogxtiBSU", "userIDs": ["4tfSXFZ1Iy4FJgMp", "T3thCjy1KqGMAXhr", "ricMRyGwSh3ROn5N"]}, {"partyID": "gPAcSmU2Cb8q0oXi", "userIDs": ["eAWWDXEBAZA0By49", "AwCcXo2Zz1cnbb6j", "eXOg7XEhOwlG4kgn"]}]}, {"UserIDs": ["qhfIZ94ETunhMYyE", "staVd4ZY1YuybBoE", "7OrToA0LDSVneaRc"], "parties": [{"partyID": "Y9SLjw0Vu4jMnYDS", "userIDs": ["F0dmnxT5NYmlJ477", "9lSYCppEKY8Q1zuq", "BFf2aOvavntyrLaf"]}, {"partyID": "sZkj1hi9iH8AfwIK", "userIDs": ["4zpaflSGCW9JkjKb", "7qGPHHyQXwwAAl3C", "lLFip4OiHyfqHo0T"]}, {"partyID": "pPhifplH9d1DLGNC", "userIDs": ["ZcFqXQgKBKyDehEg", "fRnLeAn8ntSvO689", "RS1MpTdZZEASgnic"]}]}], "ticketIDs": ["rllk8I6iXWj8JVIJ", "1berlFcFck0vhSoz", "5MoF1F1u6sp7UZvI"], "tieTeamsSessionLifetime": true, "type": "5m9cC25gSIfJMR99", "version": 95}' \
    > test.out 2>&1
eval_tap $? 44 'PatchUpdateGameSession' test.out

#- 45 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'RaQjOAUL4O0lAyal' \
    --body '{"backfillTicketID": "Dl9LnEpFPSEaTJKE"}' \
    > test.out 2>&1
eval_tap $? 45 'UpdateGameSessionBackfillTicketID' test.out

#- 46 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'XvGgc6NfJdUGtZYr' \
    > test.out 2>&1
eval_tap $? 46 'GameSessionGenerateCode' test.out

#- 47 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId '7ofTZDchixdWpRmd' \
    > test.out 2>&1
eval_tap $? 47 'PublicRevokeGameSessionCode' test.out

#- 48 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'G0DY1kdTzvM4CL2O' \
    --body '{"platformID": "MctBUhtHFWqnrGLF", "userID": "aZZyNXEx0gF68krx"}' \
    > test.out 2>&1
eval_tap $? 48 'PublicGameSessionInvite' test.out

#- 49 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '8HIjouGiboGPRmPP' \
    > test.out 2>&1
eval_tap $? 49 'JoinGameSession' test.out

#- 50 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'hXabHeap4g3BHC68' \
    --body '{"leaderID": "U0CWWFFbevozhrya"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicPromoteGameSessionLeader' test.out

#- 51 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Rh66Onk9wlsuESzV' \
    > test.out 2>&1
eval_tap $? 51 'LeaveGameSession' test.out

#- 52 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'rX1wK63uXElffi9x' \
    > test.out 2>&1
eval_tap $? 52 'PublicGameSessionReject' test.out

#- 53 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '89yFKNGuNV4Nyl9E' \
    --body '{"additionalMembers": [{"partyID": "36ZJtJwcMucUKeLI", "userIDs": ["vfxz7CvOccEZyiLF", "oDmxjcypK9Fll5k9", "bGyCxDW2OTuyaZpV"]}, {"partyID": "MXEU2F5VmL10e9XH", "userIDs": ["qz3SrD5gwnk5MqpU", "LlKktTiMSL2EnO26", "4m9TfNirtnh0dKLk"]}, {"partyID": "EhglLbYZGseEIE72", "userIDs": ["3fjNFeUSFfOLXxYN", "A4qC6pQpvyVPirGp", "etl5G7B3LggmjSfP"]}], "proposedTeams": [{"UserIDs": ["N5ynUXLFHSmAuBfk", "ygge1LSf88CQvQjz", "8cfIeJ8JYOj3S5q0"], "parties": [{"partyID": "QG6DKafilC1jq0UK", "userIDs": ["IyjLirUwZMzAFphW", "VxdD7pfygPSbQEFB", "5JNGtG4ePTh4OeG7"]}, {"partyID": "inONMn097rmh5vyk", "userIDs": ["VV9sAmy6E17HtZUA", "CUWQmekYc9SOJ3QQ", "oIIZ1rX5yZogwWvk"]}, {"partyID": "lpNfFI7i6QyzEvgf", "userIDs": ["ujsqrYuqlJ6kfQSo", "x3PyefhxPBdgQ3WL", "dJqI7xDN20DMFRNl"]}]}, {"UserIDs": ["rtXkMlGWYbmG5ziX", "mzYUFNtMt5dIwZGl", "BAiJJU2xTUVMN3FM"], "parties": [{"partyID": "IAWHSMw0BQfBMg15", "userIDs": ["eJDoYkOo7wZlKwEd", "lf5glq3E2IqeQqIk", "Y2LX5CNgNgvAT6Ia"]}, {"partyID": "odI75XMJybr2VNEG", "userIDs": ["2GESlAFl8TjRRpeg", "D4uFA6xnafmaOvvF", "BMGUy9PyfblmT10P"]}, {"partyID": "y4MLP1khYc3iPBg0", "userIDs": ["fGv04bXqLGk76M7Q", "MVYHvORdAZPFlbnD", "NYduAtDYEACLj4kV"]}]}, {"UserIDs": ["85Xl1KZF4nwhznv2", "B0DExynVG7EVJqcv", "iEkCQ5oTGevNCl6T"], "parties": [{"partyID": "uUhZfNV49D51ZhzL", "userIDs": ["OXqBsxR0R9N2GKKF", "dt1cWpldOfvNPakx", "1f4cJ7xvstM6NC0f"]}, {"partyID": "wTb3q6ZD3VTvI7zs", "userIDs": ["sYtQKDfQog7bQmqq", "8ZTAP4NcLZiXnZ05", "j1urJU1IReQl2B8P"]}, {"partyID": "ri1Bfeq8LETBx5ae", "userIDs": ["yW4oX4QnZ1iAi4JB", "8F54Ywb9X1wykk3M", "M8sHe40t7BUp0Q6c"]}]}], "version": 99}' \
    > test.out 2>&1
eval_tap $? 53 'AppendTeamGameSession' test.out

#- 54 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "OGXwvQFRFO2mCPJT"}' \
    > test.out 2>&1
eval_tap $? 54 'PublicPartyJoinCode' test.out

#- 55 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'ywP0pnDPNvz9eKlM' \
    > test.out 2>&1
eval_tap $? 55 'PublicGetParty' test.out

#- 56 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'bbARTPnCpWXRii3W' \
    --body '{"attributes": {"Pa0aPaZRxH7dDKTw": {}, "ZRPCiRpqs6KagM7T": {}, "MM867BNlNojqDUJr": {}}, "inactiveTimeout": 29, "inviteTimeout": 64, "joinability": "TvuqfteOWXocvwhx", "maxPlayers": 44, "minPlayers": 58, "type": "sXdNKINsxsTgX2La", "version": 50}' \
    > test.out 2>&1
eval_tap $? 56 'PublicUpdateParty' test.out

#- 57 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'oDZBBiRIPjyXVDow' \
    --body '{"attributes": {"40hILOfisYlyy9S0": {}, "8bENBaKASJ3Rbc4Y": {}, "ikeAbd2ttJaCXPvz": {}}, "inactiveTimeout": 29, "inviteTimeout": 5, "joinability": "Z4klwHMmLRdo0fFr", "maxPlayers": 51, "minPlayers": 80, "type": "MuNFjGX4tU5Bphci", "version": 18}' \
    > test.out 2>&1
eval_tap $? 57 'PublicPatchUpdateParty' test.out

#- 58 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'FjrUNpIL1rCnJPev' \
    > test.out 2>&1
eval_tap $? 58 'PublicGeneratePartyCode' test.out

#- 59 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'b6wEv9kha1moaEfk' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokePartyCode' test.out

#- 60 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'FVigh0pWb5IPUqqu' \
    --body '{"platformID": "siYW7ZpyKxH4uM7m", "userID": "ccY2xIzhJz0uXb2H"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicPartyInvite' test.out

#- 61 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'q2FhwvwrZn9hKMAJ' \
    --body '{"leaderID": "bXQrNM1LiHMxJlMT"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicPromotePartyLeader' test.out

#- 62 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'q5RpknmnullRDIsn' \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyJoin' test.out

#- 63 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'trByyqvKCHa24vzX' \
    > test.out 2>&1
eval_tap $? 63 'PublicPartyLeave' test.out

#- 64 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'kcRHB5yEilr38xyO' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyReject' test.out

#- 65 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'uLUipjezklLxKGMk' \
    --userId 'EOXOKrVkzwtvLD4l' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyKick' test.out

#- 66 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"G84IAAAXRmhM9rbP": {}, "CjBBnOdKf1yvvI7e": {}, "scEcYhKPKAdzJ0Ep": {}}, "configurationName": "4G5ZP5YfDJOaE32x", "inactiveTimeout": 23, "inviteTimeout": 31, "joinability": "jYMvxpqZ2LVZgOhp", "maxPlayers": 98, "members": [{"ID": "Mh9KNhsxDHce5YBp", "PlatformID": "uDOAKzIwLTm2tYwZ", "PlatformUserID": "DgdEmk1GWpmXey5O"}, {"ID": "sZYYhI1tl4vkpLJy", "PlatformID": "qSR51DbyXkWPuKW0", "PlatformUserID": "kqMM4b1JJN1lFe8i"}, {"ID": "SEfqyi1dUByPysgS", "PlatformID": "PrKmDjAUn0PPctLi", "PlatformUserID": "gxlkKJgcA5DqSIjK"}], "minPlayers": 100, "textChat": true, "type": "KEmkxaNzhffM53EB"}' \
    > test.out 2>&1
eval_tap $? 66 'PublicCreateParty' test.out

#- 67 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'nEGUZ9vJA0kbmFZy' \
    --body '{"p8W8MY2AOAbOoiWk": {}, "IZgRYn5pI3G65UMz": {}, "B10ezeN0kfggdilE": {}}' \
    > test.out 2>&1
eval_tap $? 67 'PublicUpdateInsertSessionStorageLeader' test.out

#- 68 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'u7vUm8B02ucaNgP0' \
    --userId 'f8EaThEWk7gIAsNk' \
    --body '{"WE9w2oIjAuN0Eh4D": {}, "hGSYq3j3rgGAGGgb": {}, "hObCVyaKqc693i0O": {}}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateInsertSessionStorage' test.out

#- 69 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["BUuw9QB24AL9Sdk7", "jK5rxsHldDvc3bfG", "tAGc5J5GSMmWtuSB"]}' \
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
    --body '{"crossplayEnabled": false, "currentPlatform": "W7fPXeL2icLvb41e", "data": {"bKGHy5ti5C9oJdm8": {}, "hNjtwz9Sq2BKxVXE": {}, "z3ZO657XHATEO5iX": {}}, "platforms": [{"name": "GBmFAbvoLG1DGmQn", "userID": "41yEk71U0iTN2U02"}, {"name": "6PZbXmfZVdIWQHeW", "userID": "60YUncInxcdKerJl"}, {"name": "j8KuyWSnKfVqsNQ2", "userID": "JLCOmX5blbvjYLWv"}], "roles": ["tqd2kqDVIC5gPlXK", "4X1qHejChYlJ6FvW", "OgubbSBpIGA9Ck1C"]}' \
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
    --order '73eDOFl1rg3Vj9Z6' \
    --orderBy 'DaqNeqcxtqaVExpk' \
    --status 'T6jaZ9GXytEvSCME' \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryMyGameSessions' test.out

#- 74 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'As546Haa0k5cVOyr' \
    --orderBy 'VjUPfW7URBzJaubM' \
    --status 'M0ZotmggicylSqCV' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE