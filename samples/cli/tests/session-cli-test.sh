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
echo "1..52"

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
    --body '{"durationDays": 52}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateConfigurationAlertV1' test.out

#- 7 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 12}' \
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
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 39, "SessionTitle": "YIMo2hYC2dqwoCC9", "ShouldSync": true, "XboxServiceConfigID": "UjEC2P8RWNLJYjyk", "XboxSessionTemplateName": "5ZOAQf3pkVvzhs17"}, "clientVersion": "CCiJIcqN2GBUXwJk", "deployment": "TUeXKSdEzFMerd2W", "dsSource": "RDvAxG3B6Pb23H71", "fallbackClaimKeys": ["KHxmeJIHyfLpcbWh", "yp2rXQafq6d6yZlc", "WVH4iYAVHLuNweBM"], "inactiveTimeout": 28, "inviteTimeout": 15, "joinability": "2SQto2IVN1ZYA8FD", "maxPlayers": 99, "minPlayers": 81, "name": "m3tUhwqpwCabRlrh", "persistent": false, "preferredClaimKeys": ["Ufjh1X14ck1DlsNC", "fR1xa1MYSgfL4KTB", "UIBf3qYn0wGrMqRU"], "requestedRegions": ["Lpkmqn1JGctGYv6a", "soahBdVNPCRgv6Uf", "iHedAXEFtNn1XerH"], "textChat": false, "type": "SXrBqWLYKA7AOCG8"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateConfigurationTemplateV1' test.out

#- 10 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetAllConfigurationTemplatesV1' test.out

#- 11 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'YTfgAxVy56ypdIdh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetConfigurationTemplateV1' test.out

#- 12 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'Y7loSVGeFEtpZjCR' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 92, "SessionTitle": "XMlznEg0O1MvQGz4", "ShouldSync": true, "XboxServiceConfigID": "VeWgQbe6k4I3rtF1", "XboxSessionTemplateName": "wRcL06UyPbPphuSE"}, "clientVersion": "KolAtN6hg2bi1ebx", "deployment": "zqTxiw3jClYNxxeP", "dsSource": "YACpnlY8HKXm9wdt", "fallbackClaimKeys": ["mxjCT0zvoUllFpnA", "AdoXoYwl9y5BUt9X", "Sg54cGNNysfulEWC"], "inactiveTimeout": 79, "inviteTimeout": 86, "joinability": "Jsq9x8QKo7vECUE5", "maxPlayers": 69, "minPlayers": 33, "name": "99dosAj5tEbt8hrZ", "persistent": false, "preferredClaimKeys": ["TeYyTIEJ5Srcce52", "lVt8pAgEhQQ4mCSV", "o2sGuAaKsmPPBLGz"], "requestedRegions": ["uJ2XzWLUifXwk6z7", "y8omyv9Sw5A1b9hi", "jyzBzhgTmZlKL1Pm"], "textChat": true, "type": "AmK3heYW0fYIC46c"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationTemplateV1' test.out

#- 13 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'N5AAppeSc9fcblcF' \
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
    --configurationName 'mUhki9rMYhGtcEK8' \
    --dsPodName 'sLMvx6NJLUm4w5RG' \
    --fromTime 'IDPOkdcbRaEyfb7g' \
    --gameMode '4NJceiX1RFirEzmJ' \
    --isPersistent 'vE2a4ZvmbLG9EGQY' \
    --isSoftDeleted 'YQETzYtYkLEHBVLG' \
    --joinability 'VSti4lBDNAGivqkR' \
    --limit '76' \
    --matchPool '5nnIFGRFiJjZV6wz' \
    --memberID 'qaAhngDPfIRBFmx4' \
    --offset '65' \
    --order 'u7ImEiLKANHxvDW7' \
    --orderBy 'qWcqMxHli7f1ZHJO' \
    --sessionID 'BgYClK6wUqyWVgfk' \
    --status 'a9O0WOlXJEnAV4Fa' \
    --statusV2 'SuFV5ZLHduYn5CiE' \
    --toTime 'u1QXp1FgMMcwl4Jq' \
    > test.out 2>&1
eval_tap $? 16 'AdminQueryGameSessions' test.out

#- 17 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["hr6Uyo65Ayoz3TzI", "l7rjRTdYku5hJiH2", "YTxPsrYZXn9k49c0"]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteBulkGameSessions' test.out

#- 18 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'tatX6oWfk4FxxIdh' \
    --namespace $AB_NAMESPACE \
    --sessionId 'zxfP15edVIOCxhZU' \
    --statusType '6cmUlmvDUW1lwuux' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateGameSessionMember' test.out

#- 19 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'yS1VHLX8dWVKSJsd' \
    --key 'HtucfbaPmwbAv2k5' \
    --leaderID '5zYqV5DSe02vGSWR' \
    --limit '44' \
    --memberID 'lcSfzzCaBl33vLYc' \
    --memberStatus 'fGJ4GVZJM2hixBWB' \
    --offset '16' \
    --order 'BnAdB29VXANg0k98' \
    --orderBy 'A89vznNzmJ1EHiGO' \
    --value 'LscevRLGCgc9Kxn8' \
    > test.out 2>&1
eval_tap $? 19 'AdminQueryParties' test.out

#- 20 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '8IlvOvYpbYWfEjPy' \
    > test.out 2>&1
eval_tap $? 20 'AdminQueryPlayerAttributes' test.out

#- 21 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId '4RIGaLB9TG5jg2Um' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerAttributes' test.out

#- 22 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"WojX4jl9qakvBgV6": {}, "vNTxQ5glhf1gDG3P": {}, "aeR5Lu0DEXKWs4Dx": {}}, "backfillTicketID": "1hAx0IpqjL11RVhl", "clientVersion": "9HUsNMBoLPUSISrR", "configurationName": "FaYV8U32mqFenAMU", "deployment": "H1heI2w0Zjj1gq6r", "dsSource": "9Ldzg48xmCOmRlw8", "fallbackClaimKeys": ["csdwptSq1Jg8dvmm", "ZHVKSy5STER4JfNV", "zPwTW2rSHZAHPGzo"], "inactiveTimeout": 24, "inviteTimeout": 4, "joinability": "j0kbNPurDpt5abUa", "matchPool": "z2IJzL3wkTmMHRIS", "maxPlayers": 26, "minPlayers": 53, "preferredClaimKeys": ["SWNxzEvBR5FH7FVQ", "Xz6PWFrl24Nn8zR1", "IJQF511dzi4XZ4YL"], "requestedRegions": ["M7alYfUb7T20qaTJ", "AZLl50f6ZiySn2Tg", "74p8LAIDZMw14oi3"], "serverName": "tGueHK3S2PmFKI0k", "teams": [{"UserIDs": ["53rhbSIWv24eh0pf", "ImeKeLuz8LSAQc5u", "8sH7uiLYjc1iysEo"], "parties": [{"partyID": "SXVY4Cl3qvCPowet", "userIDs": ["93Fx3VRs2uKuRpgC", "mVEQO6cZiPgpJ4pH", "78aqk2tOWQMDH9hy"]}, {"partyID": "Rw8ykeF8Gjm5za6X", "userIDs": ["RA2XCbu2QwQkBVKo", "nzOyVCBq9NtgkyGD", "meQgX8JVeXt8yGXQ"]}, {"partyID": "SWL6aDoS9wD7ALrG", "userIDs": ["A2JDLkg7JIRgFj8z", "upUlPuljPYQCZ4G9", "ipoD3TMHiDmqS52u"]}]}, {"UserIDs": ["ZVWwmtK3KeBREv3c", "5Suaj99nVZyZqJIG", "vdTK2cE1Y42o1Ch2"], "parties": [{"partyID": "mA3GLdMb4EycIv0u", "userIDs": ["DaoewqAdp35Gnequ", "MuGNGNKfXWkEW2O3", "1dki9RVrjs5n0jML"]}, {"partyID": "TEUr0cRd40yF27FD", "userIDs": ["7GzkuB31PGC7vZ7F", "31k6fWKCvfWH0hpI", "yUI258UwcuoctamS"]}, {"partyID": "ckg0C0bsl8GVD50O", "userIDs": ["OhTxjunbJZYIL224", "sMfYiXe6xkECoj9B", "ieoPrqyIxFSwQcXB"]}]}, {"UserIDs": ["cqmh2EM5ZledyJav", "D6rwOwZjh0LT7sD9", "8M9XvI5tQaSVQ7hY"], "parties": [{"partyID": "PyOazscMi2Odj3FJ", "userIDs": ["oxSw1DrrTXzbsERk", "gsHnY9SLU88wh5yR", "jwp7fLs6IJ6Dv0Wr"]}, {"partyID": "H4c06WLEjeE3fAb0", "userIDs": ["2DxC265Q5f1GqU08", "PcgQAPrv3JgrdHKs", "22kZgasrMiWzBKTW"]}, {"partyID": "fQLvYDq9A1LqTAUU", "userIDs": ["DvM44X7uTzq5LiSa", "0Qaj5CWpfbeCkmXl", "n8jO4vp0KDaLURwy"]}]}], "textChat": true, "ticketIDs": ["8QrrvpPFvcZDooB8", "fJUs9jDZf62bp9Y4", "eGsfoPOfwszoba6E"], "type": "kCRuHbxDI1CahN1r"}' \
    > test.out 2>&1
eval_tap $? 22 'CreateGameSession' test.out

#- 23 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"iCdyjO58jgqmtMVU": {}, "8AOQOlDAb076j12R": {}, "VPjs8yAr3iQ1zLJj": {}}' \
    > test.out 2>&1
eval_tap $? 23 'PublicQueryGameSessions' test.out

#- 24 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'PKAZgfzrpJmS8Jim' \
    > test.out 2>&1
eval_tap $? 24 'GetGameSessionByPodName' test.out

#- 25 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '3OBZ2Dx3a70hKVwQ' \
    > test.out 2>&1
eval_tap $? 25 'GetGameSession' test.out

#- 26 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'qwF816Lw9v5JBXoY' \
    --body '{"attributes": {"fBo6TOdZmtHCZiUD": {}, "NvYpvRvvVYGLuG7l": {}, "zFPm35J83XFLbE7F": {}}, "backfillTicketID": "sRj18CfnMICrehF6", "clientVersion": "yhcGlXg6V7IhB2Jp", "deployment": "kVrOhKC0nP3HMwE9", "fallbackClaimKeys": ["I2An0KhY0bA9wg2F", "vvh24zDbDrghJfjy", "gHbxtRNpU4gQjhhx"], "inactiveTimeout": 38, "inviteTimeout": 37, "joinability": "MGPa07jikZxOQRX0", "matchPool": "V42VgqR3umUVIy4c", "maxPlayers": 1, "minPlayers": 57, "preferredClaimKeys": ["gEhcd94Ean3936fa", "ptcsCWEK5fouNkcm", "BuNZNkfLYooKSInJ"], "requestedRegions": ["52y70yj4aOFl7Myt", "2t5jIn8dsL0pioUT", "IitncEsTXxN3dQ6h"], "teams": [{"UserIDs": ["8H6fbgZQNKB2cMf7", "tvdG1UfFdl6PPQMG", "RwO2zM1mzypt07IK"], "parties": [{"partyID": "ku7EKMKpLdNIugEU", "userIDs": ["lIXLhzSLQOcqWzDX", "H140lU9BHLPUHLhH", "7zwHS4Gi7MLv1IMl"]}, {"partyID": "vysHCzqvrJ6Csmf4", "userIDs": ["5EYI20Fgu7CYRmOR", "zPjMcTJVaI7oJfZx", "xApwfoJlxMU9orWn"]}, {"partyID": "y5x795AgKcLPqjHy", "userIDs": ["B7ig8c4NNLVESDw2", "0eAlFvifuR8pCUDz", "2hBbv0ehPPnkFe8X"]}]}, {"UserIDs": ["MTfAAJdO97nrvGAl", "U20tZrCRtRr5F9M6", "Nx3Xa3awK03T70M2"], "parties": [{"partyID": "nzQ8nKjykppLasRa", "userIDs": ["NloBUREBxC6ZB5QF", "MHnjwVI5vpK549aj", "fBPIWVFckPFUJal6"]}, {"partyID": "I5R0yvp3TcVhm8tp", "userIDs": ["Qfp7FmVHnCEhfCJs", "Fjt1fbltm4FB7ltz", "KNxak1jSVklRg5Ad"]}, {"partyID": "PgNwmDjSDMyDDBtF", "userIDs": ["WhyLTE5sUmQOCPHN", "fufyqxMGqqvuaj8G", "HlW32ugSCSj0WKwr"]}]}, {"UserIDs": ["NP9JVMSJKlPETIcT", "HR7eE0AvMspWNlOH", "r6kHjrArQlC5KM9M"], "parties": [{"partyID": "puBhjEc31kMUIKsC", "userIDs": ["QtwPSmqgv3Zbpsvj", "kfl0O25kgGJbFo0p", "jkc5JjLWXcKd7wu6"]}, {"partyID": "XOJQz0ZFrBXfAiVT", "userIDs": ["lnJkYHPIlayGynHO", "yfzxlAdV6ZFGFKms", "twYdPgdjJX2UKY6M"]}, {"partyID": "zeWMbnIBrYb3foDQ", "userIDs": ["We5zE8yjNgise51s", "w7ClFb3gP0wRc2dq", "4x7Aw61XWIZZUPkl"]}]}], "ticketIDs": ["RLFzGQmbr6B1so2T", "0E3yfzVPW7Bwqs02", "XY5IACCM7lcvUwc3"], "type": "XrCvVgkx9VMRr60X", "version": 32}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGameSession' test.out

#- 27 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'xePnbjixF5QmoioT' \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameSession' test.out

#- 28 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'zXGgkwZNpE0Fyuxq' \
    --body '{"attributes": {"PBSmushMxVkVqTZC": {}, "WkUUYFIARzRM3R3H": {}, "D2mkAOjCyIfJpq80": {}}, "backfillTicketID": "IGUS6G5aijW6pCd1", "clientVersion": "mTttQVrpjqHGYSg8", "deployment": "nps3lvQiEVUtjnJG", "fallbackClaimKeys": ["u58kK5K8bgFttKcQ", "2vqUbasUrWs6Z0CT", "B3yZ8ibr0y5snanL"], "inactiveTimeout": 71, "inviteTimeout": 8, "joinability": "NC9ztOiXjPdCBUNi", "matchPool": "Nmd3XYOmvua6mjam", "maxPlayers": 63, "minPlayers": 64, "preferredClaimKeys": ["biGjYqA1gBru3gH4", "W11vIBeXMlh3B3at", "kMLxbzzy2SRxgY9T"], "requestedRegions": ["EutGQla6rVLvNBF7", "2BqcJBcMy9xabVIG", "2K8faIHcukXMZuma"], "teams": [{"UserIDs": ["wNPAWF9JyTvpAXsI", "HMY5cjQVG84gEl6V", "Pd8phMtS3dB3HANC"], "parties": [{"partyID": "8FF29P3WuxG8hEeq", "userIDs": ["C3uayBbLoJquRSE8", "pMOmk3VTBg4oYcS9", "jZtYODGNYm3WgsOW"]}, {"partyID": "E2uuhjR5hozZqAm2", "userIDs": ["gNPFeIAbsGeeC86l", "P744JnUw9HbJw9Kc", "A87i8xBiay8fTu48"]}, {"partyID": "wAd2emyfvugHA4iQ", "userIDs": ["DKNthC5tTsmr197J", "2BeESlUwkY5oS0sg", "EQ6D00oqrul3fI59"]}]}, {"UserIDs": ["SzYKvmuRETcb5TbC", "VKNHiQbCTlLcxvA6", "yszyV9teZ5NS8rvF"], "parties": [{"partyID": "j1pVJCbxEzH9QfMB", "userIDs": ["1EDEsy4y5qmivZ89", "Gio4EOWB80EbVKY3", "Jg73KgmXsYboUzpX"]}, {"partyID": "neMUR6oKj0vQrRCn", "userIDs": ["xfwm8PHqBYvbuK0i", "5PfX3qtALwtVKAcA", "CyfHfGdAwMeLyNL8"]}, {"partyID": "lA7vbEbcQ9qcNUr6", "userIDs": ["0Jv9PSMxII5R9XdK", "v6jqxMg5VOTqZejN", "h7OYcVZtB7Zenx5o"]}]}, {"UserIDs": ["f2m9luljW8QLGUz4", "h77ri6wRZv1gBlvm", "rvRRS7sKo2Bq45DA"], "parties": [{"partyID": "LMiQNkjn9jVM0P9O", "userIDs": ["O1nxHWSaxUUEC9e9", "e6YCwBOFW9lX72LG", "ihtqNp14zcbC0fny"]}, {"partyID": "jZ0cE3ltQpdpK3bm", "userIDs": ["djVaequhbwRKFE0P", "iXqZB8v0jEJ4mUXa", "sFbBD3NJWsfONuRW"]}, {"partyID": "HVIE1Sc6rBVBht1N", "userIDs": ["QvnGUbjcygETVPVp", "u8TEuIr3W7a9Isxa", "l34FIYQWfONbtyGA"]}]}], "ticketIDs": ["dvws0SuVISo6vqOr", "eXNxcXC02dnV0W1h", "tpUm0DYLY1hoWAsm"], "type": "IemE7NNJgNfDT8an", "version": 36}' \
    > test.out 2>&1
eval_tap $? 28 'PatchUpdateGameSession' test.out

#- 29 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'n7sHeIcHXAofmFqu' \
    --body '{"backfillTicketID": "kC0AZ7JGWXV8WiKl"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateGameSessionBackfillTicketID' test.out

#- 30 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'rNHx5Au28S7dlKgc' \
    --body '{"platformID": "VFIsJaJmr6xFSUmA", "userID": "e0vGNOzOOCtF0O7q"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicGameSessionInvite' test.out

#- 31 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Crjx4S607LcIsEq1' \
    > test.out 2>&1
eval_tap $? 31 'JoinGameSession' test.out

#- 32 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'YlDB322QfhKhGxqH' \
    > test.out 2>&1
eval_tap $? 32 'LeaveGameSession' test.out

#- 33 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'f6KQ1WKii5uvPS9E' \
    > test.out 2>&1
eval_tap $? 33 'PublicGameSessionReject' test.out

#- 34 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'b0sjFDV4Tld3ffva' \
    --body '{"additionalMembers": [{"partyID": "VHxjIgWgTU895908", "userIDs": ["351DX9P3VGiyqs38", "a88JGwc2oYy3D7Ys", "aexoWRaQAsOp9hFo"]}, {"partyID": "3nl2Ov3tfZ9ZJSJO", "userIDs": ["m8SASwOwD1oprKDU", "JJjHubF0QRKKORGj", "vnhtIzzU6AnDSfSr"]}, {"partyID": "0ClDRNoUmRZfXanv", "userIDs": ["aIJw4lZLUkRAnxcV", "rsUn8Rh25lbY2rxe", "OXUgrMZCDUMgt6mg"]}], "proposedTeams": [{"UserIDs": ["oI9PjGPyZS0KoKkl", "XKoe5lMLKPCpVAWY", "uJaVq8sgSAo0MLz1"], "parties": [{"partyID": "MAd2333WKGZ0ExBZ", "userIDs": ["B69Xwu0HFGd9mUyt", "CDDtt3KgPTmaXI1X", "qEPb3gEcRBBYV8te"]}, {"partyID": "9eVzvl95F0rbBoaF", "userIDs": ["YCQrSIEfwxT7aZPR", "S4P9aQCCU4JSnPjR", "fahE5ydgwJWItA1x"]}, {"partyID": "5SMHT3vNxRsOdKa8", "userIDs": ["hDc9RxQ38MBv0xXg", "eJ3chY75TrghGiCX", "YRsTzvsLpkkvOeDF"]}]}, {"UserIDs": ["S6tI68XwQsohl98L", "c64APNtE0htcGC6K", "mprGias0pZ7Spz4u"], "parties": [{"partyID": "WGt7vT5zPV67ZenH", "userIDs": ["AWtn5KDddqoXZ97j", "wIMd0ewHD7canVnN", "XyhbpWUH7wlXgp8z"]}, {"partyID": "MQKIxLIwsbhd7yty", "userIDs": ["B9EtIquIjFU7j1BI", "Sk3qNQuuKucP8X9s", "cG89vDeZDylkqZDZ"]}, {"partyID": "ICqQSmTv2YzOqUPg", "userIDs": ["ffhWbSTg3GnYfBmL", "d2gYv8iClmFYjgcS", "WlufPBkWJSVadovr"]}]}, {"UserIDs": ["7VSU2MUF5Ffvb33N", "Qlw2dsUWGxFvVTYP", "FCbDKo1E0n7ijPi4"], "parties": [{"partyID": "TQW7yT8lFVlxM9YR", "userIDs": ["zFZmnqwEhrZg2hEB", "KeV8hNpWz0MqpgJS", "WhyCS5mlEeBwbHBB"]}, {"partyID": "myrR3FdlBKTMPePQ", "userIDs": ["uXNvnXHDC1BncQg8", "5HV7i0o8f7L63fOi", "S8x1FoYoRTQSETVC"]}, {"partyID": "PtmFSxdL9gtjpMLA", "userIDs": ["lYRilhPBMZ0Rbym6", "M4Wv8P6Eth0llDbO", "Ee6giV2FkP4XN3R4"]}]}], "version": 14}' \
    > test.out 2>&1
eval_tap $? 34 'AppendTeamGameSession' test.out

#- 35 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Os0e8FKdWQckxZ1L"}' \
    > test.out 2>&1
eval_tap $? 35 'PublicPartyJoinCode' test.out

#- 36 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'U9ZsinX5nByR2hgj' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetParty' test.out

#- 37 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'obYoy7W4jlzn6rFN' \
    --body '{"attributes": {"yEExTJqOSLyjDSC0": {}, "HbqjeL2Y9o9gUGye": {}, "y9dngKIIrH5cCeqo": {}}, "inactiveTimeout": 67, "inviteTimeout": 0, "joinability": "pSVBVj7wVyxmRQHT", "maxPlayers": 68, "minPlayers": 61, "type": "ElQt48cKyLSwDrXf", "version": 13}' \
    > test.out 2>&1
eval_tap $? 37 'PublicUpdateParty' test.out

#- 38 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'YxDCBrKRSmoqnaiE' \
    --body '{"attributes": {"hdmJuwiID7XMm0Ka": {}, "MMTkZF8x5J4YID5S": {}, "DsBz0awEa4RoL9Sl": {}}, "inactiveTimeout": 59, "inviteTimeout": 40, "joinability": "at5qOTwBin7cWpxt", "maxPlayers": 96, "minPlayers": 73, "type": "g5NUTCCeNccuvThG", "version": 24}' \
    > test.out 2>&1
eval_tap $? 38 'PublicPatchUpdateParty' test.out

#- 39 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '8sj6GiHGCmu91rgU' \
    > test.out 2>&1
eval_tap $? 39 'PublicGeneratePartyCode' test.out

#- 40 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'sMtQfKUR9eGgkv60' \
    > test.out 2>&1
eval_tap $? 40 'PublicRevokePartyCode' test.out

#- 41 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'dQLH2nxMMPZD7bmq' \
    --body '{"platformID": "kJ0Fllbu0GS3dhYj", "userID": "aOLJgd3d4orXsHzo"}' \
    > test.out 2>&1
eval_tap $? 41 'PublicPartyInvite' test.out

#- 42 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'kIk0XvommNpaE30F' \
    --body '{"leaderID": "G8K7XQrZH5a6zzpG"}' \
    > test.out 2>&1
eval_tap $? 42 'PublicPromotePartyLeader' test.out

#- 43 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '4oNzuzo7cmbkY5G9' \
    > test.out 2>&1
eval_tap $? 43 'PublicPartyJoin' test.out

#- 44 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'LZvYOCV88jFLf5oE' \
    > test.out 2>&1
eval_tap $? 44 'PublicPartyLeave' test.out

#- 45 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'tMUhB8GtoPoI1U45' \
    > test.out 2>&1
eval_tap $? 45 'PublicPartyReject' test.out

#- 46 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'cIFqmaQvMhYzcWeY' \
    --userId 'lTcOAgJ9aM9zFJdu' \
    > test.out 2>&1
eval_tap $? 46 'PublicPartyKick' test.out

#- 47 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"ngrt0rvCXs7tWC1L": {}, "bqEGC9xfHJETFtp1": {}, "LOBoiPEd6c8ikZAB": {}}, "configurationName": "X3tF2Z7tY76FFmst", "inactiveTimeout": 40, "inviteTimeout": 28, "joinability": "pR9Nx8g5P0CkDm7l", "maxPlayers": 20, "members": [{"ID": "oGRudkDfmnb4LJyg", "PlatformID": "GyYOhW19pW2mVXJd", "PlatformUserID": "jDMNk4nBmUyMZggf"}, {"ID": "9oWbMGiCCnpe3Wfp", "PlatformID": "HDBKBKAjq9Kt3NZT", "PlatformUserID": "BnEFOU4aDnpgiDsY"}, {"ID": "uZPt0eXI4IbmgDxg", "PlatformID": "i1K8bMKis9nVFAye", "PlatformUserID": "dwBZiZZ5zB8nheo6"}], "minPlayers": 42, "textChat": true, "type": "nn3t0w1BaZHrVHZY"}' \
    > test.out 2>&1
eval_tap $? 47 'PublicCreateParty' test.out

#- 48 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'PublicGetPlayerAttributes' test.out

#- 49 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "DegomFLzEUsdQeVd", "data": {"s9AIoFjXPwFyTZYg": {}, "IMBwwUUAdgIWLuX8": {}, "6GGHYoZDlSppzusf": {}}, "platforms": [{"name": "bIY0hLtqkwuJ6dIB", "userID": "jAn9jDpbAPdyTAPw"}, {"name": "dw2IFoxGRPFiUQSg", "userID": "9hhv1hD3UEAnihA0"}, {"name": "t60JuAaIPo9gxgG5", "userID": "8xwL08Kl2smh7Rsz"}], "roles": ["RHmn5DPKSkCbDOxN", "NAbzSYWEH53EmsYb", "NTBIHeWBsIZ2uZNJ"]}' \
    > test.out 2>&1
eval_tap $? 49 'PublicStorePlayerAttributes' test.out

#- 50 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'PublicDeletePlayerAttributes' test.out

#- 51 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order '4aoSjaHkp7qbuyyF' \
    --orderBy 'nYP1edOcIpgtlP9R' \
    --status 'OYFMAd61xIFLldgZ' \
    > test.out 2>&1
eval_tap $? 51 'PublicQueryMyGameSessions' test.out

#- 52 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '1BzpiOEgTy6BCqMf' \
    --orderBy 'ywehHi2stEP1MgYL' \
    --status 'lw6IIAcwYKIs9C0l' \
    > test.out 2>&1
eval_tap $? 52 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE