#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=84

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

#- 1 singleAdminGetChannel
$ sample-apps Ugc singleAdminGetChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminGetChannel'
delete_file $TEMP_FILE

#- 2 adminCreateChannel
$ sample-apps Ugc adminCreateChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateChannel'
delete_file $TEMP_FILE

#- 3 singleAdminUpdateChannel
$ sample-apps Ugc singleAdminUpdateChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminUpdateChannel'
delete_file $TEMP_FILE

#- 4 singleAdminDeleteChannel
$ sample-apps Ugc singleAdminDeleteChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminDeleteChannel'
delete_file $TEMP_FILE

#- 5 adminUploadContentDirect
update_status 0 'adminUploadContentDirect (skipped deprecated)'

#- 6 adminUploadContentS3
$ sample-apps Ugc adminUploadContentS3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUploadContentS3'
delete_file $TEMP_FILE

#- 7 singleAdminUpdateContentS3
$ sample-apps Ugc singleAdminUpdateContentS3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminUpdateContentS3'
delete_file $TEMP_FILE

#- 8 adminSearchChannelSpecificContent
$ sample-apps Ugc adminSearchChannelSpecificContent -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminSearchChannelSpecificContent'
delete_file $TEMP_FILE

#- 9 singleAdminUpdateContentDirect
update_status 0 'singleAdminUpdateContentDirect (skipped deprecated)'

#- 10 singleAdminDeleteContent
$ sample-apps Ugc singleAdminDeleteContent -h \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminDeleteContent'
delete_file $TEMP_FILE

#- 11 singleAdminGetContent
$ sample-apps Ugc singleAdminGetContent -h \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminGetContent'
delete_file $TEMP_FILE

#- 12 adminSearchContent
$ sample-apps Ugc adminSearchContent -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminSearchContent'
delete_file $TEMP_FILE

#- 13 adminGetSpecificContent
$ sample-apps Ugc adminGetSpecificContent -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetSpecificContent'
delete_file $TEMP_FILE

#- 14 adminDownloadContentPreview
$ sample-apps Ugc adminDownloadContentPreview -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDownloadContentPreview'
delete_file $TEMP_FILE

#- 15 adminUpdateScreenshots
$ sample-apps Ugc adminUpdateScreenshots -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateScreenshots'
delete_file $TEMP_FILE

#- 16 adminUploadContentScreenshot
$ sample-apps Ugc adminUploadContentScreenshot -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUploadContentScreenshot'
delete_file $TEMP_FILE

#- 17 adminDeleteContentScreenshot
$ sample-apps Ugc adminDeleteContentScreenshot -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteContentScreenshot'
delete_file $TEMP_FILE

#- 18 singleAdminGetAllGroups
$ sample-apps Ugc singleAdminGetAllGroups -h \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminGetAllGroups'
delete_file $TEMP_FILE

#- 19 adminCreateGroup
$ sample-apps Ugc adminCreateGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateGroup'
delete_file $TEMP_FILE

#- 20 singleAdminGetGroup
$ sample-apps Ugc singleAdminGetGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminGetGroup'
delete_file $TEMP_FILE

#- 21 singleAdminUpdateGroup
$ sample-apps Ugc singleAdminUpdateGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminUpdateGroup'
delete_file $TEMP_FILE

#- 22 singleAdminDeleteGroup
$ sample-apps Ugc singleAdminDeleteGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminDeleteGroup'
delete_file $TEMP_FILE

#- 23 singleAdminGetGroupContents
$ sample-apps Ugc singleAdminGetGroupContents -h \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminGetGroupContents'
delete_file $TEMP_FILE

#- 24 adminGetTag
$ sample-apps Ugc adminGetTag -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetTag'
delete_file $TEMP_FILE

#- 25 adminCreateTag
$ sample-apps Ugc adminCreateTag -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateTag'
delete_file $TEMP_FILE

#- 26 adminUpdateTag
$ sample-apps Ugc adminUpdateTag -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateTag'
delete_file $TEMP_FILE

#- 27 adminDeleteTag
$ sample-apps Ugc adminDeleteTag -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteTag'
delete_file $TEMP_FILE

#- 28 adminGetType
$ sample-apps Ugc adminGetType -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetType'
delete_file $TEMP_FILE

#- 29 adminCreateType
$ sample-apps Ugc adminCreateType -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateType'
delete_file $TEMP_FILE

#- 30 adminUpdateType
$ sample-apps Ugc adminUpdateType -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateType'
delete_file $TEMP_FILE

#- 31 adminDeleteType
$ sample-apps Ugc adminDeleteType -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteType'
delete_file $TEMP_FILE

#- 32 adminGetChannel
$ sample-apps Ugc adminGetChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetChannel'
delete_file $TEMP_FILE

#- 33 adminDeleteAllUserChannels
$ sample-apps Ugc adminDeleteAllUserChannels -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteAllUserChannels'
delete_file $TEMP_FILE

#- 34 adminUpdateChannel
$ sample-apps Ugc adminUpdateChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateChannel'
delete_file $TEMP_FILE

#- 35 adminDeleteChannel
$ sample-apps Ugc adminDeleteChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteChannel'
delete_file $TEMP_FILE

#- 36 adminUpdateContentS3
$ sample-apps Ugc adminUpdateContentS3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateContentS3'
delete_file $TEMP_FILE

#- 37 adminUpdateContentDirect
update_status 0 'adminUpdateContentDirect (skipped deprecated)'

#- 38 adminDeleteContent
$ sample-apps Ugc adminDeleteContent -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteContent'
delete_file $TEMP_FILE

#- 39 adminGetContent
$ sample-apps Ugc adminGetContent -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetContent'
delete_file $TEMP_FILE

#- 40 adminDeleteAllUserContents
$ sample-apps Ugc adminDeleteAllUserContents -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteAllUserContents'
delete_file $TEMP_FILE

#- 41 adminHideUserContent
$ sample-apps Ugc adminHideUserContent -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminHideUserContent'
delete_file $TEMP_FILE

#- 42 adminGetAllGroups
$ sample-apps Ugc adminGetAllGroups -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetAllGroups'
delete_file $TEMP_FILE

#- 43 adminDeleteAllUserGroup
$ sample-apps Ugc adminDeleteAllUserGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteAllUserGroup'
delete_file $TEMP_FILE

#- 44 adminGetGroup
$ sample-apps Ugc adminGetGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetGroup'
delete_file $TEMP_FILE

#- 45 adminUpdateGroup
$ sample-apps Ugc adminUpdateGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateGroup'
delete_file $TEMP_FILE

#- 46 adminDeleteGroup
$ sample-apps Ugc adminDeleteGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteGroup'
delete_file $TEMP_FILE

#- 47 adminGetGroupContents
$ sample-apps Ugc adminGetGroupContents -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetGroupContents'
delete_file $TEMP_FILE

#- 48 adminDeleteAllUserStates
$ sample-apps Ugc adminDeleteAllUserStates -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteAllUserStates'
delete_file $TEMP_FILE

#- 49 searchChannelSpecificContent
$ sample-apps Ugc searchChannelSpecificContent -h \
    >$TEMP_FILE 2>&1
update_status $? 'searchChannelSpecificContent'
delete_file $TEMP_FILE

#- 50 publicSearchContent
$ sample-apps Ugc publicSearchContent -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicSearchContent'
delete_file $TEMP_FILE

#- 51 getFollowedContent
$ sample-apps Ugc getFollowedContent -h \
    >$TEMP_FILE 2>&1
update_status $? 'getFollowedContent'
delete_file $TEMP_FILE

#- 52 getLikedContent
$ sample-apps Ugc getLikedContent -h \
    >$TEMP_FILE 2>&1
update_status $? 'getLikedContent'
delete_file $TEMP_FILE

#- 53 downloadContentByShareCode
$ sample-apps Ugc downloadContentByShareCode -h \
    >$TEMP_FILE 2>&1
update_status $? 'downloadContentByShareCode'
delete_file $TEMP_FILE

#- 54 publicDownloadContentByContentID
$ sample-apps Ugc publicDownloadContentByContentID -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicDownloadContentByContentID'
delete_file $TEMP_FILE

#- 55 addDownloadCount
$ sample-apps Ugc addDownloadCount -h \
    >$TEMP_FILE 2>&1
update_status $? 'addDownloadCount'
delete_file $TEMP_FILE

#- 56 updateContentLikeStatus
$ sample-apps Ugc updateContentLikeStatus -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateContentLikeStatus'
delete_file $TEMP_FILE

#- 57 publicDownloadContentPreview
$ sample-apps Ugc publicDownloadContentPreview -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicDownloadContentPreview'
delete_file $TEMP_FILE

#- 58 getTag
$ sample-apps Ugc getTag -h \
    >$TEMP_FILE 2>&1
update_status $? 'getTag'
delete_file $TEMP_FILE

#- 59 getType
$ sample-apps Ugc getType -h \
    >$TEMP_FILE 2>&1
update_status $? 'getType'
delete_file $TEMP_FILE

#- 60 getFollowedUsers
$ sample-apps Ugc getFollowedUsers -h \
    >$TEMP_FILE 2>&1
update_status $? 'getFollowedUsers'
delete_file $TEMP_FILE

#- 61 getChannels
$ sample-apps Ugc getChannels -h \
    >$TEMP_FILE 2>&1
update_status $? 'getChannels'
delete_file $TEMP_FILE

#- 62 createChannel
$ sample-apps Ugc createChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'createChannel'
delete_file $TEMP_FILE

#- 63 deleteAllUserChannel
$ sample-apps Ugc deleteAllUserChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteAllUserChannel'
delete_file $TEMP_FILE

#- 64 updateChannel
$ sample-apps Ugc updateChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateChannel'
delete_file $TEMP_FILE

#- 65 deleteChannel
$ sample-apps Ugc deleteChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteChannel'
delete_file $TEMP_FILE

#- 66 createContentDirect
update_status 0 'createContentDirect (skipped deprecated)'

#- 67 createContentS3
$ sample-apps Ugc createContentS3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'createContentS3'
delete_file $TEMP_FILE

#- 68 updateContentS3
$ sample-apps Ugc updateContentS3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateContentS3'
delete_file $TEMP_FILE

#- 69 updateContentDirect
update_status 0 'updateContentDirect (skipped deprecated)'

#- 70 deleteContent
$ sample-apps Ugc deleteContent -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteContent'
delete_file $TEMP_FILE

#- 71 publicGetUserContent
$ sample-apps Ugc publicGetUserContent -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserContent'
delete_file $TEMP_FILE

#- 72 deleteAllUserContents
$ sample-apps Ugc deleteAllUserContents -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteAllUserContents'
delete_file $TEMP_FILE

#- 73 updateScreenshots
$ sample-apps Ugc updateScreenshots -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateScreenshots'
delete_file $TEMP_FILE

#- 74 uploadContentScreenshot
$ sample-apps Ugc uploadContentScreenshot -h \
    >$TEMP_FILE 2>&1
update_status $? 'uploadContentScreenshot'
delete_file $TEMP_FILE

#- 75 deleteContentScreenshot
$ sample-apps Ugc deleteContentScreenshot -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteContentScreenshot'
delete_file $TEMP_FILE

#- 76 updateUserFollowStatus
$ sample-apps Ugc updateUserFollowStatus -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserFollowStatus'
delete_file $TEMP_FILE

#- 77 getGroups
$ sample-apps Ugc getGroups -h \
    >$TEMP_FILE 2>&1
update_status $? 'getGroups'
delete_file $TEMP_FILE

#- 78 createGroup
$ sample-apps Ugc createGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'createGroup'
delete_file $TEMP_FILE

#- 79 deleteAllUserGroup
$ sample-apps Ugc deleteAllUserGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteAllUserGroup'
delete_file $TEMP_FILE

#- 80 getGroup
$ sample-apps Ugc getGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'getGroup'
delete_file $TEMP_FILE

#- 81 updateGroup
$ sample-apps Ugc updateGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateGroup'
delete_file $TEMP_FILE

#- 82 deleteGroup
$ sample-apps Ugc deleteGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGroup'
delete_file $TEMP_FILE

#- 83 getGroupContent
$ sample-apps Ugc getGroupContent -h \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupContent'
delete_file $TEMP_FILE

#- 84 deleteAllUserStates
$ sample-apps Ugc deleteAllUserStates -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteAllUserStates'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT