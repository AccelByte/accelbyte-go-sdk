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
echo "1..61"

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
    --body '{"durationDays": 49}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationAlertV1' test.out

#- 8 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 22}' \
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
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 50, "PSNSupportedPlatforms": ["vCaoK9M8ClbVswLR", "QzDz5HSW6I4E9pkB", "wrpIuflDtWCt1Bdr"], "SessionTitle": "B5OhV6P96UQXogsq", "ShouldSync": true, "XboxServiceConfigID": "WROLJODn8clzqpdz", "XboxSessionTemplateName": "JmybN8DA1XpJNY8x", "localizedSessionName": {"Nb5DmVesVyPgdrG9": {}, "8jyZQ2tP3YpxYBay": {}, "9JWhmmbk5TDt9NK5": {}}}, "PSNBaseUrl": "shlVcfmp0doPlCc6", "autoJoin": false, "clientVersion": "trXjGWxEKXqOR3az", "deployment": "gdsLtYFgki4Ff7G4", "dsSource": "87fjvIFwqOT1WECW", "fallbackClaimKeys": ["38jn42C6AsH5Dll4", "7kUzFfyYC42EwFem", "2ZdLONHGyPOPextf"], "inactiveTimeout": 86, "inviteTimeout": 29, "joinability": "eJrPAds6tAJRMpwO", "maxActiveSessions": 8, "maxPlayers": 16, "minPlayers": 58, "name": "ZYFSEgRXyRu4E7J0", "persistent": true, "preferredClaimKeys": ["KkwmlxM44T22wc4h", "9l1ZLNMlmoFMUkgK", "HnrN9HOpu6oktGuM"], "requestedRegions": ["9AmyzGqcYw7r4svt", "ZWZ73fltZcgrKgDS", "6ZAinPd2JgEnJNyZ"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "iVmzUcNwuQ4ZJ2Wu"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateConfigurationTemplateV1' test.out

#- 11 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --name 'dtv87mjwEO3J0VJn' \
    --offset '27' \
    --order 'DRMEiumh5i8jgmRr' \
    --orderBy 'JPYTuTRJ7FeELuuT' \
    > test.out 2>&1
eval_tap $? 11 'AdminGetAllConfigurationTemplatesV1' test.out

#- 12 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'jH6ujTIeqd0Gi7mq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetConfigurationTemplateV1' test.out

#- 13 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'kToM7IKNeTAa4gwj' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 65, "PSNSupportedPlatforms": ["odfVHTQ4HJeKSE11", "wIQcz5XxkSHRFfX9", "anDc1hD9RYgz4xhG"], "SessionTitle": "BNEq8EkcpXcLHC2N", "ShouldSync": false, "XboxServiceConfigID": "uEIq24BDCgHYOMF9", "XboxSessionTemplateName": "ffM4aJ7845x6rAYe", "localizedSessionName": {"ONpFxGjCmZ1wA3Di": {}, "Hy7KdKX4sBJU97Ja": {}, "oOktykG4ic6oMPTx": {}}}, "PSNBaseUrl": "cddr5PYJVIFIIXgc", "autoJoin": true, "clientVersion": "wz8BgbviGRgHQGtT", "deployment": "avKEHjaY3nJztiNx", "dsSource": "JrLWt6lsqTRUA5ET", "fallbackClaimKeys": ["ET74tyudLITK39fT", "OeJKwzCDpBqOMybY", "NwVIMyigWTcos2h3"], "inactiveTimeout": 61, "inviteTimeout": 84, "joinability": "yAMXKpYkvGVeKv9N", "maxActiveSessions": 9, "maxPlayers": 74, "minPlayers": 34, "name": "Z0nw4hNyLWRbCbJU", "persistent": true, "preferredClaimKeys": ["ow8aaTh4ZXXEjgg4", "tUyNUkvHc6n7VsOc", "HS1Fq7BnOxKZzJr5"], "requestedRegions": ["7Eik5HNWgpRNQWV7", "MO0DV9B6tzBriZ8j", "gRSwX5wrnLR5RrdV"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "UJOSjMOyDlKdtRSD"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateConfigurationTemplateV1' test.out

#- 14 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'LXY5Sp9wWgwGGRht' \
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
    --configurationName '043TFl8qvL5uvPdr' \
    --dsPodName 'yyqxYPGS1Uq4VWeC' \
    --fromTime 'sMUhDJILCVjYamiN' \
    --gameMode 'ym2DL7FyIQY11QVI' \
    --isPersistent '6yB4LeOIaMdGknms' \
    --isSoftDeleted 'c9Vh30cAbyQ3YcDL' \
    --joinability 'ACMNe5FfljOLbn0M' \
    --limit '53' \
    --matchPool 'CaVvlj2d6fOXU5WK' \
    --memberID 'gHBZE1GIq6yHmmAx' \
    --offset '24' \
    --order 'TwF1erGSjrBOlFMg' \
    --orderBy 'F1gmJ1vyr2GiWQD0' \
    --sessionID 'teFqmGgr0gKQri5Y' \
    --status 'EzDvEsW1Ezc8hPTZ' \
    --statusV2 'uAOOSMC5csDjBRln' \
    --toTime 'Yh4Kxd5QDIEOllxq' \
    > test.out 2>&1
eval_tap $? 17 'AdminQueryGameSessions' test.out

#- 18 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["M18NOluHlVH6RsLm", "c3VbAithQios3w47", "snczUPlDfVxIfRC5"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteBulkGameSessions' test.out

#- 19 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'SvwuNamK2wwaj4WZ' \
    --namespace $AB_NAMESPACE \
    --sessionId '5H77vj4QMES1DWz0' \
    --statusType 'Evq7B516JpfcAlki' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateGameSessionMember' test.out

#- 20 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'FYsWC2JwBRHeR92s' \
    --key 'HgcP48lasknAkt7L' \
    --leaderID 'w3o9hBwpmbVLk7HF' \
    --limit '42' \
    --memberID 'UCmfXYuVQzyYYyuL' \
    --memberStatus 'cGwtACnxfZHwJM7c' \
    --offset '11' \
    --order 'nsT05GgShdD5LMel' \
    --orderBy 'nMHTHlPguElv7mi2' \
    --partyID 'PrDXEbtY1jwe2lCU' \
    --value 'RvzAAMx5t1B8pmkW' \
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
    --body '{"psn": {"clientId": "P1z6WjCSUv9erpqW", "clientSecret": "7nbiDaxie6uyPTCh", "scope": "PDFsH2Ksbpj5PhkR"}}' \
    > test.out 2>&1
eval_tap $? 22 'AdminUpdatePlatformCredentials' test.out

#- 23 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminDeletePlatformCredentials' test.out

#- 24 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'ObXny8WFbNvpnk0u' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryPlayerAttributes' test.out

#- 25 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId '7qsPws2cugTU8Oe7' \
    > test.out 2>&1
eval_tap $? 25 'AdminGetPlayerAttributes' test.out

#- 26 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"vieSNiwSI4jRSkdm": {}, "D2CVwtvHGQt5MJVh": {}, "ZzUIyZJZCZn4tnVd": {}}, "autoJoin": false, "backfillTicketID": "6amHhdjMYywlOEA4", "clientVersion": "oW1k5DdSTaf1x3xj", "configurationName": "iavRnWm4UhlwPeyV", "deployment": "35OZEPLtiQrd4yQO", "dsSource": "ATqExhh1hC7xrjpS", "fallbackClaimKeys": ["zyFqvuACsHpNn9oW", "0rkfkQblsaksesfQ", "e6TnsON3F2YUHRyO"], "inactiveTimeout": 56, "inviteTimeout": 30, "joinability": "jKfqnZWNntEPmM5Q", "matchPool": "eIXhAtq0AMM7fMir", "maxPlayers": 64, "minPlayers": 76, "preferredClaimKeys": ["0eJPeYsft3RPXJ4f", "kPznCOhjeHfViYWj", "IRXqPQh6FSNWwNpj"], "requestedRegions": ["gbxZclVilYu9SKKi", "jM35WQYbyFlW6Hfx", "YIkvOoe6UzOghv2R"], "serverName": "YkJMYyPTj4mMHKs1", "teams": [{"UserIDs": ["35917p0dF1entKRe", "MKc7GMBL3rU0M6P5", "EkBbg5l41OzaTeFC"], "parties": [{"partyID": "7jCJLcOJADgoDPwu", "userIDs": ["msyTwWU71iR7hmDJ", "pvkVmefvdJEhOJ45", "kmWVVJTxd4XC9P9N"]}, {"partyID": "etvzTypHFqQiDTWz", "userIDs": ["BOEzeSclcree5USY", "uQFqHlJjw5rTfTpQ", "EhyghpEvlNAkan7s"]}, {"partyID": "DFCRb7GgdHvpNWjP", "userIDs": ["5bap7IfowLBK9n9t", "1xjK5Il5EqrUwwFF", "RZtE6Iiw7AdqkFyk"]}]}, {"UserIDs": ["j9xk6BjcSIJdnrrS", "7ErXDVhnVhOBu0A3", "Z8gpLiyOVY3XWHgg"], "parties": [{"partyID": "NL0fWCpLfzfqOsFZ", "userIDs": ["M7HEDtNBJcTvK5cJ", "IJY6I37ILqHqWDOn", "evdsIqm4KmY9g2zX"]}, {"partyID": "keVKayLFutnEcHUQ", "userIDs": ["Y3sAgvN0BZdT0JCe", "e6HMbqvCFsSXAPmw", "j465NM63lbCmUThq"]}, {"partyID": "b95nXPq0Bk1TcCXG", "userIDs": ["Vd1mEmQEqrDDXUSy", "kgVRrWvhLRr3sKeV", "Csc14f5CgyoFUryA"]}]}, {"UserIDs": ["kyiDlUF577ufgcjq", "ihSoQ3RJyAcQ13TV", "DISaC8YdwSCo6kBz"], "parties": [{"partyID": "1Zo1CUHMHZLzK5Ux", "userIDs": ["0DWQzseOAOeNHJo1", "9oJgyRFnxU3N8n1b", "dJZ2ua2WFlemB90T"]}, {"partyID": "kmMlX0dlWcJwKkX4", "userIDs": ["oB4CbFJOblErqUag", "ADfp0qInujMGSJTa", "Fs7kTMUBOydZgxX9"]}, {"partyID": "HWooARUABGXq27F3", "userIDs": ["vGQiEHwdZmGqPwcu", "u7Eh2jpWB8hw8VKg", "BMQefW8H3IpoUL2V"]}]}], "textChat": false, "ticketIDs": ["ee92N1q9sduFtSeB", "W5lVITLi9G6SRsOQ", "cZAjhzjTgsNfrZe5"], "tieTeamsSessionLifetime": true, "type": "nzIsX5vMGFwuICG2"}' \
    > test.out 2>&1
eval_tap $? 26 'CreateGameSession' test.out

#- 27 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"gXDb2wAVTJpuXsNw": {}, "xFJINSUw9y89NekS": {}, "91ZuRacpHNRcOyu5": {}}' \
    > test.out 2>&1
eval_tap $? 27 'PublicQueryGameSessions' test.out

#- 28 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "XrWJDTxSzbAkIW4Z"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicSessionJoinCode' test.out

#- 29 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'NQPfpkI10gc2qM6D' \
    > test.out 2>&1
eval_tap $? 29 'GetGameSessionByPodName' test.out

#- 30 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '06NZmbhesOoHJhGx' \
    > test.out 2>&1
eval_tap $? 30 'GetGameSession' test.out

#- 31 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '47CgnZ2jhKvqKlnv' \
    --body '{"attributes": {"1KHPPca8sL9rfdyW": {}, "sbpWfHabntEyCLGx": {}, "XWKHvosWhOBJkkSR": {}}, "backfillTicketID": "2AuusTOM124odnvL", "clientVersion": "vK4P8dkIZuIgw5Cj", "deployment": "zdKaaltnQh9iDvVT", "fallbackClaimKeys": ["NCtObxDAtuZdLgaH", "IkEu8OPuo1zo2kil", "q5p6Auw4hriVVoRR"], "inactiveTimeout": 48, "inviteTimeout": 51, "joinability": "BAGPRH6uE0NIE1FF", "matchPool": "ORA0tGVNIqK2JkWO", "maxPlayers": 78, "minPlayers": 62, "preferredClaimKeys": ["CYGBMU5bMtYDQBjG", "umQB0lfd3hoSx5cc", "W8meV2qGO1EkqWLd"], "requestedRegions": ["zSfsW6FxuX6IgWKs", "vF7l24mzYfNpBojz", "cyU1xI17HRtxJluH"], "teams": [{"UserIDs": ["0Y2ebPULas58czAQ", "xNTWCbk4ylu5TcM1", "rIk7lQeN9ysSTUi1"], "parties": [{"partyID": "0g2rlTvnNawlWsFk", "userIDs": ["DS2seT0Grc6qUZre", "o2kL0dMVyTlF9OHV", "WBP0REAXZicVoWaL"]}, {"partyID": "tfd35noxaBFMC1S6", "userIDs": ["AAaTbZCMV9ZkqJqI", "OvacYoKLpCA7ZEDi", "JXdQqTwP27FQ7SGV"]}, {"partyID": "YLtwbFsu3TG3CYGi", "userIDs": ["ax7XiZSSdBWD2ttk", "C1OuOIlwEO29LJXH", "3hxbSpPb8lggr8LO"]}]}, {"UserIDs": ["bQ9MrUSO4HLE6emA", "SC5uEfGf3t1bb3JS", "SSvVkOQAUE0xGTmr"], "parties": [{"partyID": "IgXLfLHmeWaRf8Yq", "userIDs": ["pzlxZw5BWdYalgus", "CWppkKd2lcApQbnc", "SOZNKRiQCY6nYasQ"]}, {"partyID": "VDysHxmuCtcVlN4h", "userIDs": ["ZKPS6ZfUfr3JpJ1l", "CliEE8uta7vCGUcC", "ZFccxdgukSbuCrxB"]}, {"partyID": "RoYgEumuk3iiXOt3", "userIDs": ["neKBMgnriOiQwrdz", "I0LVDlk0a9LJrvK3", "ATM89iHB295j4Jkj"]}]}, {"UserIDs": ["EDibEgtth08zrZZI", "v0zEqOI7UeXN47y9", "Af8eOL8oEICKm1PM"], "parties": [{"partyID": "dU2EGbYXc8HHtPxU", "userIDs": ["nS0qFzWstOykGzxg", "a6MYD9vJwqrTiona", "1jPneiIaKPJU3zew"]}, {"partyID": "n5t6B4mHloY9QQfF", "userIDs": ["67SNOPvdDbDtoM7t", "cTAzqP8w3egEDHhZ", "BJ6Dt4VmkwcCeBIw"]}, {"partyID": "yjSyZIDS16qnYjQR", "userIDs": ["TjbWsehhck2Zvknr", "nR1uvil8GLV3DUQx", "FrFmTFeNspx4SZzu"]}]}], "ticketIDs": ["dLlOcTNd63XSZc1S", "cJJjPYQRG3exPB2f", "NsRkWovgsodRkW5v"], "tieTeamsSessionLifetime": true, "type": "cdkz388sazCEG5V1", "version": 51}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateGameSession' test.out

#- 32 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'fJ89fPsgXdGNk5ZR' \
    > test.out 2>&1
eval_tap $? 32 'DeleteGameSession' test.out

#- 33 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'coZ7fAr354IGQYak' \
    --body '{"attributes": {"VjPtjw0qzLVu7hA4": {}, "4RewZtt1bJvAUFyx": {}, "HNPUf5eC7cAfDM28": {}}, "backfillTicketID": "st8TAkyDfmTRZT3o", "clientVersion": "cPUbOetqk0QxQsPd", "deployment": "ELfkLZB0qPEVmA8e", "fallbackClaimKeys": ["s9d7Orebp5SVYl7u", "yB3pN5QTUjCKbCoj", "EsKhoS68CBYAEwrZ"], "inactiveTimeout": 9, "inviteTimeout": 28, "joinability": "hoihXegbDJ7cXono", "matchPool": "xrpOtET9RnDJrK5z", "maxPlayers": 77, "minPlayers": 21, "preferredClaimKeys": ["mYPjx5P2n4DgBMDP", "dd7jPTFmxgY3NgD6", "WepC2s4p9LzEfPzR"], "requestedRegions": ["Y5Wz6QIGNO4szE12", "ALoSpCp1v3btgFvu", "G2rrJFawgSe8cG2l"], "teams": [{"UserIDs": ["gRhhlVz4bCwoiV5i", "PnqGS5twtXhWYPTV", "2rIsigZVYDgsH8HS"], "parties": [{"partyID": "R8N1l3VMCVNA4dpI", "userIDs": ["xe78aACdPNLdwCpG", "c4KWmJlM7voZ4Z3h", "WFXCRRCbUrYZchVT"]}, {"partyID": "xEE6tjmiqFCBydRP", "userIDs": ["daq3nDrB9nd89TkN", "mimkdCDP6hDish8v", "7QU0TLj91a6N9yZG"]}, {"partyID": "oYDwDZCL0udWSKRv", "userIDs": ["HkdzHsATwHZSdiS2", "yCRPtsqEki8kI8hI", "NK1wwfsnLJEl26lg"]}]}, {"UserIDs": ["9yChjFGv79mOAGtV", "GIXdsiGdl99J9P5X", "GB2WqI7j34hHO6QD"], "parties": [{"partyID": "5bKlZOBThEKFLcZK", "userIDs": ["b4cMNXkzzzuDCYgi", "UWORR02B7Z8I6KJH", "71nc0y7kCTjylrJ7"]}, {"partyID": "IGQop8t2oyLUAY1N", "userIDs": ["tw1JGKmXlUyrS9M0", "T7Ab55QkT052WNwR", "QvDlmwbhn8zoBLOR"]}, {"partyID": "IRJ8dPnPGq9ia4Av", "userIDs": ["rRBT0ctmFy1doIjO", "5ORoDOTnt76fxMEP", "nYOmgpgQweEMZUZI"]}]}, {"UserIDs": ["MWT9e2PsjDzoFoUi", "eozhFEOBdhiH9kci", "rcDN4sfkfg85DUMd"], "parties": [{"partyID": "U7kjI41aEgXP4APU", "userIDs": ["FQDO83cZrRq45Z7X", "M8AUwfuiHuenTXdM", "8bqCHpSZK8p90SdH"]}, {"partyID": "xyDey5qScdnswcnj", "userIDs": ["uqmcIIcAdm68ss5c", "zFJhD93s9dsesG8V", "xAwXzImiAMmIkL4Q"]}, {"partyID": "fsgGsgDtLlHL6pRK", "userIDs": ["D0BwNYnZNwKvsXeF", "ylm2zY3814lptIXc", "oCFGNWzY5TpdPRBA"]}]}], "ticketIDs": ["qiga5ctewJkROkuV", "zXKsKCCw4xfDtTK5", "HkPNqTOA7cuxJj7H"], "tieTeamsSessionLifetime": true, "type": "gHw3Mhdp7Du0TPFS", "version": 15}' \
    > test.out 2>&1
eval_tap $? 33 'PatchUpdateGameSession' test.out

#- 34 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'dwb8tIy7ucbJmWsR' \
    --body '{"backfillTicketID": "gByDJRtqDnUGIhaI"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGameSessionBackfillTicketID' test.out

#- 35 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '1DAkRVwTD46oW0wK' \
    > test.out 2>&1
eval_tap $? 35 'GameSessionGenerateCode' test.out

#- 36 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'dMjkZQWORf5wQyDI' \
    > test.out 2>&1
eval_tap $? 36 'PublicRevokeGameSessionCode' test.out

#- 37 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'sJahoBQ6MzaJQC6d' \
    --body '{"platformID": "LDQlEynYCrpQMXw1", "userID": "w4haS3oBWAPPY7mO"}' \
    > test.out 2>&1
eval_tap $? 37 'PublicGameSessionInvite' test.out

#- 38 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'SsCvWEtC0Syd4M18' \
    > test.out 2>&1
eval_tap $? 38 'JoinGameSession' test.out

#- 39 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'nj9IyIgdtDLlqxo4' \
    --body '{"leaderID": "MnAQE3qudKQyuMbw"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicPromoteGameSessionLeader' test.out

#- 40 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'wEY22oeVf0WgG98r' \
    > test.out 2>&1
eval_tap $? 40 'LeaveGameSession' test.out

#- 41 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId '9C2moQ0V471exGi4' \
    > test.out 2>&1
eval_tap $? 41 'PublicGameSessionReject' test.out

#- 42 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'QnTbvPsQu5rvhHwQ' \
    --body '{"additionalMembers": [{"partyID": "wquXnduh8e9Asg3q", "userIDs": ["W8zM4JwFnvAQ5gte", "MVKvBJpZnWtSTh7X", "stF3dJliDHk0lzh4"]}, {"partyID": "mkNeFbFGqAs515F7", "userIDs": ["Xk7I5CHKxT1khfdc", "MGt2U6eroxA3JsVs", "Ih2KzwtqqKupjDmz"]}, {"partyID": "Yp3eqlVtGohcBkag", "userIDs": ["yPuHRY8MRNxRetMq", "EWHuibaS5WGux57O", "8Hrdb5rvh0v9ShoT"]}], "proposedTeams": [{"UserIDs": ["T8eDapsSwFB4FjqP", "nUkIRd8RCdBC8Anz", "rL7NrHpqBfej8UYQ"], "parties": [{"partyID": "wSGguUAGEBkUwYXn", "userIDs": ["p26xTNqXg7w8oV3r", "OgA0HosvQRZsUjV6", "MLxIVFNSxPkql31D"]}, {"partyID": "739gRUCrdV83u6r7", "userIDs": ["YfwSZqN82L11xywV", "xfGimpjnQIVduVTD", "XRkjgQCd3M91DCHZ"]}, {"partyID": "k8PniXxfc3NXhPOJ", "userIDs": ["lXPfQL2GckqRrGHA", "TfTNGKBYuCHtl8bJ", "SxwisCnJohbYyXIx"]}]}, {"UserIDs": ["hw6CfblxyTEnROqW", "FmSB89B65DfFTIem", "SGynUVVDCDyPkig9"], "parties": [{"partyID": "b23nYvbyHnD6gpBe", "userIDs": ["2tiHiLO2IeFdcPLG", "yIA45DkS6ixe6dpz", "rSwfPCHoKHO3zkiJ"]}, {"partyID": "kbKA6CEDVCHiSG0m", "userIDs": ["Tc8KJnqKGoejEoEL", "nIgMiJMtn068kNT7", "EezNLVrESYAqJIRo"]}, {"partyID": "KuWqOJKa0npCoLPa", "userIDs": ["QyVb1avesAuDdlM5", "8FGiTHRLu2FcM9iF", "NyCN93JC4xZBAbuB"]}]}, {"UserIDs": ["ST1mFIbxfCykv3PR", "z6dlx3PUkBqF7QUW", "82eW3s3Zktj39XIy"], "parties": [{"partyID": "YpfrKTKCDJqZd3q0", "userIDs": ["SQvBzjJcTVw6LAd8", "2bEkvHxUR7z8bkdQ", "m5uEl8qJMdrryINa"]}, {"partyID": "skj86R4xPPO21Sss", "userIDs": ["TcIERBSD5obQVSku", "VWBKopItNIKemA7C", "3gL8r6h2VqthHlVV"]}, {"partyID": "uPtpxalcxiQRpn0p", "userIDs": ["9Y3v5BnviageL5tL", "ZPzz3O3YLSP3witM", "wpPBjJTFXvIxf2bv"]}]}], "version": 25}' \
    > test.out 2>&1
eval_tap $? 42 'AppendTeamGameSession' test.out

#- 43 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6aOt0f7JbBEfA45u"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicPartyJoinCode' test.out

#- 44 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'TXzI9oFcuYIbQrTX' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetParty' test.out

#- 45 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'hTUiNxuCFVHbq1vu' \
    --body '{"attributes": {"JLgGOn6clln7HYTr": {}, "ESz33QvAaYKfKRXl": {}, "IACXHrf7BIeTjKhN": {}}, "inactiveTimeout": 60, "inviteTimeout": 68, "joinability": "ztqgS9rWmbmtTmOV", "maxPlayers": 55, "minPlayers": 11, "type": "VuYH71mIbbCVn3rH", "version": 65}' \
    > test.out 2>&1
eval_tap $? 45 'PublicUpdateParty' test.out

#- 46 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'jrSDc4SrHUS5wUhj' \
    --body '{"attributes": {"PHFJtdvHrzYhMcnq": {}, "zPjnX8ZPucPH5KV3": {}, "jQrs84OCG5HGvGbg": {}}, "inactiveTimeout": 99, "inviteTimeout": 23, "joinability": "ydqOKFQAnhn8Yriz", "maxPlayers": 41, "minPlayers": 2, "type": "S2WIDN2tTp0cKDBc", "version": 96}' \
    > test.out 2>&1
eval_tap $? 46 'PublicPatchUpdateParty' test.out

#- 47 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '64qSW9PZGzvbNodR' \
    > test.out 2>&1
eval_tap $? 47 'PublicGeneratePartyCode' test.out

#- 48 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'n8OGvYKx77H9alj7' \
    > test.out 2>&1
eval_tap $? 48 'PublicRevokePartyCode' test.out

#- 49 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'L6py9l1HV3qxphk8' \
    --body '{"platformID": "JK2x15UzAHUQElld", "userID": "NAEVO47zFOVpuduz"}' \
    > test.out 2>&1
eval_tap $? 49 'PublicPartyInvite' test.out

#- 50 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId '2vCZG5jWuN1qBR6N' \
    --body '{"leaderID": "RyYkHtd8VnCC3hLU"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicPromotePartyLeader' test.out

#- 51 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '1HjQctXJRpLBN3kF' \
    > test.out 2>&1
eval_tap $? 51 'PublicPartyJoin' test.out

#- 52 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'bl66KIN2El2E6ERn' \
    > test.out 2>&1
eval_tap $? 52 'PublicPartyLeave' test.out

#- 53 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'MBcHYnpS7kOiqVNa' \
    > test.out 2>&1
eval_tap $? 53 'PublicPartyReject' test.out

#- 54 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'wmhWT6Z7jKYsumGw' \
    --userId 'WwWOLhCujUKXIh5n' \
    > test.out 2>&1
eval_tap $? 54 'PublicPartyKick' test.out

#- 55 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"qxjrvG27LRMxFEzL": {}, "YsNsqelaga3k3QDB": {}, "Sv1i7FQUBb9gzi9d": {}}, "configurationName": "eF4FIVWISeuS8zQd", "inactiveTimeout": 83, "inviteTimeout": 13, "joinability": "CdFNbOFpqYZcBuIJ", "maxPlayers": 43, "members": [{"ID": "5LPaJpEWLlmurFoW", "PlatformID": "1yBJcWGyJoD80M8K", "PlatformUserID": "XOmtrjTy44erq51x"}, {"ID": "3DfkiYw2enCxFN7O", "PlatformID": "EkaYODITAQrVZVMf", "PlatformUserID": "361L2bptW7PwSFAt"}, {"ID": "MGWqwVhA9qCgQ4q0", "PlatformID": "eUY3pA70PD0y12MP", "PlatformUserID": "MqVJal3DRK3YUV85"}], "minPlayers": 68, "textChat": true, "type": "lqObOuXn81ADWjqT"}' \
    > test.out 2>&1
eval_tap $? 55 'PublicCreateParty' test.out

#- 56 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["lFgqbelmJtX9GAun", "5sXREbQZrFFsF5FF", "NQ8zFcgqR3EQcOgD"]}' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 57 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'PublicGetPlayerAttributes' test.out

#- 58 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "hfkZVsP4W9ZfndJO", "data": {"SN5678werVvj1R4t": {}, "hil0cuBucLt8dLQu": {}, "fhS2mHt36sxTZXsd": {}}, "platforms": [{"name": "BVtFgtWhZwovcQc0", "userID": "9YP6xig80OURSlZs"}, {"name": "uHgKGeFneTjGLe28", "userID": "KvaN4BQBgO8xqp9l"}, {"name": "PlfCe3EIsN4ys9Vx", "userID": "kChyapwqQqMjC173"}], "roles": ["5qRjkexxZCBcoLFb", "u1sYeu3zEeCbsFYz", "7D6pMIckGb8bFSsx"]}' \
    > test.out 2>&1
eval_tap $? 58 'PublicStorePlayerAttributes' test.out

#- 59 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'PublicDeletePlayerAttributes' test.out

#- 60 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'J3m6yFL5iFvP0Om5' \
    --orderBy 'SpPIkn7kiUmmH6xT' \
    --status 'R30L5bwRxeK9FTL0' \
    > test.out 2>&1
eval_tap $? 60 'PublicQueryMyGameSessions' test.out

#- 61 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'KT250LcInIDn2gMg' \
    --orderBy 'DxYa84SN3RvgfMwM' \
    --status 'dE7yvmb1j19B5ZDH' \
    > test.out 2>&1
eval_tap $? 61 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE