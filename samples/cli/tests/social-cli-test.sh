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
echo "1..95"

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

#- 2 GetNamespaceSlotConfig
eval_tap 0 2 'GetNamespaceSlotConfig # SKIP deprecated' test.out

#- 3 UpdateNamespaceSlotConfig
eval_tap 0 3 'UpdateNamespaceSlotConfig # SKIP deprecated' test.out

#- 4 DeleteNamespaceSlotConfig
eval_tap 0 4 'DeleteNamespaceSlotConfig # SKIP deprecated' test.out

#- 5 GetUserSlotConfig
eval_tap 0 5 'GetUserSlotConfig # SKIP deprecated' test.out

#- 6 UpdateUserSlotConfig
eval_tap 0 6 'UpdateUserSlotConfig # SKIP deprecated' test.out

#- 7 DeleteUserSlotConfig
eval_tap 0 7 'DeleteUserSlotConfig # SKIP deprecated' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'mQj28PMY8UrDpw9D' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'dgX3kptWW6xGXp27' \
    --userId 'aWgsEspb3JPFWeTk' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["W55BRsx2vT60GGIT", "rTs5CFpIg0zynkLv", "WngNgyufQUkmDG59"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'gGsWDRluIWmrhQ0J' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'AurVXqxIjALEQL9v' \
    --body '{"achievements": ["NOaJys9NSEuOJSyR", "EC63DiGyVdj8Frfv", "RZ2UghvABv4u6l1E"], "attributes": {"uqErLvUEffx21X6B": "d0RftslXgImJiq3k", "7LQjktFfNVEPUXGO": "uNMBhX6PcD0DOlQw", "WtZcTr67dAFJ25q3": "G6tHXytcL1yOWSSH"}, "avatarUrl": "Q1RySUS8HXAW3PzU", "inventories": ["Z59eudI5D7nazCOt", "Gxav3CYKyeiqcfda", "WEzGdoiEBEcVA1hZ"], "label": "rHh000whFzBHDDI7", "profileName": "Umc1Pa0Io0tlZJ2n", "statistics": ["GUdHuM9w4ljsxHe7", "mIev4BSFI0DWZUKR", "zd9c1hJ8u23gBsuq"], "tags": ["yP9CTNPCjvMKYxJ4", "OUvA9ONidfLs6Fce", "XJVfIVrqch65JszV"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'zpqisWzmHIHoRaML' \
    --userId '8nRkAkoDewY3k6v0' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'kOBigVxOgOxluUjC' \
    --userId 'RpmJ4uUzUndcZHO0' \
    --body '{"achievements": ["ARf755QRbQjhwHTr", "Lf1tJR72XlCfQqrv", "GcItCisv0uJku2LA"], "attributes": {"HiI10r1eFFoIUPKc": "MRyFQIU6iS03minu", "7CtcNGellnfdRvuM": "zulYqxLPnz8Pc3Ic", "Wh46eofjcYK2HOxU": "uTUjUlfS5DwF42Q9"}, "avatarUrl": "XE1jqmwLqqFli9Kx", "inventories": ["efjXLhCr08oFMAVT", "xX9ZYNwpFSJ2Zlam", "Sv5LvAG08Wo5rgVW"], "label": "EZV8Q6NFtpYZXrga", "profileName": "ng8THtc0lvmUBnJT", "statistics": ["0ZRVPs4EEJ58n9OX", "e3tc1HtOYNCN9Mne", "O87odKZz6kSHn5rc"], "tags": ["zNPQzmUwuzuwy1fL", "G3AV08UjTRXYH2Yh", "cMzDYgvzLCRwj9K0"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'p07ri9LSZvRWK7Rt' \
    --userId 'xPpv9B4YTUeJNG4c' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName '9T2BHYo8goJQ3lnt' \
    --namespace $AB_NAMESPACE \
    --profileId '6NP8g40DEKTxoh0i' \
    --userId 'QUzeycX5p9NMJoO8' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'UGfyBURWMfcMP3LH' \
    --namespace $AB_NAMESPACE \
    --profileId '2FOAySG9Lyv35EKA' \
    --userId 'csG6UjKXsF8jvz1Y' \
    --body '{"name": "DiqoRdUqbJcPjhOw", "value": "VOL9rAAqLSAPm0Vj"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
eval_tap 0 20 'PublicGetUserNamespaceSlots # SKIP deprecated' test.out

#- 21 PublicCreateUserNamespaceSlot
eval_tap 0 21 'PublicCreateUserNamespaceSlot # SKIP deprecated' test.out

#- 22 PublicGetSlotData
eval_tap 0 22 'PublicGetSlotData # SKIP deprecated' test.out

#- 23 PublicUpdateUserNamespaceSlot
eval_tap 0 23 'PublicUpdateUserNamespaceSlot # SKIP deprecated' test.out

#- 24 PublicDeleteUserNamespaceSlot
eval_tap 0 24 'PublicDeleteUserNamespaceSlot # SKIP deprecated' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
eval_tap 0 25 'PublicUpdateUserNamespaceSlotMetadata # SKIP deprecated' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '11' \
    --statCodes 'ieJN2iFAteYQmV05' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'pOH3tsEKLHh0xvgJ' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '88' \
    --name 'XYyYHkszl0Se3GI0' \
    --offset '15' \
    --sortBy '7jIDEdL4Qp0RKHVA' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "re05mN6FudHe7nHe", "end": "1986-09-01T00:00:00Z", "name": "jDREy5SXD9mjsQ29", "resetDate": 73, "resetDay": 97, "resetMonth": 82, "resetTime": "8SzQ6Hfi3Aq7u0WV", "seasonPeriod": 5, "start": "1975-02-09T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["TAMCOvZNhZSEreQL", "RRe9wLgaOsJnnnXT", "J1NPlcOm8W22SOnW"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'zSdyQT2rew1D0XHo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'pgjzF1vhYdzWlz8m' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "zI6cWLwGJoMtaTDC", "end": "1982-04-15T00:00:00Z", "name": "WfLc1I8zrpuOw1WW", "resetDate": 33, "resetDay": 83, "resetMonth": 35, "resetTime": "ssFvPQ1dHYFSoI34", "seasonPeriod": 81, "start": "1999-07-13T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '8mtMFARpXHc6xLU8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'KBEfOUcSitUsKf1f' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["tHyMmL1ISv6YMyu5", "xNXdqklc3ZK3lw66", "pryL7CC1YxfYPTVi"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'JRM09ARClTzsk4E1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '2nP0NUSX73WcMLoW' \
    --userIds 'nRgJknrFpbN4Xljl' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9241153083548738, "statCode": "B7R3Kh1cHkdQO19B", "userId": "ji7437McJZibnIWf"}, {"inc": 0.9309728892026177, "statCode": "nG4OjAwV8PTtYjJQ", "userId": "lUgpMs3kDdSIaFl7"}, {"inc": 0.8657053981734993, "statCode": "brnik0zUDKYSGSzR", "userId": "bAcPD9fIPZeekd8V"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3138697613555187, "statCode": "Y3a27azNpyTPHzLR", "userId": "z694b1HwrnaSAPy8"}, {"inc": 0.9369664799048864, "statCode": "uihj3Lq7QiSA5KKK", "userId": "k2FSlLQsiK6iozmo"}, {"inc": 0.41199036268911415, "statCode": "YVY6uIskGH3WWUSK", "userId": "fcdTX7UlaZN7Wyda"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'JWLP8cL2kLIZvz1G' \
    --userIds '["9ZuroHL9CcSjxPNI", "iixLvHPU2x8SBQC5", "Wkb7Dn47cVrl83fi"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "FCTyQl58R0UuGxzo", "userId": "HWTK7oNMOv8cm6bE"}, {"statCode": "bFHDbEffnmV0wyTm", "userId": "DyKe5hIO7pwSTkiC"}, {"statCode": "jAepcP7daCEAX2Ji", "userId": "iGNgkFMWKv3o6Q1r"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'qBT2skGMuoUDwLJS' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '67' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["zZnps9KiB53ofBN4", "Z4Tz8bG9uIkSAmGV", "ckzZeWdvaqtEr28z"], "defaultValue": 0.13232207150014175, "description": "HbfZE0WgolvT3w99", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.5390537102457365, "minimum": 0.5552788827838276, "name": "ihtddVxqFMA49sDv", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "tiY2pcX9o2SR0hjd", "tags": ["VtzCIyQKbJD3S9LR", "l6qnrkc3XL79lQau", "FNtUNc4wUs3ECmne"]}' \
    > test.out 2>&1
eval_tap $? 42 'CreateStat' test.out

#- 43 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'ExportStats' test.out

#- 44 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 44 'ImportStats' test.out

#- 45 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '40' \
    --offset '82' \
    --keyword 'hNyrRjb3ValvEW5s' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode '7pbBc1M7sLTZ2Aat' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'QzxDFzp2nyzPuEje' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'U8IgouL49DHxnref' \
    --body '{"cycleIds": ["opejsG0UDIy5WSjz", "xQ7vsl62X4JCqM3L", "KPZIhAJXYidm9HBl"], "defaultValue": 0.22772870976263204, "description": "cLU76A3SnlXQTqOB", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "kd6qIoYXiCkwqh3T", "tags": ["MimcuZ4xXzBZg7jh", "N5U7zT3LilRiQA1k", "DMLhlIlZ6VUHIV7o"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'f7XJE150oLgPfq2n' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId '0Azht2mho5A4nFKB' \
    --namespace $AB_NAMESPACE \
    --userId '10SgzmCb5vusYlbG' \
    --isPublic 'false' \
    --limit '9' \
    --offset '56' \
    --sortBy '7MkoXH5bXxpZ8nyq' \
    --statCodes 'AO0eQN2SPftLWM68' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'O48z8hYJUZvKeVFH' \
    --isPublic 'false' \
    --limit '91' \
    --offset '23' \
    --sortBy 'BTiQJBQ9tqH1jnu9' \
    --statCodes 'o8vrIUoI6EQOUkHX' \
    --tags '7hd8J7req2zceMD0' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Z9rihx4K2QfDFQno' \
    --body '[{"statCode": "J3wHkGr3aRrjj3hZ"}, {"statCode": "Ohu3gfiLiOuInmUZ"}, {"statCode": "HJmuKDV6E4aEGdwK"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'bMtcGKJeBIuzMwWi' \
    --body '[{"inc": 0.18638161988527302, "statCode": "FyU3IuHR23MKnklr"}, {"inc": 0.01443332585878132, "statCode": "V9sJFR900jpztZIP"}, {"inc": 0.21701899279040882, "statCode": "cOnxokPQ5HekviHD"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'CNbFj4niYoGlRBA6' \
    --body '[{"inc": 0.8550440289756918, "statCode": "O5PLdJtlxxKNXQrm"}, {"inc": 0.20706182877505597, "statCode": "nyyt1IseWAyxejph"}, {"inc": 0.6965514137846126, "statCode": "SlRtxfErfsLvRKFe"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'uhYfoV6DxM1Eo4kX' \
    --body '[{"statCode": "mmKWLGpUJcgSpi7D"}, {"statCode": "M8ba5YBSsyLMx3kV"}, {"statCode": "YqCuCf03tdiJTB6J"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'N4ng8DLKHzWoY8Cp' \
    --userId '8uDPbDM8ekYSCDEt' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'tyNqKwaowyhasHvH' \
    --userId 'z7SNnX0RPwFnBwiG' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'bfWL3f5XvOuFlJ8D' \
    --userId 'XcIehZvG236zxsIw' \
    --body '{"inc": 0.30641802523105277}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'wTsBqaqexOusNSq1' \
    --userId 'zaVXGIvFS2FC7aQy' \
    --additionalKey '26KHVHbfJfee9pkI' \
    --body '{"additionalData": {"7jsWpfwcYmjPhZ3d": {}, "7QEnYVuvRW89xGLZ": {}, "xPu5zgo9EKSBjSDp": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '36' \
    --statCodes 'I6cOo14z1bMUaJ7U' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'gbe0F98rbuiB3B0r' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '29' \
    --name 'JhglYyvzopcIHIvm' \
    --offset '77' \
    --sortBy 'mBjzAPEdO4Da1glI' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["zpV7G9OnqSCIs1tY", "fEZxh8lhPk0cSiyl", "NBMVOEk3Vo6YBF4e"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'eAl8Tfs5hRqhvjnR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'CtcXCgesR5FSUFuR' \
    --userIds 'pSJPmEVTOpGsO7ry' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.022821358072069642, "statCode": "mZ4rZI2ptovu0kAs", "userId": "fFmRHoKucz3Am5O1"}, {"inc": 0.39535345994859705, "statCode": "vhSaNRZMl2KFpeFq", "userId": "wYQx2jQS5lestyLS"}, {"inc": 0.20131354546558766, "statCode": "IYhDCDZ1K6YYSaD0", "userId": "f6fZ4WotLjczo4c5"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.346709079512335, "statCode": "MF7C6oamvr4lJwfx", "userId": "v1GTGKF96d7kpDOo"}, {"inc": 0.7733130468449236, "statCode": "HRWAnJf85eXOz8Pi", "userId": "LdFkjpYVEsp2rXoA"}, {"inc": 0.009483644435588579, "statCode": "cuJBVtaY2xpR9fdN", "userId": "8hgqsm7vbzcHoWsC"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "TImyQLozz71H32Le", "userId": "oWM3zOpOCmgsmqDc"}, {"statCode": "0QUFAXwIxShn5JY8", "userId": "IWA6lFOhKrEOKwml"}, {"statCode": "UyvGirbe1EIxH5su", "userId": "JwTuO47dRfAEq6Du"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["NvqjxqkAU66rqSWM", "7l0zMY7OGIREOy7a", "GYEuvYc7Aln3HK2n"], "defaultValue": 0.23418381254634535, "description": "LQhx92Kyjhk001H2", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.3681802155829068, "minimum": 0.6708903844885724, "name": "r8ElT7zbyQq6DqZ8", "setAsGlobal": false, "setBy": "SERVER", "statCode": "SlgmrWHOVkeOJPsX", "tags": ["Z8QVYNVe0IsGfYhg", "tSungoYSgdbB3wN2", "dzv2DmBw6YdLL04l"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'YSJitYFe7IkwbivD' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '11' \
    --sortBy '7x11LnjdFih6X9aW' \
    --statCodes '["A6iTGaGdV7hP9dc1", "Yme8PHSVrtel73bv", "uVYKp5KzCtp13bfR"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '94' \
    --sortBy 'tWw03PBz2VrQ2zhQ' \
    --statCodes '["Um6P0NkdDr84ZPOo", "lk4A1CMEBsRhiVt7", "2SoH0wq0Pp2H17iJ"]' \
    --tags '["diK81DaJuax6ka6A", "bjFNDygGXvUYm5Dw", "CP6XYQlUHnk6UbjK"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey '23PF9sDRrLVm4f75' \
    --statCodes '["uuwnjEBVpSNVSd2j", "R7zGaDPcAJYwmIuw", "O0iJdE8wzG4Wwbvs"]' \
    --tags '["TTYKp9ZejEd54BpP", "Ybgm3b4QwJgb6fbZ", "HMg1ZY4y5fduQaQR"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'c47bwMzXATvojxSD' \
    --namespace $AB_NAMESPACE \
    --userId 'tESdWqMfLmpWAij8' \
    --limit '6' \
    --offset '48' \
    --sortBy 'zBgarr7GxhT2QW60' \
    --statCodes 'meAEaQZjyXKK2X44' \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '0VsaoOT7utYR4Ncx' \
    --limit '12' \
    --offset '30' \
    --sortBy 'NDxVoR1MP4aM21IH' \
    --statCodes '3toaZ7LIEf1d9tNI' \
    --tags 'mL0AiK8pFOkiMXQM' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'NcYDw9iykeKgyJTd' \
    --body '[{"statCode": "Pi0QS3PWJhWuC9nW"}, {"statCode": "9z9OTIitHOlvRc87"}, {"statCode": "oXKHY8mYi5lBSMu0"}]' \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'PqwVpzJjU3wk8QCg' \
    --additionalKey 'd4SQ3TAchYcbQkAM' \
    --statCodes '["deGvNRhe3D4Rp19I", "CNEBB0oIlaAw64WI", "x0r0dGP1F7RZxLac"]' \
    --tags '["ks2M2Tl50sXY8Upf", "fokfkl8VweerZWrg", "LBhiF1pdtQPZVY1x"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'o0gq2iWNdd3muO6K' \
    --body '[{"inc": 0.8991229008628272, "statCode": "8qTttI9rzmIJRsz7"}, {"inc": 0.07582037393996122, "statCode": "qUEfY0gTGsqe3CAV"}, {"inc": 0.849798468435127, "statCode": "cAHMRzJtAaNSaBJu"}]' \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'hXCmMpNmWOe5nfIM' \
    --body '[{"inc": 0.3963526449678335, "statCode": "GKWfteISWlF6PomX"}, {"inc": 0.6832422729022284, "statCode": "tQueN4YS2kq2welu"}, {"inc": 0.2693966285327444, "statCode": "mpFAqeKj8fW4kWmy"}]' \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'bpHOvw1nP8LuLDeS' \
    --body '[{"statCode": "gedw4b510TEnqNJC"}, {"statCode": "dVP5V804kB0kt9MG"}, {"statCode": "WwEMeAcI0LWDcY74"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '7kuX98iRcDuc26kn' \
    --userId 'ptyVhWgpvcvPn214' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'tyeOXxipY0NLVta1' \
    --userId 'yJOZ01U1U0p2k9H4' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'RICaqdVNhqynWLd7' \
    --userId 'u9qQePlrsvoT4Oyl' \
    --body '{"inc": 0.9527461315313325}' \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'PbrzF0gDx1558smq' \
    --userId 'lScLsEiJguviJUnt' \
    --body '{"inc": 0.9352878179642836}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'gWhEljWdj5fVQv4t' \
    --userId '6Z0GCEHOv0m2UMOj' \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"abYqTw5C7uurAilf": {}, "hSw3hCcOxHjXieGt": {}, "aWFeCB4zBF8kgDAl": {}}, "additionalKey": "K74latVXQWSQUS9c", "statCode": "uJ2mi8WBoD3YiGLp", "updateStrategy": "INCREMENT", "userId": "bkxZuTHlIH0qWeJs", "value": 0.2081505835962797}, {"additionalData": {"ByhYpFBByszeTGW8": {}, "m3LJaE8GdZ3De3Dq": {}, "z92Ti3Zv6nZMkTa1": {}}, "additionalKey": "1JEZ0qQ7rrPul4Rw", "statCode": "n8n5brdJZhJSQkw3", "updateStrategy": "MIN", "userId": "AVUkndpF4dWSDY2G", "value": 0.7473136666899367}, {"additionalData": {"aK9O1X7wST7C6PBG": {}, "8nSLeTRGJUk8qG5B": {}, "upJGKqyjF43CQkEL": {}}, "additionalKey": "reKdGGDPg91d7XLS", "statCode": "h03u0rjnT3QvodPW", "updateStrategy": "OVERRIDE", "userId": "lwkmTnXqhQLk3uLj", "value": 0.21276843339039786}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'hMpzfLGdWYoRDNq6' \
    --statCode 'Y76ifoZFbeeg6HPZ' \
    --userIds '["eonTYelG5VZMVr1E", "bi6fNsLAlPitWXiO", "Dxa4XTD2mBIUe74g"]' \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'hbfbYmHcSDOkS5em' \
    --additionalKey 'Dqi9cDBJEf5VRt2F' \
    --statCodes '["iHnn06ME7OdMllXV", "pRsibTZ8HuJeYaZd", "oxKRvkRPG03X1Vp5"]' \
    --tags '["KiIQYHI2QUo1qpRb", "kNwDU31Z47D6448b", "Gxt4RZNm4BRRwhhs"]' \
    > test.out 2>&1
eval_tap $? 87 'AdminListUsersStatItems' test.out

#- 88 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'PFya1Dj9BxQcaNZA' \
    --additionalKey 'xC4elzqt3ZbiRvf5' \
    --body '[{"additionalData": {"fH3kBFMDYzFCA5x2": {}, "48iZoGQw5PLomvoy": {}, "s9LkZCpsPOpTMzBD": {}}, "statCode": "tol5NDB21B3fggSu", "updateStrategy": "INCREMENT", "value": 0.07682704574160448}, {"additionalData": {"yKNdnYyMKkeWRxtg": {}, "2pTUGHNqwqytsUoq": {}, "ql61Spd9G7qBED8L": {}}, "statCode": "Efs34WNYdDBNeVbL", "updateStrategy": "MIN", "value": 0.2682576828828934}, {"additionalData": {"izPTePfTdWghpn1d": {}, "QKgVn3BtdfIkHFFi": {}, "NfAA5wGzJWXwZ4Q7": {}}, "statCode": "zo0ladle67kKv4NT", "updateStrategy": "INCREMENT", "value": 0.5693122298200708}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem' test.out

#- 89 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'TSp2y1yhWHHS8BTR' \
    --additionalKey 'd9SEkpkSGYcWQCg4' \
    --body '[{"additionalData": {"mdPH6vetSjTrMObI": {}, "hZ77XfbLau4UxTjs": {}, "RSo2hOjqVciiv5LK": {}}, "statCode": "U0U1FA1BmDlYwjd2"}, {"additionalData": {"gF30Icih2AaMjd07": {}, "ejyhSKtSiTEPtabA": {}, "gMdN8v0qP9feodBl": {}}, "statCode": "XBquFVyH5hdoO7kM"}, {"additionalData": {"aRuMIKu5eMO9ECoV": {}, "5IwPyrkvfKt9UP1n": {}, "wtkLaJ1NTUOaxniA": {}}, "statCode": "SBoYkJTpea3lY8Nh"}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkResetUserStatItemValues' test.out

#- 90 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'YCcA49RZeEGTu0S3' \
    --userId 'k8FswS57HUCnUYnk' \
    --additionalKey 'YldCn72kWKoJljkv' \
    > test.out 2>&1
eval_tap $? 90 'DeleteUserStatItems2' test.out

#- 91 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '3WJqG8PwXctsdjOk' \
    --userId 'HkMqyQOzfKxZVEFL' \
    --additionalKey 'pBUVyjpzWUDKLpol' \
    --body '{"additionalData": {"XHsZARqFgVjQEVM0": {}, "ObyB2OHa7n91ByNU": {}, "SnVDTGCuPJzyPWLQ": {}}, "updateStrategy": "INCREMENT", "value": 0.0891989387517571}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue' test.out

#- 92 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"ZOWeS8HRPQsNbRgJ": {}, "kw8rjuTTFZnOix0x": {}, "rvbLSp2SI5I4tKNA": {}}, "additionalKey": "XdvM7mLx8PEhCRrL", "statCode": "L4z7Izo6CDuOIm74", "updateStrategy": "OVERRIDE", "userId": "XWFjMpJyFShPjeVd", "value": 0.37692010682755506}, {"additionalData": {"1fx08gbnjpBA0MLk": {}, "tAbdHbLP3ISptAaI": {}, "HNqVt8hD0xH4MBnb": {}}, "additionalKey": "xzR7BRwH48SBPhZa", "statCode": "8kHW0cYqfKOy32Y8", "updateStrategy": "INCREMENT", "userId": "nUNiwbnjBJHHXzHG", "value": 0.4274892536328645}, {"additionalData": {"9cr2L2OmPuPnbO5b": {}, "YebvZ2FRwAejcEZH": {}, "X2VHH73uEolC3Wh8": {}}, "additionalKey": "tzeXrOticnY0U4rF", "statCode": "quoiG9fxteWw8cKH", "updateStrategy": "MAX", "userId": "LBSVkCzVEYjV9R9V", "value": 0.9039782949745633}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem1' test.out

#- 93 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'Z8i5DOYypxL33GoC' \
    --additionalKey 'p4x5X5MwCezmmV4T' \
    --statCodes '["JdBhWexuVLXexubD", "u3K8oZrNasSt6Klg", "QlEBsDAeDSUp6RE1"]' \
    --tags '["0Et8rKBwZpL8clan", "g48v2UlJ1ypTxj4k", "hS8NWQaiKCNRNwR5"]' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryUserStatItems2' test.out

#- 94 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'jbUQ0FWNYEkt02Fb' \
    --additionalKey 'NRCB33OWX0M3IPxp' \
    --body '[{"additionalData": {"0F0tEQrlpPeRPqB7": {}, "WyKm8gBkpQ93IDdS": {}, "JVObUjEIWSfAqtq3": {}}, "statCode": "x8SArgD0I4LNhP7e", "updateStrategy": "MAX", "value": 0.7436959316146312}, {"additionalData": {"ITkbBwpbVJFhVn0r": {}, "PK5b6SZVGg51r6su": {}, "Ew6ggmMtU2Q8MjGB": {}}, "statCode": "6UiOovTl0tWkO9PO", "updateStrategy": "INCREMENT", "value": 0.22810458251012578}, {"additionalData": {"vQk1aCCOyR70EjwP": {}, "J19J9Q0GKVPKxrtW": {}, "g1gqM1UlvltY9SmO": {}}, "statCode": "TP1HQTBdc9ST2cm3", "updateStrategy": "MIN", "value": 0.8510971338587032}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateUserStatItem2' test.out

#- 95 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'OTBHmtFftWRywZi2' \
    --userId 'w8M5RFAjb4XLP2qR' \
    --additionalKey 'nMCcfO0RpOGfddo4' \
    --body '{"additionalData": {"yGqrIcdtA7qm678b": {}, "OhaNMwFbBhmSb9Lc": {}, "Lbqvyho9ECFTxiFh": {}}, "updateStrategy": "MIN", "value": 0.1664363318333859}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE