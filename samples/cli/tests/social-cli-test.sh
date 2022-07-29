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

#- 2 GetNamespaceSlotConfig
samples/cli/sample-apps Social getNamespaceSlotConfig \
    --namespace 'ni6tmfKC' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaceSlotConfig' test.out

#- 3 UpdateNamespaceSlotConfig
samples/cli/sample-apps Social updateNamespaceSlotConfig \
    --body '{"maxSlotSize": 60, "maxSlots": 8}' \
    --namespace 'ODnfgTNO' \
    > test.out 2>&1
eval_tap $? 3 'UpdateNamespaceSlotConfig' test.out

#- 4 DeleteNamespaceSlotConfig
samples/cli/sample-apps Social deleteNamespaceSlotConfig \
    --namespace 'kexhkPuT' \
    > test.out 2>&1
eval_tap $? 4 'DeleteNamespaceSlotConfig' test.out

#- 5 GetUserSlotConfig
samples/cli/sample-apps Social getUserSlotConfig \
    --namespace 'yLEFXXlW' \
    --userId 's9ktLBld' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --body '{"maxSlotSize": 39, "maxSlots": 74}' \
    --namespace 'rsue2Gi3' \
    --userId '1MucwH8d' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace 'Pag3hp9k' \
    --userId 'OAiJKRG5' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace '8PDoDnKc' \
    --userId 'bV5nw89K' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace 'JENYLSWX' \
    --profileId 'KGazubw7' \
    --userId 'rjvwO44Y' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace 'AsWpQWJ2' \
    --userId 'kv4MEXz8' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace 'RgLuWe4h' \
    --slotId 'M7mwxjDe' \
    --userId 'kUAsn5oh' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace 'hrbiiZH7' \
    --userIds '["UPOvf78b", "kIZCgy6M", "9XS44epJ"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace 'JqlmsKgz' \
    --userId 'whj4bsnC' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --body '{"achievements": ["i46bepbi", "P1MjtRU1", "joTG4fsa"], "attributes": {"W8CKhQeE": "ar6G1t0C", "eXoi1eDr": "kK9XASSt", "0OYbFNOR": "rsibGWoD"}, "avatarUrl": "OWDnE0pt", "inventories": ["tSiYkvqa", "EKgXrGrC", "MBeyM4N7"], "label": "fVUPy2jb", "profileName": "UqOx1Lft", "statistics": ["3kYEQ9W2", "5dvgBVOs", "wVoWaVQQ"], "tags": ["QWvoVQKv", "12ttPMNA", "OtLYME7e"]}' \
    --namespace 'dR43h75G' \
    --userId 'a1kvF001' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace 'yx4Ydbp5' \
    --profileId 'zpRjZMtu' \
    --userId 'okVyXqJC' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --body '{"achievements": ["TOV7astB", "SZ3SUuLr", "52KzFxO0"], "attributes": {"l5GRThLT": "SjZ4Aduq", "XpRQvUCS": "VEfvdTd0", "mA5pr5yM": "xFlxQAn1"}, "avatarUrl": "J4EtWIHm", "inventories": ["JG2FpDWq", "UeVyVZ6y", "nYCulbqT"], "label": "i8hTjrix", "profileName": "Xk2h1mey", "statistics": ["okwb5lHJ", "B0Ol6eWx", "Q2nSPrvl"], "tags": ["hWqCB3Ug", "0gFLDeTn", "DUDaZI25"]}' \
    --namespace 'iDQVF2MC' \
    --profileId 's5jm6RmV' \
    --userId 'Ys8vfgd9' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace 'SfDGdsly' \
    --profileId 'sPv4QnEw' \
    --userId 'PHqfHccX' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'txMOfI8v' \
    --namespace 'tFBhcYNa' \
    --profileId '1qJAAosG' \
    --userId 'RpmVMifs' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --body '{"name": "vFunc96j", "value": "l5OL16yZ"}' \
    --attributeName 'HtLdAkSK' \
    --namespace '3f8EE81m' \
    --profileId 'VndI0q2j' \
    --userId 'bcopntAG' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace '6gOlvnBn' \
    --userId 'PX4UDW0K' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --checksum 'fVpfqBIJ' \
    --customAttribute 'Ji5RLiAB' \
    --file 'tmp.dat' \
    --namespace 'HrTpz2sl' \
    --userId 'UHvGZUJv' \
    --label '0cyLVvfz' \
    --tags '["ZEDC95Fn", "UvymWXV3", "AW5IMFOh"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace 'Me3kJpB0' \
    --slotId 'itDh9tFv' \
    --userId 'yXQsVkDh' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --checksum '9KJObbL5' \
    --customAttribute 'Z6i2BWEm' \
    --file 'tmp.dat' \
    --namespace 'qerSV7wX' \
    --slotId '3llHMi5V' \
    --userId 'ddZTN0z4' \
    --label 'nDWz8LxC' \
    --tags '["KYIEJosJ", "3jvxtypQ", "yVRLCXgH"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace '6jvVtm1U' \
    --slotId '3jyMzEc0' \
    --userId '1G6C3V8P' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --body '{"customAttribute": "HQ71uh7H", "label": "60JcfrpK", "tags": ["Rbs0CZF5", "PZdh2isx", "NQfeQKzR"]}' \
    --namespace 'klv4ReAt' \
    --slotId 'gxAvAhnA' \
    --userId 'LjAOh519' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace 'pgSdieNk' \
    --limit '36' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace 'FUeijJ4e' \
    --statCode '1VQs8SEt' \
    --userIds 'YbioD4zG' \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --body '[{"inc": 0.9298986420820564, "statCode": "JGSsG9LB", "userId": "fMTAmRm7"}, {"inc": 0.9889109307297778, "statCode": "I2gqBsDl", "userId": "BVAKZ2tY"}, {"inc": 0.3760406499139659, "statCode": "YoJFyjxG", "userId": "Du77KBFt"}]' \
    --namespace 'LaI5alRd' \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --body '[{"inc": 0.7363990245063611, "statCode": "djdwClTT", "userId": "hMmEtwpt"}, {"inc": 0.9345414787778388, "statCode": "H1kKrFc2", "userId": "y0y9O7tQ"}, {"inc": 0.1604244415519004, "statCode": "ANcZ0CbY", "userId": "iiHeaOHJ"}]' \
    --namespace 'ZcZn2zsu' \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace 'KukWx2xC' \
    --statCode '5sXk518q' \
    --userIds '["weulxT5Z", "1mLs0CUn", "4jiiK9U8"]' \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --body '[{"statCode": "qgyC54cX", "userId": "a27hs0sq"}, {"statCode": "bnCvhZ2e", "userId": "PrMzlmKR"}, {"statCode": "ALWW7OCT", "userId": "gLaZeKG2"}]' \
    --namespace 'IQnqjFQM' \
    > test.out 2>&1
eval_tap $? 31 'BulkResetUserStatItem' test.out

#- 32 GetStats
samples/cli/sample-apps Social getStats \
    --namespace '7FWiDJWn' \
    --limit '93' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 32 'GetStats' test.out

#- 33 CreateStat
samples/cli/sample-apps Social createStat \
    --body '{"defaultValue": 0.8442258562101959, "description": "ChVkq9cv", "incrementOnly": true, "maximum": 0.3761579475196736, "minimum": 0.7892806238730399, "name": "1D8vzsaa", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "KhAJQ2ws", "tags": ["SweaSqgi", "hdikgVJk", "3nJkQtEh"]}' \
    --namespace 'dqQNaAIF' \
    > test.out 2>&1
eval_tap $? 33 'CreateStat' test.out

#- 34 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace '12EXlRiY' \
    > test.out 2>&1
eval_tap $? 34 'ExportStats' test.out

#- 35 ImportStats
samples/cli/sample-apps Social importStats \
    --file 'tmp.dat' \
    --namespace 'BMKLVZr8' \
    --replaceExisting 'true' \
    > test.out 2>&1
eval_tap $? 35 'ImportStats' test.out

#- 36 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace 'Yr5qz26B' \
    --limit '88' \
    --offset '62' \
    --keyword '1WwFVjsF' \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
samples/cli/sample-apps Social getStat \
    --namespace 'ZsGaGW8V' \
    --statCode '1egBQ8o5' \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace 'tP9SNGbo' \
    --statCode 'DSJgjlq4' \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
samples/cli/sample-apps Social updateStat \
    --body '{"description": "zq6eH4su", "name": "FvFl8ehD", "tags": ["6rdYY9lR", "WdRhxkfY", "qjCscgBQ"]}' \
    --namespace 'McYijiBf' \
    --statCode 'T4VZY35m' \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace 'X1v9bswJ' \
    --userId 'GXWLDxVV' \
    --limit '99' \
    --offset '22' \
    --statCodes 'eTZ8Xuso' \
    --tags 'hYA3KKpx' \
    > test.out 2>&1
eval_tap $? 40 'GetUserStatItems' test.out

#- 41 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --body '[{"statCode": "mQD7saqS"}, {"statCode": "FKlBJAvV"}, {"statCode": "70uKbimE"}]' \
    --namespace 'ZjXkSON0' \
    --userId 'DeQwcWVD' \
    > test.out 2>&1
eval_tap $? 41 'BulkCreateUserStatItems' test.out

#- 42 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --body '[{"inc": 0.08426984423916772, "statCode": "RPBRksei"}, {"inc": 0.3194244468805726, "statCode": "gASQENbO"}, {"inc": 0.38226672268529427, "statCode": "vXqeJQo5"}]' \
    --namespace 'LXaaswkl' \
    --userId 'y7iaC0FC' \
    > test.out 2>&1
eval_tap $? 42 'BulkIncUserStatItem1' test.out

#- 43 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --body '[{"inc": 0.6168744752201528, "statCode": "R5dcomHp"}, {"inc": 0.027363049422872487, "statCode": "emadruJW"}, {"inc": 0.76283586551221, "statCode": "1qiYmLXZ"}]' \
    --namespace 'l539aVOw' \
    --userId 'qJZTdZLx' \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItemValue1' test.out

#- 44 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --body '[{"statCode": "0AGquj8d"}, {"statCode": "2EI0eqCc"}, {"statCode": "aHZka5Nu"}]' \
    --namespace 'tHmIUT0k' \
    --userId 'ovD1KLa4' \
    > test.out 2>&1
eval_tap $? 44 'BulkResetUserStatItem1' test.out

#- 45 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace 'cB7IYkFo' \
    --statCode 'loBZtuJe' \
    --userId 'YZFZ8oW7' \
    > test.out 2>&1
eval_tap $? 45 'CreateUserStatItem' test.out

#- 46 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace 'SwGhdiFs' \
    --statCode 'sU28UXMC' \
    --userId 'vyHYLeU0' \
    > test.out 2>&1
eval_tap $? 46 'DeleteUserStatItems' test.out

#- 47 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --body '{"inc": 0.8663515576449299}' \
    --namespace 'rSVhCWff' \
    --statCode 'k3XnnM2p' \
    --userId '8ZRg6LO2' \
    > test.out 2>&1
eval_tap $? 47 'IncUserStatItemValue' test.out

#- 48 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --body '{"additionalData": {"kqkjpWmZ": {}, "Sf186647": {}, "7OAKoASl": {}}}' \
    --namespace 'ADRdxBAp' \
    --statCode 'nG0vnSNS' \
    --userId 'LsbU4wOV' \
    --additionalKey 'ISW35El6' \
    > test.out 2>&1
eval_tap $? 48 'ResetUserStatItemValue' test.out

#- 49 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace 'kBrixsY9' \
    --statCode 'FmjbBtO6' \
    --userIds 'WMmM5Wax' \
    > test.out 2>&1
eval_tap $? 49 'BulkFetchStatItems1' test.out

#- 50 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --body '[{"inc": 0.28305119887619024, "statCode": "8H65m7Ko", "userId": "nIhm5hWv"}, {"inc": 0.02733328787894207, "statCode": "GpOz3qXI", "userId": "ZsDk7ykb"}, {"inc": 0.999690295571606, "statCode": "g1pl3IHR", "userId": "YQviTY3d"}]' \
    --namespace 'wEKz9iqS' \
    > test.out 2>&1
eval_tap $? 50 'PublicBulkIncUserStatItem' test.out

#- 51 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --body '[{"inc": 0.4283461846440201, "statCode": "kzUyu8vJ", "userId": "wtUsa2fB"}, {"inc": 0.7196275536013629, "statCode": "CHENXO88", "userId": "US2xLsIs"}, {"inc": 0.43317989481492103, "statCode": "CNOaSsV2", "userId": "Vjqwq0mN"}]' \
    --namespace 'm7NBVBgt' \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItemValue' test.out

#- 52 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --body '[{"statCode": "ZTxtKlqr", "userId": "Vo4M6GFU"}, {"statCode": "waMTdjFS", "userId": "1qLNjO6u"}, {"statCode": "TxjS87eV", "userId": "tDPeeoZd"}]' \
    --namespace 'FNlO22gu' \
    > test.out 2>&1
eval_tap $? 52 'BulkResetUserStatItem2' test.out

#- 53 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --body '{"defaultValue": 0.7061971637604244, "description": "vFWyzA2Z", "incrementOnly": true, "maximum": 0.4102716766014868, "minimum": 0.10171106896722992, "name": "j6h7RK0T", "setAsGlobal": true, "setBy": "SERVER", "statCode": "Anp2x12F", "tags": ["iHGi1onB", "Nsg1L1AR", "ZYF1SXNm"]}' \
    --namespace 'vauOSmqo' \
    > test.out 2>&1
eval_tap $? 53 'CreateStat1' test.out

#- 54 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace 'F1DDYIor' \
    --userId 'K8yWnA6k' \
    --limit '23' \
    --offset '63' \
    --statCodes '2Srrly9m' \
    --tags 'Qr8P1dpR' \
    > test.out 2>&1
eval_tap $? 54 'PublicQueryUserStatItems' test.out

#- 55 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --body '[{"statCode": "0qjTEReW"}, {"statCode": "VuXYusYg"}, {"statCode": "U42sf9oP"}]' \
    --namespace '6Amu0Cbh' \
    --userId 'RR6pVDdw' \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkCreateUserStatItems' test.out

#- 56 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace 'uTexxhN0' \
    --userId '7hc7QwQZ' \
    --statCodes '["5gRhNfhz", "sNG0YccW", "FrVsAn0E"]' \
    --tags '["d8Cw3dmU", "ecAoROsz", "Er0Elkgi"]' \
    > test.out 2>&1
eval_tap $? 56 'PublicQueryUserStatItems1' test.out

#- 57 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --body '[{"inc": 0.9238790029716712, "statCode": "hbeA8Yhh"}, {"inc": 0.8331772326300173, "statCode": "TYWb4u60"}, {"inc": 0.41679723192463747, "statCode": "g3KNPjHd"}]' \
    --namespace 'p5PIs2AZ' \
    --userId 'dSOurvI2' \
    > test.out 2>&1
eval_tap $? 57 'PublicBulkIncUserStatItem1' test.out

#- 58 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --body '[{"inc": 0.7041521344170268, "statCode": "Y86MTbrO"}, {"inc": 0.3317733827074827, "statCode": "hFlEcoQa"}, {"inc": 0.06098749025039907, "statCode": "6cvBuCFs"}]' \
    --namespace '6B3nmjdh' \
    --userId 'jPwEMI3C' \
    > test.out 2>&1
eval_tap $? 58 'BulkIncUserStatItemValue2' test.out

#- 59 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --body '[{"statCode": "f1AQqezU"}, {"statCode": "N0esApts"}, {"statCode": "bXGAskvM"}]' \
    --namespace 'vpgTqptS' \
    --userId 'kpeFEG76' \
    > test.out 2>&1
eval_tap $? 59 'BulkResetUserStatItem3' test.out

#- 60 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace 'KMDsNcnE' \
    --statCode 'L8si3JMC' \
    --userId '2MB82GcO' \
    > test.out 2>&1
eval_tap $? 60 'PublicCreateUserStatItem' test.out

#- 61 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace 'CMqx1efo' \
    --statCode '6pTryECf' \
    --userId '46XBP9Bq' \
    > test.out 2>&1
eval_tap $? 61 'DeleteUserStatItems1' test.out

#- 62 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --body '{"inc": 0.46091232961359063}' \
    --namespace 'xxpa1Tjt' \
    --statCode 'uK2oaFuS' \
    --userId 'hhdW0SXp' \
    > test.out 2>&1
eval_tap $? 62 'PublicIncUserStatItem' test.out

#- 63 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --body '{"inc": 0.21964096445046166}' \
    --namespace '7CexsHi3' \
    --statCode 'MLA183hl' \
    --userId 'JPGxBERr' \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItemValue' test.out

#- 64 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace 'ukeL557s' \
    --statCode 'W9Q0tT2K' \
    --userId 'g5vhYGdo' \
    > test.out 2>&1
eval_tap $? 64 'ResetUserStatItemValue1' test.out

#- 65 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --body '[{"additionalData": {"8TqMWfc4": {}, "HPD3uD0J": {}, "mDV3zeCt": {}}, "additionalKey": "jfwSSS8V", "statCode": "dyNcdnKM", "updateStrategy": "OVERRIDE", "userId": "JouLf7A0", "value": 0.5101681456489762}, {"additionalData": {"TdXTvUDf": {}, "33wtPSsM": {}, "MYezCqW9": {}}, "additionalKey": "zupwOdFy", "statCode": "vVGIitZ3", "updateStrategy": "MIN", "userId": "zS2fiBhZ", "value": 0.5769122318203787}, {"additionalData": {"7ZyS7CKs": {}, "vTCnazO4": {}, "yuh0w4JF": {}}, "additionalKey": "Hn8rU8Pk", "statCode": "NTISPWnK", "updateStrategy": "MIN", "userId": "yr2bsflU", "value": 0.3289600305154927}]' \
    --namespace 'TwZeZGsm' \
    > test.out 2>&1
eval_tap $? 65 'BulkUpdateUserStatItemV2' test.out

#- 66 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace 'ywynaLXR' \
    --additionalKey 'vZ50Copk' \
    --statCode 'ouOwwkLV' \
    --userIds '["JtCkwQhM", "cIMURsDG", "NJlXncU9"]' \
    > test.out 2>&1
eval_tap $? 66 'BulkFetchOrDefaultStatItems1' test.out

#- 67 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --body '[{"additionalData": {"q4Pqy5PL": {}, "p1V1i6HD": {}, "BBI7vWJX": {}}, "statCode": "vgNXgoAy", "updateStrategy": "OVERRIDE", "value": 0.1086635214642867}, {"additionalData": {"rIoQpJ0N": {}, "0sb8GFAC": {}, "S3yOFgne": {}}, "statCode": "O64GmxgS", "updateStrategy": "OVERRIDE", "value": 0.25899635384367925}, {"additionalData": {"X0jmtFzu": {}, "y6REQ3ZO": {}, "n9KuWlQH": {}}, "statCode": "uE3jQanr", "updateStrategy": "MIN", "value": 0.5016135163303604}]' \
    --namespace 'oYSnfoHW' \
    --userId '25YikZBQ' \
    --additionalKey 'cIKcKRzu' \
    > test.out 2>&1
eval_tap $? 67 'BulkUpdateUserStatItem' test.out

#- 68 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --body '[{"additionalData": {"SsNBwk8p": {}, "j2YnbrLb": {}, "eGSRaV9M": {}}, "statCode": "4SScEJSn"}, {"additionalData": {"RnJji5Kp": {}, "bDkaW8Pl": {}, "3MF5o4SY": {}}, "statCode": "Xxz4r830"}, {"additionalData": {"kCJpc72u": {}, "VyOaWNWf": {}, "yvdOwFar": {}}, "statCode": "bfNvCxf3"}]' \
    --namespace 'BkaI9Xck' \
    --userId 'ym2lJbJj' \
    --additionalKey 'pgqEEkqT' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItemValues' test.out

#- 69 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace '66xZu6e9' \
    --statCode 'C56Om0Pf' \
    --userId 'qj6NjJam' \
    --additionalKey 'IsoN1Eyz' \
    > test.out 2>&1
eval_tap $? 69 'DeleteUserStatItems2' test.out

#- 70 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --body '{"additionalData": {"AyilrF15": {}, "ZbiyMMMS": {}, "UD7z00Ry": {}}, "updateStrategy": "OVERRIDE", "value": 0.005892682749498834}' \
    --namespace 'XAyCNW9O' \
    --statCode 'lYFdWcqa' \
    --userId 'EjNPFD1h' \
    --additionalKey '4h3JH09V' \
    > test.out 2>&1
eval_tap $? 70 'UpdateUserStatItemValue' test.out

#- 71 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --body '[{"additionalData": {"p4dFzQ8S": {}, "HOQgcwVo": {}, "BDRg0L6H": {}}, "additionalKey": "sfzP16Uk", "statCode": "XuenqbVn", "updateStrategy": "INCREMENT", "userId": "hPz68U1y", "value": 0.8397548980056996}, {"additionalData": {"U3aUQ8GV": {}, "2NngjHKO": {}, "SNQ3DrMg": {}}, "additionalKey": "3DLdw4kW", "statCode": "LI1lL2jm", "updateStrategy": "INCREMENT", "userId": "clHa4dbd", "value": 0.3093492611034594}, {"additionalData": {"xNaXzCkQ": {}, "EavFVIHP": {}, "nXQkTv1E": {}}, "additionalKey": "cwwoGcaQ", "statCode": "uDdQgLXX", "updateStrategy": "OVERRIDE", "userId": "R3JHgOMB", "value": 0.6405720646090737}]' \
    --namespace 'LuIjIley' \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem1' test.out

#- 72 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace 'RBE6JtqM' \
    --userId 'bkju3pSN' \
    --additionalKey 'trtFcrpN' \
    --statCodes '["owouTWSB", "zOKBnMJK", "LPfqg0zY"]' \
    --tags '["k5ZGfeFb", "IlxZjtit", "bBJq22G8"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicQueryUserStatItems2' test.out

#- 73 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --body '[{"additionalData": {"ZbmPdAGl": {}, "4t1YVAkv": {}, "bqx4zT5m": {}}, "statCode": "bu7ogKja", "updateStrategy": "MIN", "value": 0.6854277902416688}, {"additionalData": {"QQ4SCr68": {}, "5bLmxz6Y": {}, "HTmQaG5W": {}}, "statCode": "bN84oy99", "updateStrategy": "MIN", "value": 0.5217200078867836}, {"additionalData": {"LuadZxgA": {}, "RHkyQDo9": {}, "83yOpwuv": {}}, "statCode": "Sb3sbbKP", "updateStrategy": "OVERRIDE", "value": 0.7556285629667756}]' \
    --namespace 'X3n9pX1n' \
    --userId 'TFi9rd8k' \
    --additionalKey 'V3FMgMV4' \
    > test.out 2>&1
eval_tap $? 73 'BulkUpdateUserStatItem2' test.out

#- 74 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --body '{"additionalData": {"SSpZULNm": {}, "vMVeYbc2": {}, "zuhzdWAB": {}}, "updateStrategy": "OVERRIDE", "value": 0.7184100656351793}' \
    --namespace 'IRj3DrI9' \
    --statCode 'wDkqgS59' \
    --userId 'zzbJgmTU' \
    --additionalKey 'B3FFRcaW' \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE