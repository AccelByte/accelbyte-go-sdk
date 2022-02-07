#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=57

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export JUSTICE_BASE_URL="http://0.0.0.0:8080"
export APP_CLIENT_ID="admin"
export APP_CLIENT_SECRET="admin"
export NAMESPACE="test"

get_current_year() { echo $(date +'%Y'); }
get_adult_birthday() { echo "$(( $(get_current_year) - 22))-01-01"; }

get_random_int() { echo $(( $1 + ( RANDOM % (($2 - $1)) ) )); }
get_random_bool() { ( (( (RANDOM % 2) == 1)) && echo "true" ) || ( echo "false" ) }
get_random_element() { declare -a a=("$@"); r=$((RANDOM % ${#a[@]})); echo ${a[$r]}; }

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

echo 'TAP version 13'
echo "1..$OPERATIONS_COUNT"

#- 1 getNamespaces
$ sample-apps Basic getNamespaces -h \
    >$TEMP_FILE 2>&1
update_status $? 'getNamespaces'
delete_file $TEMP_FILE

#- 2 createNamespace
$ sample-apps Basic createNamespace -h \
    >$TEMP_FILE 2>&1
update_status $? 'createNamespace'
delete_file $TEMP_FILE

#- 3 getNamespace
$ sample-apps Basic getNamespace -h \
    >$TEMP_FILE 2>&1
update_status $? 'getNamespace'
delete_file $TEMP_FILE

#- 4 deleteNamespace
$ sample-apps Basic deleteNamespace -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteNamespace'
delete_file $TEMP_FILE

#- 5 getActions
$ sample-apps Basic getActions -h \
    >$TEMP_FILE 2>&1
update_status $? 'getActions'
delete_file $TEMP_FILE

#- 6 banUsers
$ sample-apps Basic banUsers -h \
    >$TEMP_FILE 2>&1
update_status $? 'banUsers'
delete_file $TEMP_FILE

#- 7 getBannedUsers
$ sample-apps Basic getBannedUsers -h \
    >$TEMP_FILE 2>&1
update_status $? 'getBannedUsers'
delete_file $TEMP_FILE

#- 8 reportUser
$ sample-apps Basic reportUser -h \
    >$TEMP_FILE 2>&1
update_status $? 'reportUser'
delete_file $TEMP_FILE

#- 9 getUserStatus
$ sample-apps Basic getUserStatus -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserStatus'
delete_file $TEMP_FILE

#- 10 unBanUsers
$ sample-apps Basic unBanUsers -h \
    >$TEMP_FILE 2>&1
update_status $? 'unBanUsers'
delete_file $TEMP_FILE

#- 11 updateNamespace
$ sample-apps Basic updateNamespace -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateNamespace'
delete_file $TEMP_FILE

#- 12 getConfig
$ sample-apps Basic getConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getConfig'
delete_file $TEMP_FILE

#- 13 deleteConfig
$ sample-apps Basic deleteConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteConfig'
delete_file $TEMP_FILE

#- 14 updateConfig
$ sample-apps Basic updateConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateConfig'
delete_file $TEMP_FILE

#- 15 generatedUploadUrl
$ sample-apps Basic generatedUploadUrl -h \
    >$TEMP_FILE 2>&1
update_status $? 'generatedUploadUrl'
delete_file $TEMP_FILE

#- 16 getCountries
$ sample-apps Basic getCountries -h \
    >$TEMP_FILE 2>&1
update_status $? 'getCountries'
delete_file $TEMP_FILE

#- 17 getCountryGroups
$ sample-apps Basic getCountryGroups -h \
    >$TEMP_FILE 2>&1
update_status $? 'getCountryGroups'
delete_file $TEMP_FILE

#- 18 addCountryGroup
$ sample-apps Basic addCountryGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'addCountryGroup'
delete_file $TEMP_FILE

#- 19 updateCountryGroup
$ sample-apps Basic updateCountryGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateCountryGroup'
delete_file $TEMP_FILE

#- 20 deleteCountryGroup
$ sample-apps Basic deleteCountryGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteCountryGroup'
delete_file $TEMP_FILE

#- 21 getLanguages
$ sample-apps Basic getLanguages -h \
    >$TEMP_FILE 2>&1
update_status $? 'getLanguages'
delete_file $TEMP_FILE

#- 22 getTimeZones
$ sample-apps Basic getTimeZones -h \
    >$TEMP_FILE 2>&1
update_status $? 'getTimeZones'
delete_file $TEMP_FILE

#- 23 adminGetUserProfilePublicInfoByIds
$ sample-apps Basic adminGetUserProfilePublicInfoByIds -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserProfilePublicInfoByIds'
delete_file $TEMP_FILE

#- 24 getNamespacePublisher
$ sample-apps Basic getNamespacePublisher -h \
    >$TEMP_FILE 2>&1
update_status $? 'getNamespacePublisher'
delete_file $TEMP_FILE

#- 25 changeNamespaceStatus
$ sample-apps Basic changeNamespaceStatus -h \
    >$TEMP_FILE 2>&1
update_status $? 'changeNamespaceStatus'
delete_file $TEMP_FILE

#- 26 anonymizeUserProfile
$ sample-apps Basic anonymizeUserProfile -h \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeUserProfile'
delete_file $TEMP_FILE

#- 27 generatedUserUploadContentUrl
$ sample-apps Basic generatedUserUploadContentUrl -h \
    >$TEMP_FILE 2>&1
update_status $? 'generatedUserUploadContentUrl'
delete_file $TEMP_FILE

#- 28 getUserProfileInfo
$ sample-apps Basic getUserProfileInfo -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserProfileInfo'
delete_file $TEMP_FILE

#- 29 updateUserProfile
$ sample-apps Basic updateUserProfile -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserProfile'
delete_file $TEMP_FILE

#- 30 deleteUserProfile
$ sample-apps Basic deleteUserProfile -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserProfile'
delete_file $TEMP_FILE

#- 31 getCustomAttributesInfo
$ sample-apps Basic getCustomAttributesInfo -h \
    >$TEMP_FILE 2>&1
update_status $? 'getCustomAttributesInfo'
delete_file $TEMP_FILE

#- 32 updateCustomAttributesPartially
$ sample-apps Basic updateCustomAttributesPartially -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateCustomAttributesPartially'
delete_file $TEMP_FILE

#- 33 getPrivateCustomAttributesInfo
$ sample-apps Basic getPrivateCustomAttributesInfo -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPrivateCustomAttributesInfo'
delete_file $TEMP_FILE

#- 34 updatePrivateCustomAttributesPartially
$ sample-apps Basic updatePrivateCustomAttributesPartially -h \
    >$TEMP_FILE 2>&1
update_status $? 'updatePrivateCustomAttributesPartially'
delete_file $TEMP_FILE

#- 35 updateUserProfileStatus
$ sample-apps Basic updateUserProfileStatus -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserProfileStatus'
delete_file $TEMP_FILE

#- 36 publicGetTime
$ sample-apps Basic publicGetTime -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetTime'
delete_file $TEMP_FILE

#- 37 publicGetNamespaces
$ sample-apps Basic publicGetNamespaces -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetNamespaces'
delete_file $TEMP_FILE

#- 38 publicGeneratedUploadUrl
$ sample-apps Basic publicGeneratedUploadUrl -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGeneratedUploadUrl'
delete_file $TEMP_FILE

#- 39 publicGetCountries
$ sample-apps Basic publicGetCountries -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetCountries'
delete_file $TEMP_FILE

#- 40 publicGetLanguages
$ sample-apps Basic publicGetLanguages -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetLanguages'
delete_file $TEMP_FILE

#- 41 publicGetTimeZones
$ sample-apps Basic publicGetTimeZones -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetTimeZones'
delete_file $TEMP_FILE

#- 42 publicGetUserProfilePublicInfoByIds
$ sample-apps Basic publicGetUserProfilePublicInfoByIds -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserProfilePublicInfoByIds'
delete_file $TEMP_FILE

#- 43 publicGetNamespacePublisher
$ sample-apps Basic publicGetNamespacePublisher -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetNamespacePublisher'
delete_file $TEMP_FILE

#- 44 getMyProfileInfo
$ sample-apps Basic getMyProfileInfo -h \
    >$TEMP_FILE 2>&1
update_status $? 'getMyProfileInfo'
delete_file $TEMP_FILE

#- 45 updateMyProfile
$ sample-apps Basic updateMyProfile -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateMyProfile'
delete_file $TEMP_FILE

#- 46 createMyProfile
$ sample-apps Basic createMyProfile -h \
    >$TEMP_FILE 2>&1
update_status $? 'createMyProfile'
delete_file $TEMP_FILE

#- 47 getMyZipCode
$ sample-apps Basic getMyZipCode -h \
    >$TEMP_FILE 2>&1
update_status $? 'getMyZipCode'
delete_file $TEMP_FILE

#- 48 updateMyZipCode
$ sample-apps Basic updateMyZipCode -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateMyZipCode'
delete_file $TEMP_FILE

#- 49 publicReportUser
$ sample-apps Basic publicReportUser -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicReportUser'
delete_file $TEMP_FILE

#- 50 publicGeneratedUserUploadContentUrl
$ sample-apps Basic publicGeneratedUserUploadContentUrl -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGeneratedUserUploadContentUrl'
delete_file $TEMP_FILE

#- 51 publicGetUserProfileInfo
$ sample-apps Basic publicGetUserProfileInfo -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserProfileInfo'
delete_file $TEMP_FILE

#- 52 publicUpdateUserProfile
$ sample-apps Basic publicUpdateUserProfile -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserProfile'
delete_file $TEMP_FILE

#- 53 publicCreateUserProfile
$ sample-apps Basic publicCreateUserProfile -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserProfile'
delete_file $TEMP_FILE

#- 54 publicGetCustomAttributesInfo
$ sample-apps Basic publicGetCustomAttributesInfo -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetCustomAttributesInfo'
delete_file $TEMP_FILE

#- 55 publicUpdateCustomAttributesPartially
$ sample-apps Basic publicUpdateCustomAttributesPartially -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateCustomAttributesPartially'
delete_file $TEMP_FILE

#- 56 publicGetUserProfilePublicInfo
$ sample-apps Basic publicGetUserProfilePublicInfo -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserProfilePublicInfo'
delete_file $TEMP_FILE

#- 57 publicUpdateUserProfileStatus
$ sample-apps Basic publicUpdateUserProfileStatus -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserProfileStatus'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT