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
echo "1..56"

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

#- 5 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetConfigurationAlertV1' test.out

#- 6 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 78}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateConfigurationAlertV1' test.out

#- 7 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 38}' \
    > test.out 2>&1
eval_tap $? 7 'AdminCreateConfigurationAlertV1' test.out

#- 8 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationAlertV1' test.out

#- 9 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 8, "PSNSupportedPlatforms": ["DYgWb0AzPaaobyOr", "5AUZMT5FASMax2Bn", "fs94SfrIKDqyISlD"], "SessionTitle": "cErOTtMCGcs34zS9", "ShouldSync": true, "XboxServiceConfigID": "7JNZIdpfcR42jIfn", "XboxSessionTemplateName": "GbsqbdkQIq5Pyv9Z"}, "clientVersion": "eE8JUcjNYBdKN2wK", "deployment": "ENHTlWVGAPNO2Es4", "dsSource": "DN5bKl5NiMqg8hkr", "fallbackClaimKeys": ["dfgpIWrXxCBueMnu", "h1DDYn3Tk9iEn8Yy", "D5JlhbwH6TzGEfrX"], "inactiveTimeout": 95, "inviteTimeout": 14, "joinability": "QVw0W26JoI4SbOEM", "maxActiveSessions": 88, "maxPlayers": 82, "minPlayers": 60, "name": "LmIqO4YbF0WrilhC", "persistent": false, "preferredClaimKeys": ["gLWk8xFP7TdgROQf", "HddToAH2tauHjPU3", "zDnfvjmuGN3HO6rw"], "requestedRegions": ["8lRz5nnjdqAlVPhW", "QHMZo46Ke9S9GGJT", "4rseLuVp1lvcReyM"], "textChat": false, "type": "kM1ESPnzySbc7WES"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateConfigurationTemplateV1' test.out

#- 10 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetAllConfigurationTemplatesV1' test.out

#- 11 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'seWAte1whIAtT8MG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetConfigurationTemplateV1' test.out

#- 12 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'c8vvzsiqvYHVyU0O' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 4, "PSNSupportedPlatforms": ["GoCLJHXcg2x8ZGgB", "lammhwAhtwZbsROM", "ebYKb6PuYpkRrxR1"], "SessionTitle": "NAFI3Q05362grrzO", "ShouldSync": false, "XboxServiceConfigID": "nzg2OfUSgqSM7K1U", "XboxSessionTemplateName": "jRn7BKD92jyN3Puj"}, "clientVersion": "w5Pn3XullP9o7orD", "deployment": "mf7VnlPLZuRlPqkg", "dsSource": "ZOBWUm8IgoO36zct", "fallbackClaimKeys": ["nK3yB3pb7tSovNR4", "3gF4lKeJeGj6wdg3", "Wi9yVCwF1NdNl1ta"], "inactiveTimeout": 62, "inviteTimeout": 62, "joinability": "Oc8nmoykrqlvNm61", "maxActiveSessions": 45, "maxPlayers": 11, "minPlayers": 72, "name": "2VXf6m0NG0uoNP3f", "persistent": true, "preferredClaimKeys": ["xfuLeOruOmk4D1rk", "fOuvuYBsKPOzmj9T", "Lgk1ZiMVBX47FLJt"], "requestedRegions": ["J5D1p2t3oa7UhsRX", "9MWu7t8fs8Az1jLe", "KpOIdJXNS056RPI1"], "textChat": false, "type": "ph5w5TEXIBWBau2s"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationTemplateV1' test.out

#- 13 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'tAOH5szx8Aecqw7X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteConfigurationTemplateV1' test.out

#- 14 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminGetDSMCConfiguration' test.out

#- 15 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminSyncDSMCConfiguration' test.out

#- 16 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName '6OJ42dAi6e2M0ik9' \
    --dsPodName '1d3aUUf6hT6Zp9Z2' \
    --fromTime 'i3dArhhYPrrzx8gb' \
    --gameMode 'n3CVHQ01gEcdTHsD' \
    --isPersistent 'Lv2JSnFQTTGFwv7O' \
    --isSoftDeleted 'pDr39chgiIDXTmUb' \
    --joinability 'J1KJLtSFTKRKPXjq' \
    --limit '16' \
    --matchPool 'PxxHecenhI0XcPCZ' \
    --memberID '4ygHh3VJPvhrcPj1' \
    --offset '96' \
    --order 'qBhtiTMuZJaviLbr' \
    --orderBy 'ieJEkHMGnQ2CaEHy' \
    --sessionID 'wazai5KqDODnGiwJ' \
    --status 's5lkKpaSiGTQ2EAQ' \
    --statusV2 'YSqLqD9xfOKKFHkS' \
    --toTime 'DnsGbNEmJQx2JB75' \
    > test.out 2>&1
eval_tap $? 16 'AdminQueryGameSessions' test.out

#- 17 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["6ENgLjGZSCdENcah", "XP1CfWuTNW1PefSn", "KTAEYJ62bvZud4k3"]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteBulkGameSessions' test.out

#- 18 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'LuJ8r6t1yYzmAyZY' \
    --namespace $AB_NAMESPACE \
    --sessionId '2DAoyeYgXNXtpkWE' \
    --statusType 'Hw05iQYnbiBQd2xE' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateGameSessionMember' test.out

#- 19 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'GJlUhg7UOJrONZZW' \
    --key 'WbBBFWgCpUS4aLWR' \
    --leaderID 'DbNpgy4cXxA6JkQe' \
    --limit '32' \
    --memberID '4U80MWVSO3JjhoEL' \
    --memberStatus 'NKrRama7BCTAyqV0' \
    --offset '9' \
    --order 'STxcJSj8Lo2GCQVm' \
    --orderBy 'ZWU8uq9NmJqdLSX1' \
    --partyID 'NfP38bpBKpct275V' \
    --value 'kNVtMUZMzFaFzL1x' \
    > test.out 2>&1
eval_tap $? 19 'AdminQueryParties' test.out

#- 20 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'Nc5BwGp51VxJhvry' \
    > test.out 2>&1
eval_tap $? 20 'AdminQueryPlayerAttributes' test.out

#- 21 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'RM99LuLtiJ5d904B' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerAttributes' test.out

#- 22 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"bWPyyvWNq7VHuJZr": {}, "DEVabXqriZR3uc6i": {}, "SgH3SCKcQAh0HuPu": {}}, "backfillTicketID": "hWUcfB00HVOl2rJk", "clientVersion": "YLAGKH3gDBQhF0y6", "configurationName": "XEsLH1NN62mzmoP4", "deployment": "R9BdD5B5OsrT8ICj", "dsSource": "gGDiMbvleLO01pVU", "fallbackClaimKeys": ["3BawIhNuxy7Hjr3I", "6v6zxqJTanPUNBWc", "3iFXKAtCZNnvtZbe"], "inactiveTimeout": 16, "inviteTimeout": 11, "joinability": "DCFFNKrFWJgYtFSG", "matchPool": "Hy2wVOyPf6nhr5Ur", "maxPlayers": 55, "minPlayers": 24, "preferredClaimKeys": ["BhAKgCMiS6bBVEcW", "GDfsFaZ1K7PPea6w", "5zaeeNDk07CbIbDM"], "requestedRegions": ["30RqrO3929QE5vs9", "rLREKDMkwymFjgkX", "05xW3gFyz33rO4KP"], "serverName": "lKWST8oDldv10GkN", "teams": [{"UserIDs": ["3TzqLO4sxpC4C4qj", "DpU8vL62NEDm3EgJ", "Fv7eDw7tRTFi24rW"], "parties": [{"partyID": "eIbPG1KyjjzeoCAp", "userIDs": ["ez9jDLzeHQRUMmNm", "7XO37W3g7p7093Y6", "Weo1Xtqju0s2R3Tj"]}, {"partyID": "yhqMm2vaFGm8445K", "userIDs": ["45m0f0EmQuHAqj9I", "XnLyxnxewyp2oNUg", "Ir6UCvMxiDM2lULd"]}, {"partyID": "KJD7cZYR0GeLRu3A", "userIDs": ["kLTBVpABgvBoyM7s", "sWBsi7otCvUhe0Om", "6fTNpOMjTOJx0cjl"]}]}, {"UserIDs": ["A8ogk1VVtvOpFojL", "xco2N35hUOZOQiLC", "FOaHFhowr3AKAh61"], "parties": [{"partyID": "Z7OgmcJqMdWc1Ycj", "userIDs": ["0I5bX7WMakc2KJgN", "SzqbwCV8qCf09Nkl", "gasqVPnpa5AZ6ua4"]}, {"partyID": "AXB6fh68R4NPKUBR", "userIDs": ["BuBKNlbBGLzKXXn6", "Sf6RenCLcOt7zJGs", "Z7tBPxWNIheJO4Un"]}, {"partyID": "vh5OwgwSCy5aHfIM", "userIDs": ["pjbwU4gTxBpQkjtQ", "Vx1G1m0z5i0ft3Id", "SCw48ojpNqhvmq0x"]}]}, {"UserIDs": ["mBcTGVrjvH3QJGGu", "Bpzq0LmyOXk111GG", "1yNl1zDPARKdFNie"], "parties": [{"partyID": "o6Y1j2BpNmlRxYPh", "userIDs": ["mCL9UwC8IAUsQQ6T", "sRYtvi3YQvCyg7XU", "0mtP8rbS3Wugpjpv"]}, {"partyID": "5q47jVPGu3ukI64F", "userIDs": ["Lvb1abFll7okMztW", "Jw6sAMN6yc2tlz4E", "1Ign3PxQWnwJyK3Y"]}, {"partyID": "73stc16PILB5DbhO", "userIDs": ["rNd55fBD5qQmIlYf", "bmM09n4Wkt1h5bYl", "Zv8tCU0OE1W6hPTx"]}]}], "textChat": true, "ticketIDs": ["ecDG4t7dp1Oyjnal", "YKuOcnYAnWWiSFXd", "22Wtl5tk8x7H0FLd"], "type": "15bEWledeDaqWlNj"}' \
    > test.out 2>&1
eval_tap $? 22 'CreateGameSession' test.out

#- 23 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"YqXBjAMvsqje6KJE": {}, "tIhPe07ct6Q9Ijsg": {}, "D2BHcIOekuk0mw1m": {}}' \
    > test.out 2>&1
eval_tap $? 23 'PublicQueryGameSessions' test.out

#- 24 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "UUf6cG2x5eneFN4h"}' \
    > test.out 2>&1
eval_tap $? 24 'PublicSessionJoinCode' test.out

#- 25 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'thjCUBlBgvENq8WK' \
    > test.out 2>&1
eval_tap $? 25 'GetGameSessionByPodName' test.out

#- 26 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'tQgy8twmu7pnl2iC' \
    > test.out 2>&1
eval_tap $? 26 'GetGameSession' test.out

#- 27 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'wfHSf8ysEXKm54nz' \
    --body '{"attributes": {"cp8EtKni11WwPOwW": {}, "XL4wai3tGcoCCRMb": {}, "yfKnGUpixy6wJjgm": {}}, "backfillTicketID": "EvlMYGy89TXgJK5q", "clientVersion": "18aRE609KM7o8ELV", "deployment": "sQZ5xBu7govYmFNS", "fallbackClaimKeys": ["Vbb3euZWfe4YFuRy", "sLRr5vWBsOH40PPU", "pMz7lUBhCAOi6ME0"], "inactiveTimeout": 89, "inviteTimeout": 82, "joinability": "NZ3fLdC3CSfhXo88", "matchPool": "UZjLDTPZJixw9vus", "maxPlayers": 26, "minPlayers": 68, "preferredClaimKeys": ["NX0v9UgDQVtgMEo5", "RSnkVPCZdXJH9mmK", "HAl7EzhGqbDoCEEX"], "requestedRegions": ["9pIuegttNtwi6RAT", "5zlpT5cByikSbhPZ", "4l4C6boy7WVjFKv7"], "teams": [{"UserIDs": ["FCUF9pzbHifVQzPM", "EiPiXy6jgPRZZafo", "0kiHdLnL7xUDHPPv"], "parties": [{"partyID": "JANBzDeusNwLXXgB", "userIDs": ["QY95c8MKEimo9XIv", "mjYiLlA8YxuvoHBm", "LQVZ5YqTOJ66o2tx"]}, {"partyID": "65DrTsWOl3Bhu79T", "userIDs": ["GGv7NZScYzgVIDQL", "5ZnhF4EQ3pDucaNM", "p23tznUPasUQOOaR"]}, {"partyID": "Qau8Jc8zmI14gVfd", "userIDs": ["JjHSyo9lzHppCTd2", "WS5RxdJguWyblslH", "3CwdZ2dJhPj1OXtS"]}]}, {"UserIDs": ["HPm8edeNBAzs6a9j", "e3Q61XOhsfA4fY34", "XYBm0u30ri4ISmgz"], "parties": [{"partyID": "UiQKHF0AY7Uxqmpk", "userIDs": ["CnhsafUAR3asmxxZ", "paPs4kBQa4JFXeCd", "ADOIiGzZGWWUENnH"]}, {"partyID": "OwW2yNNsl5OLuuHf", "userIDs": ["mFlzjGwK1ysIn3eJ", "OMloSloGa6gpjJYr", "NnYLsfzJHqZUCtHv"]}, {"partyID": "afxBTZVH5TdCL204", "userIDs": ["0zWXAz9RGr8AMcyG", "v0kswYyUB6aE4FDd", "1WjSPr2VctrTD2t5"]}]}, {"UserIDs": ["bqs7883u2kLuGxul", "XIGKoZk32ThInr0b", "YzJg4qWQ6h7Jvii4"], "parties": [{"partyID": "szXGdGpuaKk4O6il", "userIDs": ["Tt4nPCsuumfZSH13", "oqjLcUsQMnvOW44r", "h6M8hrqgOkYKP1zJ"]}, {"partyID": "3ZzYHXV5kOBeNZZC", "userIDs": ["yoOkFcNnRR9sSMta", "eyrfpnKxyE4aJYJU", "DNrNKGVsevZ1lMjw"]}, {"partyID": "OapoJZOIFs0kjyy0", "userIDs": ["Xwkgn4gBTMFg9PDW", "or3K07YpHn4X9VJU", "v2KEkJsxPU8AvK2m"]}]}], "ticketIDs": ["8VjZUKMdr91uXaXi", "RQWXSUeJdft0z7s4", "sbrRz0eBbXCHq5CX"], "type": "RgqzEeZqavaaWoQC", "version": 3}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateGameSession' test.out

#- 28 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'P5WV1gNzVHZk0SNa' \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameSession' test.out

#- 29 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'KQz1Q8vSdktlocFl' \
    --body '{"attributes": {"U9QyyC3KJEb65JES": {}, "4ff6d0auFvjjRJ6D": {}, "ByfhVCr3NI6ekobU": {}}, "backfillTicketID": "wyv5MXgVMfIoCLMb", "clientVersion": "dsD4lE9JzVsPEOl1", "deployment": "SKiIfl5Lxt7412aJ", "fallbackClaimKeys": ["Zz5GXmffSR5bvkNb", "WbkGkFe1KXFFE7OQ", "BC5jCv0Mqffk2FrK"], "inactiveTimeout": 14, "inviteTimeout": 64, "joinability": "pbBEtCVd8vWQ1US7", "matchPool": "iAOEPJMev5GfLSlc", "maxPlayers": 28, "minPlayers": 10, "preferredClaimKeys": ["MoV9u4U0tVTL5SkT", "7bzB2cX3mY5DkWos", "Wsy0VbWA9s0j3XDo"], "requestedRegions": ["1GoyKVcAOBUeubC2", "crrgncqtFHPXVinK", "yROxSwSqF8UBrSyX"], "teams": [{"UserIDs": ["QXqLrNkxKlgsTjsA", "n5wNWnaLxYZTgVFe", "Xv4rOYmjbxbjKZV3"], "parties": [{"partyID": "bzZ8FaAzRCDFkvn2", "userIDs": ["1V6qczse5WY7BnBT", "XesYNnv7qXGltDmP", "ZNXsAfyCgexFYZhc"]}, {"partyID": "yjAIAU7ZJIYJablH", "userIDs": ["BywiMX9OrQo2aX9T", "FUuxqiMjakKjNVwD", "kyQ1JWOPvnmIbW33"]}, {"partyID": "pXRnhGeIJHVz9Onr", "userIDs": ["D8IRRzTTGw2ZGrz5", "VaGBJHu3zJJpJmlo", "lJtGhHx1U6Q0O8u1"]}]}, {"UserIDs": ["MZniIAJdKUVLGhEZ", "WhVXTzPYqkGcxgYP", "f3FayraPK6ELWLeB"], "parties": [{"partyID": "ILiZsT5WVTc2788N", "userIDs": ["PyhBOfPb7u1kSany", "caMhmVE6YkAt5oFP", "49LJMg0rZusEH6Ww"]}, {"partyID": "E67nPCk5JrfqYShi", "userIDs": ["aEOjpZ0WXQHoYrIY", "fK2LpIQdmyxEV4Tm", "lDiWSmygboTapbHL"]}, {"partyID": "7uD85n2Skkmb2guA", "userIDs": ["1Ga6QaWDpu3vxFZx", "trGrsp35Tl4xqPy2", "nl5Eu4YU0ze5uPBa"]}]}, {"UserIDs": ["bRR7XZnWh2qAXCka", "7Ngk5MR5Y37aJ8xC", "NXZA0l3YmGNLrnYW"], "parties": [{"partyID": "c1HIjx5anCUR1b9O", "userIDs": ["moJz4qUgmGqHSgzn", "giGVwcIeox2qDwlm", "Nh6G2AK1DAtcKSVl"]}, {"partyID": "LC7qjMqqkfNxuAF1", "userIDs": ["5A60iW4liB8RbnPV", "75QXoaH993MEBzbT", "Arv9n2D6mp9l9NyW"]}, {"partyID": "Sbr4SmBFmPkvRUGG", "userIDs": ["sAtnmEXRqWK6ER52", "B99ag2twM7j4avym", "dhzTXajEyX7mfPU4"]}]}], "ticketIDs": ["xfk2bxUtaOWTmaaW", "Yw7JyOVEiepajTEj", "IGGGFnq19pmvBrKf"], "type": "HrieC2DJAO9t568j", "version": 4}' \
    > test.out 2>&1
eval_tap $? 29 'PatchUpdateGameSession' test.out

#- 30 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'V0vXQ16hxNenUbVd' \
    --body '{"backfillTicketID": "nelNK4SMjQLp2px8"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateGameSessionBackfillTicketID' test.out

#- 31 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'HSatInni1fFgplfD' \
    > test.out 2>&1
eval_tap $? 31 'GameSessionGenerateCode' test.out

#- 32 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'FzqZ8smXePnN2HEW' \
    > test.out 2>&1
eval_tap $? 32 'PublicRevokeGameSessionCode' test.out

#- 33 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'nntBIXu1asdFhp1N' \
    --body '{"platformID": "JjPUdYIraVipo0DP", "userID": "iTrhS3yiCtJC3i9x"}' \
    > test.out 2>&1
eval_tap $? 33 'PublicGameSessionInvite' test.out

#- 34 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'SZc3Jdhtjrl92jVh' \
    > test.out 2>&1
eval_tap $? 34 'JoinGameSession' test.out

#- 35 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZhRiNCr1HROTySBU' \
    > test.out 2>&1
eval_tap $? 35 'LeaveGameSession' test.out

#- 36 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'lBlnbMAx9RaRRY4I' \
    > test.out 2>&1
eval_tap $? 36 'PublicGameSessionReject' test.out

#- 37 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'MtsRoz6b0FWM7b97' \
    --body '{"additionalMembers": [{"partyID": "PTCjqOLo5BeDzJXB", "userIDs": ["dBtN7Xe1N0YFEMnd", "yrLFHNnB2dF1l28W", "9zLuH4QgVDuCDK8P"]}, {"partyID": "hzKIw3lIfnqBpCmz", "userIDs": ["4BuK0WRy9MdyH1K6", "kNWKip3rrlUxoAGQ", "Myqr50nS9v39bfJg"]}, {"partyID": "Qk2M7JKIpbHcCvoN", "userIDs": ["Md6MHsTHfrL0Vw0s", "XvkhJLAtBYAVWRIR", "fCadQRZn4Rxs35vx"]}], "proposedTeams": [{"UserIDs": ["sH9y4uNCNQ5xZ57f", "xasp9NggfO9ApOfz", "UfOgBV4x2LjMfK5t"], "parties": [{"partyID": "5hrkkz7rIMSRS6n9", "userIDs": ["SA07VpOU2j0tjCrG", "QocAqnpVDzwBa29z", "ca2RlPbcBsuCsDL1"]}, {"partyID": "zfxxhQpbMKz82qV2", "userIDs": ["PI5G8X9S2ft6W4s2", "BBLcErZ9pwxR73ng", "wOdSLYMdKYTMNLRZ"]}, {"partyID": "FCwvPIZifUE0CPDM", "userIDs": ["JDcnwy2WmzMZrv3t", "PaqK749eaNr0Q4ca", "UoKWjTjdK5PNBgvR"]}]}, {"UserIDs": ["rOpLNdHpiiptNgnM", "uClk3IoApjBYnuRQ", "K1mxowQv2RFGWgmL"], "parties": [{"partyID": "QtUKXaGR6pu1YSve", "userIDs": ["dvZP29c9UnEy6fyg", "4yTs7GQwulqV4sTR", "qWqHDoctR2ITeTX1"]}, {"partyID": "OHdkWf58dHhoguSg", "userIDs": ["iZjSvuLVbkipE93e", "HDmZj4al9YvyvNue", "8gwwEX69o32dUj5b"]}, {"partyID": "DkwVKoUBpNMsgYN3", "userIDs": ["ST6B4NPi4wKszU3x", "MRbykNGFxK280UOn", "WAeMAzsJx00LUJrf"]}]}, {"UserIDs": ["JnwcUKO6Y7CTKEKU", "eXaNKhvudTFLincW", "3LfolK9GOVgKMfKU"], "parties": [{"partyID": "KWWFqvEW6WLvPOTC", "userIDs": ["C0kKcTQAt0P0fl5N", "ne7Mj1V24YVDZEK6", "mTSXwV5j4FuBYQFO"]}, {"partyID": "Vznwi5GXoeNLAe1o", "userIDs": ["ml4x9IGnNF4mpgT4", "Nmq1J5jyr8ALE0Ox", "HPBYRiHNYW6y3Onp"]}, {"partyID": "QSFFnPgBEHg8ulcI", "userIDs": ["zV08XYnWc8BqJz4N", "SHEVwsWUBTIKRJew", "f9D3nGFeY7BjIxYw"]}]}], "version": 77}' \
    > test.out 2>&1
eval_tap $? 37 'AppendTeamGameSession' test.out

#- 38 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "LZ9t3tOa7WW9eJG8"}' \
    > test.out 2>&1
eval_tap $? 38 'PublicPartyJoinCode' test.out

#- 39 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'bNvX8yuuprt07BsU' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetParty' test.out

#- 40 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'SVmczHkkb8qK7uIB' \
    --body '{"attributes": {"2FI96YxCYo4jOKmZ": {}, "93lArADRT7YYLjQL": {}, "MGwTHsOQaAwVGRjH": {}}, "inactiveTimeout": 49, "inviteTimeout": 94, "joinability": "ihlu3EGKXd9FcMP2", "maxPlayers": 22, "minPlayers": 19, "type": "tqBC9oojIwXF1zeb", "version": 8}' \
    > test.out 2>&1
eval_tap $? 40 'PublicUpdateParty' test.out

#- 41 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'D1feKnkkNSIX9Af6' \
    --body '{"attributes": {"8jYTWSY6jGz2NXJM": {}, "r5xnMJ12c5pUS1ao": {}, "6KcMeBvs3WviQaA0": {}}, "inactiveTimeout": 29, "inviteTimeout": 53, "joinability": "uGE06wAZEWpOVuv6", "maxPlayers": 20, "minPlayers": 39, "type": "dJkpMdaeIlJbDUnJ", "version": 75}' \
    > test.out 2>&1
eval_tap $? 41 'PublicPatchUpdateParty' test.out

#- 42 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 't7WWceo5hK09O9fp' \
    > test.out 2>&1
eval_tap $? 42 'PublicGeneratePartyCode' test.out

#- 43 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'wUEyEUo3lK6wtjGF' \
    > test.out 2>&1
eval_tap $? 43 'PublicRevokePartyCode' test.out

#- 44 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'nQIuNnwP0SMx2cpE' \
    --body '{"platformID": "j1LaBT8dWtomtHkR", "userID": "v5eRi4xEEML4FDIk"}' \
    > test.out 2>&1
eval_tap $? 44 'PublicPartyInvite' test.out

#- 45 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId '3pxP6Res0z9DbuZ6' \
    --body '{"leaderID": "nQKxoU4exF2D8c97"}' \
    > test.out 2>&1
eval_tap $? 45 'PublicPromotePartyLeader' test.out

#- 46 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'prwuebd1pDnVx88o' \
    > test.out 2>&1
eval_tap $? 46 'PublicPartyJoin' test.out

#- 47 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'N3YqyXHF73fLSRjq' \
    > test.out 2>&1
eval_tap $? 47 'PublicPartyLeave' test.out

#- 48 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'Zgb2RzLoS6WGUmHS' \
    > test.out 2>&1
eval_tap $? 48 'PublicPartyReject' test.out

#- 49 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'GlGyBzDDZqfCCdCE' \
    --userId 'fZCmZybb2dHsGBge' \
    > test.out 2>&1
eval_tap $? 49 'PublicPartyKick' test.out

#- 50 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"vxF4a1iLWmXhAVUu": {}, "9RDThN67j0Pgqr4Q": {}, "XL4bXWeKfD8TseAx": {}}, "configurationName": "lVI5MBdITXCZ9qXh", "inactiveTimeout": 69, "inviteTimeout": 1, "joinability": "YgASqsgUoN4At9Ty", "maxPlayers": 13, "members": [{"ID": "drTYjDt53kLIgPQy", "PlatformID": "9h0pRmGoqYR9aVaC", "PlatformUserID": "SksyuYopp5ZAhovE"}, {"ID": "vMG2M2VDnNAPa0Y2", "PlatformID": "nEOGHdmL3JwtKuX2", "PlatformUserID": "FpaX18IBYQml2ueb"}, {"ID": "CHjW08hUUbTmq581", "PlatformID": "kC3PlyZE8YtXaVL1", "PlatformUserID": "e0jBoEySkAjivUFD"}], "minPlayers": 30, "textChat": false, "type": "cIht4ZuRpkRTl1ow"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicCreateParty' test.out

#- 51 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["Kjpb1T5vJQIvd444", "I0YwiyojlADbFgi4", "U5IznkdjghRMUxXS"]}' \
    > test.out 2>&1
eval_tap $? 51 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 52 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'PublicGetPlayerAttributes' test.out

#- 53 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "Wu233XDix9hqGrJr", "data": {"JzFwTfkkE0nQVsNI": {}, "N4wLKY7bArT5V253": {}, "1DJpmI8zheNrHTnN": {}}, "platforms": [{"name": "CXCgsxItOPAlHPFS", "userID": "Ijly1bZCkEyjhfVg"}, {"name": "BOSCHnng3nb9y2Ra", "userID": "HwI23eGWyKbBR39V"}, {"name": "eR84EUoAmB0Czq0G", "userID": "TwrQfvi0jq9kZdrP"}], "roles": ["p9bqGspdKQKhpehx", "ppekhRqonj6n7X9S", "YCnb5tSGdHnwKYXg"]}' \
    > test.out 2>&1
eval_tap $? 53 'PublicStorePlayerAttributes' test.out

#- 54 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'PublicDeletePlayerAttributes' test.out

#- 55 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'QIflpSNjVQLFIHRZ' \
    --orderBy 'b0Dl273WZ2YnRydb' \
    --status 'fErYf5VExh5eEZNr' \
    > test.out 2>&1
eval_tap $? 55 'PublicQueryMyGameSessions' test.out

#- 56 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'MyozA1kAx4QMRojN' \
    --orderBy 'O33nAeKjKywJYUuO' \
    --status 'g6QqmNagAwElhCMh' \
    > test.out 2>&1
eval_tap $? 56 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE