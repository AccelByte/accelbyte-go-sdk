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
echo "1..99"

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
    --userId 'vMRGOItvKfGynXHm' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'N00A9oYFJqUG3mlp' \
    --userId 'S8KyvHOhbnj3t90R' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["0Kw2gubfsUHCH4HE", "W0wj7wZxjkr1Z44s", "DxX0zzpZCek6ZIwI"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '7rcSdqSByyT9sEql' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'R7RbLzWTvwlDrEw9' \
    --body '{"achievements": ["dWbSpnkERE141Lbo", "L1ka0iFJmemxJY5E", "295CR0DlB7p71hwn"], "attributes": {"eyCgWpQ3dsG8vSES": "AqqYETU0jwq7p00n", "yqQoG4e1pt31t4FW": "g0E2xCaokeMPDlzk", "tJHhtGrL7tDKo4ff": "3zkDW2Grp93lakSk"}, "avatarUrl": "TAHhZzjDvqSsK78s", "inventories": ["GRoXpIRCKWzXNS2T", "NEIL2oXPRmSeFwnZ", "oCZEW114x3CZywRL"], "label": "whfzGtSALG9pzvCZ", "profileName": "Dmap5aPYERkt3JGR", "statistics": ["89yED2qnCapXV5hp", "WigxZIKPpxJmfHnN", "vz3zoqDMIXS7B2K1"], "tags": ["ogLYI1zenrGhWgxU", "bIeBdcfg8QFijiZB", "UwxQpXksfl3x69SD"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'X9MXMU6w9Dq1DbXq' \
    --userId 'MdB72y3Klb3swkZU' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'TpBmzLw7xeirNmeL' \
    --userId 'HYitzIFBlb5LqJpp' \
    --body '{"achievements": ["gnHRIzz22ZjRIRvn", "7E7LxC1hFynzxTVG", "HNJcj32vs4CWxGqr"], "attributes": {"nwDbULX7TGpvxx13": "iFr2XBXmbGfevHgG", "IK2VFOBQYB5PpUSm": "KgeGXrgFTOUQaKtU", "fy4RXcxO14IvrjAM": "NJy4LGN7MHogcJuh"}, "avatarUrl": "5lqr43QhEGDrL4Kb", "inventories": ["a8TfUYohPug9BXLX", "f2gcLkbqQT2zOU8Z", "hZlaE2XwBS00YcS6"], "label": "z4C1HynRo8mTLIWh", "profileName": "OI2v4Oi2gWfwLToc", "statistics": ["S6nrG9J47SHvr6Gl", "eVvCKB9nadaJQ8A6", "bhipsWIqozeeIne3"], "tags": ["cRGlEkK1PkisIohn", "DT6ZqKDJgdb0Zewy", "2YvuNGHFwg8Prtg3"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'raAdhYlfpHLvltmf' \
    --userId 'g4hO342TPAj97fYu' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'eUByIdUqTE89ndK1' \
    --namespace $AB_NAMESPACE \
    --profileId 'ZNTJO5P2WfbdJcSS' \
    --userId 'BTjKTfBH2o4z6bIr' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'BkLJg66PL8YFM8lV' \
    --namespace $AB_NAMESPACE \
    --profileId 'HMwKovqrjMKjPiSS' \
    --userId 'aOBZakhfiBXchE0U' \
    --body '{"name": "XqfNoXs3vFgMO9p6", "value": "6wmqt6qMorUr3tzW"}' \
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
    --limit '76' \
    --offset '43' \
    --statCodes 'XDVOfEIX1ysZftgC' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'Vcpnl4tqU8gkh6SF' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '86' \
    --name 'Ly37vnOiyStuPwPo' \
    --offset '7' \
    --sortBy 'Pqy0kcBlsNzarc7O' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "Oxxq3Co47TGAegpZ", "end": "1997-04-13T00:00:00Z", "name": "8jtiwEQF1UoHKXtq", "resetDate": 77, "resetDay": 87, "resetMonth": 66, "resetTime": "xM2sw585ru53tpIg", "seasonPeriod": 6, "start": "1978-02-11T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["ucoPTWq9xGSLfbZg", "cQumsHpNjE6Sgrll", "ZznJMl3bDvRlXpuu"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 ExportStatCycle
samples/cli/sample-apps Social exportStatCycle \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ExportStatCycle' test.out

#- 32 ImportStatCycle
samples/cli/sample-apps Social importStatCycle \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 32 'ImportStatCycle' test.out

#- 33 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 't0wj7XO2mgP9ce8O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'FlLi1F2lFtOPI5k8' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "cndI2TBUSzWvWvHt", "end": "1996-08-11T00:00:00Z", "name": "mgTnZ0El4B31Lhye", "resetDate": 49, "resetDay": 37, "resetMonth": 86, "resetTime": "0I1gsxlpvxzgC92s", "seasonPeriod": 79, "start": "1996-07-14T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'M0nXGqlkGkyCq4hC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'm3KUUGbyhkJesLih' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["6KtEPDNaOoeIVsHn", "n9HF7bQcQulDfICx", "5bVSW7obyv1zFqgt"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'ZAnkPEoE4MWJwWMt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '4ScbOG5of7FbgE3S' \
    --userIds 'CoQJJEDf1nIfpz7x' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3830255953754218, "statCode": "it217FsYx2shvFSO", "userId": "NV9ZCxU4XR7QVG2g"}, {"inc": 0.6797104067461479, "statCode": "VduwIfLYOa5W5ZeT", "userId": "vZKQEdRGBUA8vhnb"}, {"inc": 0.67266424135521, "statCode": "xq43JUU5ZYeA2DxL", "userId": "xUhDYSPJfBuy8abe"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9549941981415122, "statCode": "7BypONiGnHkFp02m", "userId": "P7A2pwOoy80Do9Sc"}, {"inc": 0.8071701523994357, "statCode": "nIcHkH3pr4LlEnR4", "userId": "CMTEppUfjH1Vwsdc"}, {"inc": 0.04641671052456342, "statCode": "2IBHjFaL2mPdaggC", "userId": "s3tBzgOD9RTA2dop"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'cv6V92vjOkQXSjEV' \
    --userIds '["hCKN3b7k6LVfrnWL", "UaFsh3YrgKQZXpt5", "VUtNJKkl8oUrsqM4"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "WPGeKm2TxMIfnWrO", "userId": "xK1NG4wpgQonDtXO"}, {"statCode": "FPn8p5NLtReg5pug", "userId": "PRgT7myNz6OspdcM"}, {"statCode": "8wGQtA737n6WPHi7", "userId": "a669auXveWEIXojV"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds '6CClFUcHDnFbYBS5' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '77' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["2WGmi3NoW3GhBvgJ", "rhH7Ex3z5ZiFYT4d", "Dx6o3D3kNyUqEKUl"], "defaultValue": 0.7920081952012261, "description": "Zqhx0K8jkQfU8CN6", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.42737810129275267, "minimum": 0.4538874574958017, "name": "STlKlQPFsOQG4cyd", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "CH63EBZTI3yyhsgq", "tags": ["zedyySKsLLk2iy8O", "wqdJjOtlVmwS958x", "BPnGD78Zqthu4tzW"]}' \
    > test.out 2>&1
eval_tap $? 44 'CreateStat' test.out

#- 45 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'ExportStats' test.out

#- 46 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 46 'ImportStats' test.out

#- 47 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '95' \
    --offset '11' \
    --keyword 'on5iZleuALXXMejU' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'WQJr8X876pWrofg6' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'XrTvdQnCEP3KpQlI' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'fhczKDGmUhDjhEyd' \
    --body '{"cycleIds": ["a62vjdFHH22mMdqn", "OCLYDTtR6CCKnVjV", "MEwCKMyMABqFtlA6"], "defaultValue": 0.8492520239923873, "description": "3HXD2CddJlAEft5j", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "vuC0XXhE1dJnrcrq", "tags": ["BwOj3T6zoe9OH8m8", "9d5GcmnZ982lmMzI", "FSEiTS7U6BC8sgtB"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '8rlkWmjmC6mstF4v' \
    --limit '84' \
    --offset '33' \
    --sortBy 'yCx4IkChArj7z8Lx' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'w6Deg0jOFgvAibDe' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'qaF5lbktTtrmKHDK' \
    --namespace $AB_NAMESPACE \
    --userId 'vp4oDHQJyjEtsuYq' \
    --isPublic 'false' \
    --limit '59' \
    --offset '40' \
    --sortBy 'JMpPWQGvK6RMN447' \
    --statCodes 'jaz6oy2cVqLzIxmN' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '4GbDpnpqNPy588Ry' \
    --isPublic 'true' \
    --limit '54' \
    --offset '98' \
    --sortBy 'h5bHQ45ebpxYilSX' \
    --statCodes 'Kcwv4uKkUhBzjWWP' \
    --tags 'C5QAb8s13yMmnQoc' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'J6SO0kjElPFIkJAB' \
    --body '[{"statCode": "QwzfLaAKEsz3X1y8"}, {"statCode": "i9OEP0lVSxzHoHMO"}, {"statCode": "PZUzb7m6DEaXR0mg"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'XCbx9vU7AmGKu0Xj' \
    --body '[{"inc": 0.49245324650100875, "statCode": "xNLM7zqxBDz9jVJL"}, {"inc": 0.8521404382231603, "statCode": "3Y9Dd658YN7tbxV5"}, {"inc": 0.3064614966899123, "statCode": "voZH9jK3s7Nb9qAz"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'tjPFib1vBYv7fg7D' \
    --body '[{"inc": 0.1319132126463498, "statCode": "ealdaYGwszkAsnxO"}, {"inc": 0.9858709891656918, "statCode": "M4WFuWbuC8zfIlpn"}, {"inc": 0.954922964844818, "statCode": "bhmReETWV39qlJB0"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'UpbgsC2y9YNCenWT' \
    --body '[{"statCode": "Y3zwKvhVSddW1CXT"}, {"statCode": "rrwc2j1HBneUig9I"}, {"statCode": "Kd3NJNKAA9n5Fho3"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '6aylmNCMF5EPxSD5' \
    --userId '3c8Z6NjGhnO4UlLw' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'ZdpxYAr4B3anXaBC' \
    --userId 'XDFhSXwd91HrFCpW' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'eyGvn4DwnYy54LDt' \
    --userId 'ramag6L9O6z1enP4' \
    --body '{"inc": 0.6196202307750667}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'odxwiVkfMl4yOydF' \
    --userId 'dn2iJBH5QfyRNnxP' \
    --additionalKey 'YGL1gnIBtvHvo1cb' \
    --body '{"additionalData": {"6WAmMZPO4kwOmqet": {}, "N6nz5VNNAdYf9vSz": {}, "phlpjQKHGuzmJWIY": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '59' \
    --statCodes 'NIIO9wW5yoBSpEMR' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode '9HIiiFjeaR3aebTj' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '60' \
    --name 'r8dCgPXVtlZ5Jm4m' \
    --offset '79' \
    --sortBy 'iHlfKGODZj2mB6P0' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["cCGQJSTTfHomjjEs", "5l8H7mhcC1A1J48w", "N6i6HnAYAy10bN9m"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '31bZey7bUgljrgA3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'rIdBE1HL5qnG7wkn' \
    --userIds 'e3zSvZ3U5dhfaox2' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6703226566621934, "statCode": "hgfF718Lr4dD8r6I", "userId": "lkNvERGZzHJrSm3R"}, {"inc": 0.45729169013754545, "statCode": "0WCdG9rxY2eHwEZQ", "userId": "wWx8zZ3ntr5SLTWB"}, {"inc": 0.8888333264427154, "statCode": "o3zfNerKH3vpm46V", "userId": "PNMHackSMwCxJF1j"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5895626598363704, "statCode": "S05X0I5G5EzeDRMY", "userId": "OszrbwsSLKb88fbh"}, {"inc": 0.13743056240470797, "statCode": "yz9PfA0Yh84ziVQ6", "userId": "xVReFZ4MmwY31n5H"}, {"inc": 0.7828525062679126, "statCode": "dT56ic292yMWNHVs", "userId": "ryRWy1FCFG6ewoMb"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "Dsa2l3A28hrBZqfR", "userId": "SuzG9CMNi2YOCOgI"}, {"statCode": "3VmP9bVeMr9P29g5", "userId": "NHdl4t7r2o9fZOtM"}, {"statCode": "G3QiZ0aRh269GGVT", "userId": "MOtLjCgeeC3wZxWz"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["fGOFHEYsl06fTbMF", "rP3i0RuJixeC0TJu", "OiKKxjqyIhft3fhI"], "defaultValue": 0.10737829828755752, "description": "F5bKegT2ZTlQnCap", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.9397081250648178, "minimum": 0.4506300883240745, "name": "Kr6R3cV5VzAsZbIy", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "l4TerXj0AXhYh2ki", "tags": ["b4hDSRtBkW83OUZh", "oGxWX04zFgUel1Zc", "Azd17huRMy6m8Zzq"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'M3uFKILt7FpcLOjp' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '51' \
    --sortBy 'IwlqE7SoOcwJJ7dt' \
    --statCodes '["5Mepp4GJMJmTRUvD", "aYhU50rob7XbWNLg", "nU1EJUsAhRMsPa1p"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '72' \
    --sortBy 'Ft2SsZtzTT8njtcC' \
    --statCodes '["w0LMMw9Y4K8HpV9Z", "sf4rNgpIdTaUk5MS", "KGynNHeOddzrq4oY"]' \
    --tags '["gUato73dWyMI2ydC", "Gy6UJOYNXFoRmMG7", "sj0884gVDolYSh6Q"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey '5GncfitY1T6cTHBU' \
    --statCodes '["3ZAaopbCkKBs04bj", "o1LP0P6Rr7W3hOAP", "KcEmgtFoTW0dom5Z"]' \
    --tags '["5BB1ecowSNl4e27r", "bDpnod74j8azTaMm", "oCHc9Iy7hJDwgaif"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId '1V52oUwTMYyXrUew' \
    --namespace $AB_NAMESPACE \
    --userId 'TmkMGsVnjNPRWBEO' \
    --limit '95' \
    --offset '86' \
    --sortBy 'NMMVV20RGLq0rCC2' \
    --statCodes 'NNdKYoEfhdEkqaZ9' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'HMZiJImELtWCg4dW' \
    --limit '19' \
    --offset '99' \
    --sortBy 'O9myDzB0AFXbOEGT' \
    --statCodes 'fCYT4aMFVZLhHrbe' \
    --tags 'xq2izhqfsth9KcXO' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '3XTx4xNfGlVwYObP' \
    --body '[{"statCode": "mFG8BKJx2f7JUoxd"}, {"statCode": "e2UijXCuP0KtD4rV"}, {"statCode": "TatdUN8ztoqcplo9"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'DAhh88jQuuW0zdRK' \
    --additionalKey '6F1GbcKelYNSVFq3' \
    --statCodes '["yyTAqOKjkvMLX77p", "p87o25Yq8zOLrlgC", "vvUir3pCLVxSZm2H"]' \
    --tags '["sJM8OU32jLG4Gkh0", "p1Dl1bPaXlhZXcm6", "qlI21JQ9LVKPlSFj"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'LABFLRifWCVQYyZp' \
    --body '[{"inc": 0.344052298493038, "statCode": "otlIWGGQfVg6ROJK"}, {"inc": 0.27076862061485574, "statCode": "s7gjeg33mGbqUa2t"}, {"inc": 0.04428127641127799, "statCode": "k03TPxhk2Csipa0l"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'O0NW2iU4nk71RJx9' \
    --body '[{"inc": 0.10643750412205721, "statCode": "NCSpnjjCU4NdhFt1"}, {"inc": 0.09564389110078664, "statCode": "ADM2MShrNxnuH1ir"}, {"inc": 0.9837306801931333, "statCode": "MIpCEfM0UpZE4dBl"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'wxLyp48BYQHhIkSq' \
    --body '[{"statCode": "tyGeEuUeqCsmfTKD"}, {"statCode": "bMWXeqNQAscQKaGe"}, {"statCode": "poCHgRcEgZTTtNVn"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'eRRl8VMguzD1GdBj' \
    --userId 'KYP2dJX0z0qhP5ZB' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'sn9RbZiIVoeNuRzV' \
    --userId 'd56wuBNDEYB8xc8p' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'gbRMHGmKiN2pJC7g' \
    --userId '806nYX34WjM6tX4S' \
    --body '{"inc": 0.6860324458827423}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'jlg1OkyWbykONkvN' \
    --userId 'wzYBWHHto6aoew1k' \
    --body '{"inc": 0.3000014341794882}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'CVV0p7GjUQgtIcCK' \
    --userId '9WCruBlFchc1iHxZ' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"OJMGvWQM4t5Gq0Py": {}, "FATGbqjZ3O4Nn3ld": {}, "ftSHDjUfIa9zpDvQ": {}}, "additionalKey": "2x6ymjPvZkOn4xU2", "statCode": "y0nwlPC0b4DqEcaD", "updateStrategy": "MIN", "userId": "ngUu7bIBGmTnUXHl", "value": 0.6642039606315607}, {"additionalData": {"EWyqlD9Ai5oxdOke": {}, "Pe7N1R3zG6ZQRsIa": {}, "WuI2De5zQwVsBpoY": {}}, "additionalKey": "VXmPbbfm7njdMltY", "statCode": "SOEuoHTkse6UhVj1", "updateStrategy": "INCREMENT", "userId": "x7FAHcbJCWAiABm8", "value": 0.006772890220857475}, {"additionalData": {"Cl474fWHSWg5VRFY": {}, "eXGR2iJx00IH1Hdv": {}, "1oTIOpgQAzxRO0Xo": {}}, "additionalKey": "toZdJinJ8lCdy7V8", "statCode": "ZRptMPZvpW4EIc6W", "updateStrategy": "MAX", "userId": "KBGDTj8jZWAgyX7b", "value": 0.7665471618227975}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'wdyWGuEqte80LthJ' \
    --statCode 'OjmRlLE2FSLfTipO' \
    --userIds '["7Sp7n32N1UwMglxC", "0G6PByOTg2uNuJ1K", "y177mRSTts2C2aMN"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'AWhF87I5VN8R4eml' \
    --additionalKey '3mAHDrbPIdHMiFl5' \
    --statCodes '["GW7q1FBI50KGEphe", "PzvmSRobPGMK6pM9", "IPceqlpOMzigpbyc"]' \
    --tags '["1WBRAMLS6lJEmyrd", "G5V4tpmXYBc5unKa", "wEChFDapbHBcNpiP"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'pqSivuD6N7Rik0Bb' \
    --additionalKey 'FDg9yHVm2M15ptMU' \
    --body '[{"additionalData": {"NQJ3zUlHMWwSWgab": {}, "hvjhONqWApFTbIcH": {}, "5gdbMcpkfetZ929o": {}}, "statCode": "EOi56DxYwuFevQ2W", "updateStrategy": "OVERRIDE", "value": 0.7889314151788195}, {"additionalData": {"24TK0obmRmt5HlHQ": {}, "ZzIo1iy1RIbGTJ9O": {}, "HdOuEbPc9Jf4iZMq": {}}, "statCode": "LWWzFobeQwBf4jGR", "updateStrategy": "MIN", "value": 0.001777414783395992}, {"additionalData": {"sZX9H4KG9HMWCZVz": {}, "YJH2KhP84t1SxDiD": {}, "vfbjjiiXRnE1PFGp": {}}, "statCode": "6YDZeAthkl5NXIaU", "updateStrategy": "INCREMENT", "value": 0.2156911587156941}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'oppGRsxIXyZio5R5' \
    --additionalKey '5DefmacYuNg8xpZl' \
    --body '{"statCodes": ["OI9CUGWQKF69lmDe", "SjriiN3A9B1aDFpI", "1vt0hj1vXjRNqOzk"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'Ja6kMmY6RmfSTTUN' \
    --additionalKey 'Vnyxof7NorBbxhxx' \
    --body '[{"additionalData": {"ELh3PTkvYY6vDC5J": {}, "Symj6cM5yWrjR1Te": {}, "8VHuAHBWbI2FiwFS": {}}, "statCode": "ZneOLyqFRIf5nOBq"}, {"additionalData": {"uYdtb1uSUwkIIhhH": {}, "eeqM7f1E9z2NQ8c6": {}, "VkuyTt24GEC8EfUh": {}}, "statCode": "o3LkiBafZjMcxb5w"}, {"additionalData": {"eL032p3H0xigVARD": {}, "w7OqChOCgAWxAfN2": {}, "ejogQ3q4koP6QbL7": {}}, "statCode": "O20tjojbNJDtmC1i"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'aJJ4cMBZUl5icuEq' \
    --userId 'VGvrpprQEhWEx7wp' \
    --additionalKey 'sJ8JOX8JBvFYe2ka' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'cN5hE86tlQsh7H3A' \
    --userId 'KD4EN2WiCkdAG0U0' \
    --additionalKey 'aK7p6XsEBLWmMTDD' \
    --body '{"additionalData": {"07ezsv01QMZfVZSH": {}, "MJWNovUCsAlB72TC": {}, "Cu9MB7xUdV9PsXtG": {}}, "updateStrategy": "MIN", "value": 0.6602189037146109}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"gvsKFQl02INHBnfd": {}, "wo8W8IEI80jXKeyp": {}, "W0UQgIJ2XVolcCVo": {}}, "additionalKey": "a7rpzJgg0q90p4CW", "statCode": "DPBmtD4W0ebTdWbB", "updateStrategy": "MAX", "userId": "YDioFClcKAQr30i4", "value": 0.07342471358188818}, {"additionalData": {"JRcWDeLSYINMVtMd": {}, "qHXKuSEXpWDK3bmv": {}, "vedsoCdOEWJ0TcOG": {}}, "additionalKey": "4b3QC3gcPTPCzq0W", "statCode": "Pj8AUZkoVbVqTiYV", "updateStrategy": "MIN", "userId": "yntYBfUUgevMTE1k", "value": 0.8362632497523504}, {"additionalData": {"OeuHFbTigk3iBgpj": {}, "CailLOvWvgd8jS2f": {}, "32SgM0eFmXL6ScSq": {}}, "additionalKey": "URX0HQywpmotVzZO", "statCode": "MTmguNdg5ywpMqnP", "updateStrategy": "INCREMENT", "userId": "qDRmv0wUYmzf1EvE", "value": 0.37497839012324774}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'kG9vV3681tbKkgpL' \
    --additionalKey 'e1AhbUts1jbZdRFE' \
    --statCodes '["ZoEbhKvjL2ATwmQl", "ahnI0G7kVfw9k6Sg", "2vn7kfO0hNsLcaXX"]' \
    --tags '["9NpSCBXBnpDeLUlb", "8c77QPMW4LcuvoWG", "6xKCfkNXBcSQTcu7"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'L92h1S9lSF0D8MwD' \
    --additionalKey 'Q1suoG9aSG9ONQQZ' \
    --body '[{"additionalData": {"9o0W6CFTciLgYFm6": {}, "MKdfpetsojLKcy6E": {}, "eG52afIrhCMJQucb": {}}, "statCode": "ANzYlWGFcus5m4Uq", "updateStrategy": "INCREMENT", "value": 0.7865536704720097}, {"additionalData": {"5ELBVSN3akrq8C4s": {}, "TtZwN9NIFYMkGbpS": {}, "ckf51CKFfvd7lBXf": {}}, "statCode": "FOSwJfRx2iPcgblO", "updateStrategy": "OVERRIDE", "value": 0.22062222185178137}, {"additionalData": {"XaV56Uvrz0m0CeEz": {}, "PGsuw6piDegRqmb3": {}, "11Ng4hGjysJdTGBw": {}}, "statCode": "cU7Kk5fPAog39MdQ", "updateStrategy": "MAX", "value": 0.4949887954025187}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '068WnZNSe66W23vo' \
    --userId 'AP9ySAjtCCkobEi8' \
    --additionalKey 'GZW2G54LdEeSjisW' \
    --body '{"additionalData": {"5GPPNsOP8YAYaOOq": {}, "2iFl7464FiN5pkHe": {}, "XXEK30OgOe3pmTMq": {}}, "updateStrategy": "OVERRIDE", "value": 0.7022348352530582}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE