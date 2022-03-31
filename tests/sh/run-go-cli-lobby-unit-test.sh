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

OPERATIONS_COUNT=90

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

#- 1 getUserFriendsUpdated
samples/cli/sample-apps Lobby getUserFriendsUpdated \
    --namespace 'FtBxyZcD' \
    --limit '98' \
    --offset '55' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserFriendsUpdated'
delete_file $TEMP_FILE

#- 2 getUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace 'pGlsQuJu' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserIncomingFriends'
delete_file $TEMP_FILE

#- 3 getUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace '8vMf0IsJ' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserOutgoingFriends'
delete_file $TEMP_FILE

#- 4 userRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --body '{"friendId": "kTrd8IDc"}' \
    --namespace 'V2zXnTKj' \
    >$TEMP_FILE 2>&1
update_status $? 'userRequestFriend'
delete_file $TEMP_FILE

#- 5 userAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --body '{"friendId": "XY1bPqam"}' \
    --namespace 'iBxx9Cs1' \
    >$TEMP_FILE 2>&1
update_status $? 'userAcceptFriendRequest'
delete_file $TEMP_FILE

#- 6 userCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --body '{"friendId": "8EY84ekI"}' \
    --namespace 'tqRzHU1o' \
    >$TEMP_FILE 2>&1
update_status $? 'userCancelFriendRequest'
delete_file $TEMP_FILE

#- 7 userRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --body '{"friendId": "h570KQBV"}' \
    --namespace 'aewc72kr' \
    >$TEMP_FILE 2>&1
update_status $? 'userRejectFriendRequest'
delete_file $TEMP_FILE

#- 8 userGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'Sha68n3Y' \
    --namespace 'nozp1C2K' \
    >$TEMP_FILE 2>&1
update_status $? 'userGetFriendshipStatus'
delete_file $TEMP_FILE

#- 9 userUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --body '{"friendId": "mIQTuBdN"}' \
    --namespace 'EUsxFb8C' \
    >$TEMP_FILE 2>&1
update_status $? 'userUnfriendRequest'
delete_file $TEMP_FILE

#- 10 addFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --body '{"friendIds": ["J17M7DJZ"]}' \
    --namespace 'aMSxECbZ' \
    --userId 'bygyoarO' \
    >$TEMP_FILE 2>&1
update_status $? 'addFriendsWithoutConfirmation'
delete_file $TEMP_FILE

#- 11 personalChatHistory
samples/cli/sample-apps Lobby personalChatHistory \
    --friendId 'RoeNHSb8' \
    --namespace 'Rh3kgs9q' \
    --userId 'qJbnQsoB' \
    >$TEMP_FILE 2>&1
update_status $? 'personalChatHistory'
delete_file $TEMP_FILE

#- 12 adminChatHistory
samples/cli/sample-apps Lobby adminChatHistory \
    --friendId 'giVpP8Cm' \
    --namespace '3yvASUox' \
    --userId 'dxxFqmAG' \
    >$TEMP_FILE 2>&1
update_status $? 'adminChatHistory'
delete_file $TEMP_FILE

#- 13 adminGetAllConfigV1
samples/cli/sample-apps Lobby adminGetAllConfigV1 \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetAllConfigV1'
delete_file $TEMP_FILE

#- 14 adminGetConfigV1
samples/cli/sample-apps Lobby adminGetConfigV1 \
    --namespace 'TJ8IEdag' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetConfigV1'
delete_file $TEMP_FILE

#- 15 adminUpdateConfigV1
samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --body '{"allowInviteNonConnectedUser": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 31, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 73, "chatRateLimitDuration": 81, "concurrentUsersLimit": 41, "disablePartyInvitationToken": false, "enableChat": true, "entitlementCheck": true, "entitlementItemID": "WHkkP8np", "generalRateLimitBurst": 75, "generalRateLimitDuration": 61, "keepPresenceActivityOnDisconnect": false, "maxPartyMember": 19, "profanityFilter": false, "readyConsentTimeout": 99}' \
    --namespace '7jpkVZk3' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateConfigV1'
delete_file $TEMP_FILE

#- 16 adminExportConfigV1
samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace 'IaQYEmqG' \
    >$TEMP_FILE 2>&1
update_status $? 'adminExportConfigV1'
delete_file $TEMP_FILE

#- 17 adminImportConfigV1
samples/cli/sample-apps Lobby adminImportConfigV1 \
    --namespace 'odOEGt9g' \
    >$TEMP_FILE 2>&1
update_status $? 'adminImportConfigV1'
delete_file $TEMP_FILE

#- 18 getListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace 'POj0c6i0' \
    --userId 'JkvIas73' \
    --limit '40' \
    --offset '4' \
    >$TEMP_FILE 2>&1
update_status $? 'getListOfFriends'
delete_file $TEMP_FILE

#- 19 sendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --body '{"message": "YnFAJ3DK", "topicName": "5T4Eogg0", "userIds": ["Y39UoYlp"]}' \
    --namespace 'v5bVAgts' \
    >$TEMP_FILE 2>&1
update_status $? 'sendMultipleUsersFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 20 sendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --body '{"message": "DhUTDUsc", "topicName": "bQDjbTQu"}' \
    --namespace 'PMz2PTRl' \
    >$TEMP_FILE 2>&1
update_status $? 'sendUsersFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 21 sendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --body '{"message": "kyU89ZPO", "topicName": "w6zPFJ42"}' \
    --namespace 'cwmzBBSM' \
    --partyId 'NcoAAOjK' \
    >$TEMP_FILE 2>&1
update_status $? 'sendPartyFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 22 sendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --body '{"templateContext": {"NjfcYHm0": "93aYgBU1"}, "templateLanguage": "sqjyK0XH", "templateSlug": "45PaRSOF", "topicName": "QBtu23RE"}' \
    --namespace 'Z8hRVX7L' \
    --partyId 'GOvDdYiQ' \
    >$TEMP_FILE 2>&1
update_status $? 'sendPartyTemplatedNotificationV1Admin'
delete_file $TEMP_FILE

#- 23 getAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace 'S9i7mV1C' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllNotificationTemplatesV1Admin'
delete_file $TEMP_FILE

#- 24 createNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --body '{"templateContent": "91pjG9gp", "templateLanguage": "xL6ycTQd", "templateSlug": "vln2LAuS"}' \
    --namespace 'QWEXL6LF' \
    >$TEMP_FILE 2>&1
update_status $? 'createNotificationTemplateV1Admin'
delete_file $TEMP_FILE

#- 25 sendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --body '{"templateContext": {"E1YHo9m1": "26ZWc8hH"}, "templateLanguage": "tWvbNYqg", "templateSlug": "UqslArFP", "topicName": "iHUIvaCv"}' \
    --namespace '8kU9dBBp' \
    >$TEMP_FILE 2>&1
update_status $? 'sendUsersTemplatedNotificationV1Admin'
delete_file $TEMP_FILE

#- 26 getTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace 'dsJLhsVy' \
    --templateSlug 'Exrkxoot' \
    --after '0B7WOfer' \
    --before 'cZdpMci3' \
    --limit '58' \
    >$TEMP_FILE 2>&1
update_status $? 'getTemplateSlugLocalizationsTemplateV1Admin'
delete_file $TEMP_FILE

#- 27 deleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace 's7YSfExa' \
    --templateSlug 'I3uzLteM' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteNotificationTemplateSlugV1Admin'
delete_file $TEMP_FILE

#- 28 getSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace 'bFAlt4hr' \
    --templateLanguage '7HmOYiBA' \
    --templateSlug '5ltAOXml' \
    >$TEMP_FILE 2>&1
update_status $? 'getSingleTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 29 updateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --body '{"templateContent": "G6eh1dTd"}' \
    --namespace 'oTFpBIcu' \
    --templateLanguage 'C1dQY93O' \
    --templateSlug 'JnJ6Te9v' \
    >$TEMP_FILE 2>&1
update_status $? 'updateTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 30 deleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace 'D8ldz7Hu' \
    --templateLanguage '8AD79kdW' \
    --templateSlug 'unvizU0q' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 31 publishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace '1pHyhhER' \
    --templateLanguage 'oGgdrysM' \
    --templateSlug 'izBGSRdP' \
    >$TEMP_FILE 2>&1
update_status $? 'publishTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 32 getAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace '2l7DNSZ8' \
    --after 'Aq0XiPLQ' \
    --before 'XSe07Zdd' \
    --limit '80' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllNotificationTopicsV1Admin'
delete_file $TEMP_FILE

#- 33 createNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --body '{"description": "GTMlJjBw", "topicName": "j9HJHQKs"}' \
    --namespace 'eEdSXRDS' \
    >$TEMP_FILE 2>&1
update_status $? 'createNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 34 getNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace 'vguauw1x' \
    --topicName 'T7eMwSl9' \
    >$TEMP_FILE 2>&1
update_status $? 'getNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 35 updateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --body '{"description": "MLH0NnTJ"}' \
    --namespace '2ulNzBvw' \
    --topicName 'JaQa547J' \
    >$TEMP_FILE 2>&1
update_status $? 'updateNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 36 deleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace 'llvA8RWS' \
    --topicName 'pabUt7xk' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 37 sendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --body '{"message": "6QxyWhfq", "topicName": "oWfJw2o8"}' \
    --namespace 'oWUqvPCZ' \
    --userId '2HzT7NXm' \
    >$TEMP_FILE 2>&1
update_status $? 'sendSpecificUserFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 38 sendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --body '{"templateContext": {"WDlXsuNI": "dQJR5lsN"}, "templateLanguage": "OlvkfwaS", "templateSlug": "bnsuLCgT", "topicName": "oxuVTekJ"}' \
    --namespace 'gvg6h5HI' \
    --userId 'pH0Dvipl' \
    >$TEMP_FILE 2>&1
update_status $? 'sendSpecificUserTemplatedNotificationV1Admin'
delete_file $TEMP_FILE

#- 39 adminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace 'Ek4vj3LD' \
    --partyId 'p4yqDt8Q' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPartyDataV1'
delete_file $TEMP_FILE

#- 40 adminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --body '{"custom_attribute": {"UZDpxlHa": {}}, "updatedAt": 36}' \
    --namespace 'inGcjrkm' \
    --partyId 'RMttgjDS' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdatePartyAttributesV1'
delete_file $TEMP_FILE

#- 41 adminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace 'aIVBmft3' \
    --partyId 'Udg7p9PG' \
    --userId 'mY2H5kX4' \
    >$TEMP_FILE 2>&1
update_status $? 'adminJoinPartyV1'
delete_file $TEMP_FILE

#- 42 adminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace 'MsisSX28' \
    --userId 'nARxWRpv' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserPartyV1'
delete_file $TEMP_FILE

#- 43 adminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace '5ou5xtvd' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetLobbyCCU'
delete_file $TEMP_FILE

#- 44 adminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace '28OUfCt8' \
    --userId 'UJC5flNy' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetAllPlayerSessionAttribute'
delete_file $TEMP_FILE

#- 45 adminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --body '{"attributes": {"j6HsTtX8": "P3llnaaS"}}' \
    --namespace '9lqyygPc' \
    --userId 'fkJIxfQZ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSetPlayerSessionAttribute'
delete_file $TEMP_FILE

#- 46 adminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'za8kNVbD' \
    --namespace 'xVMq7HJk' \
    --userId '0F89xAc3' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerSessionAttribute'
delete_file $TEMP_FILE

#- 47 adminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace 'YVfaENtr' \
    --userId 'l0pTKZTX' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerBlockedPlayersV1'
delete_file $TEMP_FILE

#- 48 adminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace 'qzHuBMYQ' \
    --userId 'SA2jz1ZO' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerBlockedByPlayersV1'
delete_file $TEMP_FILE

#- 49 adminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --body '{"listBlockedUserId": ["pdOjSyMd"]}' \
    --namespace 'dB41JuMf' \
    --userId '7RUyBHRj' \
    >$TEMP_FILE 2>&1
update_status $? 'adminBulkBlockPlayersV1'
delete_file $TEMP_FILE

#- 50 adminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --body '{"text": "8IiRimRl"}' \
    --namespace 'lHT6Dc40' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDebugProfanityFilters'
delete_file $TEMP_FILE

#- 51 adminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list 'vFFA6gpU' \
    --namespace '7EW3x1dC' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetProfanityListFiltersV1'
delete_file $TEMP_FILE

#- 52 adminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --body '{"filter": "pm55gOeq", "note": "QIqcJVKm"}' \
    --list 'BM1J1Ibu' \
    --namespace 'TrrkbmuT' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddProfanityFilterIntoList'
delete_file $TEMP_FILE

#- 53 adminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --body '{"filters": [{"filter": "1whOqmEn", "note": "DXIWrBPl"}]}' \
    --list 'Say46mv7' \
    --namespace '1BAZAOjt' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddProfanityFilters'
delete_file $TEMP_FILE

#- 54 adminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --body '[63]' \
    --list 'J2vmTj7t' \
    --namespace 'T7TZHWDd' \
    >$TEMP_FILE 2>&1
update_status $? 'adminImportProfanityFiltersFromFile'
delete_file $TEMP_FILE

#- 55 adminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --body '{"filter": "CkIsZoAr"}' \
    --list 'WwPHcyFA' \
    --namespace 'dAtYciLI' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteProfanityFilter'
delete_file $TEMP_FILE

#- 56 adminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace 'gRwFRr0g' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetProfanityLists'
delete_file $TEMP_FILE

#- 57 adminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --body '{"isEnabled": true, "isMandatory": true, "name": "9tz3vp99"}' \
    --namespace 'XVlV8rK3' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateProfanityList'
delete_file $TEMP_FILE

#- 58 adminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --body '{"isEnabled": true, "isMandatory": true, "newName": "6n0smip1"}' \
    --list 'tw3L7cUd' \
    --namespace '9pqtv6Jf' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateProfanityList'
delete_file $TEMP_FILE

#- 59 adminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'PZwcCVOX' \
    --namespace 'cVa80TmC' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteProfanityList'
delete_file $TEMP_FILE

#- 60 adminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace 'wtD2lAH0' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetProfanityRule'
delete_file $TEMP_FILE

#- 61 adminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --body '{"rule": "1o6NdcBI"}' \
    --namespace 'gzrDyWpF' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSetProfanityRuleForNamespace'
delete_file $TEMP_FILE

#- 62 adminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --body '{"message": "BYGmmBaw", "profanityLevel": "MyoKyNpd"}' \
    --namespace 'Aasm8xwU' \
    >$TEMP_FILE 2>&1
update_status $? 'adminVerifyMessageProfanityResponse'
delete_file $TEMP_FILE

#- 63 adminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace 'fzOlQiZY' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetThirdPartyConfig'
delete_file $TEMP_FILE

#- 64 adminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --body '{"apiKey": "4NbOQXJ7"}' \
    --namespace 'uOTzNMvu' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateThirdPartyConfig'
delete_file $TEMP_FILE

#- 65 adminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --body '{"apiKey": "q2tNl4CX"}' \
    --namespace '4IjiK4DE' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateThirdPartyConfig'
delete_file $TEMP_FILE

#- 66 adminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace 'UJRVK3l9' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteThirdPartyConfig'
delete_file $TEMP_FILE

#- 67 publicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMessages'
delete_file $TEMP_FILE

#- 68 getPersonalChatHistoryV1Public
samples/cli/sample-apps Lobby getPersonalChatHistoryV1Public \
    --friendId 'Eb0R1XRb' \
    --namespace '0RH8vS1s' \
    >$TEMP_FILE 2>&1
update_status $? 'getPersonalChatHistoryV1Public'
delete_file $TEMP_FILE

#- 69 publicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace 'meOlngrd' \
    --partyId 'TXCzaPBt' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPartyDataV1'
delete_file $TEMP_FILE

#- 70 publicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --body '{"custom_attribute": {"kZMio4wc": {}}, "updatedAt": 48}' \
    --namespace 'hloVS3rY' \
    --partyId 'p8QtcEmC' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdatePartyAttributesV1'
delete_file $TEMP_FILE

#- 71 publicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace 'EVc75Ufe' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPlayerBlockedPlayersV1'
delete_file $TEMP_FILE

#- 72 publicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace 'ypWjDNhz' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPlayerBlockedByPlayersV1'
delete_file $TEMP_FILE

#- 73 usersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace 'CL5sWS2q' \
    --countOnly 'True' \
    --userIds 'O763iEkl' \
    >$TEMP_FILE 2>&1
update_status $? 'usersPresenceHandlerV1'
delete_file $TEMP_FILE

#- 74 freeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --body '{"message": "kzLm88Lp", "topic": "LuYRO3C5"}' \
    --namespace '5yHpwK2J' \
    >$TEMP_FILE 2>&1
update_status $? 'freeFormNotification'
delete_file $TEMP_FILE

#- 75 notificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --body '{"templateContext": {"aqenDGn7": "a2NUplWi"}, "templateLanguage": "Ljq06n6a", "templateSlug": "0rW8Efkp", "topic": "aXtwYZJa"}' \
    --namespace 'Q4WbwNms' \
    >$TEMP_FILE 2>&1
update_status $? 'notificationWithTemplate'
delete_file $TEMP_FILE

#- 76 getGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace 'FYetjEur' \
    >$TEMP_FILE 2>&1
update_status $? 'getGameTemplate'
delete_file $TEMP_FILE

#- 77 createTemplate
samples/cli/sample-apps Lobby createTemplate \
    --body '{"templateContent": "H8eloJzN", "templateLanguage": "KtRUaTz1", "templateSlug": "ETdsmwzj"}' \
    --namespace 'kkn9oiQl' \
    >$TEMP_FILE 2>&1
update_status $? 'createTemplate'
delete_file $TEMP_FILE

#- 78 getSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace '05g7cO3Z' \
    --templateSlug 'Mb6Ojlo6' \
    --after 'DMNpP2qM' \
    --before 'rTQ1Upjf' \
    --limit '93' \
    >$TEMP_FILE 2>&1
update_status $? 'getSlugTemplate'
delete_file $TEMP_FILE

#- 79 deleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace '6wJhy1jO' \
    --templateSlug 'VkkUlS79' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTemplateSlug'
delete_file $TEMP_FILE

#- 80 getLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace '527EZ25I' \
    --templateLanguage 'a8uCeZFl' \
    --templateSlug 'LtEVpDAE' \
    >$TEMP_FILE 2>&1
update_status $? 'getLocalizationTemplate'
delete_file $TEMP_FILE

#- 81 updateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --body '{"templateContent": "bA82jy74"}' \
    --namespace 'lq0pDE5x' \
    --templateLanguage 'Rwh5b45e' \
    --templateSlug 'bpcM7ScS' \
    >$TEMP_FILE 2>&1
update_status $? 'updateLocalizationTemplate'
delete_file $TEMP_FILE

#- 82 deleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace 's3UOpAwI' \
    --templateLanguage 'p9rRtn1P' \
    --templateSlug 'cCxdbume' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTemplateLocalization'
delete_file $TEMP_FILE

#- 83 publishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace 'YgOdEBWR' \
    --templateLanguage 'QiW3KFfU' \
    --templateSlug '8icH4081' \
    >$TEMP_FILE 2>&1
update_status $? 'publishTemplate'
delete_file $TEMP_FILE

#- 84 getTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace 'gRB1GyLf' \
    --after 'Lg4RYuEb' \
    --before 'gUDEcJyI' \
    --limit '43' \
    >$TEMP_FILE 2>&1
update_status $? 'getTopicByNamespace'
delete_file $TEMP_FILE

#- 85 createTopic
samples/cli/sample-apps Lobby createTopic \
    --body '{"description": "sPwOr0Bm", "topic": "V5iFvfwF"}' \
    --namespace 'jTSmIEqo' \
    >$TEMP_FILE 2>&1
update_status $? 'createTopic'
delete_file $TEMP_FILE

#- 86 getTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace 'LyLeUGmo' \
    --topic 'mGX9sXTZ' \
    >$TEMP_FILE 2>&1
update_status $? 'getTopicByTopicName'
delete_file $TEMP_FILE

#- 87 updateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --body '{"description": "0v8pqLfc"}' \
    --namespace '5SwGnReU' \
    --topic 'ULDX4QUI' \
    >$TEMP_FILE 2>&1
update_status $? 'updateTopicByTopicName'
delete_file $TEMP_FILE

#- 88 deleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace 'bb5nh68Z' \
    --topic 'nyUtRvW9' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTopicByTopicName'
delete_file $TEMP_FILE

#- 89 freeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --body '{"message": "hNBSFTtF", "topic": "rOmjkFrF"}' \
    --namespace 'VA8t0xF3' \
    --userId '4Xpt6ZlT' \
    >$TEMP_FILE 2>&1
update_status $? 'freeFormNotificationByUserID'
delete_file $TEMP_FILE

#- 90 notificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --body '{"templateContext": {"Tic0kr2a": "0nI2oo7U"}, "templateLanguage": "HCJK5sp0", "templateSlug": "aCvIq3aH", "topic": "VYIlewLR"}' \
    --namespace 'uHY83bGj' \
    --userId '0HTeeWXl' \
    >$TEMP_FILE 2>&1
update_status $? 'notificationWithTemplateByUserID'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT