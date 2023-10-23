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
echo "1..70"

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
    --body '{"regionRetryMapping": {"TWfFmH2ovsUs0i4Y": ["gMmn1kzkZQkaFxYm", "aanAGoMP7MTjwOAt", "EssEo6xa49wgo2yh"], "wpU9tGyU2vxCp5j7": ["T998ryOFatpESUbH", "27M8grbycKx7tv3q", "81C3q4TRMPaT6Fn0"], "ApnGDiNe2ZlWfxi0": ["CwmMs7JisL1d4Adw", "ohmoLWhcn7Qwt39l", "MrKy1cgXGYh9MwDh"]}, "regionURLMapping": ["jkmgzyugR1fDtu0y", "b6PumJKckAqKGyNp", "v46zaNWn8nfKBBJO"], "testGameMode": "UhXLuUbWlCQfj5Uj", "testRegionURLMapping": ["3qCzr7oXpQg0rHZ0", "S3R6lkidDLD0Mtl8", "vG8YpFP0RliurQIZ"], "testTargetUserIDs": ["y7PIL80kIJdu0DsR", "lXpaUCKuiAx9WB9f", "y1AwGn77SIrfpDV7"]}' \
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
    --body '{"durationDays": 7}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 61}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateConfigurationAlertV1' test.out

#- 12 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 6, "PSNSupportedPlatforms": ["WoA79gEMbjgG8RLs", "2sFzvAIAkeNpbwnz", "3zbF1Zbff1l1kUsV"], "SessionTitle": "PJDavpnFBiOuOhkT", "ShouldSync": false, "XboxServiceConfigID": "LUzKAHeyatzcO4j1", "XboxSessionTemplateName": "BgSwrCpHDFuYDr2K", "localizedSessionName": {"Ub4clftmFTcPv43M": {}, "0fSOve7BbGq0X9d5": {}, "kFJILsvkXXKTBRhr": {}}}, "PSNBaseUrl": "Z6hXyMr2WwDYfrIc", "autoJoin": true, "clientVersion": "USSMYk6qeRuwiMCW", "deployment": "p3ywnOHsSA9pXrMQ", "dsSource": "EgawHVHsoFKtuznU", "fallbackClaimKeys": ["BrWxoXopHaPQQfPg", "rQPizoJEfAUEoEuc", "y9H3PWGL4kqIUNy5"], "immutableStorage": true, "inactiveTimeout": 6, "inviteTimeout": 92, "joinability": "pRNoU0hKbKGvkz2Y", "maxActiveSessions": 12, "maxPlayers": 87, "minPlayers": 35, "name": "tuDpWooqBH3M8t7d", "persistent": true, "preferredClaimKeys": ["EgcKKnACfOBo5pWF", "CF3uIzjCLGGXtkQg", "biht3IaHvKbIFX2q"], "requestedRegions": ["fVd6nAcjrQDS5HOO", "y7muMAbCaZklXXyN", "9ubZvUAaoMZ9o3wO"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "0whvjwnVG1NoYKjb"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminCreateConfigurationTemplateV1' test.out

#- 14 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --name 'cVJ4IL5071OfG7Bj' \
    --offset '98' \
    --order 'xAVtjbU4xVjBeUEA' \
    --orderBy 'VXkKKlQaSoEzf47O' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetAllConfigurationTemplatesV1' test.out

#- 15 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'UyxuB9espplbAiru' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetConfigurationTemplateV1' test.out

#- 16 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'wycMB1OMklKdFr2z' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 71, "PSNSupportedPlatforms": ["KjsfR0O3do11QTok", "qKfeiVzQQBQ4Bm0G", "2S6mkeu7qR8T8EGD"], "SessionTitle": "AQVIA9VvmnUkLoze", "ShouldSync": true, "XboxServiceConfigID": "DTkQMpEWCy9TfoMw", "XboxSessionTemplateName": "FxWJ0fAdNFe5d9mG", "localizedSessionName": {"2nRkd7BPVoDdnhNd": {}, "2vIICxV52O4bfiF0": {}, "X5dj7xsfn1woOPns": {}}}, "PSNBaseUrl": "FztUsmb0L5Bemdbk", "autoJoin": true, "clientVersion": "U1dXaDDDEriygkZZ", "deployment": "ZjMiF10KUoWZlJFG", "dsSource": "dNJxB7lCBgDnJGyr", "fallbackClaimKeys": ["H0qCBDqu1dfRIIlk", "ncioueTdshAuqhWO", "ZMy9Wmd95Bg9i5Tr"], "immutableStorage": false, "inactiveTimeout": 54, "inviteTimeout": 45, "joinability": "uYw9KCb80k4iWlUn", "maxActiveSessions": 7, "maxPlayers": 57, "minPlayers": 54, "name": "lNibWAHWwcD14jq9", "persistent": false, "preferredClaimKeys": ["ForpYqyl45ddEuVf", "fXAo8CBWKQ5rx1kV", "J2bowlYUDOi0WuU7"], "requestedRegions": ["Q7sVk1zdBj16hBHu", "E2Ky9y81jjc1NSJU", "8uhOOwNKv8UzwlBK"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "5C3TuA7widuF9GzG"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateConfigurationTemplateV1' test.out

#- 17 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'Bu0OxkPZnA0o0kB9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteConfigurationTemplateV1' test.out

#- 18 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetDSMCConfiguration' test.out

#- 19 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'AdminSyncDSMCConfiguration' test.out

#- 20 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'jVvAVIkeul9XP0uE' \
    --dsPodName 'lpR3cm6wWTSzhX4R' \
    --fromTime '7UqBtTBMQfKOdJhB' \
    --gameMode 'w3khorUMwfWZthCC' \
    --isPersistent '7svX6VB0u1UNEUv5' \
    --isSoftDeleted 'kM8ISabERMzbpca5' \
    --joinability 'VlLsQebAWouzAm9N' \
    --limit '55' \
    --matchPool '1jAWekUh2pQRyqQE' \
    --memberID 'JnuYOSqxa4g8pluY' \
    --offset '39' \
    --order '3TE2xyI79Deu1NMW' \
    --orderBy 'GrmX6Beyjiur25zj' \
    --sessionID 'ZcVs9Jfs9AIoLI7L' \
    --status 'DQAXyjNKOY6Xq9XF' \
    --statusV2 'qIxdejooxsjDwjf9' \
    --toTime 'dg9nmfLE1WAyZsCq' \
    > test.out 2>&1
eval_tap $? 20 'AdminQueryGameSessions' test.out

#- 21 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"In6YHX7hnNqhDgv6": {}, "fKbPf9yIMFTRKSsk": {}, "OvNll4cQmBRQDXOg": {}}' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryGameSessionsByAttributes' test.out

#- 22 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["oasmCxc9oBIwiLPm", "aksniRANT7aiEOHX", "ieT2co77XMHSFhsh"]}' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteBulkGameSessions' test.out

#- 23 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'cormTqM94PfwIHU8' \
    --namespace $AB_NAMESPACE \
    --sessionId '5AWVDhViqMHG24J9' \
    --statusType 'AyUqC06KzVm3Du7v' \
    > test.out 2>&1
eval_tap $? 23 'AdminUpdateGameSessionMember' test.out

#- 24 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'VMLNjmvk5RGF5fc2' \
    --key '8OnvF8aU70AgYwea' \
    --leaderID 'AKRLgDzzlEw8bshw' \
    --limit '100' \
    --memberID 'SMfhtyJzBgQsCusm' \
    --memberStatus 'DRb2H2VFwoJt2dTX' \
    --offset '26' \
    --order 'swxb9ySGBiKHZXyX' \
    --orderBy 'UdW52j3QNfhMO6qu' \
    --partyID 'HJgKsYTst5KyAcVs' \
    --value 'w5fcz8A5syy1aT7h' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryParties' test.out

#- 25 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminGetPlatformCredentials' test.out

#- 26 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "7i1Qyvc2yhmpqoP5", "clientSecret": "IpPXQb90YWxxniS1", "scope": "q37jpk7ln5Rl2KlX"}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminUpdatePlatformCredentials' test.out

#- 27 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeletePlatformCredentials' test.out

#- 28 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'EIOmQcqVF4oxANNq' \
    > test.out 2>&1
eval_tap $? 28 'AdminReadSessionStorage' test.out

#- 29 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '98KajmaH92Qfu2fV' \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteUserSessionStorage' test.out

#- 30 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'cLVjrfpdec8HPKjB' \
    --userId 'FvbbI6xWZaONPtMU' \
    > test.out 2>&1
eval_tap $? 30 'AdminReadUserSessionStorage' test.out

#- 31 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'JI3CZZlDgSG1kNnN' \
    > test.out 2>&1
eval_tap $? 31 'AdminQueryPlayerAttributes' test.out

#- 32 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'QztZfcPGAb6Bg2xh' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetPlayerAttributes' test.out

#- 33 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"VKFYHUjHTLtYUS9v": {}, "g8BsQhjdsU8nGsBU": {}, "qnYJYKC01j2XVERO": {}}, "autoJoin": false, "backfillTicketID": "BJN36s4z4fIasyK5", "clientVersion": "YuRAAuIvJ8DnhAq7", "configurationName": "N97k0ks5jYXeTWjh", "deployment": "sOaxF8rNNSzEhdLW", "dsSource": "P2PzO6f4V6DjiY22", "fallbackClaimKeys": ["VTfAJA4VhO9xRdSM", "RrT0Jr1WVl3Kmpqn", "KrDOS1grf3CiaLwP"], "inactiveTimeout": 3, "inviteTimeout": 60, "joinability": "uBve7RfawUsowl1W", "matchPool": "J2h4V4PYYrc3SR0B", "maxPlayers": 61, "minPlayers": 45, "preferredClaimKeys": ["pYTlYPCY6ZxYWMCE", "8Ae43mgPpYfo6IpJ", "zqElojVoQVNMLDbA"], "requestedRegions": ["PkT2Er0mR1KDzezc", "80HF6BY2mK4Gl6oj", "p7yRNK1ZUttOJ6Ri"], "serverName": "6OoaIHynXQLMR8Ot", "teams": [{"UserIDs": ["sq1hDE6pPUoL9KrA", "mP289u42D46p5Pp6", "fxHswppfDhcH4qjn"], "parties": [{"partyID": "dAkiligaZvrhErWt", "userIDs": ["JnsIcrb2vKgnVEWr", "ohjC4NpgJzOY17a1", "f3q9tjA56PkAvPT3"]}, {"partyID": "7EBFAk6FBUBShsx2", "userIDs": ["1a7qTydCLllUinVl", "ADsYs7j3DghjRGhG", "6RSUxVatf8xnrTo0"]}, {"partyID": "gRjQVOylkeRe2brS", "userIDs": ["VQRExQBGHq4a6LCJ", "JikNoVbfFGprzDGh", "PvEzB6298qAY0DSM"]}]}, {"UserIDs": ["ZJDPJzt9gj3wNwSn", "BZImbli79uRM6u8c", "51p7nE3k3YVn7qyD"], "parties": [{"partyID": "v8QcAZvGmsFG5vgD", "userIDs": ["SjXaMzKdN0UXEjYm", "ldnz9sOPGn6EX01t", "vDDB5BQ7VFJOivZu"]}, {"partyID": "uXBZZixES3qKVOlJ", "userIDs": ["1mgM2888DGspqhHz", "R4HWXCjFTtJJ8LwX", "iwCXNX42UPhuAd9t"]}, {"partyID": "fMUobsdFHRVL4bdD", "userIDs": ["I0Yze5DKAbZZf1Ce", "CHOimk2arArQbgml", "ksnRf9y76W3vGX7P"]}]}, {"UserIDs": ["uytH3sPti7UicIX5", "nfeIppbg1VmvUmcI", "3OTx3vHNQAmcG5U1"], "parties": [{"partyID": "FUl1JClfrLamhE30", "userIDs": ["NHOFMAAXcnuP43rG", "SxK5SDy5ybbAK59M", "3XFsialWn9yAtEkg"]}, {"partyID": "lrXuqWXP8s4WTXvo", "userIDs": ["cQpXBvrOKaurD1lT", "ABxow3ME0AqRY7Y9", "7wQO62UhPcAwpE7b"]}, {"partyID": "lc0akFPUlywU1fip", "userIDs": ["DQWOeB0LeNxz9FHK", "lvzDUs5eFR2t0t07", "02lqMBLNGhCN3idn"]}]}], "textChat": false, "ticketIDs": ["xZJu3364MfkVvtWp", "RuGUrOQqjQ4DYzYn", "o4hmMT49TxkXzfcG"], "tieTeamsSessionLifetime": false, "type": "TEBqhLDPFZOgnJNc"}' \
    > test.out 2>&1
eval_tap $? 33 'CreateGameSession' test.out

#- 34 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"JnSS4bYjy2DTZM9d": {}, "FxU6TEhrKZhXvdIx": {}, "ngns6nNeMF8zCw8j": {}}' \
    > test.out 2>&1
eval_tap $? 34 'PublicQueryGameSessionsByAttributes' test.out

#- 35 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "hqdNXpb8jALjbg4w"}' \
    > test.out 2>&1
eval_tap $? 35 'PublicSessionJoinCode' test.out

#- 36 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'amB1anpUCgJOo4rs' \
    > test.out 2>&1
eval_tap $? 36 'GetGameSessionByPodName' test.out

#- 37 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'riE2bhvqRYPZTyA2' \
    > test.out 2>&1
eval_tap $? 37 'GetGameSession' test.out

#- 38 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Ppgou91hJsMYBUjy' \
    --body '{"attributes": {"ukhdA32Hfq2mFG0s": {}, "kdJwfztCUVbwA27K": {}, "mcPSR1RFY6P0LXCa": {}}, "backfillTicketID": "t8YthxeObhQ3sODr", "clientVersion": "bFxq4XNgRRkWK7jm", "deployment": "QkNdCONW6cs393FU", "fallbackClaimKeys": ["E7sQnUZMvbpzhNzz", "yvf28UdkXTEusL4T", "l4LwJlI10GBCHciP"], "inactiveTimeout": 10, "inviteTimeout": 26, "joinability": "teVrXVFnuC4PsKYK", "matchPool": "oYNBzkCfSNzjbT2Y", "maxPlayers": 0, "minPlayers": 57, "preferredClaimKeys": ["Tg9V2rcYKvO2raXO", "Ql0ZrKntUgtdEcEz", "UlkIdaseblMFtG9I"], "requestedRegions": ["unkh5Sdk2q87tRSB", "eswVoAIfKB9YAw8y", "T4lP4Juw0xgBAi03"], "teams": [{"UserIDs": ["zTU0LNwrcZbucoek", "EHtxyOzbi0D2jRPR", "v65FfMg5BOfByQ91"], "parties": [{"partyID": "EzGn405g3bHk6MIa", "userIDs": ["M7TqI3qK7HxJAIME", "Scx218VBHIKE5s2L", "Rq8Oi3zok1Hjrldk"]}, {"partyID": "Gc6p2ZM0I8PDt3a2", "userIDs": ["s2RrKq8F5bzKq0ek", "gDimjtG1oZiiskpi", "QZ6GCOnGQGG72GZh"]}, {"partyID": "Ha50w1mbNsbRzN29", "userIDs": ["brUuqwfxdhMxC94l", "jjQuV9sNL1RQ7T0H", "bOAycpM4HVM5TSXW"]}]}, {"UserIDs": ["YGYTDaMPt5OXwW9r", "48JDU6vjY3Fh13bO", "5t1vTcvlieqOmO5r"], "parties": [{"partyID": "51kgcwFCGG6I1CTn", "userIDs": ["eyuaiG0otGUzqfAY", "bwKff33X2HDZISKB", "kNuUJX5sJ332FwqW"]}, {"partyID": "AaB3FpWp1R38Vuza", "userIDs": ["clz1Q7RQehiOUvf7", "2bCIFd1AhQYaIW5L", "ZnUiEgIQu1KaZfBa"]}, {"partyID": "nSOIrL1UYZB69Pu2", "userIDs": ["RNaqIi2LlLa402yq", "acIlJpBsCWPtWUdq", "eowaza1Pirh3cPow"]}]}, {"UserIDs": ["iWjSjgRQXbj7ZIuW", "k2VB93qRVkiGyJdC", "lILNMFttDw9vB1e3"], "parties": [{"partyID": "X1tcj3fHFqxD5DPI", "userIDs": ["7NGI3QltN9bM0nZz", "isrjmNz37Wh0jrWr", "uPimR08SFIGsrdbf"]}, {"partyID": "64fh5jAGRIPTd7g2", "userIDs": ["evkMxUKsFMoMVpT6", "p6Y12ZAihnuL3CVk", "NchfQadzEemVZXHi"]}, {"partyID": "RqyYVJfZ3Q8SKMpT", "userIDs": ["Ds25oTcIfaEJ6qrw", "oCiey1SlhbxBeKCx", "gaUVra1T4rm9wKhq"]}]}], "ticketIDs": ["u1CR7mZ2h4U7pY2B", "0uePiKc36NZYdDJo", "BiP0GxmwUHvdzwOR"], "tieTeamsSessionLifetime": true, "type": "n9OCaDBfs6DOpjIh", "version": 14}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateGameSession' test.out

#- 39 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'c0vu41T91VZlcp1D' \
    > test.out 2>&1
eval_tap $? 39 'DeleteGameSession' test.out

#- 40 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'dnuj95F4kAP1UOwu' \
    --body '{"attributes": {"lOALOY7tWpWkCGja": {}, "LQZaAGzquCt8aS1y": {}, "xApAQhkf7ocRfXiY": {}}, "backfillTicketID": "EQUb3JOz36TbdnND", "clientVersion": "ruylIfiMSCq834Yl", "deployment": "nL0erRyX5GR0nh6K", "fallbackClaimKeys": ["ze33hQjYiX3oKDy7", "KMjzVpRAeJoKBMoD", "S5SPTJRa6lZLog7o"], "inactiveTimeout": 52, "inviteTimeout": 96, "joinability": "aXp4sgUcP8iOEZ7K", "matchPool": "wVA3uNKdSWOpE8nk", "maxPlayers": 64, "minPlayers": 77, "preferredClaimKeys": ["YHU3kniqaM4g6Pjb", "zUFbkXROxQSMoerv", "N9CRbmh8fbdKy2mF"], "requestedRegions": ["YYeqaL1vX4sJedP3", "dpFLBGMm6Xw2HNwo", "ojFlTM0YTdi4eEW4"], "teams": [{"UserIDs": ["RaW8GziLLZi8pMaw", "6HpjzN6SfbvclTwF", "YOYbJ8sLqvaKMqHs"], "parties": [{"partyID": "Q9VD68J9n1wtCdyl", "userIDs": ["daHPr6GUiND7ivD5", "erqOwQ3rrY0FNKin", "7cwPdQdMShjekoNW"]}, {"partyID": "qaWn22eG9duBk9KZ", "userIDs": ["qxfuBBQpoeECcuBY", "sWnC8kK94bLAACm2", "j21l3UrcEJiVuu6Q"]}, {"partyID": "dMk83O4tezyI1fAE", "userIDs": ["TCpS2stb8Jsmh4iQ", "Xo8SpBKOjPNy48uy", "zNfM5nto3mxsAk1c"]}]}, {"UserIDs": ["OcUKXdG0Ai3NaLRG", "nmNPdBdpdDOgI26l", "ynCuAy7bxl72Mel0"], "parties": [{"partyID": "7RekU3vICZCMPhib", "userIDs": ["rSodVDAEbxyZTAtk", "2sY7jProvZe443Jm", "mcxkhD8MjiNypzeR"]}, {"partyID": "QiciQ7aZwXneXW2G", "userIDs": ["L31ceIZ0uuf3dVSx", "iLXqPPlr5VW07e8K", "1AEYzNza7YVOwI4U"]}, {"partyID": "Mlargd0WmJLkVBIB", "userIDs": ["PsTDlF9nuhiBesSt", "XAfFt3kD7GEaMWFV", "0ex3JcWFE1hmGksh"]}]}, {"UserIDs": ["7QgC5I4y2Kzlpaoo", "LAuTTLDWL34Ycv6z", "Qm2pqU7z1mrzSNJW"], "parties": [{"partyID": "dHE5TsHzYovqlMIL", "userIDs": ["VKb9tJo7NF6dGREW", "sMZbv9jnGKjOXxpo", "G8NeTAZfRmruoowG"]}, {"partyID": "tD3s2l6f3ITtFMh5", "userIDs": ["nxls5NqGxUHjfwjK", "WKFGfbZIPlOIGRen", "fgTdnIR7IVZiYtK5"]}, {"partyID": "r9nfXuSn4btkVQtW", "userIDs": ["ZpkJ2VMr4uJF8S00", "M14lBRiUl0vv2OOc", "jW2OHi11O1PuJdqs"]}]}], "ticketIDs": ["nMvB5ogbnUBXB1dq", "XbxGFvk1JA0CZoPh", "muEIXYjhLUXbDeR5"], "tieTeamsSessionLifetime": false, "type": "zvqfZJ9FXO5NVElk", "version": 99}' \
    > test.out 2>&1
eval_tap $? 40 'PatchUpdateGameSession' test.out

#- 41 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'rGoqAO1TbBq74XuJ' \
    --body '{"backfillTicketID": "gFDE4Xg4nnprbOuH"}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateGameSessionBackfillTicketID' test.out

#- 42 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'YCuasochUqAophzI' \
    > test.out 2>&1
eval_tap $? 42 'GameSessionGenerateCode' test.out

#- 43 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'SCkuyVo5G6iphLVc' \
    > test.out 2>&1
eval_tap $? 43 'PublicRevokeGameSessionCode' test.out

#- 44 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'yShK8lQanDA28yQX' \
    --body '{"platformID": "2wroNncom4mVWMtl", "userID": "isHTT9eR8gCOg4lY"}' \
    > test.out 2>&1
eval_tap $? 44 'PublicGameSessionInvite' test.out

#- 45 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '4cb3RFtGe8BuBRnG' \
    > test.out 2>&1
eval_tap $? 45 'JoinGameSession' test.out

#- 46 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZPo9b2QVOblm1TWM' \
    --body '{"leaderID": "iXzDlcHfrHhvSOPa"}' \
    > test.out 2>&1
eval_tap $? 46 'PublicPromoteGameSessionLeader' test.out

#- 47 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'p0hnTwNQqPoLvcif' \
    > test.out 2>&1
eval_tap $? 47 'LeaveGameSession' test.out

#- 48 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'L8F6Q1UpbhgbRd51' \
    > test.out 2>&1
eval_tap $? 48 'PublicGameSessionReject' test.out

#- 49 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'tkBN5gqfBnLPWvQ5' \
    --body '{"additionalMembers": [{"partyID": "yKaJCEHSNBGiXIef", "userIDs": ["QVgaW6IlZrzO8R0l", "AWg9PfJSyIHmD7D4", "l1hvttEIYObbGPeh"]}, {"partyID": "WqYzeIPjzDp8CNgU", "userIDs": ["CNssXRU1UbIB0YW5", "GKjkYPaZxk777QAa", "zEKJivuYAUibHlw9"]}, {"partyID": "DJHpFkLGLwdy5pEk", "userIDs": ["a4UeFyccDvOZVepj", "aFLWlZ0sb5Q0H81N", "hmf1hJxE5Dc8zIs1"]}], "proposedTeams": [{"UserIDs": ["LgAQRo8Z6yHD5dcf", "149JngJDJlyI4E4K", "nAKk9MCWje8ZmjHC"], "parties": [{"partyID": "AyRIMG2L1lFYXO1i", "userIDs": ["876H3gB5Lw1sVtmk", "v74TcYjSdrpMSEkp", "B2eh7X6KUFTzb0ql"]}, {"partyID": "8u8Tvfxvj8aSi2LC", "userIDs": ["iM3lHUwanRDJXheH", "g7JT73rnX0OZybbW", "xFGcDzPYyXo4W5WT"]}, {"partyID": "MyQuOT9bSN6Y4QRu", "userIDs": ["f34BmWpaV1i7PcyS", "9QRImHd7xk7n0hkj", "nz8RUCow65ULyIAV"]}]}, {"UserIDs": ["N9QxE8g8JyYYG0vY", "qvN52yZQat3wNktJ", "MbiL5wKQOydbt2JO"], "parties": [{"partyID": "oMB2RZGY1iypqWPT", "userIDs": ["O0nMereT915OF3eg", "9y5Ng7dk4SchrNK3", "MkrnNsNbPe2ygiCo"]}, {"partyID": "HIqteEQykZbDD4hk", "userIDs": ["ZzdOnZcHHHwCaC8j", "a9vvUuEALbW4rl7m", "hfsyNjUWbrbs3Gza"]}, {"partyID": "uXOboWgEkIky4eKo", "userIDs": ["WxpXBLnK0PbSftCv", "nulkelvz16KNbcR6", "v4z5VaKfnhC7mtZe"]}]}, {"UserIDs": ["XmmuI9D28gI8Ttlh", "UPfcDqbTHqFPNldt", "7QemTD0iKGULFp80"], "parties": [{"partyID": "O4gURBVrD5K2K9tX", "userIDs": ["C7wcPQHGXQ04oD4k", "uf8P59Vr6zz8eqDb", "4YHXYcq9i3KZkwAw"]}, {"partyID": "7I5rbaZwPdQyV7kK", "userIDs": ["3wlpyM8FYZaumhpw", "HfEnupFuF8hzfsBm", "YKbv4KsWwRrCuIBO"]}, {"partyID": "rCNRnFsmGZYwnVtk", "userIDs": ["5RMhw7iVuHBH0jNj", "J8C2FLluse5dxRFl", "8Vb1Bnw7sMhCiyVC"]}]}], "version": 82}' \
    > test.out 2>&1
eval_tap $? 49 'AppendTeamGameSession' test.out

#- 50 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "4O3JNNsNxd9Lv9XD"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicPartyJoinCode' test.out

#- 51 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'kxG9FEwkHoy9GiSA' \
    > test.out 2>&1
eval_tap $? 51 'PublicGetParty' test.out

#- 52 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'ujRA2oQNQv00crnH' \
    --body '{"attributes": {"Snr3rfskxEy1F1KB": {}, "0JtyNR9eqqlMIiyW": {}, "9H6ozz4iSY9Rfc26": {}}, "inactiveTimeout": 28, "inviteTimeout": 61, "joinability": "yMgEYgbVOheu3Xra", "maxPlayers": 27, "minPlayers": 11, "type": "oeLdMATRxryQhOrQ", "version": 96}' \
    > test.out 2>&1
eval_tap $? 52 'PublicUpdateParty' test.out

#- 53 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'OivElzhOpt0efIGf' \
    --body '{"attributes": {"o33MeOH6QMc2U3Us": {}, "VeNfCzc7MeaEOZeo": {}, "7DxFqc1rY33EsPwu": {}}, "inactiveTimeout": 84, "inviteTimeout": 44, "joinability": "A5NC2hDe2UVvFGkX", "maxPlayers": 59, "minPlayers": 9, "type": "pEHi3EZgfHEBoUpj", "version": 36}' \
    > test.out 2>&1
eval_tap $? 53 'PublicPatchUpdateParty' test.out

#- 54 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'ls2ZqqGjYrZkb1xO' \
    > test.out 2>&1
eval_tap $? 54 'PublicGeneratePartyCode' test.out

#- 55 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'jftlTX9DJqDelCI8' \
    > test.out 2>&1
eval_tap $? 55 'PublicRevokePartyCode' test.out

#- 56 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'Jo3BoJbeWZXg6Kbo' \
    --body '{"platformID": "ymrdZ671UHLWzxyb", "userID": "sDnKLnHKRFBWPPBy"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyInvite' test.out

#- 57 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'CFI8iYbnFpgFYOtI' \
    --body '{"leaderID": "SIDil8OAaInF9IB6"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicPromotePartyLeader' test.out

#- 58 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'ArJv3glL19LoPeHu' \
    > test.out 2>&1
eval_tap $? 58 'PublicPartyJoin' test.out

#- 59 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'lTMbqNIGIdgPrHdJ' \
    > test.out 2>&1
eval_tap $? 59 'PublicPartyLeave' test.out

#- 60 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'iQghrPcPBA7snDTC' \
    > test.out 2>&1
eval_tap $? 60 'PublicPartyReject' test.out

#- 61 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'TIbtfxmjArwrHXGk' \
    --userId 'D42iG9lBAHyg1A3i' \
    > test.out 2>&1
eval_tap $? 61 'PublicPartyKick' test.out

#- 62 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"QplCk2gsqypHcRKe": {}, "aDPtz24U4aTXmhn7": {}, "2FNKGdqmRizV8vQF": {}}, "configurationName": "WA8WgNgRsrzU3Z2A", "inactiveTimeout": 68, "inviteTimeout": 33, "joinability": "UNkvFj7rcwGg8mWU", "maxPlayers": 74, "members": [{"ID": "VUiusGEo2vKChPIB", "PlatformID": "644xB7hm8WnsIVf5", "PlatformUserID": "FZDIi5qjeWK5nizX"}, {"ID": "eUOVVvrRCdpQGagh", "PlatformID": "ln6CLOs27NMaOLiX", "PlatformUserID": "gPlFbcAHfIDpaEtx"}, {"ID": "ShzlVsmpQHEOys6h", "PlatformID": "EFhBOv6K8RqGxo8n", "PlatformUserID": "tybpxP6XKt1QU065"}], "minPlayers": 58, "textChat": true, "type": "y4SorpLovKiehlb4"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicCreateParty' test.out

#- 63 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'ugnLQpJgkYG8lKwM' \
    --body '{"1omLk3wsBsikbPy9": {}, "ekeHaViDwlakcOgP": {}, "EBSfvdLprQJXfgIW": {}}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateInsertSessionStorageLeader' test.out

#- 64 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'hAtA1fP7dAOs45Kk' \
    --userId 'YKgucpJoa0CNTZqp' \
    --body '{"mObj5226j4wxJPbb": {}, "ewH06OEEcluh53Ku": {}, "lrfzp37n769UQp0t": {}}' \
    > test.out 2>&1
eval_tap $? 64 'PublicUpdateInsertSessionStorage' test.out

#- 65 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["EhWmFpNUI2RV02zX", "V0AoIxAiL0hbHrt5", "zPJTA6uwc6904DPp"]}' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 66 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'PublicGetPlayerAttributes' test.out

#- 67 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "RVMBdlOrJanokrqW", "data": {"fn5foSpwNxugAwcu": {}, "ixV4sDfozzxq2lTz": {}, "gB4g97wRF469Ds50": {}}, "platforms": [{"name": "9b7YZCJsFPmgHHyA", "userID": "TcL09gQ27M5KoTSa"}, {"name": "MtRf2UfYKYhVktgk", "userID": "xpnWZQNWCAbyApAK"}, {"name": "HnC3iF4dnHKMpvi8", "userID": "P3ugUipa7mmbF69I"}], "roles": ["bwMz7GHHZCgInoce", "UsSXRIXC2IZ75KAg", "LQ34pBm1lH3Yf0q5"]}' \
    > test.out 2>&1
eval_tap $? 67 'PublicStorePlayerAttributes' test.out

#- 68 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'PublicDeletePlayerAttributes' test.out

#- 69 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'QFqV1RyV3jDTbVGi' \
    --orderBy 'ivV35V0CL8sAp9vI' \
    --status 'MIZwgQqWdXPZ2nEJ' \
    > test.out 2>&1
eval_tap $? 69 'PublicQueryMyGameSessions' test.out

#- 70 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'YXlWi341pAwd4ffe' \
    --orderBy 'MVr9zUdGbBc0a2O9' \
    --status '1B3pdYsjvepWdhNv' \
    > test.out 2>&1
eval_tap $? 70 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE