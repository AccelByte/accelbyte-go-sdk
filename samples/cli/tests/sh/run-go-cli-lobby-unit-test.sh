#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=89

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

#- 1 getUserFriendsUpdated
$ sample-apps Lobby getUserFriendsUpdated -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserFriendsUpdated'
delete_file $TEMP_FILE

#- 2 getUserIncomingFriends
$ sample-apps Lobby getUserIncomingFriends -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserIncomingFriends'
delete_file $TEMP_FILE

#- 3 getUserOutgoingFriends
$ sample-apps Lobby getUserOutgoingFriends -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserOutgoingFriends'
delete_file $TEMP_FILE

#- 4 userRequestFriend
$ sample-apps Lobby userRequestFriend -h \
    >$TEMP_FILE 2>&1
update_status $? 'userRequestFriend'
delete_file $TEMP_FILE

#- 5 userAcceptFriendRequest
$ sample-apps Lobby userAcceptFriendRequest -h \
    >$TEMP_FILE 2>&1
update_status $? 'userAcceptFriendRequest'
delete_file $TEMP_FILE

#- 6 userCancelFriendRequest
$ sample-apps Lobby userCancelFriendRequest -h \
    >$TEMP_FILE 2>&1
update_status $? 'userCancelFriendRequest'
delete_file $TEMP_FILE

#- 7 userRejectFriendRequest
$ sample-apps Lobby userRejectFriendRequest -h \
    >$TEMP_FILE 2>&1
update_status $? 'userRejectFriendRequest'
delete_file $TEMP_FILE

#- 8 userGetFriendshipStatus
$ sample-apps Lobby userGetFriendshipStatus -h \
    >$TEMP_FILE 2>&1
update_status $? 'userGetFriendshipStatus'
delete_file $TEMP_FILE

#- 9 userUnfriendRequest
$ sample-apps Lobby userUnfriendRequest -h \
    >$TEMP_FILE 2>&1
update_status $? 'userUnfriendRequest'
delete_file $TEMP_FILE

#- 10 addFriendsWithoutConfirmation
$ sample-apps Lobby addFriendsWithoutConfirmation -h \
    >$TEMP_FILE 2>&1
update_status $? 'addFriendsWithoutConfirmation'
delete_file $TEMP_FILE

#- 11 personalChatHistory
$ sample-apps Lobby personalChatHistory -h \
    >$TEMP_FILE 2>&1
update_status $? 'personalChatHistory'
delete_file $TEMP_FILE

#- 12 adminChatHistory
$ sample-apps Lobby adminChatHistory -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminChatHistory'
delete_file $TEMP_FILE

#- 13 adminGetAllConfigV1
$ sample-apps Lobby adminGetAllConfigV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetAllConfigV1'
delete_file $TEMP_FILE

#- 14 adminGetConfigV1
$ sample-apps Lobby adminGetConfigV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetConfigV1'
delete_file $TEMP_FILE

#- 15 adminUpdateConfigV1
$ sample-apps Lobby adminUpdateConfigV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateConfigV1'
delete_file $TEMP_FILE

#- 16 exportConfig
$ sample-apps Lobby exportConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'exportConfig'
delete_file $TEMP_FILE

#- 17 importConfig
$ sample-apps Lobby importConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'importConfig'
delete_file $TEMP_FILE

#- 18 getListOfFriends
$ sample-apps Lobby getListOfFriends -h \
    >$TEMP_FILE 2>&1
update_status $? 'getListOfFriends'
delete_file $TEMP_FILE

#- 19 sendMultipleUsersFreeformNotificationV1Admin
$ sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'sendMultipleUsersFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 20 sendUsersFreeformNotificationV1Admin
$ sample-apps Lobby sendUsersFreeformNotificationV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'sendUsersFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 21 sendPartyFreeformNotificationV1Admin
$ sample-apps Lobby sendPartyFreeformNotificationV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'sendPartyFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 22 sendPartyTemplatedNotificationV1Admin
$ sample-apps Lobby sendPartyTemplatedNotificationV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'sendPartyTemplatedNotificationV1Admin'
delete_file $TEMP_FILE

#- 23 getAllNotificationTemplatesV1Admin
$ sample-apps Lobby getAllNotificationTemplatesV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'getAllNotificationTemplatesV1Admin'
delete_file $TEMP_FILE

#- 24 createNotificationTemplateV1Admin
$ sample-apps Lobby createNotificationTemplateV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'createNotificationTemplateV1Admin'
delete_file $TEMP_FILE

#- 25 sendUsersTemplatedNotificationV1Admin
$ sample-apps Lobby sendUsersTemplatedNotificationV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'sendUsersTemplatedNotificationV1Admin'
delete_file $TEMP_FILE

#- 26 getTemplateSlugLocalizationsTemplateV1Admin
$ sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'getTemplateSlugLocalizationsTemplateV1Admin'
delete_file $TEMP_FILE

#- 27 deleteNotificationTemplateSlugV1Admin
$ sample-apps Lobby deleteNotificationTemplateSlugV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteNotificationTemplateSlugV1Admin'
delete_file $TEMP_FILE

#- 28 getSingleTemplateLocalizationV1Admin
$ sample-apps Lobby getSingleTemplateLocalizationV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'getSingleTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 29 updateTemplateLocalizationV1Admin
$ sample-apps Lobby updateTemplateLocalizationV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 30 deleteTemplateLocalizationV1Admin
$ sample-apps Lobby deleteTemplateLocalizationV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 31 publishTemplateLocalizationV1Admin
$ sample-apps Lobby publishTemplateLocalizationV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'publishTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 32 getAllNotificationTopicsV1Admin
$ sample-apps Lobby getAllNotificationTopicsV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'getAllNotificationTopicsV1Admin'
delete_file $TEMP_FILE

#- 33 createNotificationTopicV1Admin
$ sample-apps Lobby createNotificationTopicV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'createNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 34 getNotificationTopicV1Admin
$ sample-apps Lobby getNotificationTopicV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'getNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 35 updateNotificationTopicV1Admin
$ sample-apps Lobby updateNotificationTopicV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 36 deleteNotificationTopicV1Admin
$ sample-apps Lobby deleteNotificationTopicV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 37 sendSpecificUserFreeformNotificationV1Admin
$ sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'sendSpecificUserFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 38 sendSpecificUserTemplatedNotificationV1Admin
$ sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin -h \
    >$TEMP_FILE 2>&1
update_status $? 'sendSpecificUserTemplatedNotificationV1Admin'
delete_file $TEMP_FILE

#- 39 adminGetPartyDataV1
$ sample-apps Lobby adminGetPartyDataV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPartyDataV1'
delete_file $TEMP_FILE

#- 40 adminUpdatePartyAttributesV1
$ sample-apps Lobby adminUpdatePartyAttributesV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdatePartyAttributesV1'
delete_file $TEMP_FILE

#- 41 adminGetUserPartyV1
$ sample-apps Lobby adminGetUserPartyV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserPartyV1'
delete_file $TEMP_FILE

#- 42 adminGetLobbyCCU
$ sample-apps Lobby adminGetLobbyCCU -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetLobbyCCU'
delete_file $TEMP_FILE

#- 43 adminGetAllPlayerSessionAttribute
$ sample-apps Lobby adminGetAllPlayerSessionAttribute -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetAllPlayerSessionAttribute'
delete_file $TEMP_FILE

#- 44 adminSetPlayerSessionAttribute
$ sample-apps Lobby adminSetPlayerSessionAttribute -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminSetPlayerSessionAttribute'
delete_file $TEMP_FILE

#- 45 adminGetPlayerSessionAttribute
$ sample-apps Lobby adminGetPlayerSessionAttribute -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerSessionAttribute'
delete_file $TEMP_FILE

#- 46 adminGetPlayerBlockedPlayersV1
$ sample-apps Lobby adminGetPlayerBlockedPlayersV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerBlockedPlayersV1'
delete_file $TEMP_FILE

#- 47 adminGetPlayerBlockedByPlayersV1
$ sample-apps Lobby adminGetPlayerBlockedByPlayersV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerBlockedByPlayersV1'
delete_file $TEMP_FILE

#- 48 adminBulkBlockPlayersV1
$ sample-apps Lobby adminBulkBlockPlayersV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminBulkBlockPlayersV1'
delete_file $TEMP_FILE

#- 49 adminDebugProfanityFilters
$ sample-apps Lobby adminDebugProfanityFilters -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDebugProfanityFilters'
delete_file $TEMP_FILE

#- 50 adminGetProfanityListFiltersV1
$ sample-apps Lobby adminGetProfanityListFiltersV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetProfanityListFiltersV1'
delete_file $TEMP_FILE

#- 51 adminAddProfanityFilterIntoList
$ sample-apps Lobby adminAddProfanityFilterIntoList -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddProfanityFilterIntoList'
delete_file $TEMP_FILE

#- 52 adminAddProfanityFilters
$ sample-apps Lobby adminAddProfanityFilters -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddProfanityFilters'
delete_file $TEMP_FILE

#- 53 adminImportProfanityFiltersFromFile
$ sample-apps Lobby adminImportProfanityFiltersFromFile -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminImportProfanityFiltersFromFile'
delete_file $TEMP_FILE

#- 54 adminDeleteProfanityFilter
$ sample-apps Lobby adminDeleteProfanityFilter -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteProfanityFilter'
delete_file $TEMP_FILE

#- 55 adminGetProfanityLists
$ sample-apps Lobby adminGetProfanityLists -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetProfanityLists'
delete_file $TEMP_FILE

#- 56 adminCreateProfanityList
$ sample-apps Lobby adminCreateProfanityList -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateProfanityList'
delete_file $TEMP_FILE

#- 57 adminUpdateProfanityList
$ sample-apps Lobby adminUpdateProfanityList -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateProfanityList'
delete_file $TEMP_FILE

#- 58 adminDeleteProfanityList
$ sample-apps Lobby adminDeleteProfanityList -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteProfanityList'
delete_file $TEMP_FILE

#- 59 adminGetProfanityRule
$ sample-apps Lobby adminGetProfanityRule -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetProfanityRule'
delete_file $TEMP_FILE

#- 60 adminSetProfanityRuleForNamespace
$ sample-apps Lobby adminSetProfanityRuleForNamespace -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminSetProfanityRuleForNamespace'
delete_file $TEMP_FILE

#- 61 adminVerifyMessageProfanityResponse
$ sample-apps Lobby adminVerifyMessageProfanityResponse -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminVerifyMessageProfanityResponse'
delete_file $TEMP_FILE

#- 62 adminGetThirdPartyConfig
$ sample-apps Lobby adminGetThirdPartyConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetThirdPartyConfig'
delete_file $TEMP_FILE

#- 63 adminUpdateThirdPartyConfig
$ sample-apps Lobby adminUpdateThirdPartyConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateThirdPartyConfig'
delete_file $TEMP_FILE

#- 64 adminCreateThirdPartyConfig
$ sample-apps Lobby adminCreateThirdPartyConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateThirdPartyConfig'
delete_file $TEMP_FILE

#- 65 adminDeleteThirdPartyConfig
$ sample-apps Lobby adminDeleteThirdPartyConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteThirdPartyConfig'
delete_file $TEMP_FILE

#- 66 publicGetMessages
$ sample-apps Lobby publicGetMessages -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMessages'
delete_file $TEMP_FILE

#- 67 getPersonalChatHistoryV1Public
$ sample-apps Lobby getPersonalChatHistoryV1Public -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPersonalChatHistoryV1Public'
delete_file $TEMP_FILE

#- 68 publicGetPartyDataV1
$ sample-apps Lobby publicGetPartyDataV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPartyDataV1'
delete_file $TEMP_FILE

#- 69 publicUpdatePartyAttributesV1
$ sample-apps Lobby publicUpdatePartyAttributesV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdatePartyAttributesV1'
delete_file $TEMP_FILE

#- 70 publicGetPlayerBlockedPlayersV1
$ sample-apps Lobby publicGetPlayerBlockedPlayersV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPlayerBlockedPlayersV1'
delete_file $TEMP_FILE

#- 71 publicGetPlayerBlockedByPlayersV1
$ sample-apps Lobby publicGetPlayerBlockedByPlayersV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPlayerBlockedByPlayersV1'
delete_file $TEMP_FILE

#- 72 usersPresenceHandlerV1
$ sample-apps Lobby usersPresenceHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'usersPresenceHandlerV1'
delete_file $TEMP_FILE

#- 73 freeFormNotification
$ sample-apps Lobby freeFormNotification -h \
    >$TEMP_FILE 2>&1
update_status $? 'freeFormNotification'
delete_file $TEMP_FILE

#- 74 notificationWithTemplate
$ sample-apps Lobby notificationWithTemplate -h \
    >$TEMP_FILE 2>&1
update_status $? 'notificationWithTemplate'
delete_file $TEMP_FILE

#- 75 getGameTemplate
$ sample-apps Lobby getGameTemplate -h \
    >$TEMP_FILE 2>&1
update_status $? 'getGameTemplate'
delete_file $TEMP_FILE

#- 76 createTemplate
$ sample-apps Lobby createTemplate -h \
    >$TEMP_FILE 2>&1
update_status $? 'createTemplate'
delete_file $TEMP_FILE

#- 77 getSlugTemplate
$ sample-apps Lobby getSlugTemplate -h \
    >$TEMP_FILE 2>&1
update_status $? 'getSlugTemplate'
delete_file $TEMP_FILE

#- 78 deleteTemplateSlug
$ sample-apps Lobby deleteTemplateSlug -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTemplateSlug'
delete_file $TEMP_FILE

#- 79 getLocalizationTemplate
$ sample-apps Lobby getLocalizationTemplate -h \
    >$TEMP_FILE 2>&1
update_status $? 'getLocalizationTemplate'
delete_file $TEMP_FILE

#- 80 updateLocalizationTemplate
$ sample-apps Lobby updateLocalizationTemplate -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateLocalizationTemplate'
delete_file $TEMP_FILE

#- 81 deleteTemplateLocalization
$ sample-apps Lobby deleteTemplateLocalization -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTemplateLocalization'
delete_file $TEMP_FILE

#- 82 publishTemplate
$ sample-apps Lobby publishTemplate -h \
    >$TEMP_FILE 2>&1
update_status $? 'publishTemplate'
delete_file $TEMP_FILE

#- 83 getTopicByNamespace
$ sample-apps Lobby getTopicByNamespace -h \
    >$TEMP_FILE 2>&1
update_status $? 'getTopicByNamespace'
delete_file $TEMP_FILE

#- 84 createTopic
$ sample-apps Lobby createTopic -h \
    >$TEMP_FILE 2>&1
update_status $? 'createTopic'
delete_file $TEMP_FILE

#- 85 getTopicByTopicName
$ sample-apps Lobby getTopicByTopicName -h \
    >$TEMP_FILE 2>&1
update_status $? 'getTopicByTopicName'
delete_file $TEMP_FILE

#- 86 updateTopicByTopicName
$ sample-apps Lobby updateTopicByTopicName -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateTopicByTopicName'
delete_file $TEMP_FILE

#- 87 deleteTopicByTopicName
$ sample-apps Lobby deleteTopicByTopicName -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTopicByTopicName'
delete_file $TEMP_FILE

#- 88 freeFormNotificationByUserID
$ sample-apps Lobby freeFormNotificationByUserID -h \
    >$TEMP_FILE 2>&1
update_status $? 'freeFormNotificationByUserID'
delete_file $TEMP_FILE

#- 89 notificationWithTemplateByUserID
$ sample-apps Lobby notificationWithTemplateByUserID -h \
    >$TEMP_FILE 2>&1
update_status $? 'notificationWithTemplateByUserID'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT