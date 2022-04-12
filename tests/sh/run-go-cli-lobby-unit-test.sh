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
    --body '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 44, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 4, "chatRateLimitDuration": 87, "concurrentUsersLimit": 98, "disableInvitationOnJoinParty": true, "enableChat": true, "entitlementCheck": false, "entitlementItemID": "kP8npLEK", "generalRateLimitBurst": 76, "generalRateLimitDuration": 11, "keepPresenceActivityOnDisconnect": false, "maxPartyMember": 16, "profanityFilter": false, "readyConsentTimeout": 31}' \
    --namespace 'kVZk3IaQ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateConfigV1'
delete_file $TEMP_FILE

#- 16 adminExportConfigV1
samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace 'YEmqGodO' \
    >$TEMP_FILE 2>&1
update_status $? 'adminExportConfigV1'
delete_file $TEMP_FILE

#- 17 adminImportConfigV1
samples/cli/sample-apps Lobby adminImportConfigV1 \
    --namespace 'EGt9gPOj' \
    >$TEMP_FILE 2>&1
update_status $? 'adminImportConfigV1'
delete_file $TEMP_FILE

#- 18 getListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace '0c6i0Jkv' \
    --userId 'Ias73ucY' \
    --limit '27' \
    --offset '63' \
    >$TEMP_FILE 2>&1
update_status $? 'getListOfFriends'
delete_file $TEMP_FILE

#- 19 sendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --body '{"message": "AJ3DK5T4", "topicName": "Eogg0Y39", "userIds": ["UoYlpv5b"]}' \
    --namespace 'VAgtsDhU' \
    >$TEMP_FILE 2>&1
update_status $? 'sendMultipleUsersFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 20 sendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --body '{"message": "TDUscbQD", "topicName": "jbTQuPMz"}' \
    --namespace '2PTRlkyU' \
    >$TEMP_FILE 2>&1
update_status $? 'sendUsersFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 21 sendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --body '{"message": "89ZPOw6z", "topicName": "PFJ42cwm"}' \
    --namespace 'zBBSMNco' \
    --partyId 'AAOjKNjf' \
    >$TEMP_FILE 2>&1
update_status $? 'sendPartyFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 22 sendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --body '{"templateContext": {"cYHm093a": "YgBU1sqj"}, "templateLanguage": "yK0XH45P", "templateSlug": "aRSOFQBt", "topicName": "u23REZ8h"}' \
    --namespace 'RVX7LGOv' \
    --partyId 'DdYiQS9i' \
    >$TEMP_FILE 2>&1
update_status $? 'sendPartyTemplatedNotificationV1Admin'
delete_file $TEMP_FILE

#- 23 getAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace '7mV1C91p' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllNotificationTemplatesV1Admin'
delete_file $TEMP_FILE

#- 24 createNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --body '{"templateContent": "jG9gpxL6", "templateLanguage": "ycTQdvln", "templateSlug": "2LAuSQWE"}' \
    --namespace 'XL6LFE1Y' \
    >$TEMP_FILE 2>&1
update_status $? 'createNotificationTemplateV1Admin'
delete_file $TEMP_FILE

#- 25 sendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --body '{"templateContext": {"Ho9m126Z": "Wc8hHtWv"}, "templateLanguage": "bNYqgUqs", "templateSlug": "lArFPiHU", "topicName": "IvaCv8kU"}' \
    --namespace '9dBBpdsJ' \
    >$TEMP_FILE 2>&1
update_status $? 'sendUsersTemplatedNotificationV1Admin'
delete_file $TEMP_FILE

#- 26 getTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace 'LhsVyExr' \
    --templateSlug 'kxoot0B7' \
    --after 'WOfercZd' \
    --before 'pMci37Ds' \
    --limit '88' \
    >$TEMP_FILE 2>&1
update_status $? 'getTemplateSlugLocalizationsTemplateV1Admin'
delete_file $TEMP_FILE

#- 27 deleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace 'fExaI3uz' \
    --templateSlug 'LteMbFAl' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteNotificationTemplateSlugV1Admin'
delete_file $TEMP_FILE

#- 28 getSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace 't4hr7HmO' \
    --templateLanguage 'YiBA5ltA' \
    --templateSlug 'OXmlG6eh' \
    >$TEMP_FILE 2>&1
update_status $? 'getSingleTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 29 updateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --body '{"templateContent": "1dTdoTFp"}' \
    --namespace 'BIcuC1dQ' \
    --templateLanguage 'Y93OJnJ6' \
    --templateSlug 'Te9vD8ld' \
    >$TEMP_FILE 2>&1
update_status $? 'updateTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 30 deleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace 'z7Hu8AD7' \
    --templateLanguage '9kdWunvi' \
    --templateSlug 'zU0q1pHy' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 31 publishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace 'hhERoGgd' \
    --templateLanguage 'rysMizBG' \
    --templateSlug 'SRdP2l7D' \
    >$TEMP_FILE 2>&1
update_status $? 'publishTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 32 getAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace 'NSZ8Aq0X' \
    --after 'iPLQXSe0' \
    --before '7ZddOGTM' \
    --limit '23' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllNotificationTopicsV1Admin'
delete_file $TEMP_FILE

#- 33 createNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --body '{"description": "JjBwj9HJ", "topicName": "HQKseEdS"}' \
    --namespace 'XRDSvgua' \
    >$TEMP_FILE 2>&1
update_status $? 'createNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 34 getNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace 'uw1xT7eM' \
    --topicName 'wSl9MLH0' \
    >$TEMP_FILE 2>&1
update_status $? 'getNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 35 updateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --body '{"description": "NnTJ2ulN"}' \
    --namespace 'zBvwJaQa' \
    --topicName '547JllvA' \
    >$TEMP_FILE 2>&1
update_status $? 'updateNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 36 deleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace '8RWSpabU' \
    --topicName 't7xk6Qxy' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 37 sendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --body '{"message": "WhfqoWfJ", "topicName": "w2o8oWUq"}' \
    --namespace 'vPCZ2HzT' \
    --userId '7NXmWDlX' \
    >$TEMP_FILE 2>&1
update_status $? 'sendSpecificUserFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 38 sendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --body '{"templateContext": {"suNIdQJR": "5lsNOlvk"}, "templateLanguage": "fwaSbnsu", "templateSlug": "LCgToxuV", "topicName": "TekJgvg6"}' \
    --namespace 'h5HIpH0D' \
    --userId 'viplEk4v' \
    >$TEMP_FILE 2>&1
update_status $? 'sendSpecificUserTemplatedNotificationV1Admin'
delete_file $TEMP_FILE

#- 39 adminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace 'j3LDp4yq' \
    --partyId 'Dt8QUZDp' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPartyDataV1'
delete_file $TEMP_FILE

#- 40 adminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --body '{"custom_attribute": {"xlHasinG": {}}, "updatedAt": 5}' \
    --namespace 'jrkmRMtt' \
    --partyId 'gjDSaIVB' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdatePartyAttributesV1'
delete_file $TEMP_FILE

#- 41 adminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace 'mft3Udg7' \
    --partyId 'p9PGmY2H' \
    --userId '5kX4Msis' \
    >$TEMP_FILE 2>&1
update_status $? 'adminJoinPartyV1'
delete_file $TEMP_FILE

#- 42 adminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace 'SX28nARx' \
    --userId 'WRpv5ou5' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserPartyV1'
delete_file $TEMP_FILE

#- 43 adminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace 'xtvd28OU' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetLobbyCCU'
delete_file $TEMP_FILE

#- 44 adminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace 'fCt8UJC5' \
    --userId 'flNyj6Hs' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetAllPlayerSessionAttribute'
delete_file $TEMP_FILE

#- 45 adminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --body '{"attributes": {"TtX8P3ll": "naaS9lqy"}}' \
    --namespace 'ygPcfkJI' \
    --userId 'xfQZza8k' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSetPlayerSessionAttribute'
delete_file $TEMP_FILE

#- 46 adminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'NVbDxVMq' \
    --namespace '7HJk0F89' \
    --userId 'xAc3YVfa' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerSessionAttribute'
delete_file $TEMP_FILE

#- 47 adminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace 'ENtrl0pT' \
    --userId 'KZTXqzHu' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerBlockedPlayersV1'
delete_file $TEMP_FILE

#- 48 adminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace 'BMYQSA2j' \
    --userId 'z1ZOpdOj' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerBlockedByPlayersV1'
delete_file $TEMP_FILE

#- 49 adminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --body '{"listBlockedUserId": ["SyMddB41"]}' \
    --namespace 'JuMf7RUy' \
    --userId 'BHRj8IiR' \
    >$TEMP_FILE 2>&1
update_status $? 'adminBulkBlockPlayersV1'
delete_file $TEMP_FILE

#- 50 adminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --body '{"text": "imRllHT6"}' \
    --namespace 'Dc40vFFA' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDebugProfanityFilters'
delete_file $TEMP_FILE

#- 51 adminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list '6gpU7EW3' \
    --namespace 'x1dCpm55' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetProfanityListFiltersV1'
delete_file $TEMP_FILE

#- 52 adminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --body '{"filter": "gOeqQIqc", "note": "JVKmBM1J"}' \
    --list '1IbuTrrk' \
    --namespace 'bmuT1whO' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddProfanityFilterIntoList'
delete_file $TEMP_FILE

#- 53 adminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --body '{"filters": [{"filter": "qmEnDXIW", "note": "rBPlSay4"}]}' \
    --list '6mv71BAZ' \
    --namespace 'AOjtFJ2v' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddProfanityFilters'
delete_file $TEMP_FILE

#- 54 adminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --body '[25]' \
    --list 'Tj7tT7TZ' \
    --namespace 'HWDdCkIs' \
    >$TEMP_FILE 2>&1
update_status $? 'adminImportProfanityFiltersFromFile'
delete_file $TEMP_FILE

#- 55 adminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --body '{"filter": "ZoArWwPH"}' \
    --list 'cyFAdAtY' \
    --namespace 'ciLIgRwF' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteProfanityFilter'
delete_file $TEMP_FILE

#- 56 adminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace 'Rr0gwB9t' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetProfanityLists'
delete_file $TEMP_FILE

#- 57 adminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --body '{"isEnabled": true, "isMandatory": true, "name": "p99XVlV8"}' \
    --namespace 'rK3tE6n0' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateProfanityList'
delete_file $TEMP_FILE

#- 58 adminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --body '{"isEnabled": true, "isMandatory": false, "newName": "ip1tw3L7"}' \
    --list 'cUd9pqtv' \
    --namespace '6JfPZwcC' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateProfanityList'
delete_file $TEMP_FILE

#- 59 adminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'VOXcVa80' \
    --namespace 'TmCwtD2l' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteProfanityList'
delete_file $TEMP_FILE

#- 60 adminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace 'AH01o6Nd' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetProfanityRule'
delete_file $TEMP_FILE

#- 61 adminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --body '{"rule": "cBIgzrDy"}' \
    --namespace 'WpFBYGmm' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSetProfanityRuleForNamespace'
delete_file $TEMP_FILE

#- 62 adminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --body '{"message": "BawMyoKy", "profanityLevel": "NpdAasm8"}' \
    --namespace 'xwUfzOlQ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminVerifyMessageProfanityResponse'
delete_file $TEMP_FILE

#- 63 adminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace 'iZY4NbOQ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetThirdPartyConfig'
delete_file $TEMP_FILE

#- 64 adminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --body '{"apiKey": "XJ7uOTzN"}' \
    --namespace 'Mvuq2tNl' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateThirdPartyConfig'
delete_file $TEMP_FILE

#- 65 adminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --body '{"apiKey": "4CX4IjiK"}' \
    --namespace '4DEUJRVK' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateThirdPartyConfig'
delete_file $TEMP_FILE

#- 66 adminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace '3l9Eb0R1' \
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
    --friendId 'XRb0RH8v' \
    --namespace 'S1smeOln' \
    >$TEMP_FILE 2>&1
update_status $? 'getPersonalChatHistoryV1Public'
delete_file $TEMP_FILE

#- 69 publicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace 'grdTXCza' \
    --partyId 'PBtkZMio' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPartyDataV1'
delete_file $TEMP_FILE

#- 70 publicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --body '{"custom_attribute": {"4wcyhloV": {}}, "updatedAt": 88}' \
    --namespace '3rYp8Qtc' \
    --partyId 'EmCEVc75' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdatePartyAttributesV1'
delete_file $TEMP_FILE

#- 71 publicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace 'UfeypWjD' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPlayerBlockedPlayersV1'
delete_file $TEMP_FILE

#- 72 publicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace 'NhzCL5sW' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPlayerBlockedByPlayersV1'
delete_file $TEMP_FILE

#- 73 usersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace 'S2qwO763' \
    --countOnly 'False' \
    --userIds 'EklkzLm8' \
    >$TEMP_FILE 2>&1
update_status $? 'usersPresenceHandlerV1'
delete_file $TEMP_FILE

#- 74 freeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --body '{"message": "8LpLuYRO", "topic": "3C55yHpw"}' \
    --namespace 'K2JaqenD' \
    >$TEMP_FILE 2>&1
update_status $? 'freeFormNotification'
delete_file $TEMP_FILE

#- 75 notificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --body '{"templateContext": {"Gn7a2NUp": "lWiLjq06"}, "templateLanguage": "n6a0rW8E", "templateSlug": "fkpaXtwY", "topic": "ZJaQ4Wbw"}' \
    --namespace 'NmsFYetj' \
    >$TEMP_FILE 2>&1
update_status $? 'notificationWithTemplate'
delete_file $TEMP_FILE

#- 76 getGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace 'EurH8elo' \
    >$TEMP_FILE 2>&1
update_status $? 'getGameTemplate'
delete_file $TEMP_FILE

#- 77 createTemplate
samples/cli/sample-apps Lobby createTemplate \
    --body '{"templateContent": "JzNKtRUa", "templateLanguage": "Tz1ETdsm", "templateSlug": "wzjkkn9o"}' \
    --namespace 'iQl05g7c' \
    >$TEMP_FILE 2>&1
update_status $? 'createTemplate'
delete_file $TEMP_FILE

#- 78 getSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace 'O3ZMb6Oj' \
    --templateSlug 'lo6DMNpP' \
    --after '2qMrTQ1U' \
    --before 'pjfU6wJh' \
    --limit '49' \
    >$TEMP_FILE 2>&1
update_status $? 'getSlugTemplate'
delete_file $TEMP_FILE

#- 79 deleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace '1jOVkkUl' \
    --templateSlug 'S79527EZ' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTemplateSlug'
delete_file $TEMP_FILE

#- 80 getLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace '25Ia8uCe' \
    --templateLanguage 'ZFlLtEVp' \
    --templateSlug 'DAEbA82j' \
    >$TEMP_FILE 2>&1
update_status $? 'getLocalizationTemplate'
delete_file $TEMP_FILE

#- 81 updateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --body '{"templateContent": "y74lq0pD"}' \
    --namespace 'E5xRwh5b' \
    --templateLanguage '45ebpcM7' \
    --templateSlug 'ScSs3UOp' \
    >$TEMP_FILE 2>&1
update_status $? 'updateLocalizationTemplate'
delete_file $TEMP_FILE

#- 82 deleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace 'AwIp9rRt' \
    --templateLanguage 'n1PcCxdb' \
    --templateSlug 'umeYgOdE' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTemplateLocalization'
delete_file $TEMP_FILE

#- 83 publishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace 'BWRQiW3K' \
    --templateLanguage 'FfU8icH4' \
    --templateSlug '081gRB1G' \
    >$TEMP_FILE 2>&1
update_status $? 'publishTemplate'
delete_file $TEMP_FILE

#- 84 getTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace 'yLfLg4RY' \
    --after 'uEbgUDEc' \
    --before 'JyIvsPwO' \
    --limit '34' \
    >$TEMP_FILE 2>&1
update_status $? 'getTopicByNamespace'
delete_file $TEMP_FILE

#- 85 createTopic
samples/cli/sample-apps Lobby createTopic \
    --body '{"description": "0BmV5iFv", "topic": "fwFjTSmI"}' \
    --namespace 'EqoLyLeU' \
    >$TEMP_FILE 2>&1
update_status $? 'createTopic'
delete_file $TEMP_FILE

#- 86 getTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace 'GmomGX9s' \
    --topic 'XTZ0v8pq' \
    >$TEMP_FILE 2>&1
update_status $? 'getTopicByTopicName'
delete_file $TEMP_FILE

#- 87 updateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --body '{"description": "Lfc5SwGn"}' \
    --namespace 'ReUULDX4' \
    --topic 'QUIbb5nh' \
    >$TEMP_FILE 2>&1
update_status $? 'updateTopicByTopicName'
delete_file $TEMP_FILE

#- 88 deleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace '68ZnyUtR' \
    --topic 'vW9hNBSF' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTopicByTopicName'
delete_file $TEMP_FILE

#- 89 freeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --body '{"message": "TtFrOmjk", "topic": "FrFVA8t0"}' \
    --namespace 'xF34Xpt6' \
    --userId 'ZlTTic0k' \
    >$TEMP_FILE 2>&1
update_status $? 'freeFormNotificationByUserID'
delete_file $TEMP_FILE

#- 90 notificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --body '{"templateContext": {"r2a0nI2o": "o7UHCJK5"}, "templateLanguage": "sp0aCvIq", "templateSlug": "3aHVYIle", "topic": "wLRuHY83"}' \
    --namespace 'bGj0HTee' \
    --userId 'WXlIcRid' \
    >$TEMP_FILE 2>&1
update_status $? 'notificationWithTemplateByUserID'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT