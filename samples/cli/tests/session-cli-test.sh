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
echo "1..48"

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

#- 5 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 13, "SessionTitle": "brr8UxEQRLd2n3rG", "ShouldSync": true, "XboxServiceConfigID": "O59PS0YWDjq5nDZs", "XboxSessionTemplateName": "tmEx1miIFSBjkFSK"}, "clientVersion": "77A9SUo575zwjIJ5", "deployment": "Bppo92brYQip4ivo", "inactiveTimeout": 80, "inviteTimeout": 12, "joinability": "Iukje9BmTnk7DMSq", "maxPlayers": 2, "minPlayers": 67, "name": "aoZe8QRXIKzdQWob", "persistent": true, "requestedRegions": ["TWHlQemDxkDsWRW8", "INYBk7sCjYq6Z8Zk", "reEjBdhzcSiL1AkI"], "textChat": false, "type": "VwFnfnZG0BuaM4jj"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateConfigurationTemplateV1' test.out

#- 6 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAllConfigurationTemplatesV1' test.out

#- 7 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'uXpOoTeUihTOyGUG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminGetConfigurationTemplateV1' test.out

#- 8 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'Nsz7xGhMwKH5GhRE' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 92, "SessionTitle": "9IRobgFlgFOMe6n4", "ShouldSync": false, "XboxServiceConfigID": "PGGzyfbpSapV4aPe", "XboxSessionTemplateName": "2JY0VUfgWhJHnZV7"}, "clientVersion": "XjinQanBQ1dMDYsj", "deployment": "EWuMsfSICAHbE319", "inactiveTimeout": 84, "inviteTimeout": 7, "joinability": "YCf1PV4fKdosHWRb", "maxPlayers": 61, "minPlayers": 90, "name": "0Mv1Wipvj1i5ENOd", "persistent": false, "requestedRegions": ["2tOGiIE6qjCz7CGs", "kRR43jn4cW9zii5C", "vYpmi3lxZ5lXVGUA"], "textChat": true, "type": "XsHPgh5CuiEVL4vr"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminUpdateConfigurationTemplateV1' test.out

#- 9 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'xfIm2XegV7OGUg6f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminDeleteConfigurationTemplateV1' test.out

#- 10 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetDSMCConfiguration' test.out

#- 11 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminSyncDSMCConfiguration' test.out

#- 12 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'OYAbYY4F7xT2LQ7L' \
    --dsPodName 'NfzYF4lKa3DbZZpS' \
    --fromTime 'fFbbLvRaAoIxeJgH' \
    --gameMode 'Wa4RXzkw1vXW9VEu' \
    --isPersistent 'SsFKrmmrvzkOhSP0' \
    --isSoftDeleted 'g8Oq46L58DOz6tUj' \
    --joinability '39cfIPwTar6TvgrP' \
    --limit '56' \
    --matchPool 'lD2BiXpUhCFhIbYc' \
    --memberID 'GlA3PVadyEfR8zYP' \
    --offset '70' \
    --order 'Sa4twpuwSb934Pmy' \
    --orderBy 'P2GSwa7Xub6RFXri' \
    --sessionID 'GXAM1hp57OvoYzi9' \
    --status 'TcdboiVUVo46BVEv' \
    --statusV2 'HuNDkFxfmBY7Rum8' \
    --toTime 'uY5zgwfPpcnicPGT' \
    > test.out 2>&1
eval_tap $? 12 'AdminQueryGameSessions' test.out

#- 13 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["mqN1VPuNQ2VyLa2O", "uwfDVMRmVIS6NfwK", "NkKYoVZtKrtO3dil"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteBulkGameSessions' test.out

#- 14 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'aNLcbW3HsflFOAKU' \
    --namespace $AB_NAMESPACE \
    --sessionId 'JYAHQLOxVSttvvAs' \
    --statusType '8EZw1erQkH9qfLPt' \
    > test.out 2>&1
eval_tap $? 14 'AdminUpdateGameSessionMember' test.out

#- 15 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'oX6zqQI0F2I0koSo' \
    --key 'ZKViTG65IiYLg2l0' \
    --leaderID 'Ego81sNOUS7mGKb7' \
    --limit '26' \
    --memberID 'foDFUO4HZx62i58t' \
    --memberStatus 'EgCUkytfklqzdMu2' \
    --offset '80' \
    --order 'NpbdXfkJacC8Q7AY' \
    --orderBy 'Fz2szZkISFTqnDiE' \
    --value '9J2mE1p4HsGJZ0Za' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryParties' test.out

#- 16 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'P9KV80YyyxA2jCtX' \
    > test.out 2>&1
eval_tap $? 16 'AdminQueryPlayerAttributes' test.out

#- 17 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'MOfVUOtqecuSgTks' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerAttributes' test.out

#- 18 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"nT55AuauHtRD6tAn": {}, "cF5Rd2FZXoJq0vLC": {}, "Jcl5m995CaClYi0L": {}}, "backfillTicketID": "oGBjJEgWrs6c7Xqe", "clientVersion": "TBwuTvCOYyCRu6Hu", "configurationName": "WLusI3tfVZiq1vD3", "deployment": "pbGjfi4lE74pP8FY", "inactiveTimeout": 21, "inviteTimeout": 78, "joinability": "ej1JMQ3FRGy2AO1e", "matchPool": "2oqqpg6Eg33U6asF", "maxPlayers": 51, "minPlayers": 2, "requestedRegions": ["MgJigTQCOXRNBzoK", "8ucp5KyRXg7yOoEi", "XuINZQScreortIcl"], "serverName": "WEJf6JNcutmB031r", "teams": [{"UserIDs": ["oqD31xVeWtx2XQsm", "t7xdxjOeN3kt1pNf", "xKuOPtSREtbm9ZlR"], "parties": [{"partyID": "shCz59O2Vnsa23zW", "userIDs": ["C4f9nkZo3YO2gkjo", "DCmnJf6ZMcX0Q9eK", "EbkmfGI4cF1keSFt"]}, {"partyID": "fT4AvpqJW4Szfd2e", "userIDs": ["YMqiOIgLRVQrTuil", "Gz8tIFYBMnpSC0Q3", "SclTLERsMLIFdek4"]}, {"partyID": "D6dfU9IKgDH2L90f", "userIDs": ["wcEbJt5N4IXJosyb", "sIkDI8A63xzbR2GI", "mLaLcoRJlMUHVINX"]}]}, {"UserIDs": ["C3bmrEUEuVwpWlXf", "b1c3wPxrlKYJgLxh", "yFLrQ8b6GxuasaGq"], "parties": [{"partyID": "rT0uMr5dOAUWwLIG", "userIDs": ["LANpllFANQ1EzXa4", "uQy65XMvdEu9LpEU", "Rd0LziDs3XSBgAjc"]}, {"partyID": "ezWPs57zOWzfO3Od", "userIDs": ["ibQoFyUZjjGT62TA", "PhLI0b1BZUFIkJUB", "BlwqqSQtUh5GBduW"]}, {"partyID": "rEyGJBfmEQLsbHlW", "userIDs": ["Nnn1OqvpVxCnkLp7", "heWjoi31qYTsN39q", "GwqPq5ap9kNztIP6"]}]}, {"UserIDs": ["rRtrpuPY95oC5894", "kxgKOTZ9AM454Vqk", "7rHCHsJ4JqNeVqcN"], "parties": [{"partyID": "uEGA4ZDB1zX4UNOy", "userIDs": ["KtMupre7ondIFhvn", "otPmzHWtxXqnuvCo", "QRcoedlDVqrhJfR6"]}, {"partyID": "75YaoGG2JHLovSgA", "userIDs": ["pHF6ebzBygXZZ8k9", "KlQdyZLQNE7JLQC0", "OdOaUq0SAzzhtZw1"]}, {"partyID": "iVpYWbrveEedzw8h", "userIDs": ["ww7Wq1TLGeAxvFUZ", "fuAT3N1ByGbjaumx", "r9kbtTybR18ExKpi"]}]}], "textChat": true, "ticketIDs": ["nMSA19elmCmed3Q8", "N7TiPvggQfRQko9j", "oiGoffNdQtZL7f0G"], "type": "kWSQ3Q4CX8nRkLYH"}' \
    > test.out 2>&1
eval_tap $? 18 'CreateGameSession' test.out

#- 19 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"jUxIYjqsMfwRZi3K": {}, "vIZvVNepwvN2abpu": {}, "m8xdi1Hr8EUyv2Mr": {}}' \
    > test.out 2>&1
eval_tap $? 19 'PublicQueryGameSessions' test.out

#- 20 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName '09QYsP9HnfkmIe9s' \
    > test.out 2>&1
eval_tap $? 20 'GetGameSessionByPodName' test.out

#- 21 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'IGkH91X8BMdKiOaQ' \
    > test.out 2>&1
eval_tap $? 21 'GetGameSession' test.out

#- 22 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'FbZucIsydqp47rOI' \
    --body '{"attributes": {"n4PrxtPXAYxbh2Cz": {}, "NtEOA4kWn7MwRd8K": {}, "NGmZk2q2s9di1gcZ": {}}, "backfillTicketID": "GdUbUfaeyPLawrnj", "clientVersion": "7zxhV3gJhW5k7bPU", "deployment": "ujWa0YWHDJJ1EXxo", "inactiveTimeout": 61, "inviteTimeout": 12, "joinability": "uoOC5ykq2WXo9nye", "matchPool": "KnKy9739x1MBDOKz", "maxPlayers": 9, "minPlayers": 42, "requestedRegions": ["sFYWHeLfGq9sUcYc", "mUtvbKZypUJcp8zc", "vTyqiFfYmrcXOnuh"], "teams": [{"UserIDs": ["E362dTYaGOImurrE", "BFOrkfzw81QdcZeK", "PwRmdzbtZevwDpeo"], "parties": [{"partyID": "dNFiz58yqyxLN43M", "userIDs": ["dBFNrIiccFgAWO71", "aL9BWtOOd2zIqCBS", "6Fu9Xh577XimO4Tz"]}, {"partyID": "jO8wALr4XkYoQHZN", "userIDs": ["fG5UKiaW0fE9vQqF", "dlGJL5SdQuavHbfi", "kz2IzFDd4JcK5sVc"]}, {"partyID": "hxg1imwBsnfPa7jq", "userIDs": ["8iIgbC8ZPALwUPWC", "HfZTFJk3HA1YW9ZD", "nRqHbfleIF2INPM7"]}]}, {"UserIDs": ["cjaV1q84rUKPHqrm", "DqE0rD3YIyhRZgXE", "AjNGDukN4C43J5sM"], "parties": [{"partyID": "t4g6kE92CUuaNK82", "userIDs": ["zHfyTEuE8xQKBk9S", "F32z8Y8NfAExryEW", "50e573iljC3srTc2"]}, {"partyID": "QG0ldqpcds55MVXL", "userIDs": ["nxgr9AN5Rq8sF0pg", "guvomg7krCMU8s8x", "UVOA2PzA0eI9DY06"]}, {"partyID": "HlqivT4nvqed6hqy", "userIDs": ["sNTsaJGvR76OYyWb", "r5lTxOwNa28u7hy6", "ubDR0EZirDZx2PUV"]}]}, {"UserIDs": ["yac5U6rXF7IGlt1P", "WXA3l6IHRaiCr3kv", "ibLUsg3NeaH8MuKN"], "parties": [{"partyID": "g3hNnQyouULbAQg3", "userIDs": ["MS65vt3pABpZkKR8", "10GhsHqP68Pvnwdc", "y4d0W2QHOwDQO8KR"]}, {"partyID": "GgZl4LyHJvo1Ip4U", "userIDs": ["j5sJXmN3UwaBCROe", "SGYx1rmxN52AL7Gw", "vVSJgtM2u44xIKXO"]}, {"partyID": "bnmY5gGeackUir73", "userIDs": ["NaGsk2MglYFnriLC", "q7oM0HCoNn8lC2Xl", "p2f0pUkKoeDA77cW"]}]}], "ticketIDs": ["EAe2dzr3veM7rcmk", "Get9Pv9AITHcTGQP", "B6yFbnk0Uxv8AHZ3"], "type": "KKl2QKIbL0eVezoV", "version": 40}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateGameSession' test.out

#- 23 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'v5qbc0Zm4k2lzI46' \
    > test.out 2>&1
eval_tap $? 23 'DeleteGameSession' test.out

#- 24 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'iX7dUOpJHcA2RLSw' \
    --body '{"attributes": {"aJdPzRQZN50sF8sI": {}, "q06G1jfsujt9nXef": {}, "ejxEQqZlDOqBoFPl": {}}, "backfillTicketID": "CKrm7ZHhSiMXD49S", "clientVersion": "U4CVtZPFUGGYwfoE", "deployment": "CuA3HxWMaUvG0btG", "inactiveTimeout": 78, "inviteTimeout": 41, "joinability": "PeBC4oV98PfqCnNu", "matchPool": "PZaSzgxOmsxbXCGO", "maxPlayers": 67, "minPlayers": 43, "requestedRegions": ["1hGz76p0NpGRG5LL", "vMQgp4KVNI4vOLc8", "9flk9gmBcyRqUMJD"], "teams": [{"UserIDs": ["fXCm89SyKTMyFkv7", "kpv8AHHyUZ6lQjMt", "uHFeZ2FmlA4CMHCh"], "parties": [{"partyID": "2aGK6rk2NAx5Shat", "userIDs": ["s4IF5N713rCZ1v9r", "5d7dHn8hOPfq60bp", "kpfilaoK314lFtg0"]}, {"partyID": "YFD38rpesoMt85Xf", "userIDs": ["JrG8TB0orqX3OrVJ", "7vx47XdqUNpMqZCj", "ay4v2AwPzH2VDysg"]}, {"partyID": "2Q2t32oSSA2QqY3t", "userIDs": ["KyvhhRzgGpkWqN3p", "9HkROvmMN5b9fqFa", "heypOCFfXY0KqQxC"]}]}, {"UserIDs": ["MZmwTlO7tHEqGbZN", "4LTLsJHV48YOwmuT", "zgguXBQah12XY45f"], "parties": [{"partyID": "xTjQIRsz2mSFcDQu", "userIDs": ["oKLbJOCOVLhQqPDr", "6dVh9VnDn7BAlb5A", "m3zyVYxAuHyXkRHU"]}, {"partyID": "bxhnog05reWWn1c3", "userIDs": ["aAlQ5s0Gu6JVqEkV", "X6O9K6FIwcmoktLy", "67fcEajX0z9UA9tg"]}, {"partyID": "pCbqQrZhho6uizHZ", "userIDs": ["Q0eAowJUMldE8K4E", "Iu2mmuuuS2ez1ai2", "3CSuplUDtIPRn1rb"]}]}, {"UserIDs": ["gJm1r1Wyv040sv7r", "opP1hRD2HfB8aCwn", "3cljCTbmMuZ8jtVm"], "parties": [{"partyID": "gZlxJ81hPUwKcdzq", "userIDs": ["GIThuozgC76Jpeyj", "RNWlsNWXRH5x7xGQ", "zupdx5hODFJzlrwI"]}, {"partyID": "QUDscwqDH1sTnuLY", "userIDs": ["qLCLdlnqWOYLlhIP", "HoHLa0d1QcUulN6P", "vHjTn1P4jUQUkLMW"]}, {"partyID": "yx3jv2ZrW1cnuO5j", "userIDs": ["qdJqbfKlZ6r1C973", "cskYauccWyf8hm83", "ZXHYmmiKsuWEFX6A"]}]}], "ticketIDs": ["uRCmd58hpOkowXKg", "clnl71nuTK9ZUZY3", "iLUfP7NMwvNJivnP"], "type": "ltMu3N5VMV20YG3g", "version": 35}' \
    > test.out 2>&1
eval_tap $? 24 'PatchUpdateGameSession' test.out

#- 25 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'CusViJoNDyVyu0FM' \
    --body '{"backfillTicketID": "QP7h3OOoDpChxEsy"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateGameSessionBackfillTicketID' test.out

#- 26 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId '6RDo52sZgmPCbTLL' \
    --body '{"platformID": "hs0NwdCOMacVrsQ2", "userID": "xml51DkIZmjQuKZi"}' \
    > test.out 2>&1
eval_tap $? 26 'PublicGameSessionInvite' test.out

#- 27 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'pH07hm8EHzXxl09e' \
    > test.out 2>&1
eval_tap $? 27 'JoinGameSession' test.out

#- 28 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'z5GCvcclQA3aSnM3' \
    > test.out 2>&1
eval_tap $? 28 'LeaveGameSession' test.out

#- 29 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'VKvEHnzW7JOhfBkN' \
    > test.out 2>&1
eval_tap $? 29 'PublicGameSessionReject' test.out

#- 30 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'BNiIRGj5CJzaNdFq' \
    --body '{"additionalMembers": [{"partyID": "soBvACHDNpV5lSlD", "userIDs": ["ovGw29PXJm9pb7wm", "x73Fr0rAD8WGypc9", "cd3g0ypL0tYIGrZm"]}, {"partyID": "xFAMIP3axqTwlHhY", "userIDs": ["xuEOgTTiZSLpBuUG", "zUIco6CebODNxkJY", "s0TwytpEcPWapRnA"]}, {"partyID": "bcCYvM5mDDA8EOt4", "userIDs": ["DKsVeqbZnTyP3rdr", "Dlp8BrlYd3WzrcPJ", "L8TpswTh76CcUsvQ"]}], "proposedTeams": [{"UserIDs": ["cYdmujkn49mvEGVz", "Eyr0tp3CL5btC6xm", "tfnJnjCxRQ5qbosC"], "parties": [{"partyID": "Z3UIhn2pT6O07P09", "userIDs": ["c45QzSckTvm7V7WK", "BgBGfdJLLdLL1WgH", "QOqbUhp01ERpqYSv"]}, {"partyID": "AGtmm9HEJzE7f5yA", "userIDs": ["2ez1GQy4gfTKMDL5", "fkJuiGrBpm87bMMR", "XZuJgUgh4oAuXZEy"]}, {"partyID": "yMoMxRmChDV5e0CJ", "userIDs": ["m8pxkzhnYpnLLLGi", "d4X8LyaJyRMVrH40", "QdqNnNbijALVc2qV"]}]}, {"UserIDs": ["5JJCg1p3OEBHWmrP", "lAsA7XctrqQQqfCB", "mfexoT5Nb1wMNaxC"], "parties": [{"partyID": "RJ8C2apCKXMiGfT7", "userIDs": ["Z9fKCMGKRGGcJD9G", "jvXHgepCLEUNMBqi", "cLlne15vvVX2OsLl"]}, {"partyID": "7kno3S8COoAlfXcn", "userIDs": ["wVGQJ5JF1hpZy35b", "0LTi4SI3iRsOs4YW", "CZFmciN3WfGnC2F0"]}, {"partyID": "cO3vppKcK9rxSc4X", "userIDs": ["WfORGnquaLFrpPo8", "4W4AAZcUPNuv4n1p", "OCSVqS6LQ1NQyAx9"]}]}, {"UserIDs": ["5fZjvs7vczyJxGRj", "pXyeTTAbZnETiRyf", "WqcbnHzTy9OpmXXq"], "parties": [{"partyID": "ia8Qiis4BFVTRagI", "userIDs": ["aKYy1IKQ8tp4UneA", "GpaOYRZz1AGeL916", "RLxEYcWGiySc4uRH"]}, {"partyID": "rqONSYrEHtLPL8v3", "userIDs": ["QolB6Ylnjiz9brww", "L5UYTUifhOrYvDhO", "WlvXnc670WlRovSR"]}, {"partyID": "ZPgugMkNXwEsqLml", "userIDs": ["jeWKWDz7WgDTaaeH", "Oq83D8ySHqvUgH6L", "0W5GNMxzCC4ETdDh"]}]}], "version": 14}' \
    > test.out 2>&1
eval_tap $? 30 'AppendTeamGameSession' test.out

#- 31 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "l6PhGtwpLw4ozjl6"}' \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyJoinCode' test.out

#- 32 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'UEbUIZQUk1BdvrvH' \
    > test.out 2>&1
eval_tap $? 32 'PublicGetParty' test.out

#- 33 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '4mM93C5sNbi14QRf' \
    --body '{"attributes": {"5NZutHoudjdS9pbJ": {}, "StcIbSDqJpKheiVq": {}, "PmUTs4uTjfRa3SJh": {}}, "inactiveTimeout": 94, "inviteTimeout": 96, "joinability": "CkE2NXCbJ9c6UUrV", "maxPlayers": 28, "minPlayers": 5, "type": "wnXz3LeSlU5jhLML", "version": 48}' \
    > test.out 2>&1
eval_tap $? 33 'PublicUpdateParty' test.out

#- 34 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'vXKRMF85iRyBnpp5' \
    --body '{"attributes": {"FKa6DxACnvCOPMFw": {}, "MuvYqoup0suqPiDw": {}, "mGP6zOne3rFdpDxQ": {}}, "inactiveTimeout": 66, "inviteTimeout": 95, "joinability": "0rpVLD8BmbxuVcnT", "maxPlayers": 86, "minPlayers": 76, "type": "OuWo5IVVF0iV0r3V", "version": 84}' \
    > test.out 2>&1
eval_tap $? 34 'PublicPatchUpdateParty' test.out

#- 35 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'dowzZNC7zvvuRhs6' \
    > test.out 2>&1
eval_tap $? 35 'PublicGeneratePartyCode' test.out

#- 36 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'c9TxqTsYnNaLVSZi' \
    > test.out 2>&1
eval_tap $? 36 'PublicRevokePartyCode' test.out

#- 37 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'UN3HZ32Wb2lC9HoH' \
    --body '{"platformID": "Ni1esYTP4RQHFwWT", "userID": "WqFiifR7Jmah0pZl"}' \
    > test.out 2>&1
eval_tap $? 37 'PublicPartyInvite' test.out

#- 38 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId '5NOD9VRFv4VigzHf' \
    --body '{"leaderID": "6SgX0CnV5H2nKYvA"}' \
    > test.out 2>&1
eval_tap $? 38 'PublicPromotePartyLeader' test.out

#- 39 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'JnQg1urhKfHIZesG' \
    > test.out 2>&1
eval_tap $? 39 'PublicPartyJoin' test.out

#- 40 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'bIGEPhdVgyFBewYo' \
    > test.out 2>&1
eval_tap $? 40 'PublicPartyLeave' test.out

#- 41 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'ZG3JcEIfNSlPUp2K' \
    > test.out 2>&1
eval_tap $? 41 'PublicPartyReject' test.out

#- 42 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'HifKV95nkdN58P9w' \
    --userId 'U3LgcBgaxXHbsCbj' \
    > test.out 2>&1
eval_tap $? 42 'PublicPartyKick' test.out

#- 43 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"dLqL2YzmCVZSp4ae": {}, "ZwTUxdWWb1de2PRK": {}, "Fm6dmgEoT99GmTRC": {}}, "configurationName": "GVtbdvbpchJXU69d", "inactiveTimeout": 90, "inviteTimeout": 33, "joinability": "KQoJ9HtcTGsAVl25", "maxPlayers": 49, "members": [{"ID": "UKyH0c0Ha2Y0w37r", "PlatformID": "VHQhe2kkS2vxe1kz", "PlatformUserID": "JCt7ukjB2NO2AitZ"}, {"ID": "8JycQ87lsqaLwOSu", "PlatformID": "gWkU7qQmdK3iXUFB", "PlatformUserID": "EunvhFa0GbwzgqXW"}, {"ID": "BfNK8qblc0wsjPaU", "PlatformID": "tTQkfyL5993OAPhQ", "PlatformUserID": "JkrITuaYLYoLLiDd"}], "minPlayers": 60, "textChat": false, "type": "00L0oS6ZAniZd0l6"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicCreateParty' test.out

#- 44 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'PublicGetPlayerAttributes' test.out

#- 45 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "PfaWk4yQuH5yC7NS", "data": {"7jYVHTOGfv94HmG3": {}, "xSYmLxwbEQLpuFgq": {}, "ftmsY9ofZEBWAG27": {}}, "platforms": [{"name": "hzR5wpxO4NhaqO1M", "userID": "fpUlerJ0c61mhyWG"}, {"name": "H7HENkaEZfNeehfg", "userID": "7ggkVTu581KCLdY1"}, {"name": "0OyLRQI1UpOTNaAP", "userID": "ZQVSk7qDKMM82SOw"}]}' \
    > test.out 2>&1
eval_tap $? 45 'PublicStorePlayerAttributes' test.out

#- 46 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'PublicDeletePlayerAttributes' test.out

#- 47 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order '7dyLC7FoBwydsdty' \
    --orderBy 'zEEmf5X7tfHU5s49' \
    --status 'LNJjALwShCcFLPDY' \
    > test.out 2>&1
eval_tap $? 47 'PublicQueryMyGameSessions' test.out

#- 48 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'XkNF5666cQorrP9M' \
    --orderBy '4EgcrKjU2wFHB7pN' \
    --status '7oiM2l15tn4OGe81' \
    > test.out 2>&1
eval_tap $? 48 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE