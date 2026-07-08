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
echo "1..100"

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
eval_tap 0 8 'GetUserProfiles # SKIP deprecated' test.out

#- 9 GetProfile
eval_tap 0 9 'GetProfile # SKIP deprecated' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
eval_tap 0 12 'PublicGetUserGameProfiles # SKIP deprecated' test.out

#- 13 PublicGetUserProfiles
eval_tap 0 13 'PublicGetUserProfiles # SKIP deprecated' test.out

#- 14 PublicCreateProfile
eval_tap 0 14 'PublicCreateProfile # SKIP deprecated' test.out

#- 15 PublicGetProfile
eval_tap 0 15 'PublicGetProfile # SKIP deprecated' test.out

#- 16 PublicUpdateProfile
eval_tap 0 16 'PublicUpdateProfile # SKIP deprecated' test.out

#- 17 PublicDeleteProfile
eval_tap 0 17 'PublicDeleteProfile # SKIP deprecated' test.out

#- 18 PublicGetProfileAttribute
eval_tap 0 18 'PublicGetProfileAttribute # SKIP deprecated' test.out

#- 19 PublicUpdateAttribute
eval_tap 0 19 'PublicUpdateAttribute # SKIP deprecated' test.out

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
    --limit '92' \
    --offset '91' \
    --statCodes 'uToIAam9loAWmxub' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'SYFBeW5v5KUgkbPT' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '84' \
    --name '4n9gCPRS0nimOmSC' \
    --offset '40' \
    --sortBy '2oHPCBAaHRqzmOJE' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "JCCP3zPxoDmEQw9g", "end": "1974-10-31T00:00:00Z", "id": "OtmTT1BlaZx1G5dx", "name": "MI0Bk23rsA67l9HN", "resetDate": 41, "resetDay": 5, "resetMonth": 29, "resetTime": "VBmaUUPaEB6Pdfwt", "seasonPeriod": 7, "start": "1976-07-21T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["x5wBDE2ws5Z3qFTe", "GTeKHvCvyjMTCYr8", "OW9fJrLv8ARvq8JR"]}' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 32 'ImportStatCycle' test.out

#- 33 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'bVAW4C9oYR0kPda3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'PgVOZPz4CEl03NSq' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "Do1mNAMeZqQjlH2k", "end": "1996-07-16T00:00:00Z", "name": "NtOtiiXcmDSyfbTM", "resetDate": 19, "resetDay": 72, "resetMonth": 12, "resetTime": "Oe2HtNGDhPotH5qL", "seasonPeriod": 99, "start": "1973-05-03T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'xikyOm8Z1QWh1FSz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 ResetStatCycle
samples/cli/sample-apps Social resetStatCycle \
    --cycleId 'SGRtrYzQCm7W7oyW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'ResetStatCycle' test.out

#- 37 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'OqhoXo2Tz3up3oMl' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["RDpJ7PWvUm6xS2ot", "3xC8Bh9BBzfS40xz", "N0uOOFrklRjdz52F"]}' \
    > test.out 2>&1
eval_tap $? 37 'BulkAddStats' test.out

#- 38 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'hFtvCA1k25pTFifg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'StopStatCycle' test.out

#- 39 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'ArbZYENmP0uutHxR' \
    --userIds 'XWq0OS4CvjhrJLQ4' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchStatItems' test.out

#- 40 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.24545116485664664, "statCode": "zQJFSfiqZZbmElcw", "userId": "BFmfo8emvJEiHGA8"}, {"inc": 0.7794980743798763, "statCode": "Yvg0X7mlW8TAP5Xe", "userId": "pEdYwL79WpJMJRVl"}, {"inc": 0.42375586539013677, "statCode": "p8MVqLER7arvbif1", "userId": "Ha2za1ve62ug5BHo"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItem' test.out

#- 41 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8867684756186971, "statCode": "eOiYjyKHPH6NrO1G", "userId": "g4wqGflOlIi2xg2A"}, {"inc": 0.16945252467569938, "statCode": "yuWnbkGoRJlTmCh2", "userId": "cMOdOQtp1EgxLaFB"}, {"inc": 0.9967733709545584, "statCode": "O5tctAniNcoM8uRC", "userId": "4a1cuPeUyKp38rcg"}]' \
    > test.out 2>&1
eval_tap $? 41 'BulkIncUserStatItemValue' test.out

#- 42 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'WojsZgpGz5zNdpQM' \
    --userIds '["QJbKAOOxYfzpQAu6", "8og3digOc01WqMgn", "f8XJ1Nn3METYxaMM"]' \
    > test.out 2>&1
eval_tap $? 42 'BulkFetchOrDefaultStatItems' test.out

#- 43 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "vZmhBGcr54NlHWVC", "userId": "oxan9bpOhRrJKZ2w"}, {"statCode": "jpmMDwWXoG0yCeqK", "userId": "fjjUvkntWW1UZu0o"}, {"statCode": "0OGNuigBVMgXW6yR", "userId": "M1mPYQ9W5rFlJkkO"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkResetUserStatItem' test.out

#- 44 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'XYfi2uF6NWrnoW5g' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '37' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 44 'GetStats' test.out

#- 45 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["eqGJeWFlt77g2BLA", "hfh39vvTHtMSCpea", "jgchgfuAcj6KQzko"], "cycleOverrides": [{"cycleId": "Gj1JSHxvA654HgOo", "maximum": 0.2201078306057559, "minimum": 0.9486137994850778}, {"cycleId": "QZNmhto2lTtgea0z", "maximum": 0.4259071633983613, "minimum": 0.8907960854570199}, {"cycleId": "UCiH8Mrn6B5bBSSg", "maximum": 0.90720334269521, "minimum": 0.05920402965595084}], "defaultValue": 0.2840829410246912, "description": "oSkPS82BJ2fHhtgF", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.996208480275048, "minimum": 0.6681723090530762, "name": "o3YpTOkqOl5d6bh6", "setAsGlobal": false, "setBy": "SERVER", "statCode": "785lJAMOebRhMV5b", "tags": ["YUPHYweetBrANW4g", "8Wg4NDYk4gUAmMPN", "9FKWbCOTLaIlf2iD"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 45 'CreateStat' test.out

#- 46 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'ExportStats' test.out

#- 47 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 47 'ImportStats' test.out

#- 48 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '55' \
    --offset '12' \
    --keyword '6YeXF63JXSCLUVYN' \
    > test.out 2>&1
eval_tap $? 48 'QueryStats' test.out

#- 49 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ugxlb5ZOU1VIJDCj' \
    > test.out 2>&1
eval_tap $? 49 'GetStat' test.out

#- 50 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode '3Uecc7hyowUACF8i' \
    > test.out 2>&1
eval_tap $? 50 'DeleteStat' test.out

#- 51 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ngPZzOjSDWGmx9dF' \
    --body '{"capCycleOverride": false, "cycleIds": ["f6DfGaNneIqKkueW", "VquuZNMrFJGa8G8U", "4dQ9ovdoksgr08Pf"], "cycleOverrides": [{"cycleId": "M4Oyr75GNe0ni1w2", "maximum": 0.5527198032700663, "minimum": 0.6895132577510197}, {"cycleId": "F9mjSAzNhewgRBL9", "maximum": 0.162685783558411, "minimum": 0.8904607890792081}, {"cycleId": "xqX4etfLSixpy4vQ", "maximum": 0.09284368261886466, "minimum": 0.3341490144291719}], "defaultValue": 0.39856811834517025, "description": "MAWpKa3kfqEYNzwp", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.8386207296754004, "minimum": 0.3355537752267138, "name": "WlXZNcZVmxH5YiDe", "setAsGlobal": true, "setBy": "SERVER", "tags": ["pWNgF3kqQGmFYsLK", "0FDPFgiLMfGqczzn", "WpypVscWcbgsOh1N"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateStat' test.out

#- 52 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Cu8JmZmqON8yi9Eb' \
    --limit '80' \
    --offset '31' \
    --sortBy 'OKGN1uWfU4H1G2HB' \
    > test.out 2>&1
eval_tap $? 52 'GetStatItems' test.out

#- 53 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'DSabSvkUm0Wm5VAj' \
    > test.out 2>&1
eval_tap $? 53 'DeleteTiedStat' test.out

#- 54 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'K2hU0CO5PKs0jvhU' \
    --namespace $AB_NAMESPACE \
    --userId 'qC3vEbYoC1L6w89Q' \
    --isPublic 'true' \
    --limit '25' \
    --offset '34' \
    --sortBy 'wELdxkle0jUAynZv' \
    --statCodes 'edQdnkTMuM5hwCl5' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatCycleItems' test.out

#- 55 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'KT42Qy7e8YObBxdL' \
    --isPublic 'true' \
    --limit '34' \
    --offset '85' \
    --sortBy '5MABQZF3ulMkKEJv' \
    --statCodes 'NPA42NrYN93pYp1X' \
    --tags 'ntO4LdJmY0uZORnQ' \
    > test.out 2>&1
eval_tap $? 55 'GetUserStatItems' test.out

#- 56 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'jApSFK1YxFh4MQfr' \
    --body '[{"statCode": "ewbf6zivBLHAL9Ag"}, {"statCode": "KYwiJYWvxJ3KjtYA"}, {"statCode": "7KDW8lc2wqOvCOor"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkCreateUserStatItems' test.out

#- 57 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'NT9MD9gDgq9I2Ufr' \
    --body '[{"inc": 0.3157030643379428, "statCode": "rC69O0LiokCYbS47"}, {"inc": 0.4951319017515188, "statCode": "hWBHJMtskbgLxKiS"}, {"inc": 0.6133126599145525, "statCode": "8QWidgrNqtAdVHGq"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItem1' test.out

#- 58 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'd92GLsnSVG2tSQiQ' \
    --body '[{"inc": 0.9011746555574431, "statCode": "wh0hAjhsYWSYQTxm"}, {"inc": 0.4415280527248685, "statCode": "UD7c4SxJH4OwLMlP"}, {"inc": 0.6632271706224026, "statCode": "vLBsBPPLTHLxx7k3"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkIncUserStatItemValue1' test.out

#- 59 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'OAdaO5NuF8weMvFb' \
    --body '[{"statCode": "EsLpFCTTo1mXdDye"}, {"statCode": "PxJBzrdtCFldsgpo"}, {"statCode": "fGdzGR5eivfT8V0w"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkResetUserStatItem1' test.out

#- 60 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'qIcrp7e89Jpefr0O' \
    --userId 'dgNsExaPMTgXSiuW' \
    > test.out 2>&1
eval_tap $? 60 'CreateUserStatItem' test.out

#- 61 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'ziAGFQqhTrwUTbSE' \
    --userId 'c2QgnrVUeH5Vw71H' \
    > test.out 2>&1
eval_tap $? 61 'DeleteUserStatItems' test.out

#- 62 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'U5BumbktYOZ6P0G7' \
    --userId 'TnzYXZQqSCXnL15p' \
    --body '{"inc": 0.6487781808787241}' \
    > test.out 2>&1
eval_tap $? 62 'IncUserStatItemValue' test.out

#- 63 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'yUuOh8Nia59nP1nY' \
    --userId 'HRF7bsqtZMtNH2DB' \
    --additionalKey 'HaG6aSqz27olfFJX' \
    --body '{"additionalData": {"ErHBiG9NqMD87JIq": {}, "bPCzp9ndQBs8bey2": {}, "NHZSWtTxyXdMjLBh": {}}}' \
    > test.out 2>&1
eval_tap $? 63 'ResetUserStatItemValue' test.out

#- 64 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '58' \
    --statCodes 'jetm784HOqdh7hDd' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItems1' test.out

#- 65 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'QY1lfYWaJ9gL8LeW' \
    > test.out 2>&1
eval_tap $? 65 'GetGlobalStatItemByStatCode1' test.out

#- 66 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '49' \
    --name 'ypKD6AjnEysraou5' \
    --offset '15' \
    --sortBy 'qnIZWFRCUXw9gNXn' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 66 'GetStatCycles1' test.out

#- 67 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["KImA9jTZWddxOanH", "f88VmnzivAu9im6m", "7sLKlyLOLRRZDjuh"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetStatCycle1' test.out

#- 68 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '97ngtBv9XXHCLc3R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetStatCycle1' test.out

#- 69 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'WrsmCmUiYUxj6XP1' \
    --userIds 'AY6QJ0zDjCEPo734' \
    > test.out 2>&1
eval_tap $? 69 'BulkFetchStatItems1' test.out

#- 70 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6817262819299567, "statCode": "KbgilXBzct67mWfw", "userId": "fIMST5J2def0v39Z"}, {"inc": 0.5151181285026766, "statCode": "eWD0vgyY275SYab4", "userId": "NgoRpn94Zz0LVqjx"}, {"inc": 0.17775469597453153, "statCode": "aJc6e7I5N3zsJdHX", "userId": "gnuyIFKcEls9ya6M"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItem' test.out

#- 71 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.05500820885835167, "statCode": "Myl955q3r3iefB7v", "userId": "z60zFbjI1kgDCPNv"}, {"inc": 0.7725964856661165, "statCode": "oocLqp7fYr2MHsia", "userId": "uurwYYJQbDcU2a1p"}, {"inc": 0.043676739213659665, "statCode": "1ZEICklQuWo2CcbI", "userId": "TKCkQVmj5UBCmNys"}]' \
    > test.out 2>&1
eval_tap $? 71 'PublicBulkIncUserStatItemValue' test.out

#- 72 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "l8X6RTdiWrWVB9sE", "userId": "fiUHM4onhyKHxlDO"}, {"statCode": "hK0bQXt9srrovbPw", "userId": "eMLXPWLvK34Cv2jg"}, {"statCode": "t738O8mcot3FT6kh", "userId": "asgHMy9rh9Tel15a"}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkResetUserStatItem2' test.out

#- 73 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["AgzgtkwbDmHpJWLv", "2de5mpAE1UAsr02U", "MJnboBBBoKa5OUsU"], "cycleOverrides": [{"cycleId": "iX3nBoKJLs7K5L43", "maximum": 0.7106976185163666, "minimum": 0.4307011815881058}, {"cycleId": "IJdnJIa6UmlRiLu4", "maximum": 0.45755559823332725, "minimum": 0.949272638636124}, {"cycleId": "sgrJsjOD5VCMrZHA", "maximum": 0.6406813710054566, "minimum": 0.05100419385995736}], "defaultValue": 0.9331858692330564, "description": "oW5P8VMGdCiaQu5r", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.6895866313030202, "minimum": 0.8656587635681766, "name": "DU3cM43gu9lm4QtU", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "JGAsaJi3umXuDDgT", "tags": ["Gnlf1AD9rOluwVGr", "mwxfe0h6DZ51O6zl", "FtCMOE3aGBeq5Ciu"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateStat1' test.out

#- 74 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId '05wvc9XMg1ns1Yte' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '71' \
    --sortBy 'NES779S9AD0jVT1W' \
    --statCodes '["9cNMu7002OOuMcGv", "jWB1w2NSmF3102XV", "5IFtkPM4tRIbkgZc"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatCycleItems' test.out

#- 75 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '7' \
    --sortBy 'xZTh7iJXlOtOqfLL' \
    --statCodes '["uo0CrKqTI6UArwuk", "UeGqjLxmS2xtHste", "6Wd63TUn4qe2mpCl"]' \
    --tags '["8u4xkjvMosb60Kht", "CXyntUhwLZjO2wrH", "TIqyVOD9K7HtOpoZ"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListMyStatItems' test.out

#- 76 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey '8KIDenPrDLP5bZus' \
    --statCodes '["sbsin7Quv5Zqu7Du", "6e9RgdUQbfhQ26KS", "VWqRoH8T07UzjKP0"]' \
    --tags '["AptObVQF2Dt1Yx9W", "JgaHII3MVwyUZUtV", "pd5nTVMNigbRT7XA"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicListAllMyStatItems' test.out

#- 77 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'Ckt7at2S9c5s3dNC' \
    --namespace $AB_NAMESPACE \
    --userId 'TSNu3CCdif8pDYr1' \
    --limit '64' \
    --offset '71' \
    --sortBy 'BhXbTwLi4lRxjMXM' \
    --statCodes 'jPrebVtQqUXo2JGU' \
    > test.out 2>&1
eval_tap $? 77 'GetUserStatCycleItems1' test.out

#- 78 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'p4FBpow5J3GBZkXM' \
    --limit '26' \
    --offset '40' \
    --sortBy 'Nd0iTT43uG1lJugv' \
    --statCodes '5nfBVKcJwSNmaNAS' \
    --tags '8lO8RmntPQBrkuL3' \
    > test.out 2>&1
eval_tap $? 78 'PublicQueryUserStatItems1' test.out

#- 79 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'dSTXi4ThExa1cvy5' \
    --body '[{"statCode": "GKSCQrn07JKwuLrj"}, {"statCode": "evCfyoDstmZVbzLF"}, {"statCode": "9kWJDxac1c6zOtMN"}]' \
    > test.out 2>&1
eval_tap $? 79 'PublicBulkCreateUserStatItems' test.out

#- 80 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'gxlaNJaaQZoOTMDt' \
    --additionalKey 'qDqpbQYRGIzh6x0E' \
    --statCodes '["MJ7oDUpilQGcBR5Y", "oX5ZQ05J2OE9pmXM", "7gP1WqKgE30DWcRS"]' \
    --tags '["o4yyS3PShH2k2f8r", "eJsNvydAtLGRzEjL", "YDLctGOw82bmJmfd"]' \
    > test.out 2>&1
eval_tap $? 80 'PublicQueryUserStatItems' test.out

#- 81 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'GRf4XLNR6FrqRMUS' \
    --body '[{"inc": 0.12456220591000988, "statCode": "dzMYNe0WcivENXfY"}, {"inc": 0.7122305916395273, "statCode": "9Z1ODMUU9Hg4ScQt"}, {"inc": 0.869441297843116, "statCode": "jDORmIDyw4y8iCCl"}]' \
    > test.out 2>&1
eval_tap $? 81 'PublicBulkIncUserStatItem1' test.out

#- 82 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'ZISaBBeUYhPlejTF' \
    --body '[{"inc": 0.8506893174279123, "statCode": "Ogvrb51YOhfkKZ6w"}, {"inc": 0.05003390478253977, "statCode": "7r6Uo8NRZunako3r"}, {"inc": 0.9030311404190209, "statCode": "hQ9knajXgyqyBX9b"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkIncUserStatItemValue2' test.out

#- 83 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId '5UmvuTtWzRKpgpYV' \
    --body '[{"statCode": "S4VYrfVkRFSjeoNC"}, {"statCode": "BX5tZzXrsGIyeqId"}, {"statCode": "TVTiyc6U1uXv5l80"}]' \
    > test.out 2>&1
eval_tap $? 83 'BulkResetUserStatItem3' test.out

#- 84 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '0t6GDBuGFzXNDipQ' \
    --userId 'RutBarcD4rYqcsiC' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateUserStatItem' test.out

#- 85 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'de2mKKbaTiBH2V2d' \
    --userId 'JxYEPc4tHBMQAbQ5' \
    > test.out 2>&1
eval_tap $? 85 'DeleteUserStatItems1' test.out

#- 86 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'gPBLiEOOzS8ndg67' \
    --userId '2xBMrBeb5A43Il7C' \
    --body '{"inc": 0.49440096766483455}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItem' test.out

#- 87 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'VgrVvslBymbQb2Gs' \
    --userId 'YeyAzCzRBhjdZ83u' \
    --body '{"inc": 0.407070261273472}' \
    > test.out 2>&1
eval_tap $? 87 'PublicIncUserStatItemValue' test.out

#- 88 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Y2LW0QyFayOCQT5E' \
    --userId 'i426IrmjtOCqnyYL' \
    > test.out 2>&1
eval_tap $? 88 'ResetUserStatItemValue1' test.out

#- 89 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"S8JrEsqKM2xHnw8E": {}, "dGf1uLndJH2qQ73g": {}, "qf2YHgfOd6o8quo0": {}}, "additionalKey": "e1qNNDIMAfJo3r9z", "requestId": "bEWKUeB8koErGCY2", "statCode": "h2jpEKTZguDdCKTS", "updateStrategy": "INCREMENT", "userId": "06sbvPPrrVpzUEpm", "value": 0.0712566752471776}, {"additionalData": {"G973NpXnh8eDUrrR": {}, "eYdlnVY3GAf7JbNS": {}, "f1pjmrUUm9cz6B5S": {}}, "additionalKey": "aaSr6Hq3jtACuzcz", "requestId": "sgW3jum33IiVDWdn", "statCode": "9oakmX1yunJHgGWg", "updateStrategy": "MIN", "userId": "Dv6GMNOrL8aZ1Hkh", "value": 0.06703428400372491}, {"additionalData": {"ny6mJIYuFOMF7h8u": {}, "cnuvo6Wd2KtjvOtB": {}, "AuBKbKz4KBMZGkul": {}}, "additionalKey": "4ZnTSOIuovpfkF6t", "requestId": "zuBmtTp0HDd8jcn5", "statCode": "4ZDF5bZAy0zxuJde", "updateStrategy": "MIN", "userId": "JyOlrA7gJSsfcAFS", "value": 0.2563075639888389}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkUpdateUserStatItemV2' test.out

#- 90 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '3xDr8TbhOZC5QET9' \
    --statCode 'NMiBxROXwi8KFZPm' \
    --userIds '["lVXMFNhJFelJQK63", "NtiPrZTfo7fcndQJ", "FlU60ihesYWZyUqZ"]' \
    > test.out 2>&1
eval_tap $? 90 'BulkFetchOrDefaultStatItems1' test.out

#- 91 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId '5n93RBvRTqeflyJE' \
    --additionalKey 'ELToiJzrIFFQoD2I' \
    --statCodes '["xesuHVaQ9ksTi38K", "c5UokLU9e6AHh60n", "dwgIzsMdMferuvA5"]' \
    --tags '["jGDDOgTrlxOMhwdX", "hZ5XshnCiPzqNoj4", "fS7eLSR8daLeohI1"]' \
    > test.out 2>&1
eval_tap $? 91 'AdminListUsersStatItems' test.out

#- 92 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'j81JAQdT6W6WuRoO' \
    --additionalKey 'ucbcVEzbfwAulYbk' \
    --body '[{"additionalData": {"rSLxCh8V4ZqqSgde": {}, "xQioe2g60JT86cXu": {}, "zsbv2jfY37zbrePU": {}}, "requestId": "C6E81uvsh2gvVZ2Q", "statCode": "Hg8L2vOCmLNsoJwS", "updateStrategy": "MAX", "value": 0.017971418403566197}, {"additionalData": {"1abm7pDFUP7DnbYG": {}, "hMjj2v0uyG4I7w4B": {}, "4lfRixsARJ6AFXSE": {}}, "requestId": "VBb7tEyNaq1j0qPN", "statCode": "KuAjbI1j6vzy48N3", "updateStrategy": "OVERRIDE", "value": 0.8337857967288154}, {"additionalData": {"Q3T1RaFneX2FHrqb": {}, "tFY3lDTGxzJ5E5bu": {}, "vXKV5wThlNp9Qy50": {}}, "requestId": "mQZsk8NvCupzTajs", "statCode": "uLLbrqTerXAt8SPt", "updateStrategy": "MIN", "value": 0.8179252674141758}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem' test.out

#- 93 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'jYVVDK6GBy8BLboo' \
    --additionalKey '84Fu2gDp8EF90TWw' \
    --body '{"statCodes": ["lpZ8e2ld0BtEkjbc", "5NMztUD5XX5q39MA", "7Xu9NSEucDsGnA7T"]}' \
    > test.out 2>&1
eval_tap $? 93 'BulkGetOrDefaultByUserId' test.out

#- 94 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'DnV4jtIk7YzqQa2l' \
    --additionalKey 'uwuOyf9ijTtWmoCg' \
    --body '[{"additionalData": {"NpQP25RvsHVUB9L4": {}, "rPibnr66mrJyy8rc": {}, "IaRrUhFE0UyG4P3e": {}}, "statCode": "rieyrhn6AoaUtNWn"}, {"additionalData": {"K0LFh6ebYD5YkXcN": {}, "FDJbtJD6TzdrQnhP": {}, "GNHuBSoaMrJMxnBY": {}}, "statCode": "J7sRSabs13Plbccf"}, {"additionalData": {"ooZFtYiZn2SMtA4s": {}, "sM5WznzMWb5kc1rQ": {}, "fGVkuS7JifvPyqop": {}}, "statCode": "oVUUykDy2FOjg5k6"}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkResetUserStatItemValues' test.out

#- 95 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'sbXkcx2RLpojQzjW' \
    --userId 'i2fm304en3P8TZF7' \
    --additionalKey 'gz8YJ1sqixZoQcGm' \
    > test.out 2>&1
eval_tap $? 95 'DeleteUserStatItems2' test.out

#- 96 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Yq4XFuKSd2zqrMJl' \
    --userId '03CvyEOVNVeAP8tE' \
    --additionalKey 'HcZYEQ5qSVvumOIl' \
    --body '{"additionalData": {"8gohv0fHMF5wOZma": {}, "gydfjYAZ9tS9N1AR": {}, "eynrgnEQ3t6bfJ8u": {}}, "updateStrategy": "OVERRIDE", "value": 0.6377497942507381}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateUserStatItemValue' test.out

#- 97 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"zfIbOEPznBVdebMB": {}, "tgmA35ko8tXKcJOK": {}, "Db6EALFwW3LSfzWp": {}}, "additionalKey": "L1lyQpeaZOyxU5ag", "requestId": "qBjt5aOpsyqcsnRK", "statCode": "cxejYQ4ewKrdcA6u", "updateStrategy": "INCREMENT", "userId": "z1P4ObnDvxEixe6q", "value": 0.8115451114035953}, {"additionalData": {"ZwgYcGwokTifJoI5": {}, "Z2AqIIa5MCFangyz": {}, "jH8Yp7N7jDJdiRJK": {}}, "additionalKey": "VKjtRy7sUFx0IoY1", "requestId": "nGLBAG0cj3CsNrSi", "statCode": "Y5HGxa93qkS5GOYR", "updateStrategy": "MAX", "userId": "qimgJQRhW8OcBTyO", "value": 0.35712699294893546}, {"additionalData": {"nzXO21pFmCLbpIke": {}, "PgKI8CyNp3V56gvl": {}, "YKj62ug7W2r0C0RJ": {}}, "additionalKey": "qcREtNQztfCVhk99", "requestId": "9zlNWJ74nxaSTWjH", "statCode": "5NolXQWX5otPcqED", "updateStrategy": "MIN", "userId": "PfJ7MscBK4Ic6nY3", "value": 0.36924375092347106}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem1' test.out

#- 98 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'u0bUJthjprqdglHR' \
    --additionalKey 'TGaM28AID2XX0MQu' \
    --statCodes '["QUKxHmpjjLqmBrWd", "FS56iDTNfGdA79sq", "sU3U30aR3hddDQvu"]' \
    --tags '["l616LIxwCY4gJj2M", "WXQ6B4qK2QiocM8J", "qpAcXZZzoWOzTQ52"]' \
    > test.out 2>&1
eval_tap $? 98 'PublicQueryUserStatItems2' test.out

#- 99 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'HId6jEUdMVjYwdck' \
    --additionalKey 'KVkTYzqtlzIFO2P8' \
    --body '[{"additionalData": {"M6e0wndEVoGoUztt": {}, "UqsNahdKbAK0vOSj": {}, "dJveAN4hqKmpKJTS": {}}, "requestId": "JP0csrmNQqL0a0oh", "statCode": "duucBCUTHc3VqjI0", "updateStrategy": "INCREMENT", "value": 0.23828951578989488}, {"additionalData": {"u3VeZpb1G806OWvt": {}, "wVojM15wrMEf4ISQ": {}, "akcQhyq3RM3PGCkr": {}}, "requestId": "UxVnqyZGRRyugVty", "statCode": "13OcuX7ctB1dd1bY", "updateStrategy": "MIN", "value": 0.22522637985914196}, {"additionalData": {"kWhBj2knAdAo20vh": {}, "GRahegIvbPIWJdi3": {}, "MT4hA2LSnEJ27zbu": {}}, "requestId": "mVaCG0uMKHzI50Or", "statCode": "CYGrzQiC4dg8DBcZ", "updateStrategy": "MIN", "value": 0.3897679015066855}]' \
    > test.out 2>&1
eval_tap $? 99 'BulkUpdateUserStatItem2' test.out

#- 100 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '6av8VW31jNHWgrqt' \
    --userId 'W43BPDaKsWWLrU0a' \
    --additionalKey 'DjLi2t8fdjnbvf6S' \
    --body '{"additionalData": {"sa7l5IX9RmUVqvrA": {}, "JLUCcZGFRAkqcJqM": {}, "dUG7aIwWc3joK0Xt": {}}, "updateStrategy": "OVERRIDE", "value": 0.12471841460349276}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE