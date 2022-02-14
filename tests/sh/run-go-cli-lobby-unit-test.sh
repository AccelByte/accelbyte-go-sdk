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
    --limit 'XBpGlsQu' \
    --offset 'Ju8vMf0I' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserFriendsUpdated'
delete_file $TEMP_FILE

#- 2 getUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace 'sJkTrd8I' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserIncomingFriends'
delete_file $TEMP_FILE

#- 3 getUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace 'DcV2zXnT' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserOutgoingFriends'
delete_file $TEMP_FILE

#- 4 userRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --body '{"friendId": "KjXY1bPq"}' \
    --namespace 'amiBxx9C' \
    >$TEMP_FILE 2>&1
update_status $? 'userRequestFriend'
delete_file $TEMP_FILE

#- 5 userAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --body '{"friendId": "s18EY84e"}' \
    --namespace 'kItqRzHU' \
    >$TEMP_FILE 2>&1
update_status $? 'userAcceptFriendRequest'
delete_file $TEMP_FILE

#- 6 userCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --body '{"friendId": "1oh570KQ"}' \
    --namespace 'BVaewc72' \
    >$TEMP_FILE 2>&1
update_status $? 'userCancelFriendRequest'
delete_file $TEMP_FILE

#- 7 userRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --body '{"friendId": "krSha68n"}' \
    --namespace '3Ynozp1C' \
    >$TEMP_FILE 2>&1
update_status $? 'userRejectFriendRequest'
delete_file $TEMP_FILE

#- 8 userGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId '2KmIQTuB' \
    --namespace 'dNEUsxFb' \
    >$TEMP_FILE 2>&1
update_status $? 'userGetFriendshipStatus'
delete_file $TEMP_FILE

#- 9 userUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --body '{"friendId": "8CJ17M7D"}' \
    --namespace 'JZaMSxEC' \
    >$TEMP_FILE 2>&1
update_status $? 'userUnfriendRequest'
delete_file $TEMP_FILE

#- 10 addFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --body '{"friendIds": ["bZbygyoa"]}' \
    --namespace 'rORoeNHS' \
    --userId 'b8Rh3kgs' \
    >$TEMP_FILE 2>&1
update_status $? 'addFriendsWithoutConfirmation'
delete_file $TEMP_FILE

#- 11 personalChatHistory
samples/cli/sample-apps Lobby personalChatHistory \
    --friendId '9qqJbnQs' \
    --namespace 'oBgiVpP8' \
    --userId 'Cm3yvASU' \
    >$TEMP_FILE 2>&1
update_status $? 'personalChatHistory'
delete_file $TEMP_FILE

#- 12 adminChatHistory
samples/cli/sample-apps Lobby adminChatHistory \
    --friendId 'oxdxxFqm' \
    --namespace 'AGTJ8IEd' \
    --userId 'agEtp4w2' \
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
    --namespace '9KOu9c19' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetConfigV1'
delete_file $TEMP_FILE

#- 15 adminUpdateConfigV1
samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --body '{"autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 33, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 20, "chatRateLimitDuration": 82, "concurrentUsersLimit": 26, "disablePartyInvitationToken": false, "enableChat": true, "entitlementCheck": false, "entitlementItemID": "jiX7jpkV", "generalRateLimitBurst": 21, "generalRateLimitDuration": 69, "maxPartyMember": 1, "profanityFilter": true, "readyConsentTimeout": 24}' \
    --namespace 'qGodOEGt' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateConfigV1'
delete_file $TEMP_FILE

#- 16 exportConfig
samples/cli/sample-apps Lobby exportConfig \
    --namespace '9gPOj0c6' \
    >$TEMP_FILE 2>&1
update_status $? 'exportConfig'
delete_file $TEMP_FILE

#- 17 importConfig
samples/cli/sample-apps Lobby importConfig \
    --namespace 'i0JkvIas' \
    >$TEMP_FILE 2>&1
update_status $? 'importConfig'
delete_file $TEMP_FILE

#- 18 getListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace '73ucYnFA' \
    --userId 'J3DK5T4E' \
    --limit 'ogg0Y39U' \
    --offset 'oYlpv5bV' \
    >$TEMP_FILE 2>&1
update_status $? 'getListOfFriends'
delete_file $TEMP_FILE

#- 19 sendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --body '{"message": "AgtsDhUT", "topicName": "DUscbQDj", "userIds": ["bTQuPMz2"]}' \
    --namespace 'PTRlkyU8' \
    >$TEMP_FILE 2>&1
update_status $? 'sendMultipleUsersFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 20 sendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --body '{"message": "9ZPOw6zP", "topicName": "FJ42cwmz"}' \
    --namespace 'BBSMNcoA' \
    >$TEMP_FILE 2>&1
update_status $? 'sendUsersFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 21 sendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --body '{"message": "AOjKNjfc", "topicName": "YHm093aY"}' \
    --namespace 'gBU1sqjy' \
    --partyId 'K0XH45Pa' \
    >$TEMP_FILE 2>&1
update_status $? 'sendPartyFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 22 sendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --body '{"templateContext": {"RSOFQBtu": "23REZ8hR"}, "templateLanguage": "VX7LGOvD", "templateSlug": "dYiQS9i7", "topicName": "mV1C91pj"}' \
    --namespace 'G9gpxL6y' \
    --partyId 'cTQdvln2' \
    >$TEMP_FILE 2>&1
update_status $? 'sendPartyTemplatedNotificationV1Admin'
delete_file $TEMP_FILE

#- 23 getAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace 'LAuSQWEX' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllNotificationTemplatesV1Admin'
delete_file $TEMP_FILE

#- 24 createNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --body '{"templateContent": "L6LFE1YH", "templateLanguage": "o9m126ZW", "templateSlug": "c8hHtWvb"}' \
    --namespace 'NYqgUqsl' \
    >$TEMP_FILE 2>&1
update_status $? 'createNotificationTemplateV1Admin'
delete_file $TEMP_FILE

#- 25 sendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --body '{"templateContext": {"ArFPiHUI": "vaCv8kU9"}, "templateLanguage": "dBBpdsJL", "templateSlug": "hsVyExrk", "topicName": "xoot0B7W"}' \
    --namespace 'OfercZdp' \
    >$TEMP_FILE 2>&1
update_status $? 'sendUsersTemplatedNotificationV1Admin'
delete_file $TEMP_FILE

#- 26 getTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace 'Mci37Ds7' \
    --templateSlug 'YSfExaI3' \
    --after 'uzLteMbF' \
    --before 'Alt4hr7H' \
    --limit '25' \
    >$TEMP_FILE 2>&1
update_status $? 'getTemplateSlugLocalizationsTemplateV1Admin'
delete_file $TEMP_FILE

#- 27 deleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace 'OYiBA5lt' \
    --templateSlug 'AOXmlG6e' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteNotificationTemplateSlugV1Admin'
delete_file $TEMP_FILE

#- 28 getSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace 'h1dTdoTF' \
    --templateLanguage 'pBIcuC1d' \
    --templateSlug 'QY93OJnJ' \
    >$TEMP_FILE 2>&1
update_status $? 'getSingleTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 29 updateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --body '{"templateContent": "6Te9vD8l"}' \
    --namespace 'dz7Hu8AD' \
    --templateLanguage '79kdWunv' \
    --templateSlug 'izU0q1pH' \
    >$TEMP_FILE 2>&1
update_status $? 'updateTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 30 deleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace 'yhhERoGg' \
    --templateLanguage 'drysMizB' \
    --templateSlug 'GSRdP2l7' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 31 publishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace 'DNSZ8Aq0' \
    --templateLanguage 'XiPLQXSe' \
    --templateSlug '07ZddOGT' \
    >$TEMP_FILE 2>&1
update_status $? 'publishTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 32 getAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace 'MlJjBwj9' \
    --after 'HJHQKseE' \
    --before 'dSXRDSvg' \
    --limit '41' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllNotificationTopicsV1Admin'
delete_file $TEMP_FILE

#- 33 createNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --body '{"description": "auw1xT7e", "topicName": "MwSl9MLH"}' \
    --namespace '0NnTJ2ul' \
    >$TEMP_FILE 2>&1
update_status $? 'createNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 34 getNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace 'NzBvwJaQ' \
    --topicName 'a547Jllv' \
    >$TEMP_FILE 2>&1
update_status $? 'getNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 35 updateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --body '{"description": "A8RWSpab"}' \
    --namespace 'Ut7xk6Qx' \
    --topicName 'yWhfqoWf' \
    >$TEMP_FILE 2>&1
update_status $? 'updateNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 36 deleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace 'Jw2o8oWU' \
    --topicName 'qvPCZ2Hz' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 37 sendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --body '{"message": "T7NXmWDl", "topicName": "XsuNIdQJ"}' \
    --namespace 'R5lsNOlv' \
    --userId 'kfwaSbns' \
    >$TEMP_FILE 2>&1
update_status $? 'sendSpecificUserFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 38 sendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --body '{"templateContext": {"uLCgToxu": "VTekJgvg"}, "templateLanguage": "6h5HIpH0", "templateSlug": "DviplEk4", "topicName": "vj3LDp4y"}' \
    --namespace 'qDt8QUZD' \
    --userId 'pxlHasin' \
    >$TEMP_FILE 2>&1
update_status $? 'sendSpecificUserTemplatedNotificationV1Admin'
delete_file $TEMP_FILE

#- 39 adminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace 'GcjrkmRM' \
    --partyId 'ttgjDSaI' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPartyDataV1'
delete_file $TEMP_FILE

#- 40 adminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --body '{"custom_attribute": {"VBmft3Ud": {}}, "updatedAt": 12}' \
    --namespace '7p9PGmY2' \
    --partyId 'H5kX4Msi' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdatePartyAttributesV1'
delete_file $TEMP_FILE

#- 41 adminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace 'sSX28nAR' \
    --partyId 'xWRpv5ou' \
    --userId '5xtvd28O' \
    >$TEMP_FILE 2>&1
update_status $? 'adminJoinPartyV1'
delete_file $TEMP_FILE

#- 42 adminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace 'UfCt8UJC' \
    --userId '5flNyj6H' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserPartyV1'
delete_file $TEMP_FILE

#- 43 adminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace 'sTtX8P3l' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetLobbyCCU'
delete_file $TEMP_FILE

#- 44 adminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace 'lnaaS9lq' \
    --userId 'yygPcfkJ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetAllPlayerSessionAttribute'
delete_file $TEMP_FILE

#- 45 adminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --body '{"attributes": {"IxfQZza8": "kNVbDxVM"}}' \
    --namespace 'q7HJk0F8' \
    --userId '9xAc3YVf' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSetPlayerSessionAttribute'
delete_file $TEMP_FILE

#- 46 adminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'aENtrl0p' \
    --namespace 'TKZTXqzH' \
    --userId 'uBMYQSA2' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerSessionAttribute'
delete_file $TEMP_FILE

#- 47 adminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace 'jz1ZOpdO' \
    --userId 'jSyMddB4' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerBlockedPlayersV1'
delete_file $TEMP_FILE

#- 48 adminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace '1JuMf7RU' \
    --userId 'yBHRj8Ii' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerBlockedByPlayersV1'
delete_file $TEMP_FILE

#- 49 adminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --body '{"listBlockedUserId": ["RimRllHT"]}' \
    --namespace '6Dc40vFF' \
    --userId 'A6gpU7EW' \
    >$TEMP_FILE 2>&1
update_status $? 'adminBulkBlockPlayersV1'
delete_file $TEMP_FILE

#- 50 adminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --body '{"text": "3x1dCpm5"}' \
    --namespace '5gOeqQIq' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDebugProfanityFilters'
delete_file $TEMP_FILE

#- 51 adminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list 'cJVKmBM1' \
    --namespace 'J1IbuTrr' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetProfanityListFiltersV1'
delete_file $TEMP_FILE

#- 52 adminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --body '{"filter": "kbmuT1wh", "note": "OqmEnDXI"}' \
    --list 'WrBPlSay' \
    --namespace '46mv71BA' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddProfanityFilterIntoList'
delete_file $TEMP_FILE

#- 53 adminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --body '{"filters": [{"filter": "ZAOjtFJ2", "note": "vmTj7tT7"}]}' \
    --list 'TZHWDdCk' \
    --namespace 'IsZoArWw' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddProfanityFilters'
delete_file $TEMP_FILE

#- 54 adminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --body '[83]' \
    --list 'HcyFAdAt' \
    --namespace 'YciLIgRw' \
    >$TEMP_FILE 2>&1
update_status $? 'adminImportProfanityFiltersFromFile'
delete_file $TEMP_FILE

#- 55 adminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --body '{"filter": "FRr0gwB9"}' \
    --list 'tz3vp99X' \
    --namespace 'VlV8rK3t' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteProfanityFilter'
delete_file $TEMP_FILE

#- 56 adminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace 'E6n0smip' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetProfanityLists'
delete_file $TEMP_FILE

#- 57 adminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --body '{"isEnabled": true, "isMandatory": true, "name": "3L7cUd9p"}' \
    --namespace 'qtv6JfPZ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateProfanityList'
delete_file $TEMP_FILE

#- 58 adminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --body '{"isEnabled": true, "isMandatory": false, "newName": "CVOXcVa8"}' \
    --list '0TmCwtD2' \
    --namespace 'lAH01o6N' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateProfanityList'
delete_file $TEMP_FILE

#- 59 adminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'dcBIgzrD' \
    --namespace 'yWpFBYGm' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteProfanityList'
delete_file $TEMP_FILE

#- 60 adminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace 'mBawMyoK' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetProfanityRule'
delete_file $TEMP_FILE

#- 61 adminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --body '{"rule": "yNpdAasm"}' \
    --namespace '8xwUfzOl' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSetProfanityRuleForNamespace'
delete_file $TEMP_FILE

#- 62 adminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --body '{"message": "QiZY4NbO", "profanityLevel": "QXJ7uOTz"}' \
    --namespace 'NMvuq2tN' \
    >$TEMP_FILE 2>&1
update_status $? 'adminVerifyMessageProfanityResponse'
delete_file $TEMP_FILE

#- 63 adminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace 'l4CX4Iji' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetThirdPartyConfig'
delete_file $TEMP_FILE

#- 64 adminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --body '{"apiKey": "K4DEUJRV"}' \
    --namespace 'K3l9Eb0R' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateThirdPartyConfig'
delete_file $TEMP_FILE

#- 65 adminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --body '{"apiKey": "1XRb0RH8"}' \
    --namespace 'vS1smeOl' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateThirdPartyConfig'
delete_file $TEMP_FILE

#- 66 adminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace 'ngrdTXCz' \
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
    --friendId 'aPBtkZMi' \
    --namespace 'o4wcyhlo' \
    >$TEMP_FILE 2>&1
update_status $? 'getPersonalChatHistoryV1Public'
delete_file $TEMP_FILE

#- 69 publicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace 'VS3rYp8Q' \
    --partyId 'tcEmCEVc' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPartyDataV1'
delete_file $TEMP_FILE

#- 70 publicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --body '{"custom_attribute": {"75UfeypW": {}}, "updatedAt": 19}' \
    --namespace 'DNhzCL5s' \
    --partyId 'WS2qwO76' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdatePartyAttributesV1'
delete_file $TEMP_FILE

#- 71 publicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace '3iEklkzL' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPlayerBlockedPlayersV1'
delete_file $TEMP_FILE

#- 72 publicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace 'm88LpLuY' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPlayerBlockedByPlayersV1'
delete_file $TEMP_FILE

#- 73 usersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace 'RO3C55yH' \
    --countOnly 'False' \
    --userIds 'wK2Jaqen' \
    >$TEMP_FILE 2>&1
update_status $? 'usersPresenceHandlerV1'
delete_file $TEMP_FILE

#- 74 freeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --body '{"message": "DGn7a2NU", "topic": "plWiLjq0"}' \
    --namespace '6n6a0rW8' \
    >$TEMP_FILE 2>&1
update_status $? 'freeFormNotification'
delete_file $TEMP_FILE

#- 75 notificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --body '{"templateContext": {"EfkpaXtw": "YZJaQ4Wb"}, "templateLanguage": "wNmsFYet", "templateSlug": "jEurH8el", "topic": "oJzNKtRU"}' \
    --namespace 'aTz1ETds' \
    >$TEMP_FILE 2>&1
update_status $? 'notificationWithTemplate'
delete_file $TEMP_FILE

#- 76 getGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace 'mwzjkkn9' \
    >$TEMP_FILE 2>&1
update_status $? 'getGameTemplate'
delete_file $TEMP_FILE

#- 77 createTemplate
samples/cli/sample-apps Lobby createTemplate \
    --body '{"templateContent": "oiQl05g7", "templateLanguage": "cO3ZMb6O", "templateSlug": "jlo6DMNp"}' \
    --namespace 'P2qMrTQ1' \
    >$TEMP_FILE 2>&1
update_status $? 'createTemplate'
delete_file $TEMP_FILE

#- 78 getSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace 'UpjfU6wJ' \
    --templateSlug 'hy1jOVkk' \
    --after 'UlS79527' \
    --before 'EZ25Ia8u' \
    --limit '57' \
    >$TEMP_FILE 2>&1
update_status $? 'getSlugTemplate'
delete_file $TEMP_FILE

#- 79 deleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace 'eZFlLtEV' \
    --templateSlug 'pDAEbA82' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTemplateSlug'
delete_file $TEMP_FILE

#- 80 getLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace 'jy74lq0p' \
    --templateLanguage 'DE5xRwh5' \
    --templateSlug 'b45ebpcM' \
    >$TEMP_FILE 2>&1
update_status $? 'getLocalizationTemplate'
delete_file $TEMP_FILE

#- 81 updateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --body '{"templateContent": "7ScSs3UO"}' \
    --namespace 'pAwIp9rR' \
    --templateLanguage 'tn1PcCxd' \
    --templateSlug 'bumeYgOd' \
    >$TEMP_FILE 2>&1
update_status $? 'updateLocalizationTemplate'
delete_file $TEMP_FILE

#- 82 deleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace 'EBWRQiW3' \
    --templateLanguage 'KFfU8icH' \
    --templateSlug '4081gRB1' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTemplateLocalization'
delete_file $TEMP_FILE

#- 83 publishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace 'GyLfLg4R' \
    --templateLanguage 'YuEbgUDE' \
    --templateSlug 'cJyIvsPw' \
    >$TEMP_FILE 2>&1
update_status $? 'publishTemplate'
delete_file $TEMP_FILE

#- 84 getTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace 'Or0BmV5i' \
    --after 'FvfwFjTS' \
    --before 'mIEqoLyL' \
    --limit '9' \
    >$TEMP_FILE 2>&1
update_status $? 'getTopicByNamespace'
delete_file $TEMP_FILE

#- 85 createTopic
samples/cli/sample-apps Lobby createTopic \
    --body '{"description": "UGmomGX9", "topic": "sXTZ0v8p"}' \
    --namespace 'qLfc5SwG' \
    >$TEMP_FILE 2>&1
update_status $? 'createTopic'
delete_file $TEMP_FILE

#- 86 getTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace 'nReUULDX' \
    --topic '4QUIbb5n' \
    >$TEMP_FILE 2>&1
update_status $? 'getTopicByTopicName'
delete_file $TEMP_FILE

#- 87 updateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --body '{"description": "h68ZnyUt"}' \
    --namespace 'RvW9hNBS' \
    --topic 'FTtFrOmj' \
    >$TEMP_FILE 2>&1
update_status $? 'updateTopicByTopicName'
delete_file $TEMP_FILE

#- 88 deleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace 'kFrFVA8t' \
    --topic '0xF34Xpt' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTopicByTopicName'
delete_file $TEMP_FILE

#- 89 freeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --body '{"message": "6ZlTTic0", "topic": "kr2a0nI2"}' \
    --namespace 'oo7UHCJK' \
    --userId '5sp0aCvI' \
    >$TEMP_FILE 2>&1
update_status $? 'freeFormNotificationByUserID'
delete_file $TEMP_FILE

#- 90 notificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --body '{"templateContext": {"q3aHVYIl": "ewLRuHY8"}, "templateLanguage": "3bGj0HTe", "templateSlug": "eWXlIcRi", "topic": "dqctDpyg"}' \
    --namespace 'Y0ax476E' \
    --userId 'D4MMO9Tw' \
    >$TEMP_FILE 2>&1
update_status $? 'notificationWithTemplateByUserID'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT