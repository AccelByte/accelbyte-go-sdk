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

OPERATIONS_COUNT=57

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
echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
echo "1..$OPERATIONS_COUNT"

#- 1 getNamespaces
samples/cli/sample-apps Basic getNamespaces \
    --activeOnly 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'getNamespaces'
delete_file $TEMP_FILE

#- 2 createNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "tBxyZcDX", "namespace": "BpGlsQuJ"}' \
    >$TEMP_FILE 2>&1
update_status $? 'createNamespace'
delete_file $TEMP_FILE

#- 3 getNamespace
samples/cli/sample-apps Basic getNamespace \
    --namespace 'u8vMf0Is' \
    --activeOnly 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'getNamespace'
delete_file $TEMP_FILE

#- 4 deleteNamespace
samples/cli/sample-apps Basic deleteNamespace \
    --namespace 'Trd8IDcV' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteNamespace'
delete_file $TEMP_FILE

#- 5 getActions
samples/cli/sample-apps Basic getActions \
    --namespace '2zXnTKjX' \
    >$TEMP_FILE 2>&1
update_status $? 'getActions'
delete_file $TEMP_FILE

#- 6 banUsers
#samples/cli/sample-apps Basic banUsers \
#    --body '{"actionId": 3, "comment": "PqamiBxx", "userIds": ["9Cs18EY8"]}' \
#    --namespace '4ekItqRz' \
#    >$TEMP_FILE 2>&1
#update_status $? 'banUsers'
#delete_file $TEMP_FILE

#- 7 getBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace 'HU1oh570' \
    --userIds '["KQBVaewc"]' \
    >$TEMP_FILE 2>&1
update_status $? 'getBannedUsers'
delete_file $TEMP_FILE

#- 8 reportUser
#samples/cli/sample-apps Basic reportUser \
#    --body '{"category": "72krSha6", "description": "8n3Ynozp", "gameSessionId": "1C2KmIQT", "subcategory": "uBdNEUsx", "userId": "Fb8CJ17M"}' \
#    --namespace '7DJZaMSx' \
#    >$TEMP_FILE 2>&1
#update_status $? 'reportUser'
#delete_file $TEMP_FILE

#- 9 getUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace 'ECbZbygy' \
    --userId 'oarORoeN' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserStatus'
delete_file $TEMP_FILE

#- 10 unBanUsers
#samples/cli/sample-apps Basic unBanUsers \
#    --body '{"comment": "HSb8Rh3k", "userIds": ["gs9qqJbn"]}' \
#    --namespace 'QsoBgiVp' \
#    >$TEMP_FILE 2>&1
#update_status $? 'unBanUsers'
#delete_file $TEMP_FILE

#- 11 updateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --body '{"displayName": "P8Cm3yvA"}' \
    --namespace 'SUoxdxxF' \
    >$TEMP_FILE 2>&1
update_status $? 'updateNamespace'
delete_file $TEMP_FILE

#- 12 getConfig
samples/cli/sample-apps Basic getConfig \
    --namespace 'qmAGTJ8I' \
    >$TEMP_FILE 2>&1
update_status $? 'getConfig'
delete_file $TEMP_FILE

#- 13 deleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --namespace 'EdagEtp4' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteConfig'
delete_file $TEMP_FILE

#- 14 updateConfig
samples/cli/sample-apps Basic updateConfig \
    --body '{"apiKey": "w29KOu9c"}' \
    --namespace '19R6XDqW' \
    >$TEMP_FILE 2>&1
update_status $? 'updateConfig'
delete_file $TEMP_FILE

#- 15 generatedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'HkkP8npL' \
    --namespace 'EKMfjiX7' \
    --fileType 'jpkVZk3I' \
    >$TEMP_FILE 2>&1
update_status $? 'generatedUploadUrl'
delete_file $TEMP_FILE

#- 16 getCountries
samples/cli/sample-apps Basic getCountries \
    --namespace 'aQYEmqGo' \
    --lang 'dOEGt9gP' \
    >$TEMP_FILE 2>&1
update_status $? 'getCountries'
delete_file $TEMP_FILE

#- 17 getCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace 'Oj0c6i0J' \
    --groupCode 'kvIas73u' \
    >$TEMP_FILE 2>&1
update_status $? 'getCountryGroups'
delete_file $TEMP_FILE

#- 18 addCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --body '{"countries": [{"code": "cYnFAJ3D", "name": "K5T4Eogg"}], "countryGroupCode": "0Y39UoYl", "countryGroupName": "pv5bVAgt"}' \
    --namespace 'sDhUTDUs' \
    >$TEMP_FILE 2>&1
update_status $? 'addCountryGroup'
delete_file $TEMP_FILE

#- 19 updateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --body '{"countries": [{"code": "cbQDjbTQ", "name": "uPMz2PTR"}], "countryGroupName": "lkyU89ZP"}' \
    --countryGroupCode 'Ow6zPFJ4' \
    --namespace '2cwmzBBS' \
    >$TEMP_FILE 2>&1
update_status $? 'updateCountryGroup'
delete_file $TEMP_FILE

#- 20 deleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'MNcoAAOj' \
    --namespace 'KNjfcYHm' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteCountryGroup'
delete_file $TEMP_FILE

#- 21 getLanguages
samples/cli/sample-apps Basic getLanguages \
    --namespace '093aYgBU' \
    >$TEMP_FILE 2>&1
update_status $? 'getLanguages'
delete_file $TEMP_FILE

#- 22 getTimeZones
samples/cli/sample-apps Basic getTimeZones \
    --namespace '1sqjyK0X' \
    >$TEMP_FILE 2>&1
update_status $? 'getTimeZones'
delete_file $TEMP_FILE

#- 23 adminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --body '{"userIds": ["H45PaRSO"]}' \
    --namespace 'FQBtu23R' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserProfilePublicInfoByIds'
delete_file $TEMP_FILE

#- 24 getNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace 'EZ8hRVX7' \
    >$TEMP_FILE 2>&1
update_status $? 'getNamespacePublisher'
delete_file $TEMP_FILE

#- 25 changeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --body '{"status": "INACTIVE"}' \
    --namespace 'DdYiQS9i' \
    >$TEMP_FILE 2>&1
update_status $? 'changeNamespaceStatus'
delete_file $TEMP_FILE

#- 26 anonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace '7mV1C91p' \
    --userId 'jG9gpxL6' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeUserProfile'
delete_file $TEMP_FILE

#- 27 generatedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace 'ycTQdvln' \
    --userId '2LAuSQWE' \
    --fileType 'XL6LFE1Y' \
    >$TEMP_FILE 2>&1
update_status $? 'generatedUserUploadContentUrl'
delete_file $TEMP_FILE

#- 28 getUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace 'Ho9m126Z' \
    --userId 'Wc8hHtWv' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserProfileInfo'
delete_file $TEMP_FILE

#- 29 updateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --body '{"avatarLargeUrl": "bNYqgUqs", "avatarSmallUrl": "lArFPiHU", "avatarUrl": "IvaCv8kU", "customAttributes": {"9dBBpdsJ": {}}, "dateOfBirth": "1989-02-28", "firstName": "sVyExrkx", "language": "oot0B7WO", "lastName": "fercZdpM", "status": "ACTIVE", "timeZone": "i37Ds7YS", "zipCode": "fExaI3uz"}' \
    --namespace 'LteMbFAl' \
    --userId 't4hr7HmO' \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserProfile'
delete_file $TEMP_FILE

#- 30 deleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace 'YiBA5ltA' \
    --userId 'OXmlG6eh' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserProfile'
delete_file $TEMP_FILE

#- 31 getCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace '1dTdoTFp' \
    --userId 'BIcuC1dQ' \
    >$TEMP_FILE 2>&1
update_status $? 'getCustomAttributesInfo'
delete_file $TEMP_FILE

#- 32 updateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --body '{"Y93OJnJ6": {}}' \
    --namespace 'Te9vD8ld' \
    --userId 'z7Hu8AD7' \
    >$TEMP_FILE 2>&1
update_status $? 'updateCustomAttributesPartially'
delete_file $TEMP_FILE

#- 33 getPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace '9kdWunvi' \
    --userId 'zU0q1pHy' \
    >$TEMP_FILE 2>&1
update_status $? 'getPrivateCustomAttributesInfo'
delete_file $TEMP_FILE

#- 34 updatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --body '{"hhERoGgd": {}}' \
    --namespace 'rysMizBG' \
    --userId 'SRdP2l7D' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePrivateCustomAttributesPartially'
delete_file $TEMP_FILE

#- 35 updateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --body '{"status": "INACTIVE"}' \
    --namespace 'q0XiPLQX' \
    --userId 'Se07ZddO' \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserProfileStatus'
delete_file $TEMP_FILE

#- 36 publicGetTime
samples/cli/sample-apps Basic publicGetTime \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetTime'
delete_file $TEMP_FILE

#- 37 publicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetNamespaces'
delete_file $TEMP_FILE

#- 38 publicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'JjBwj9HJ' \
    --namespace 'HQKseEdS' \
    --fileType 'XRDSvgua' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGeneratedUploadUrl'
delete_file $TEMP_FILE

#- 39 publicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace 'uw1xT7eM' \
    --lang 'wSl9MLH0' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetCountries'
delete_file $TEMP_FILE

#- 40 publicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace 'NnTJ2ulN' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetLanguages'
delete_file $TEMP_FILE

#- 41 publicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace 'zBvwJaQa' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetTimeZones'
delete_file $TEMP_FILE

#- 42 publicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace '547JllvA' \
    --userIds '8RWSpabU' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserProfilePublicInfoByIds'
delete_file $TEMP_FILE

#- 43 publicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace 't7xk6Qxy' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetNamespacePublisher'
delete_file $TEMP_FILE

#- 44 getMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace 'WhfqoWfJ' \
    >$TEMP_FILE 2>&1
update_status $? 'getMyProfileInfo'
delete_file $TEMP_FILE

#- 45 updateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --body '{"avatarLargeUrl": "w2o8oWUq", "avatarSmallUrl": "vPCZ2HzT", "avatarUrl": "7NXmWDlX", "customAttributes": {"suNIdQJR": {}}, "dateOfBirth": "1999-03-28", "firstName": "sNOlvkfw", "language": "aSbnsuLC", "lastName": "gToxuVTe", "privateCustomAttributes": {"kJgvg6h5": {}}, "timeZone": "HIpH0Dvi", "zipCode": "plEk4vj3"}' \
    --namespace 'LDp4yqDt' \
    >$TEMP_FILE 2>&1
update_status $? 'updateMyProfile'
delete_file $TEMP_FILE

#- 46 createMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --body '{"avatarLargeUrl": "8QUZDpxl", "avatarSmallUrl": "HasinGcj", "avatarUrl": "rkmRMttg", "customAttributes": {"jDSaIVBm": {}}, "dateOfBirth": "1973-06-08", "firstName": "3Udg7p9P", "language": "GmY2H5kX", "lastName": "4MsisSX2", "privateCustomAttributes": {"8nARxWRp": {}}, "timeZone": "v5ou5xtv"}' \
    --namespace 'd28OUfCt' \
    >$TEMP_FILE 2>&1
update_status $? 'createMyProfile'
delete_file $TEMP_FILE

#- 47 getMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace '8UJC5flN' \
    >$TEMP_FILE 2>&1
update_status $? 'getMyZipCode'
delete_file $TEMP_FILE

#- 48 updateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --userZipCodeUpdate '{"zipCode": "yj6HsTtX"}' \
    --namespace '8P3llnaa' \
    >$TEMP_FILE 2>&1
update_status $? 'updateMyZipCode'
delete_file $TEMP_FILE

#- 49 publicReportUser
#samples/cli/sample-apps Basic publicReportUser \
#    --body '{"category": "S9lqyygP", "description": "cfkJIxfQ", "gameSessionId": "Zza8kNVb", "subcategory": "DxVMq7HJ", "userId": "k0F89xAc"}' \
#    --namespace '3YVfaENt' \
#    --userId 'rl0pTKZT' \
#    >$TEMP_FILE 2>&1
#update_status $? 'publicReportUser'
#delete_file $TEMP_FILE

#- 50 publicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace 'XqzHuBMY' \
    --userId 'QSA2jz1Z' \
    --fileType 'OpdOjSyM' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGeneratedUserUploadContentUrl'
delete_file $TEMP_FILE

#- 51 publicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace 'ddB41JuM' \
    --userId 'f7RUyBHR' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserProfileInfo'
delete_file $TEMP_FILE

#- 52 publicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --body '{"avatarLargeUrl": "j8IiRimR", "avatarSmallUrl": "llHT6Dc4", "avatarUrl": "0vFFA6gp", "customAttributes": {"U7EW3x1d": {}}, "dateOfBirth": "1985-05-01", "firstName": "m55gOeqQ", "language": "IqcJVKmB", "lastName": "M1J1IbuT", "timeZone": "rrkbmuT1", "zipCode": "whOqmEnD"}' \
    --namespace 'XIWrBPlS' \
    --userId 'ay46mv71' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserProfile'
delete_file $TEMP_FILE

#- 53 publicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --body '{"avatarLargeUrl": "BAZAOjtF", "avatarSmallUrl": "J2vmTj7t", "avatarUrl": "T7TZHWDd", "customAttributes": {"CkIsZoAr": {}}, "dateOfBirth": "1995-06-27", "firstName": "PHcyFAdA", "language": "tYciLIgR", "lastName": "wFRr0gwB", "timeZone": "9tz3vp99"}' \
    --namespace 'XVlV8rK3' \
    --userId 'tE6n0smi' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserProfile'
delete_file $TEMP_FILE

#- 54 publicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace 'p1tw3L7c' \
    --userId 'Ud9pqtv6' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetCustomAttributesInfo'
delete_file $TEMP_FILE

#- 55 publicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --body '{"JfPZwcCV": {}}' \
    --namespace 'OXcVa80T' \
    --userId 'mCwtD2lA' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateCustomAttributesPartially'
delete_file $TEMP_FILE

#- 56 publicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace 'H01o6Ndc' \
    --userId 'BIgzrDyW' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserProfilePublicInfo'
delete_file $TEMP_FILE

#- 57 publicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --body '{"status": "ACTIVE"}' \
    --namespace 'FBYGmmBa' \
    --userId 'wMyoKyNp' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserProfileStatus'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT