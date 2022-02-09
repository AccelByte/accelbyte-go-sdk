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

OPERATIONS_COUNT=89

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

echo "go install github.com/AccelByte/sample-apps"
go install github.com/AccelByte/sample-apps
#rm -f $TEMP_TOKEN
#echo "\"{"\"access_token"\":"\"foo"\"}"\" >> $TEMP_TOKEN
echo "1..$OPERATIONS_COUNT"

#- 1 getUserFriendsUpdated
sample-apps Lobby getUserFriendsUpdated \
    --namespace 'FtBxyZcD' \
    --limit 'XBpGlsQu' \
    --offset 'Ju8vMf0I' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserFriendsUpdated'
delete_file $TEMP_FILE

#- 2 getUserIncomingFriends
sample-apps Lobby getUserIncomingFriends \
    --namespace 'sJkTrd8I' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserIncomingFriends'
delete_file $TEMP_FILE

#- 3 getUserOutgoingFriends
sample-apps Lobby getUserOutgoingFriends \
    --namespace 'DcV2zXnT' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserOutgoingFriends'
delete_file $TEMP_FILE

#- 4 userRequestFriend
sample-apps Lobby userRequestFriend \
    --body '{"friendId": "KjXY1bPq"}' \
    --namespace 'amiBxx9C' \
    >$TEMP_FILE 2>&1
update_status $? 'userRequestFriend'
delete_file $TEMP_FILE

#- 5 userAcceptFriendRequest
sample-apps Lobby userAcceptFriendRequest \
    --body '{"friendId": "s18EY84e"}' \
    --namespace 'kItqRzHU' \
    >$TEMP_FILE 2>&1
update_status $? 'userAcceptFriendRequest'
delete_file $TEMP_FILE

#- 6 userCancelFriendRequest
sample-apps Lobby userCancelFriendRequest \
    --body '{"friendId": "1oh570KQ"}' \
    --namespace 'BVaewc72' \
    >$TEMP_FILE 2>&1
update_status $? 'userCancelFriendRequest'
delete_file $TEMP_FILE

#- 7 userRejectFriendRequest
sample-apps Lobby userRejectFriendRequest \
    --body '{"friendId": "krSha68n"}' \
    --namespace '3Ynozp1C' \
    >$TEMP_FILE 2>&1
update_status $? 'userRejectFriendRequest'
delete_file $TEMP_FILE

#- 8 userGetFriendshipStatus
sample-apps Lobby userGetFriendshipStatus \
    --friendId '2KmIQTuB' \
    --namespace 'dNEUsxFb' \
    >$TEMP_FILE 2>&1
update_status $? 'userGetFriendshipStatus'
delete_file $TEMP_FILE

#- 9 userUnfriendRequest
sample-apps Lobby userUnfriendRequest \
    --body '{"friendId": "8CJ17M7D"}' \
    --namespace 'JZaMSxEC' \
    >$TEMP_FILE 2>&1
update_status $? 'userUnfriendRequest'
delete_file $TEMP_FILE

#- 10 addFriendsWithoutConfirmation
sample-apps Lobby addFriendsWithoutConfirmation \
    --body '{"friendIds": ["bZbygyoa"]}' \
    --namespace 'rORoeNHS' \
    --userId 'b8Rh3kgs' \
    >$TEMP_FILE 2>&1
update_status $? 'addFriendsWithoutConfirmation'
delete_file $TEMP_FILE

#- 11 personalChatHistory
sample-apps Lobby personalChatHistory \
    --friendId '9qqJbnQs' \
    --namespace 'oBgiVpP8' \
    --userId 'Cm3yvASU' \
    >$TEMP_FILE 2>&1
update_status $? 'personalChatHistory'
delete_file $TEMP_FILE

#- 12 adminChatHistory
sample-apps Lobby adminChatHistory \
    --friendId 'oxdxxFqm' \
    --namespace 'AGTJ8IEd' \
    --userId 'agEtp4w2' \
    >$TEMP_FILE 2>&1
update_status $? 'adminChatHistory'
delete_file $TEMP_FILE

#- 13 adminGetAllConfigV1
sample-apps Lobby adminGetAllConfigV1 \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetAllConfigV1'
delete_file $TEMP_FILE

#- 14 adminGetConfigV1
sample-apps Lobby adminGetConfigV1 \
    --namespace '9KOu9c19' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetConfigV1'
delete_file $TEMP_FILE

#- 15 adminUpdateConfigV1
sample-apps Lobby adminUpdateConfigV1 \
    --body '{"autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 33, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 20, "chatRateLimitDuration": 82, "concurrentUsersLimit": 26, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "KMfjiX7j", "generalRateLimitBurst": 31, "generalRateLimitDuration": 21, "maxPartyMember": 95, "profanityFilter": false, "readyConsentTimeout": 69}' \
    --namespace 'aQYEmqGo' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateConfigV1'
delete_file $TEMP_FILE

#- 16 exportConfig
sample-apps Lobby exportConfig \
    --namespace 'dOEGt9gP' \
    >$TEMP_FILE 2>&1
update_status $? 'exportConfig'
delete_file $TEMP_FILE

#- 17 importConfig
sample-apps Lobby importConfig \
    --namespace 'Oj0c6i0J' \
    >$TEMP_FILE 2>&1
update_status $? 'importConfig'
delete_file $TEMP_FILE

#- 18 getListOfFriends
sample-apps Lobby getListOfFriends \
    --namespace 'kvIas73u' \
    --userId 'cYnFAJ3D' \
    --limit 'K5T4Eogg' \
    --offset '0Y39UoYl' \
    >$TEMP_FILE 2>&1
update_status $? 'getListOfFriends'
delete_file $TEMP_FILE

#- 19 sendMultipleUsersFreeformNotificationV1Admin
sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --body '{"message": "pv5bVAgt", "topicName": "sDhUTDUs", "userIds": ["cbQDjbTQ"]}' \
    --namespace 'uPMz2PTR' \
    >$TEMP_FILE 2>&1
update_status $? 'sendMultipleUsersFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 20 sendUsersFreeformNotificationV1Admin
sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --body '{"message": "lkyU89ZP", "topicName": "Ow6zPFJ4"}' \
    --namespace '2cwmzBBS' \
    >$TEMP_FILE 2>&1
update_status $? 'sendUsersFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 21 sendPartyFreeformNotificationV1Admin
sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --body '{"message": "MNcoAAOj", "topicName": "KNjfcYHm"}' \
    --namespace '093aYgBU' \
    --partyId '1sqjyK0X' \
    >$TEMP_FILE 2>&1
update_status $? 'sendPartyFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 22 sendPartyTemplatedNotificationV1Admin
sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --body '{"templateContext": {"H45PaRSO": "FQBtu23R"}, "templateLanguage": "EZ8hRVX7", "templateSlug": "LGOvDdYi", "topicName": "QS9i7mV1"}' \
    --namespace 'C91pjG9g' \
    --partyId 'pxL6ycTQ' \
    >$TEMP_FILE 2>&1
update_status $? 'sendPartyTemplatedNotificationV1Admin'
delete_file $TEMP_FILE

#- 23 getAllNotificationTemplatesV1Admin
sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace 'dvln2LAu' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllNotificationTemplatesV1Admin'
delete_file $TEMP_FILE

#- 24 createNotificationTemplateV1Admin
sample-apps Lobby createNotificationTemplateV1Admin \
    --body '{"templateContent": "SQWEXL6L", "templateLanguage": "FE1YHo9m", "templateSlug": "126ZWc8h"}' \
    --namespace 'HtWvbNYq' \
    >$TEMP_FILE 2>&1
update_status $? 'createNotificationTemplateV1Admin'
delete_file $TEMP_FILE

#- 25 sendUsersTemplatedNotificationV1Admin
sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --body '{"templateContext": {"gUqslArF": "PiHUIvaC"}, "templateLanguage": "v8kU9dBB", "templateSlug": "pdsJLhsV", "topicName": "yExrkxoo"}' \
    --namespace 't0B7WOfe' \
    >$TEMP_FILE 2>&1
update_status $? 'sendUsersTemplatedNotificationV1Admin'
delete_file $TEMP_FILE

#- 26 getTemplateSlugLocalizationsTemplateV1Admin
sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace 'rcZdpMci' \
    --templateSlug '37Ds7YSf' \
    --after 'ExaI3uzL' \
    --before 'teMbFAlt' \
    --limit '14' \
    >$TEMP_FILE 2>&1
update_status $? 'getTemplateSlugLocalizationsTemplateV1Admin'
delete_file $TEMP_FILE

#- 27 deleteNotificationTemplateSlugV1Admin
sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace 'r7HmOYiB' \
    --templateSlug 'A5ltAOXm' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteNotificationTemplateSlugV1Admin'
delete_file $TEMP_FILE

#- 28 getSingleTemplateLocalizationV1Admin
sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace 'lG6eh1dT' \
    --templateLanguage 'doTFpBIc' \
    --templateSlug 'uC1dQY93' \
    >$TEMP_FILE 2>&1
update_status $? 'getSingleTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 29 updateTemplateLocalizationV1Admin
sample-apps Lobby updateTemplateLocalizationV1Admin \
    --body '{"templateContent": "OJnJ6Te9"}' \
    --namespace 'vD8ldz7H' \
    --templateLanguage 'u8AD79kd' \
    --templateSlug 'WunvizU0' \
    >$TEMP_FILE 2>&1
update_status $? 'updateTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 30 deleteTemplateLocalizationV1Admin
sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace 'q1pHyhhE' \
    --templateLanguage 'RoGgdrys' \
    --templateSlug 'MizBGSRd' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 31 publishTemplateLocalizationV1Admin
sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace 'P2l7DNSZ' \
    --templateLanguage '8Aq0XiPL' \
    --templateSlug 'QXSe07Zd' \
    >$TEMP_FILE 2>&1
update_status $? 'publishTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 32 getAllNotificationTopicsV1Admin
sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace 'dOGTMlJj' \
    --after 'Bwj9HJHQ' \
    --before 'KseEdSXR' \
    --limit '59' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllNotificationTopicsV1Admin'
delete_file $TEMP_FILE

#- 33 createNotificationTopicV1Admin
sample-apps Lobby createNotificationTopicV1Admin \
    --body '{"description": "Svguauw1", "topicName": "xT7eMwSl"}' \
    --namespace '9MLH0NnT' \
    >$TEMP_FILE 2>&1
update_status $? 'createNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 34 getNotificationTopicV1Admin
sample-apps Lobby getNotificationTopicV1Admin \
    --namespace 'J2ulNzBv' \
    --topicName 'wJaQa547' \
    >$TEMP_FILE 2>&1
update_status $? 'getNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 35 updateNotificationTopicV1Admin
sample-apps Lobby updateNotificationTopicV1Admin \
    --body '{"description": "JllvA8RW"}' \
    --namespace 'SpabUt7x' \
    --topicName 'k6QxyWhf' \
    >$TEMP_FILE 2>&1
update_status $? 'updateNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 36 deleteNotificationTopicV1Admin
sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace 'qoWfJw2o' \
    --topicName '8oWUqvPC' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 37 sendSpecificUserFreeformNotificationV1Admin
sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --body '{"message": "Z2HzT7NX", "topicName": "mWDlXsuN"}' \
    --namespace 'IdQJR5ls' \
    --userId 'NOlvkfwa' \
    >$TEMP_FILE 2>&1
update_status $? 'sendSpecificUserFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 38 sendSpecificUserTemplatedNotificationV1Admin
sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --body '{"templateContext": {"SbnsuLCg": "ToxuVTek"}, "templateLanguage": "Jgvg6h5H", "templateSlug": "IpH0Dvip", "topicName": "lEk4vj3L"}' \
    --namespace 'Dp4yqDt8' \
    --userId 'QUZDpxlH' \
    >$TEMP_FILE 2>&1
update_status $? 'sendSpecificUserTemplatedNotificationV1Admin'
delete_file $TEMP_FILE

#- 39 adminGetPartyDataV1
sample-apps Lobby adminGetPartyDataV1 \
    --namespace 'asinGcjr' \
    --partyId 'kmRMttgj' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPartyDataV1'
delete_file $TEMP_FILE

#- 40 adminUpdatePartyAttributesV1
sample-apps Lobby adminUpdatePartyAttributesV1 \
    --body '{"custom_attribute": {"DSaIVBmf": {}}, "updatedAt": 39}' \
    --namespace '3Udg7p9P' \
    --partyId 'GmY2H5kX' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdatePartyAttributesV1'
delete_file $TEMP_FILE

#- 41 adminGetUserPartyV1
sample-apps Lobby adminGetUserPartyV1 \
    --namespace '4MsisSX2' \
    --userId '8nARxWRp' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserPartyV1'
delete_file $TEMP_FILE

#- 42 adminGetLobbyCCU
sample-apps Lobby adminGetLobbyCCU \
    --namespace 'v5ou5xtv' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetLobbyCCU'
delete_file $TEMP_FILE

#- 43 adminGetAllPlayerSessionAttribute
sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace 'd28OUfCt' \
    --userId '8UJC5flN' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetAllPlayerSessionAttribute'
delete_file $TEMP_FILE

#- 44 adminSetPlayerSessionAttribute
sample-apps Lobby adminSetPlayerSessionAttribute \
    --body '{"attributes": {"yj6HsTtX": "8P3llnaa"}}' \
    --namespace 'S9lqyygP' \
    --userId 'cfkJIxfQ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSetPlayerSessionAttribute'
delete_file $TEMP_FILE

#- 45 adminGetPlayerSessionAttribute
sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'Zza8kNVb' \
    --namespace 'DxVMq7HJ' \
    --userId 'k0F89xAc' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerSessionAttribute'
delete_file $TEMP_FILE

#- 46 adminGetPlayerBlockedPlayersV1
sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace '3YVfaENt' \
    --userId 'rl0pTKZT' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerBlockedPlayersV1'
delete_file $TEMP_FILE

#- 47 adminGetPlayerBlockedByPlayersV1
sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace 'XqzHuBMY' \
    --userId 'QSA2jz1Z' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerBlockedByPlayersV1'
delete_file $TEMP_FILE

#- 48 adminBulkBlockPlayersV1
sample-apps Lobby adminBulkBlockPlayersV1 \
    --body '{"listBlockedUserId": ["OpdOjSyM"]}' \
    --namespace 'ddB41JuM' \
    --userId 'f7RUyBHR' \
    >$TEMP_FILE 2>&1
update_status $? 'adminBulkBlockPlayersV1'
delete_file $TEMP_FILE

#- 49 adminDebugProfanityFilters
sample-apps Lobby adminDebugProfanityFilters \
    --body '{"text": "j8IiRimR"}' \
    --namespace 'llHT6Dc4' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDebugProfanityFilters'
delete_file $TEMP_FILE

#- 50 adminGetProfanityListFiltersV1
sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list '0vFFA6gp' \
    --namespace 'U7EW3x1d' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetProfanityListFiltersV1'
delete_file $TEMP_FILE

#- 51 adminAddProfanityFilterIntoList
sample-apps Lobby adminAddProfanityFilterIntoList \
    --body '{"filter": "Cpm55gOe", "note": "qQIqcJVK"}' \
    --list 'mBM1J1Ib' \
    --namespace 'uTrrkbmu' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddProfanityFilterIntoList'
delete_file $TEMP_FILE

#- 52 adminAddProfanityFilters
sample-apps Lobby adminAddProfanityFilters \
    --body '{"filters": [{"filter": "T1whOqmE", "note": "nDXIWrBP"}]}' \
    --list 'lSay46mv' \
    --namespace '71BAZAOj' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddProfanityFilters'
delete_file $TEMP_FILE

#- 53 adminImportProfanityFiltersFromFile
sample-apps Lobby adminImportProfanityFiltersFromFile \
    --body '[39]' \
    --list 'FJ2vmTj7' \
    --namespace 'tT7TZHWD' \
    >$TEMP_FILE 2>&1
update_status $? 'adminImportProfanityFiltersFromFile'
delete_file $TEMP_FILE

#- 54 adminDeleteProfanityFilter
sample-apps Lobby adminDeleteProfanityFilter \
    --body '{"filter": "dCkIsZoA"}' \
    --list 'rWwPHcyF' \
    --namespace 'AdAtYciL' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteProfanityFilter'
delete_file $TEMP_FILE

#- 55 adminGetProfanityLists
sample-apps Lobby adminGetProfanityLists \
    --namespace 'IgRwFRr0' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetProfanityLists'
delete_file $TEMP_FILE

#- 56 adminCreateProfanityList
sample-apps Lobby adminCreateProfanityList \
    --body '{"isEnabled": false, "isMandatory": true, "name": "B9tz3vp9"}' \
    --namespace '9XVlV8rK' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateProfanityList'
delete_file $TEMP_FILE

#- 57 adminUpdateProfanityList
sample-apps Lobby adminUpdateProfanityList \
    --body '{"isEnabled": true, "isMandatory": true, "newName": "6n0smip1"}' \
    --list 'tw3L7cUd' \
    --namespace '9pqtv6Jf' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateProfanityList'
delete_file $TEMP_FILE

#- 58 adminDeleteProfanityList
sample-apps Lobby adminDeleteProfanityList \
    --list 'PZwcCVOX' \
    --namespace 'cVa80TmC' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteProfanityList'
delete_file $TEMP_FILE

#- 59 adminGetProfanityRule
sample-apps Lobby adminGetProfanityRule \
    --namespace 'wtD2lAH0' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetProfanityRule'
delete_file $TEMP_FILE

#- 60 adminSetProfanityRuleForNamespace
sample-apps Lobby adminSetProfanityRuleForNamespace \
    --body '{"rule": "1o6NdcBI"}' \
    --namespace 'gzrDyWpF' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSetProfanityRuleForNamespace'
delete_file $TEMP_FILE

#- 61 adminVerifyMessageProfanityResponse
sample-apps Lobby adminVerifyMessageProfanityResponse \
    --body '{"message": "BYGmmBaw", "profanityLevel": "MyoKyNpd"}' \
    --namespace 'Aasm8xwU' \
    >$TEMP_FILE 2>&1
update_status $? 'adminVerifyMessageProfanityResponse'
delete_file $TEMP_FILE

#- 62 adminGetThirdPartyConfig
sample-apps Lobby adminGetThirdPartyConfig \
    --namespace 'fzOlQiZY' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetThirdPartyConfig'
delete_file $TEMP_FILE

#- 63 adminUpdateThirdPartyConfig
sample-apps Lobby adminUpdateThirdPartyConfig \
    --body '{"apiKey": "4NbOQXJ7"}' \
    --namespace 'uOTzNMvu' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateThirdPartyConfig'
delete_file $TEMP_FILE

#- 64 adminCreateThirdPartyConfig
sample-apps Lobby adminCreateThirdPartyConfig \
    --body '{"apiKey": "q2tNl4CX"}' \
    --namespace '4IjiK4DE' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateThirdPartyConfig'
delete_file $TEMP_FILE

#- 65 adminDeleteThirdPartyConfig
sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace 'UJRVK3l9' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteThirdPartyConfig'
delete_file $TEMP_FILE

#- 66 publicGetMessages
sample-apps Lobby publicGetMessages \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMessages'
delete_file $TEMP_FILE

#- 67 getPersonalChatHistoryV1Public
sample-apps Lobby getPersonalChatHistoryV1Public \
    --friendId 'Eb0R1XRb' \
    --namespace '0RH8vS1s' \
    >$TEMP_FILE 2>&1
update_status $? 'getPersonalChatHistoryV1Public'
delete_file $TEMP_FILE

#- 68 publicGetPartyDataV1
sample-apps Lobby publicGetPartyDataV1 \
    --namespace 'meOlngrd' \
    --partyId 'TXCzaPBt' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPartyDataV1'
delete_file $TEMP_FILE

#- 69 publicUpdatePartyAttributesV1
sample-apps Lobby publicUpdatePartyAttributesV1 \
    --body '{"custom_attribute": {"kZMio4wc": {}}, "updatedAt": 48}' \
    --namespace 'hloVS3rY' \
    --partyId 'p8QtcEmC' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdatePartyAttributesV1'
delete_file $TEMP_FILE

#- 70 publicGetPlayerBlockedPlayersV1
sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace 'EVc75Ufe' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPlayerBlockedPlayersV1'
delete_file $TEMP_FILE

#- 71 publicGetPlayerBlockedByPlayersV1
sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace 'ypWjDNhz' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPlayerBlockedByPlayersV1'
delete_file $TEMP_FILE

#- 72 usersPresenceHandlerV1
sample-apps Lobby usersPresenceHandlerV1 \
    --namespace 'CL5sWS2q' \
    --countOnly 'True' \
    --userIds 'O763iEkl' \
    >$TEMP_FILE 2>&1
update_status $? 'usersPresenceHandlerV1'
delete_file $TEMP_FILE

#- 73 freeFormNotification
sample-apps Lobby freeFormNotification \
    --body '{"message": "kzLm88Lp", "topic": "LuYRO3C5"}' \
    --namespace '5yHpwK2J' \
    >$TEMP_FILE 2>&1
update_status $? 'freeFormNotification'
delete_file $TEMP_FILE

#- 74 notificationWithTemplate
sample-apps Lobby notificationWithTemplate \
    --body '{"templateContext": {"aqenDGn7": "a2NUplWi"}, "templateLanguage": "Ljq06n6a", "templateSlug": "0rW8Efkp", "topic": "aXtwYZJa"}' \
    --namespace 'Q4WbwNms' \
    >$TEMP_FILE 2>&1
update_status $? 'notificationWithTemplate'
delete_file $TEMP_FILE

#- 75 getGameTemplate
sample-apps Lobby getGameTemplate \
    --namespace 'FYetjEur' \
    >$TEMP_FILE 2>&1
update_status $? 'getGameTemplate'
delete_file $TEMP_FILE

#- 76 createTemplate
sample-apps Lobby createTemplate \
    --body '{"templateContent": "H8eloJzN", "templateLanguage": "KtRUaTz1", "templateSlug": "ETdsmwzj"}' \
    --namespace 'kkn9oiQl' \
    >$TEMP_FILE 2>&1
update_status $? 'createTemplate'
delete_file $TEMP_FILE

#- 77 getSlugTemplate
sample-apps Lobby getSlugTemplate \
    --namespace '05g7cO3Z' \
    --templateSlug 'Mb6Ojlo6' \
    --after 'DMNpP2qM' \
    --before 'rTQ1Upjf' \
    --limit '93' \
    >$TEMP_FILE 2>&1
update_status $? 'getSlugTemplate'
delete_file $TEMP_FILE

#- 78 deleteTemplateSlug
sample-apps Lobby deleteTemplateSlug \
    --namespace '6wJhy1jO' \
    --templateSlug 'VkkUlS79' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTemplateSlug'
delete_file $TEMP_FILE

#- 79 getLocalizationTemplate
sample-apps Lobby getLocalizationTemplate \
    --namespace '527EZ25I' \
    --templateLanguage 'a8uCeZFl' \
    --templateSlug 'LtEVpDAE' \
    >$TEMP_FILE 2>&1
update_status $? 'getLocalizationTemplate'
delete_file $TEMP_FILE

#- 80 updateLocalizationTemplate
sample-apps Lobby updateLocalizationTemplate \
    --body '{"templateContent": "bA82jy74"}' \
    --namespace 'lq0pDE5x' \
    --templateLanguage 'Rwh5b45e' \
    --templateSlug 'bpcM7ScS' \
    >$TEMP_FILE 2>&1
update_status $? 'updateLocalizationTemplate'
delete_file $TEMP_FILE

#- 81 deleteTemplateLocalization
sample-apps Lobby deleteTemplateLocalization \
    --namespace 's3UOpAwI' \
    --templateLanguage 'p9rRtn1P' \
    --templateSlug 'cCxdbume' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTemplateLocalization'
delete_file $TEMP_FILE

#- 82 publishTemplate
sample-apps Lobby publishTemplate \
    --namespace 'YgOdEBWR' \
    --templateLanguage 'QiW3KFfU' \
    --templateSlug '8icH4081' \
    >$TEMP_FILE 2>&1
update_status $? 'publishTemplate'
delete_file $TEMP_FILE

#- 83 getTopicByNamespace
sample-apps Lobby getTopicByNamespace \
    --namespace 'gRB1GyLf' \
    --after 'Lg4RYuEb' \
    --before 'gUDEcJyI' \
    --limit '43' \
    >$TEMP_FILE 2>&1
update_status $? 'getTopicByNamespace'
delete_file $TEMP_FILE

#- 84 createTopic
sample-apps Lobby createTopic \
    --body '{"description": "sPwOr0Bm", "topic": "V5iFvfwF"}' \
    --namespace 'jTSmIEqo' \
    >$TEMP_FILE 2>&1
update_status $? 'createTopic'
delete_file $TEMP_FILE

#- 85 getTopicByTopicName
sample-apps Lobby getTopicByTopicName \
    --namespace 'LyLeUGmo' \
    --topic 'mGX9sXTZ' \
    >$TEMP_FILE 2>&1
update_status $? 'getTopicByTopicName'
delete_file $TEMP_FILE

#- 86 updateTopicByTopicName
sample-apps Lobby updateTopicByTopicName \
    --body '{"description": "0v8pqLfc"}' \
    --namespace '5SwGnReU' \
    --topic 'ULDX4QUI' \
    >$TEMP_FILE 2>&1
update_status $? 'updateTopicByTopicName'
delete_file $TEMP_FILE

#- 87 deleteTopicByTopicName
sample-apps Lobby deleteTopicByTopicName \
    --namespace 'bb5nh68Z' \
    --topic 'nyUtRvW9' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTopicByTopicName'
delete_file $TEMP_FILE

#- 88 freeFormNotificationByUserID
sample-apps Lobby freeFormNotificationByUserID \
    --body '{"message": "hNBSFTtF", "topic": "rOmjkFrF"}' \
    --namespace 'VA8t0xF3' \
    --userId '4Xpt6ZlT' \
    >$TEMP_FILE 2>&1
update_status $? 'freeFormNotificationByUserID'
delete_file $TEMP_FILE

#- 89 notificationWithTemplateByUserID
sample-apps Lobby notificationWithTemplateByUserID \
    --body '{"templateContext": {"Tic0kr2a": "0nI2oo7U"}, "templateLanguage": "HCJK5sp0", "templateSlug": "aCvIq3aH", "topic": "VYIlewLR"}' \
    --namespace 'uHY83bGj' \
    --userId '0HTeeWXl' \
    >$TEMP_FILE 2>&1
update_status $? 'notificationWithTemplateByUserID'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT