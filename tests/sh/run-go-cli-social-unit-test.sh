#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_TOKEN="/tmp/justice-sample-apps/userData"
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=69

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export JUSTICE_BASE_URL="http://0.0.0.0:8080"
export APP_CLIENT_ID="admin"
export APP_CLIENT_SECRET="admin"

create_file() {
    touch $1
}

delete_file() {
    [ ! -e $1 ] || rm $1
}

update_status() {
    return_code=$1
    operation_name=$2

    FINISHED_COUNT=$(( $FINISHED_COUNT + 1 ))

    if [ $return_code == 0 ]
    then
        SUCCESS_COUNT=$(( $SUCCESS_COUNT + 1 ))
        echo "ok $FINISHED_COUNT $operation_name"
    else
        FAILED_COUNT=$(( $FAILED_COUNT + 1 ))
        echo "not ok $FINISHED_COUNT - $operation_name"
        echo '  ---'
        echo '  error: |-'
        while read line; do
          echo "    $line" | tr '\n' ' '
        echo $line
        done < $TEMP_FILE
    fi
}

create_file 'tmp.dat'

rm -f $TEMP_TOKEN
mkdir -p $(dirname $TEMP_TOKEN)
echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
echo "1..$OPERATIONS_COUNT"

#- 1 getNamespaceSlotConfig
samples/cli/sample-apps Social getNamespaceSlotConfig \
    --namespace 'FtBxyZcD' \
    >$TEMP_FILE 2>&1
update_status $? 'getNamespaceSlotConfig'
delete_file $TEMP_FILE

#- 2 updateNamespaceSlotConfig
samples/cli/sample-apps Social updateNamespaceSlotConfig \
    --body '{"maxSlotSize": 98, "maxSlots": 55}' \
    --namespace 'pGlsQuJu' \
    >$TEMP_FILE 2>&1
update_status $? 'updateNamespaceSlotConfig'
delete_file $TEMP_FILE

#- 3 deleteNamespaceSlotConfig
samples/cli/sample-apps Social deleteNamespaceSlotConfig \
    --namespace '8vMf0IsJ' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteNamespaceSlotConfig'
delete_file $TEMP_FILE

#- 4 getUserSlotConfig
samples/cli/sample-apps Social getUserSlotConfig \
    --namespace 'kTrd8IDc' \
    --userId 'V2zXnTKj' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserSlotConfig'
delete_file $TEMP_FILE

#- 5 updateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --body '{"maxSlotSize": 99, "maxSlots": 3}' \
    --namespace 'PqamiBxx' \
    --userId '9Cs18EY8' \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserSlotConfig'
delete_file $TEMP_FILE

#- 6 deleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace '4ekItqRz' \
    --userId 'HU1oh570' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserSlotConfig'
delete_file $TEMP_FILE

#- 7 getUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace 'KQBVaewc' \
    --userId '72krSha6' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserProfiles'
delete_file $TEMP_FILE

#- 8 getProfile
samples/cli/sample-apps Social getProfile \
    --namespace '8n3Ynozp' \
    --profileId '1C2KmIQT' \
    --userId 'uBdNEUsx' \
    >$TEMP_FILE 2>&1
update_status $? 'getProfile'
delete_file $TEMP_FILE

#- 9 getUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace 'Fb8CJ17M' \
    --userId '7DJZaMSx' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserNamespaceSlots'
delete_file $TEMP_FILE

#- 10 getSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace 'ECbZbygy' \
    --slotId 'oarORoeN' \
    --userId 'HSb8Rh3k' \
    >$TEMP_FILE 2>&1
update_status $? 'getSlotData'
delete_file $TEMP_FILE

#- 11 publicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace 'gs9qqJbn' \
    --userIds '["QsoBgiVp"]' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserGameProfiles'
delete_file $TEMP_FILE

#- 12 publicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace 'P8Cm3yvA' \
    --userId 'SUoxdxxF' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserProfiles'
delete_file $TEMP_FILE

#- 13 publicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --body '{"achievements": ["qmAGTJ8I"], "attributes": {"EdagEtp4": "w29KOu9c"}, "avatarUrl": "19R6XDqW", "inventories": ["HkkP8npL"], "label": "EKMfjiX7", "profileName": "jpkVZk3I", "statistics": ["aQYEmqGo"], "tags": ["dOEGt9gP"]}' \
    --namespace 'Oj0c6i0J' \
    --userId 'kvIas73u' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateProfile'
delete_file $TEMP_FILE

#- 14 publicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace 'cYnFAJ3D' \
    --profileId 'K5T4Eogg' \
    --userId '0Y39UoYl' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetProfile'
delete_file $TEMP_FILE

#- 15 publicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --body '{"achievements": ["pv5bVAgt"], "attributes": {"sDhUTDUs": "cbQDjbTQ"}, "avatarUrl": "uPMz2PTR", "inventories": ["lkyU89ZP"], "label": "Ow6zPFJ4", "profileName": "2cwmzBBS", "statistics": ["MNcoAAOj"], "tags": ["KNjfcYHm"]}' \
    --namespace '093aYgBU' \
    --profileId '1sqjyK0X' \
    --userId 'H45PaRSO' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateProfile'
delete_file $TEMP_FILE

#- 16 publicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace 'FQBtu23R' \
    --profileId 'EZ8hRVX7' \
    --userId 'LGOvDdYi' \
    >$TEMP_FILE 2>&1
update_status $? 'publicDeleteProfile'
delete_file $TEMP_FILE

#- 17 publicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'QS9i7mV1' \
    --namespace 'C91pjG9g' \
    --profileId 'pxL6ycTQ' \
    --userId 'dvln2LAu' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetProfileAttribute'
delete_file $TEMP_FILE

#- 18 publicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --body '{"name": "SQWEXL6L", "value": "FE1YHo9m"}' \
    --attributeName '126ZWc8h' \
    --namespace 'HtWvbNYq' \
    --profileId 'gUqslArF' \
    --userId 'PiHUIvaC' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateAttribute'
delete_file $TEMP_FILE

#- 19 publicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace 'v8kU9dBB' \
    --userId 'pdsJLhsV' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserNamespaceSlots'
delete_file $TEMP_FILE

#- 20 publicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --checksum 'yExrkxoo' \
    --customAttribute 't0B7WOfe' \
    --file 'tmp.dat' \
    --namespace 'rcZdpMci' \
    --userId '37Ds7YSf' \
    --label 'ExaI3uzL' \
    --tags '["teMbFAlt"]' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserNamespaceSlot'
delete_file $TEMP_FILE

#- 21 publicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace '4hr7HmOY' \
    --slotId 'iBA5ltAO' \
    --userId 'XmlG6eh1' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetSlotData'
delete_file $TEMP_FILE

#- 22 publicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --checksum 'dTdoTFpB' \
    --customAttribute 'IcuC1dQY' \
    --file 'tmp.dat' \
    --namespace '93OJnJ6T' \
    --slotId 'e9vD8ldz' \
    --userId '7Hu8AD79' \
    --label 'kdWunviz' \
    --tags '["U0q1pHyh"]' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserNamespaceSlot'
delete_file $TEMP_FILE

#- 23 publicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace 'hERoGgdr' \
    --slotId 'ysMizBGS' \
    --userId 'RdP2l7DN' \
    >$TEMP_FILE 2>&1
update_status $? 'publicDeleteUserNamespaceSlot'
delete_file $TEMP_FILE

#- 24 publicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --body '{"customAttribute": "SZ8Aq0Xi", "label": "PLQXSe07", "tags": ["ZddOGTMl"]}' \
    --namespace 'JjBwj9HJ' \
    --slotId 'HQKseEdS' \
    --userId 'XRDSvgua' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserNamespaceSlotMetadata'
delete_file $TEMP_FILE

#- 25 getGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace 'uw1xT7eM' \
    --limit '44' \
    --offset '88' \
    >$TEMP_FILE 2>&1
update_status $? 'getGlobalStatItems'
delete_file $TEMP_FILE

#- 26 bulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace 'l9MLH0Nn' \
    --statCode 'TJ2ulNzB' \
    --userIds 'vwJaQa54' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkFetchStatItems'
delete_file $TEMP_FILE

#- 27 bulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --body '[{"inc": 0.9327655923265599, "statCode": "llvA8RWS", "userId": "pabUt7xk"}]' \
    --namespace '6QxyWhfq' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkIncUserStatItem'
delete_file $TEMP_FILE

#- 28 bulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --body '[{"inc": 0.23108827139420096, "statCode": "fJw2o8oW", "userId": "UqvPCZ2H"}]' \
    --namespace 'zT7NXmWD' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkIncUserStatItemValue'
delete_file $TEMP_FILE

#- 29 bulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --body '[{"statCode": "lXsuNIdQ", "userId": "JR5lsNOl"}]' \
    --namespace 'vkfwaSbn' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkResetUserStatItem'
delete_file $TEMP_FILE

#- 30 getStats
samples/cli/sample-apps Social getStats \
    --namespace 'suLCgTox' \
    --limit '41' \
    --offset '94' \
    >$TEMP_FILE 2>&1
update_status $? 'getStats'
delete_file $TEMP_FILE

#- 31 createStat
samples/cli/sample-apps Social createStat \
    --body '{"defaultValue": 0.7061940138883712, "description": "kJgvg6h5", "incrementOnly": false, "maximum": 0.5194259868655686, "minimum": 0.45923642317493263, "name": "iplEk4vj", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "4yqDt8QU", "tags": ["ZDpxlHas"]}' \
    --namespace 'inGcjrkm' \
    >$TEMP_FILE 2>&1
update_status $? 'createStat'
delete_file $TEMP_FILE

#- 32 exportStats
samples/cli/sample-apps Social exportStats \
    --namespace 'RMttgjDS' \
    >$TEMP_FILE 2>&1
update_status $? 'exportStats'
delete_file $TEMP_FILE

#- 33 importStats
samples/cli/sample-apps Social importStats \
    --file 'tmp.dat' \
    --namespace 'aIVBmft3' \
    --replaceExisting 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'importStats'
delete_file $TEMP_FILE

#- 34 queryStats
samples/cli/sample-apps Social queryStats \
    --namespace 'g7p9PGmY' \
    --limit '67' \
    --offset '20' \
    --keyword 'X4MsisSX' \
    >$TEMP_FILE 2>&1
update_status $? 'queryStats'
delete_file $TEMP_FILE

#- 35 getStat
samples/cli/sample-apps Social getStat \
    --namespace '28nARxWR' \
    --statCode 'pv5ou5xt' \
    >$TEMP_FILE 2>&1
update_status $? 'getStat'
delete_file $TEMP_FILE

#- 36 deleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace 'vd28OUfC' \
    --statCode 't8UJC5fl' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteStat'
delete_file $TEMP_FILE

#- 37 updateStat
samples/cli/sample-apps Social updateStat \
    --body '{"description": "Nyj6HsTt", "name": "X8P3llna", "tags": ["aS9lqyyg"]}' \
    --namespace 'PcfkJIxf' \
    --statCode 'QZza8kNV' \
    >$TEMP_FILE 2>&1
update_status $? 'updateStat'
delete_file $TEMP_FILE

#- 38 getUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace 'bDxVMq7H' \
    --userId 'Jk0F89xA' \
    --limit '5' \
    --offset '100' \
    --statCodes 'VfaENtrl' \
    --tags '0pTKZTXq' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserStatItems'
delete_file $TEMP_FILE

#- 39 bulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --body '[{"statCode": "zHuBMYQS"}]' \
    --namespace 'A2jz1ZOp' \
    --userId 'dOjSyMdd' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkCreateUserStatItems'
delete_file $TEMP_FILE

#- 40 bulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --body '[{"inc": 0.43583001859639603, "statCode": "1JuMf7RU"}]' \
    --namespace 'yBHRj8Ii' \
    --userId 'RimRllHT' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkIncUserStatItem1'
delete_file $TEMP_FILE

#- 41 bulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --body '[{"inc": 0.9193436537879337, "statCode": "c40vFFA6"}]' \
    --namespace 'gpU7EW3x' \
    --userId '1dCpm55g' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkIncUserStatItemValue1'
delete_file $TEMP_FILE

#- 42 bulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --body '[{"statCode": "OeqQIqcJ"}]' \
    --namespace 'VKmBM1J1' \
    --userId 'IbuTrrkb' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkResetUserStatItem1'
delete_file $TEMP_FILE

#- 43 createUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace 'muT1whOq' \
    --statCode 'mEnDXIWr' \
    --userId 'BPlSay46' \
    >$TEMP_FILE 2>&1
update_status $? 'createUserStatItem'
delete_file $TEMP_FILE

#- 44 deleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace 'mv71BAZA' \
    --statCode 'OjtFJ2vm' \
    --userId 'Tj7tT7TZ' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserStatItems'
delete_file $TEMP_FILE

#- 45 incUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --body '{"inc": 0.5247328635832493}' \
    --namespace 'DdCkIsZo' \
    --statCode 'ArWwPHcy' \
    --userId 'FAdAtYci' \
    >$TEMP_FILE 2>&1
update_status $? 'incUserStatItemValue'
delete_file $TEMP_FILE

#- 46 resetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --body '{"additionalData": {"LIgRwFRr": {}}}' \
    --namespace '0gwB9tz3' \
    --statCode 'vp99XVlV' \
    --userId '8rK3tE6n' \
    --additionalKey '0smip1tw' \
    >$TEMP_FILE 2>&1
update_status $? 'resetUserStatItemValue'
delete_file $TEMP_FILE

#- 47 bulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace '3L7cUd9p' \
    --statCode 'qtv6JfPZ' \
    --userIds 'wcCVOXcV' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkFetchStatItems1'
delete_file $TEMP_FILE

#- 48 publicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --body '[{"inc": 0.01343721105578699, "statCode": "0TmCwtD2", "userId": "lAH01o6N"}]' \
    --namespace 'dcBIgzrD' \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkIncUserStatItem'
delete_file $TEMP_FILE

#- 49 publicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --body '[{"inc": 0.377125276256834, "statCode": "pFBYGmmB", "userId": "awMyoKyN"}]' \
    --namespace 'pdAasm8x' \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkIncUserStatItemValue'
delete_file $TEMP_FILE

#- 50 bulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --body '[{"statCode": "wUfzOlQi", "userId": "ZY4NbOQX"}]' \
    --namespace 'J7uOTzNM' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkResetUserStatItem2'
delete_file $TEMP_FILE

#- 51 createStat1
samples/cli/sample-apps Social createStat1 \
    --body '{"defaultValue": 0.34205480909078156, "description": "q2tNl4CX", "incrementOnly": false, "maximum": 0.12793256765368222, "minimum": 0.8770860020485978, "name": "EUJRVK3l", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "0R1XRb0R", "tags": ["H8vS1sme"]}' \
    --namespace 'OlngrdTX' \
    >$TEMP_FILE 2>&1
update_status $? 'createStat1'
delete_file $TEMP_FILE

#- 52 publicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace 'CzaPBtkZ' \
    --userId 'Mio4wcyh' \
    --limit '22' \
    --offset '29' \
    --statCodes 'VS3rYp8Q' \
    --tags 'tcEmCEVc' \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryUserStatItems'
delete_file $TEMP_FILE

#- 53 publicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --body '[{"statCode": "75UfeypW"}]' \
    --namespace 'jDNhzCL5' \
    --userId 'sWS2qwO7' \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkCreateUserStatItems'
delete_file $TEMP_FILE

#- 54 publicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --body '[{"inc": 0.9087512930575277, "statCode": "iEklkzLm"}]' \
    --namespace '88LpLuYR' \
    --userId 'O3C55yHp' \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkIncUserStatItem1'
delete_file $TEMP_FILE

#- 55 bulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --body '[{"inc": 0.3522267310082501, "statCode": "2JaqenDG"}]' \
    --namespace 'n7a2NUpl' \
    --userId 'WiLjq06n' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkIncUserStatItemValue2'
delete_file $TEMP_FILE

#- 56 bulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --body '[{"statCode": "6a0rW8Ef"}]' \
    --namespace 'kpaXtwYZ' \
    --userId 'JaQ4WbwN' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkResetUserStatItem3'
delete_file $TEMP_FILE

#- 57 publicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace 'msFYetjE' \
    --statCode 'urH8eloJ' \
    --userId 'zNKtRUaT' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserStatItem'
delete_file $TEMP_FILE

#- 58 deleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace 'z1ETdsmw' \
    --statCode 'zjkkn9oi' \
    --userId 'Ql05g7cO' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserStatItems1'
delete_file $TEMP_FILE

#- 59 publicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --body '{"inc": 0.874356633432329}' \
    --namespace 'Mb6Ojlo6' \
    --statCode 'DMNpP2qM' \
    --userId 'rTQ1Upjf' \
    >$TEMP_FILE 2>&1
update_status $? 'publicIncUserStatItem'
delete_file $TEMP_FILE

#- 60 publicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --body '{"inc": 0.7308393859750862}' \
    --namespace 'wJhy1jOV' \
    --statCode 'kkUlS795' \
    --userId '27EZ25Ia' \
    >$TEMP_FILE 2>&1
update_status $? 'publicIncUserStatItemValue'
delete_file $TEMP_FILE

#- 61 resetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace '8uCeZFlL' \
    --statCode 'tEVpDAEb' \
    --userId 'A82jy74l' \
    >$TEMP_FILE 2>&1
update_status $? 'resetUserStatItemValue1'
delete_file $TEMP_FILE

#- 62 bulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --body '[{"additionalData": {"q0pDE5xR": {}}, "additionalKey": "wh5b45eb", "statCode": "pcM7ScSs", "updateStrategy": "INCREMENT", "userId": "AwIp9rRt", "value": 0.2062482449127394}]' \
    --namespace 'PcCxdbum' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkUpdateUserStatItemV2'
delete_file $TEMP_FILE

#- 63 bulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --body '[{"additionalData": {"eYgOdEBW": {}}, "statCode": "RQiW3KFf", "updateStrategy": "INCREMENT", "value": 0.043303642635736384}]' \
    --namespace '4081gRB1' \
    --userId 'GyLfLg4R' \
    --additionalKey 'YuEbgUDE' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkUpdateUserStatItem'
delete_file $TEMP_FILE

#- 64 bulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --body '[{"additionalData": {"cJyIvsPw": {}}, "statCode": "Or0BmV5i"}]' \
    --namespace 'FvfwFjTS' \
    --userId 'mIEqoLyL' \
    --additionalKey 'eUGmomGX' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkResetUserStatItemValues'
delete_file $TEMP_FILE

#- 65 deleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace '9sXTZ0v8' \
    --statCode 'pqLfc5Sw' \
    --userId 'GnReUULD' \
    --additionalKey 'X4QUIbb5' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserStatItems2'
delete_file $TEMP_FILE

#- 66 updateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --body '{"additionalData": {"nh68ZnyU": {}}, "updateStrategy": "MAX", "value": 0.6835501069566925}' \
    --namespace 'W9hNBSFT' \
    --statCode 'tFrOmjkF' \
    --userId 'rFVA8t0x' \
    --additionalKey 'F34Xpt6Z' \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserStatItemValue'
delete_file $TEMP_FILE

#- 67 bulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --body '[{"additionalData": {"lTTic0kr": {}}, "additionalKey": "2a0nI2oo", "statCode": "7UHCJK5s", "updateStrategy": "INCREMENT", "userId": "0aCvIq3a", "value": 0.5171230937144093}]' \
    --namespace 'YIlewLRu' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkUpdateUserStatItem1'
delete_file $TEMP_FILE

#- 68 bulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --body '[{"additionalData": {"HY83bGj0": {}}, "statCode": "HTeeWXlI", "updateStrategy": "OVERRIDE", "value": 0.6843008472893907}]' \
    --namespace 'idqctDpy' \
    --userId 'gY0ax476' \
    --additionalKey 'ED4MMO9T' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkUpdateUserStatItem2'
delete_file $TEMP_FILE

#- 69 updateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --body '{"additionalData": {"w2JH0qhW": {}}, "updateStrategy": "MAX", "value": 0.5235086363368513}' \
    --namespace 'TgzJFRYw' \
    --statCode '6t1IKZLO' \
    --userId '6V4Ode46' \
    --additionalKey 'QmCidgdp' \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserStatItemValue1'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT