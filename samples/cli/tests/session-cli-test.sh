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
    --body '{"regionRetryMapping": {"pxvl84MTPVQ2Xqqo": ["AVHLVQlCXfFOKuMP", "vD1ez6GpRJmgH1i8", "d6iLP8eT2WxZBSlX"], "VW9us1R7fZFWPChg": ["zgypirnroiBP7sRc", "pLnUpxg3dCsNnRVu", "8gRO8ohzWWgF8Gtt"], "Tx1jHZ90Ql8MMcZ7": ["tbFoT5KTFFNDy5wJ", "Y11BQkQUAOKG9sFb", "n48ipCtULd0edm0S"]}, "regionURLMapping": ["GWgDiC0wAmTbFRNz", "uk8yCV7rc1Ygnmuk", "bEjUlVQQKMSa5Bno"], "testGameMode": "Zww3SjFz6YgHJeIo", "testRegionURLMapping": ["RDGAMNH5DUe61mMV", "4bPTZXaMPG0lxjyW", "5JAYPyOL32ALQvSh"], "testTargetUserIDs": ["BEBIP3UmyFeNGV3w", "ALPtgNVwlYsqS8Ur", "NeaWlfN05B7l1tl3"]}' \
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
    --body '{"durationDays": 21}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 79}' \
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
    --description 'wGm1uXUT52m4BVtr' \
    --certname 'ZET67FB6kFD9lAhQ' \
    --file 'tmp.dat' \
    --password 'YiYfqQIOe7CLQ5pp' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 66, "PSNSupportedPlatforms": ["Un8wsvF0UlZQRWLx", "bxde0lX80xIGLYZ3", "aRX7IOPuTkGcKzDQ"], "SessionTitle": "rzQOVkCghr8WBn6d", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "R8qJYd24wCDR5Y7r", "XboxServiceConfigID": "VqoQY8zDNHtJhavV", "XboxSessionTemplateName": "eoUVYKlhUMcKk9cx", "XboxTitleID": "yLWLhRIgLFYUJyF1", "localizedSessionName": {"6KEePhNAQtvGXjAW": {}, "r3bJeWqtYOTTw2qj": {}, "QO0jeagrSOvZCdss": {}}}, "PSNBaseUrl": "aafFrtH5Mjnbaywz", "attributes": {"2jpBH2mSp16WHekH": {}, "TFbpD6BhT8vTqnOK": {}, "eguCY0Vp7qc1MR1r": {}}, "autoJoin": true, "clientVersion": "ECoeStqCCDwnnK9R", "deployment": "jM3eH07vbKn8N51X", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "Dj0L64DbjtpdhNi8", "enableSecret": false, "fallbackClaimKeys": ["RBbA3oumnRjv0KNF", "2qRHzmz6iyfkDH4K", "7e7pfnUF9G6jNS7O"], "immutableStorage": false, "inactiveTimeout": 58, "inviteTimeout": 94, "joinability": "2oLQxszXtvCOJ79K", "leaderElectionGracePeriod": 70, "manualRejoin": true, "maxActiveSessions": 36, "maxPlayers": 46, "minPlayers": 9, "name": "12Vn8so2qU6iArZN", "persistent": false, "preferredClaimKeys": ["XE9GWu3bpqAVlNCp", "4MipvlbR89MFGGqP", "gBZg3f9evMmyWZm6"], "requestedRegions": ["1CBrGrgngzNbV5kR", "vdC8w0nqRRoKcfBD", "zW7HXqwWeWdXcgP5"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "YnkFCjwFhXmUcLyH"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --name 'acvUTQzxYuxsbG64' \
    --offset '94' \
    --order 'mfk7sPBWGkrEtLxX' \
    --orderBy 'uCzwh5oyUr48MMYV' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'FCJIB62dqbErkyLz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name '06cMrVqoupekjKuz' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 74, "PSNSupportedPlatforms": ["KONMgaqyZfaTyBjx", "q6Cf2K5mg7scGIaA", "1chuD2H1jn4x60hi"], "SessionTitle": "2aKOoDYKiOCKt5nJ", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "CYeea5LqkLqHdDmo", "XboxServiceConfigID": "OcHjMYQeymXN9OOc", "XboxSessionTemplateName": "QJAtH7BOQd9f8tcA", "XboxTitleID": "i4kS1wlYzJ5CfpBa", "localizedSessionName": {"zUi0411VfYP23J3u": {}, "InTn5CtGyL8xNGcE": {}, "b2puqOLrSBjPjjR8": {}}}, "PSNBaseUrl": "FdSONCHteiUYE8oI", "attributes": {"w4tJmfukB2oIZtIS": {}, "VFIS6R9CvfpBZjwU": {}, "HCi17cwwYdqkiPv6": {}}, "autoJoin": false, "clientVersion": "rOkOz8WEi1KjkaWA", "deployment": "MbeuLugrLoxeGizS", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "Fia9mB1QqkItmBrh", "enableSecret": false, "fallbackClaimKeys": ["rTd1fRlD7ch7346I", "7NFaCFMk4Q6s2OkR", "FwIaClMgSpbCmzJs"], "immutableStorage": false, "inactiveTimeout": 79, "inviteTimeout": 88, "joinability": "GZreD0qKe0TceyFl", "leaderElectionGracePeriod": 3, "manualRejoin": false, "maxActiveSessions": 72, "maxPlayers": 9, "minPlayers": 25, "name": "ob8HUYgzc4NjFM0U", "persistent": false, "preferredClaimKeys": ["Ft9JaAV0JLhvXECe", "wihQ6aaOZSQO1gDO", "vcj6scapQ1iA1hbV"], "requestedRegions": ["d8PAtLfdV9o77Vkb", "OUSv6XtbTN7rlSHS", "jKREE8cSQDERRZ3G"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "0sVySHSLmPOsh9da"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'tFHDEenX0fZwsLNy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'KCwTZH5RUS06hROc' \
    --namespace $AB_NAMESPACE \
    --userId 'nkTXcktVPWijpIGu' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'LZLLNl2BNJ0H1Vrv' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "LsYi7MqJ2AYYR50t"}' \
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
    --configurationName 'OCv0VAJ6dXoAFgMy' \
    --dsPodName 'bTbGQ0sr5X5rRDfD' \
    --fromTime 'qdKN8u44rPvghjIm' \
    --gameMode 'MmitUeiubvFX0MNJ' \
    --isPersistent 'lObQ2RUDmzAZDAyR' \
    --isSoftDeleted '2LQf9njCVoQLBMf4' \
    --joinability 'rN5hSkgmgvZFSMVR' \
    --limit '50' \
    --matchPool 'l8D3yV3jP4SWhHLP' \
    --memberID 'r8GgOekn0e2waSGm' \
    --offset '24' \
    --order 'hFn96pbhb6jDn0Cd' \
    --orderBy 'byuHUKfPTm6mzPA7' \
    --sessionID 'QLeMX9dOowrlKWO1' \
    --status 'sAvFtvnsHZsn0ecS' \
    --statusV2 'kf8I6A7EmilzXkPH' \
    --toTime '6sgRpfK0KlqeSEzY' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"AgPC0PraAy7sx8BS": {}, "sAIHkny9dcFoIP5B": {}, "HVcHH63MeJf6fMOs": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["fwpd7UdjaxfNVhzd", "j4aZiByVwsDItAXQ", "2CJ9vdLAb0bbGDek"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'kG2wQzrvMbbALTfv' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'tAra6SBLx6FIu8fV' \
    --namespace $AB_NAMESPACE \
    --sessionId 'adj3sqfS0q8Y9XnF' \
    --statusType 'iMjfptz8K87CugEl' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '14' \
    --order 'IGnc7FDFG078G41k' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetListNativeSession' test.out

#- 29 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted '9sCZYwyVldQrxMSl' \
    --joinability 'gGr6TOnvEF3sZilI' \
    --key '1rmZmYS0XKynBziA' \
    --leaderID 'V0eFfUJoVi7yHmwJ' \
    --limit '99' \
    --memberID 'svkkfMZsrWyDlYkn' \
    --memberStatus 'NPjGSqK3b41xmgRr' \
    --offset '44' \
    --order 'HvLCrTas8qzwKmTv' \
    --orderBy 'X2AOWJFLvuL1jWm1' \
    --partyID 'UZuRilq7K6qu0ktl' \
    --value 't9Tyk1BWuf1oyNRf' \
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
    --body '{"psn": {"clientId": "XecLJoZBSBnGWcGi", "clientSecret": "lgg07WcsS8MpVkEj", "scope": "NsVX8XTlO8WvmTKn"}}' \
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
    --sessionId '1ugiEl3jqb5f6RMi' \
    > test.out 2>&1
eval_tap $? 33 'AdminReadSessionStorage' test.out

#- 34 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'oWqDWrzvURTsQ5QS' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteUserSessionStorage' test.out

#- 35 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'GWaKPYonRf5XIRuX' \
    --userId 'fm3ymmz0tJTtdgdV' \
    > test.out 2>&1
eval_tap $? 35 'AdminReadUserSessionStorage' test.out

#- 36 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'zMCvDMto6U2H1lGg' \
    > test.out 2>&1
eval_tap $? 36 'AdminQueryPlayerAttributes' test.out

#- 37 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'W6rW4Y8yvNrFuHS3' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerAttributes' test.out

#- 38 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"9h4LGvYKLqhn6WtG": {}, "DpUw8TFLdJXz50ST": {}, "FLo7GW3BT57QiFwk": {}}, "autoJoin": false, "backfillTicketID": "ZXdUvXFcOZDyJ8yq", "clientVersion": "EjwMNvwQUbVx6eGK", "configurationName": "gQitKzUsKd9kf4aB", "deployment": "CJ8SZs0kP0KCAQQ8", "dsSource": "qNggsup2llHXpH5P", "fallbackClaimKeys": ["SN9bwMeY5eZesFzx", "OuegrmSsrpFfkeAg", "xXVDYft0wlbEzem2"], "inactiveTimeout": 61, "inviteTimeout": 73, "joinability": "YN3Cs5W3kgmsglsy", "matchPool": "yC5CJuKD0MswDrb6", "maxPlayers": 8, "minPlayers": 21, "preferredClaimKeys": ["Ry5Zs4VhaIJeEKyN", "xQI0MAupA3kamUcL", "WzCYyjzKyEEXLhYs"], "requestedRegions": ["yii8HIXER12T0AUz", "Xklkazj1P2Yb6fO7", "c07Pnh2nUQeQRGCY"], "serverName": "elv3TpgW2O0aotpW", "teams": [{"UserIDs": ["8P42iZ0jsEs0WksV", "QFgHW3nCbqkrgW8P", "ouLSjYl03vTJQ8I4"], "parties": [{"partyID": "tptofwcI6CZh65aT", "userIDs": ["TCYUVPcUIGSxRyG2", "jZ7CRw6ItOLUREN3", "mK2Jd9SI8PRfJXlF"]}, {"partyID": "Z8WFhHjFIblIwumF", "userIDs": ["cS4htURnk36OZg3u", "m2JQ13L5OVYK1EmH", "MmArnNWW5d1gY1GU"]}, {"partyID": "3950WqDNKqxGhWuC", "userIDs": ["Mg5kYrN5NxJzv1f9", "yrlu8d5cgz6vetUu", "YvOtV2ugfk4weLMA"]}]}, {"UserIDs": ["7yVivdkN7gtvl0Tm", "Q5c6dVV51ZLJPB9c", "HEq2gxmkAwqaFlMH"], "parties": [{"partyID": "NV05Rcx8SyuDbtDA", "userIDs": ["TXTJDfjuBHnIG0Of", "QQVyO3gdtYmqhZD4", "2QqLjiqRLTsYzYmq"]}, {"partyID": "P7Ouq816pnZ2Ya6H", "userIDs": ["zY2EJ6EBCRyHHIOA", "joClMlmapg1KMkZY", "gKNrPvYgAW3x4zqi"]}, {"partyID": "BOzpcpvYvgoIsj9t", "userIDs": ["92BBMxe3SDalhYlW", "OkXCbSv99ckDLC3U", "sE8sqemOCGacTUoE"]}]}, {"UserIDs": ["dwdV934wJhmXLkjc", "TdR8H0FTJhATdBdt", "9x5a50AOG0djQ6eZ"], "parties": [{"partyID": "9uh6ztJhCa0Su7ge", "userIDs": ["nH5UGqJIs7vIICjD", "giyhgnoLiSPPuAkj", "O3lvL0CX2evWGNuy"]}, {"partyID": "0Q63Jsdoa1f33IN2", "userIDs": ["VuD5gearYSwYTI1W", "MtmHdxBaHk7VVWtK", "uycwcfCgyPmBpsI8"]}, {"partyID": "RL8D0y70uuax3kOV", "userIDs": ["kmg27nrdOTVYRRBf", "JEILWnI1KhwQ8QUg", "XNRHPd6ygPGQYzns"]}]}], "textChat": false, "ticketIDs": ["RPmWoPtyAKrXAa0C", "WL2M1LqVsn9gWF8W", "QlygKoSYOZptimum"], "tieTeamsSessionLifetime": true, "type": "BYqLs7bCBOEeWMkl"}' \
    > test.out 2>&1
eval_tap $? 38 'CreateGameSession' test.out

#- 39 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"ufgsSpXg22OHFAEj": {}, "krwxIuyztrEueRel": {}, "ebNAICmY7huXHfK2": {}}' \
    > test.out 2>&1
eval_tap $? 39 'PublicQueryGameSessionsByAttributes' test.out

#- 40 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "fBlVKNzRS2lA7C8X"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicSessionJoinCode' test.out

#- 41 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'Dltn4owlK4YiJYGb' \
    > test.out 2>&1
eval_tap $? 41 'GetGameSessionByPodName' test.out

#- 42 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ICC1KbauDOWbsO54' \
    > test.out 2>&1
eval_tap $? 42 'GetGameSession' test.out

#- 43 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ADMKZ43ZbLZWTd6R' \
    --body '{"attributes": {"9nSeG9ASOHwbMe6V": {}, "GvanS1D8PGAQLVBO": {}, "uawQ9ekLcMCK7Ly0": {}}, "backfillTicketID": "SxebJyppyXhFB1Bl", "clientVersion": "iZht8YX8abapRMa7", "deployment": "lORR749rYzlRfkCR", "fallbackClaimKeys": ["O3fGgdonRBKv4Hil", "KdCvl2aIOwkF8MEu", "yVYu3fZNO8HNUQjp"], "inactiveTimeout": 41, "inviteTimeout": 29, "joinability": "RA9H0igfm5r6LDDC", "matchPool": "hDfDF7LmjNKDQuJ5", "maxPlayers": 36, "minPlayers": 66, "preferredClaimKeys": ["lP7LRi8DtTxtj3yh", "v0F9NODCIpwZ0xu6", "PVGcjJWUyTnlndjL"], "requestedRegions": ["rzfNZQmdhFtYFk9u", "6ggfKzayFWsxa4GK", "6bHEgGHfnHEnunrb"], "teams": [{"UserIDs": ["IsaSil5N2jkXUdtG", "NgquFCBQOyFN0d4L", "TX4rM20bijZCSznC"], "parties": [{"partyID": "wfcnK6lZsF7Stfxt", "userIDs": ["1bCfytkBnLB7RihZ", "5zLpazhq8Xt64nXZ", "IIJnxYTDVtGm5gpo"]}, {"partyID": "SSQfibuxKGgW7b4D", "userIDs": ["BCUEJUyZQsuOX1ad", "SG8d4MqQKiu5oRUH", "dbBStSi68Z1BFYyK"]}, {"partyID": "ojscErUWhjCCGUrR", "userIDs": ["4UqXit8MH90zgWPl", "htazAxmPbNYmZheK", "TkGDGLcjp26ugFFv"]}]}, {"UserIDs": ["5lg6cnSV0cvd0Yqz", "EjDCG4E5PHTI9csu", "oX96hjCshRodv687"], "parties": [{"partyID": "nv5gx6vylbLRNSOn", "userIDs": ["8epUWnrYssh2NJ3u", "P8sviftZWoRGe3fC", "aklWdlmr1907C4NO"]}, {"partyID": "JiSfdgSfUwTNG5Yb", "userIDs": ["RQOgdkQdIMCY42Dy", "FDQzFSfKwuDw5lqL", "SaxdAn0Ri8KsLd0p"]}, {"partyID": "VQ3YtlvRO6g3eWj0", "userIDs": ["tI3zOveS9re4Lfaz", "EQ9oM4Xbn4aJEo0s", "NvwKXBPVnETRpe9u"]}]}, {"UserIDs": ["zmsk6Br71aOH5tO3", "VugCdO2bWBbLZ4Xd", "yRXb4jhlXOdf1dCQ"], "parties": [{"partyID": "0o7MCdPtOGcLYdNb", "userIDs": ["YcgubNMWqPY5MFIf", "x43U7LxLuN94suC4", "flKgVJ1OTilfHni4"]}, {"partyID": "r7yCWxe3856qwgUt", "userIDs": ["8GkuqAHDyp6a1LFN", "p2YPEfLmX4hQ0ys7", "2Hw7VCk5JUlpOS09"]}, {"partyID": "AQLue20s3FJ4dIze", "userIDs": ["MlFNwIcYl3JYKxtk", "pz9hrygsyR09ea0s", "E8JgOaiiK1HqJASU"]}]}], "ticketIDs": ["soiUUr7spDpPs6Rh", "5wxclQAybAhKboLV", "EtparKDEcTLK86Nb"], "tieTeamsSessionLifetime": true, "type": "zF2iaC0uY50sMVmB", "version": 2}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateGameSession' test.out

#- 44 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '22ay4zVMzaBT75Pm' \
    > test.out 2>&1
eval_tap $? 44 'DeleteGameSession' test.out

#- 45 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'uTPk3cnlnrwg6nZS' \
    --body '{"attributes": {"NneA4dISEQskPIGd": {}, "4FvqQUeYpAaCG85W": {}, "hPMulZCL0S7t59Ir": {}}, "backfillTicketID": "iDsus7f2CM2BThyl", "clientVersion": "gudjASwXj36FiMSG", "deployment": "cxozjBrdDlUbQQ46", "fallbackClaimKeys": ["oKsAXLOB8xcVp3su", "uvPgqEihlk2uZbbh", "GQzwu18HaGWoEcRW"], "inactiveTimeout": 98, "inviteTimeout": 92, "joinability": "28oIry3t7TjBxwRw", "matchPool": "BwCxb3cDO00TChbH", "maxPlayers": 86, "minPlayers": 15, "preferredClaimKeys": ["yyoucFcs0iEPVBfk", "2NnQayjvkT4zSQpY", "jeTheKKtxHFOdUJQ"], "requestedRegions": ["bdoEbJkCuTo5uk1p", "VATtDmHXJYEeyZ60", "QuOHORj3hPKQeTcl"], "teams": [{"UserIDs": ["w1MqQXR6TmhyUSBG", "hLH8nNMDbkNIaq9L", "lauqAI33x0ly3PVE"], "parties": [{"partyID": "0cgZRPUcG8otdrMB", "userIDs": ["3CeS92bBdhC0gkZs", "61lnQV6IxzgN2raP", "aj9ZSuxdERS0oodc"]}, {"partyID": "wn18rvE9qONAXYK9", "userIDs": ["u6Z6W1QS9mypwVAA", "y2FlIA9Q7XECPZla", "HPdNuu8nKvAwWCwE"]}, {"partyID": "wj96ZKDjEjjaNxs3", "userIDs": ["dQBkoBb6yWsE18hy", "FQI90skwvIefqvAu", "UTl1o21ipIoQAw1p"]}]}, {"UserIDs": ["vCuBPn63ImHNsFwg", "fiTFwT7HjacoocU6", "7hZmiBy3d6xMigf0"], "parties": [{"partyID": "LQAgoh5RBNRCLJZm", "userIDs": ["glTD4ssH2hKuzwZB", "TE4TR035AkYKu74b", "jrAItAVK8vH2fAsB"]}, {"partyID": "Y3fAfXrYevCxzZRZ", "userIDs": ["HW1hsuSRJDLZNAVG", "PBhHODLi6Mm3XFbR", "xnk4mOvujXo1cujk"]}, {"partyID": "AH9MVPlZl6mdcD5G", "userIDs": ["cRpuIYfUripd3Oc8", "afPpLMVnVbXLtvXA", "VaYVLuv3YNm02t99"]}]}, {"UserIDs": ["lDFqs9kCD2GP4Tc0", "3CHjYTjHh3Nkf4wK", "EDDOFuR9KdSpFRAZ"], "parties": [{"partyID": "JijbB3JgrozuzbP7", "userIDs": ["nH7hvsSMSJMly9H1", "YIaGEICh1b8e51YL", "ixAPu8RKw5XHFSY7"]}, {"partyID": "47ergclUXV09nf2a", "userIDs": ["VCttGOVEvijbbUPR", "CdsqAmlvvjpRkY6q", "1ZvB0iESc8ssm74F"]}, {"partyID": "EIHP8GOiXXNSitGM", "userIDs": ["gdfHjOJNSfMqHjae", "anA7Lllpp89o54z9", "kzLBknnwx52p7H7m"]}]}], "ticketIDs": ["Cr8Z5Vdd5CduU3MJ", "z1Uh503UkmYDpZfB", "9ax3ulOAK0BKqLWE"], "tieTeamsSessionLifetime": true, "type": "Son0uP9oRslSEvrV", "version": 90}' \
    > test.out 2>&1
eval_tap $? 45 'PatchUpdateGameSession' test.out

#- 46 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'QJZXPM3O9NOjBgbL' \
    --body '{"backfillTicketID": "EAG4a2auFKPhtWEo"}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateGameSessionBackfillTicketID' test.out

#- 47 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'AfMpgkTLsMLNsxGZ' \
    > test.out 2>&1
eval_tap $? 47 'GameSessionGenerateCode' test.out

#- 48 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId '4agDxhOnF6fDsELJ' \
    > test.out 2>&1
eval_tap $? 48 'PublicRevokeGameSessionCode' test.out

#- 49 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'rlJleNDkYJBBRv6U' \
    --body '{"platformID": "3cRJOslE33ovqKxc", "userID": "jZiPbMiSoy3BKnYE"}' \
    > test.out 2>&1
eval_tap $? 49 'PublicGameSessionInvite' test.out

#- 50 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'GQdMQs5RRwIpqYze' \
    > test.out 2>&1
eval_tap $? 50 'JoinGameSession' test.out

#- 51 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '6b7Dq6L0fIiUwnCR' \
    --body '{"leaderID": "xb1GIv3gL32k1l7M"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicPromoteGameSessionLeader' test.out

#- 52 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '2sbrEajg6Cq83Qhm' \
    > test.out 2>&1
eval_tap $? 52 'LeaveGameSession' test.out

#- 53 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'jcVxCv2yX9XzWORc' \
    > test.out 2>&1
eval_tap $? 53 'PublicGameSessionReject' test.out

#- 54 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'XQO6Uq97fTLuVkm1' \
    > test.out 2>&1
eval_tap $? 54 'GetSessionServerSecret' test.out

#- 55 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'pSxym0S8MeN4g08B' \
    --body '{"additionalMembers": [{"partyID": "C8wdCKcDlhY3DoU3", "userIDs": ["acdupUnGSA2RFMhD", "Vq2Fo1JQ3yXFCzbD", "oEpRL3YCpw6h5B5d"]}, {"partyID": "1mRA7Z9lnOBjfxOT", "userIDs": ["lm4t1mT150zSVQQU", "cI2YecAMIUdfVE9X", "OUiz0gqQnHRSYQDj"]}, {"partyID": "3pFNU9QwrrvxvMSy", "userIDs": ["8XCncc5V7dIk254b", "dOmr7BoOocegfA2Z", "gQQhiGIzvuW2CEMy"]}], "proposedTeams": [{"UserIDs": ["5QUWloW2fUqYKcNb", "WVJbhkG1eMxWPrIe", "nWdpNouLMlRB67TA"], "parties": [{"partyID": "ZwbEC5DWlvSzmRrA", "userIDs": ["zNscNASH9XCrKXk6", "690VdPR248YyNRhW", "rDXVd8ep0PhNYC7r"]}, {"partyID": "mAQkG1ceJGM4effB", "userIDs": ["7YwH0uBN462plnm6", "b2z36J14UoIOfM46", "uuj4RVEwMaUy5NpY"]}, {"partyID": "BcpsC4G4oqG0XDHk", "userIDs": ["G7AWDpqNBnCPx4kw", "UbJa9Wy2OtS5l76b", "kdtPlaO9UOBKCKdD"]}]}, {"UserIDs": ["zZCSjd1Pkqh2Cbzq", "5VeHCEKNLI2wLkPQ", "bSond7wV6bh6Vom8"], "parties": [{"partyID": "qz8iUtYILQQxYLUz", "userIDs": ["Ms35i3EtdyQsryAp", "EmgsUBzB2xBItRBG", "wyrH4o2qUs8WWL0V"]}, {"partyID": "8sngttGeKK08tQhj", "userIDs": ["DS3ONzfkCHJvjStE", "fBF7YTZjnPBWW0n1", "J4FXNaf4xzZV7Im4"]}, {"partyID": "PP7QYDyDubdzuY3h", "userIDs": ["lUFA8hmBcTGmpOKS", "wIq2V0kmfOehn3w1", "blpFgkKN8UIRN2hm"]}]}, {"UserIDs": ["zNvrq4LVdxppmYG2", "0voLmPPF25hWQ3VB", "VvLhler64Yc9Z90l"], "parties": [{"partyID": "NQcXDMxh1CkQMsuL", "userIDs": ["F2uVo0D7mQfxXc9y", "m76AKKQv4iJi5vYR", "Uk0HbRrFUm9L8puC"]}, {"partyID": "DHenxLDnJ173zdfj", "userIDs": ["Frlgnp7nsbrk2Ccz", "ebpar31m05Ia6oyF", "JviJDvvF58nPSlZK"]}, {"partyID": "V9TE74prCT7Qucbg", "userIDs": ["qIFu6EiU7XtpiMkG", "WDx5UomwaqEVUfju", "OsJqlOudFsI3TjYh"]}]}], "version": 12}' \
    > test.out 2>&1
eval_tap $? 55 'AppendTeamGameSession' test.out

#- 56 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "g3zFm7dBnEzqgHGG"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyJoinCode' test.out

#- 57 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'MUviPkzodLG3NYiO' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetParty' test.out

#- 58 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'OIoREI6to3UWop6v' \
    --body '{"attributes": {"DdRBMFR8l5ysWz3S": {}, "evti0O3KOwAsgj0C": {}, "TamvutsAC4XWrLIB": {}}, "inactiveTimeout": 84, "inviteTimeout": 62, "joinability": "NJkJpuIt4zN7UC1t", "maxPlayers": 77, "minPlayers": 10, "type": "U6XdUSlwOYaXSEIF", "version": 81}' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateParty' test.out

#- 59 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'nwIjY6cwCYsUo5jh' \
    --body '{"attributes": {"8XnYdogr4UTn3J9N": {}, "T9zviuhhuTSI8k3e": {}, "rAlFZ8zIewFNFSoi": {}}, "inactiveTimeout": 4, "inviteTimeout": 86, "joinability": "1dDSvdiBT0HirtVt", "maxPlayers": 19, "minPlayers": 29, "type": "LLYN4gPUhOiO8CRb", "version": 59}' \
    > test.out 2>&1
eval_tap $? 59 'PublicPatchUpdateParty' test.out

#- 60 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '2rg8bCIkPOFR1gUI' \
    > test.out 2>&1
eval_tap $? 60 'PublicGeneratePartyCode' test.out

#- 61 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'hSGTJ2ye8xIEFUi3' \
    > test.out 2>&1
eval_tap $? 61 'PublicRevokePartyCode' test.out

#- 62 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'Ht4V8XBnc70M244u' \
    --body '{"platformID": "6DAHe55mtBmsRAdb", "userID": "qmK21QKFHnzAA3IE"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyInvite' test.out

#- 63 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'muezBZqdLAO3dHUI' \
    --body '{"leaderID": "un8L7ryXOcwDVmYk"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPromotePartyLeader' test.out

#- 64 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'Ddc92wqo8rpoVmeg' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyJoin' test.out

#- 65 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'wSRwQlBmJx29cCAf' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyLeave' test.out

#- 66 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'cF5lOGCKUSS4lZnP' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyReject' test.out

#- 67 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'efNHg1m6nGe0xlme' \
    --userId 'tRxhNsJOnwRpWvY3' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyKick' test.out

#- 68 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"6wuC1aN9mn7mPB07": {}, "6OAJ5xZQgqQkJ8a6": {}, "65hkteUFiG9CxMPg": {}}, "configurationName": "erO2wDiDQ5dxdotp", "inactiveTimeout": 84, "inviteTimeout": 74, "joinability": "eNDhYI5VEAnQEF7C", "maxPlayers": 75, "members": [{"ID": "53eYnIpGaNHOpGJh", "PlatformID": "p2j5AEUfX6UgU7Ex", "PlatformUserID": "yeICDHoO6b7XEnE1"}, {"ID": "WeTGVPnivIoTLh4v", "PlatformID": "hYin8IvkshPj4RAX", "PlatformUserID": "tfva03LicEfgpjFe"}, {"ID": "cOSYzH9keGeoG7yB", "PlatformID": "PAxpgyuf0jwhqbCa", "PlatformUserID": "LWj5Jq9qpb1c7fzH"}], "minPlayers": 70, "textChat": false, "type": "YHnChyZQmDm445Oo"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateParty' test.out

#- 69 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --userId 'cxX4jGMNKlc2K938' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetRecentPlayer' test.out

#- 70 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'bzbtvL75ot2VOhwt' \
    --body '{"RaUacQJDQqwaHAnS": {}, "eLOqwtJua4ViSTKv": {}, "heyqOepNjKPvh2m5": {}}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateInsertSessionStorageLeader' test.out

#- 71 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'nj8nOyze8SSRBRPM' \
    --userId 'et6dWuRmBHDonDTx' \
    --body '{"UroL0rRRDIHrOjn2": {}, "zuiBSCOlQHm7RbzZ": {}, "05vaW5gANpCKrhjh": {}}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateInsertSessionStorage' test.out

#- 72 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["jUszhrZGVjND0vz4", "CNIzsQ9gJnrVYN9P", "z4QwnGkJP7SMOtdR"]}' \
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
    --body '{"crossplayEnabled": true, "currentPlatform": "UKz2IYIqYy6unjJX", "data": {"QTPolCTpDKl5gzT4": {}, "Z3FeaQfnjqiFBimG": {}, "oGchXi4eohV4hbUi": {}}, "platforms": [{"name": "P9MC1AjXOMgRtDSw", "userID": "00QJaKxWjNn2Lst5"}, {"name": "gEqKLYgZ59XUH6K8", "userID": "WJ2f7E0aaGakyNd6"}, {"name": "RSlgnAjr0KyOQl9D", "userID": "wHpNcMwAyTPkrPo3"}], "roles": ["0AklzOnAQRBD1bME", "wgajRUYFxnbR2ASh", "AYZKqsCteSVKtNYJ"]}' \
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
    --order '7LCH0Nnmx7Mg0e6h' \
    --orderBy 'UxE3Q7T7cjtS7mmX' \
    --status 'dyvguGhq5kPQVLdA' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryMyGameSessions' test.out

#- 77 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '2LWfW3dW52u0TOnI' \
    --orderBy 'uCaxEc3eVfYhC2uP' \
    --status '3om5F2CM37KpxSGb' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE