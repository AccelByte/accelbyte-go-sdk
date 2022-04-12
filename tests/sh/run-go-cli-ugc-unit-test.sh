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

OPERATIONS_COUNT=87

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

#- 1 singleAdminGetChannel
samples/cli/sample-apps Ugc singleAdminGetChannel \
    --namespace 'FtBxyZcD' \
    --limit '98' \
    --offset '55' \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminGetChannel'
delete_file $TEMP_FILE

#- 2 adminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --body '{"name": "pGlsQuJu"}' \
    --namespace '8vMf0IsJ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateChannel'
delete_file $TEMP_FILE

#- 3 singleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --body '{"name": "kTrd8IDc"}' \
    --channelId 'V2zXnTKj' \
    --namespace 'XY1bPqam' \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminUpdateChannel'
delete_file $TEMP_FILE

#- 4 singleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'iBxx9Cs1' \
    --namespace '8EY84ekI' \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminDeleteChannel'
delete_file $TEMP_FILE

#- 5 adminUploadContentDirect
update_status 0 'adminUploadContentDirect (skipped deprecated)'

#- 6 adminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --body '{"contentType": "tqRzHU1o", "fileExtension": "h570KQBV", "name": "aewc72kr", "preview": "Sha68n3Y", "subType": "nozp1C2K", "tags": ["mIQTuBdN"], "type": "EUsxFb8C"}' \
    --channelId 'J17M7DJZ' \
    --namespace 'aMSxECbZ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUploadContentS3'
delete_file $TEMP_FILE

#- 7 singleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --body '{"contentType": "bygyoarO", "fileExtension": "RoeNHSb8", "name": "Rh3kgs9q", "preview": "qJbnQsoB", "subType": "giVpP8Cm", "tags": ["3yvASUox"], "type": "dxxFqmAG"}' \
    --channelId 'TJ8IEdag' \
    --contentId 'Etp4w29K' \
    --namespace 'Ou9c19R6' \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminUpdateContentS3'
delete_file $TEMP_FILE

#- 8 adminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'XDqWHkkP' \
    --namespace '8npLEKMf' \
    --creator 'jiX7jpkV' \
    --isofficial 'Zk3IaQYE' \
    --limit '24' \
    --name 'qGodOEGt' \
    --offset '13' \
    --orderby 'POj0c6i0' \
    --sortby 'JkvIas73' \
    --subtype 'ucYnFAJ3' \
    --tags 'DK5T4Eog' \
    --type 'g0Y39UoY' \
    --userId 'lpv5bVAg' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSearchChannelSpecificContent'
delete_file $TEMP_FILE

#- 9 singleAdminUpdateContentDirect
update_status 0 'singleAdminUpdateContentDirect (skipped deprecated)'

#- 10 singleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'tsDhUTDU' \
    --contentId 'scbQDjbT' \
    --namespace 'QuPMz2PT' \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminDeleteContent'
delete_file $TEMP_FILE

#- 11 singleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace 'RlkyU89Z' \
    --limit '82' \
    --offset '80' \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminGetContent'
delete_file $TEMP_FILE

#- 12 adminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace 'w6zPFJ42' \
    --creator 'cwmzBBSM' \
    --isofficial 'NcoAAOjK' \
    --limit '78' \
    --name 'jfcYHm09' \
    --offset '0' \
    --orderby 'YgBU1sqj' \
    --sortby 'yK0XH45P' \
    --subtype 'aRSOFQBt' \
    --tags 'u23REZ8h' \
    --type 'RVX7LGOv' \
    --userId 'DdYiQS9i' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSearchContent'
delete_file $TEMP_FILE

#- 13 adminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '7mV1C91p' \
    --namespace 'jG9gpxL6' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetSpecificContent'
delete_file $TEMP_FILE

#- 14 adminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'ycTQdvln' \
    --namespace '2LAuSQWE' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDownloadContentPreview'
delete_file $TEMP_FILE

#- 15 adminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --body '{"screenshots": [{"description": "XL6LFE1Y", "screenshotId": "Ho9m126Z"}]}' \
    --contentId 'Wc8hHtWv' \
    --namespace 'bNYqgUqs' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateScreenshots'
delete_file $TEMP_FILE

#- 16 adminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --body '{"screenshots": [{"contentType": "lArFPiHU", "description": "IvaCv8kU", "fileExtension": "pjp"}]}' \
    --contentId 'BBpdsJLh' \
    --namespace 'sVyExrkx' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUploadContentScreenshot'
delete_file $TEMP_FILE

#- 17 adminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'oot0B7WO' \
    --namespace 'fercZdpM' \
    --screenshotId 'ci37Ds7Y' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteContentScreenshot'
delete_file $TEMP_FILE

#- 18 singleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace 'SfExaI3u' \
    --limit '51' \
    --offset '74' \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminGetAllGroups'
delete_file $TEMP_FILE

#- 19 adminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --body '{"contents": ["teMbFAlt"], "name": "4hr7HmOY"}' \
    --namespace 'iBA5ltAO' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateGroup'
delete_file $TEMP_FILE

#- 20 singleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'XmlG6eh1' \
    --namespace 'dTdoTFpB' \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminGetGroup'
delete_file $TEMP_FILE

#- 21 singleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --body '{"contents": ["IcuC1dQY"], "name": "93OJnJ6T"}' \
    --groupId 'e9vD8ldz' \
    --namespace '7Hu8AD79' \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminUpdateGroup'
delete_file $TEMP_FILE

#- 22 singleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'kdWunviz' \
    --namespace 'U0q1pHyh' \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminDeleteGroup'
delete_file $TEMP_FILE

#- 23 singleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'hERoGgdr' \
    --namespace 'ysMizBGS' \
    --limit '87' \
    --offset '7' \
    >$TEMP_FILE 2>&1
update_status $? 'singleAdminGetGroupContents'
delete_file $TEMP_FILE

#- 24 adminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace 'P2l7DNSZ' \
    --limit '53' \
    --offset '33' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetTag'
delete_file $TEMP_FILE

#- 25 adminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --body '{"tag": "0XiPLQXS"}' \
    --namespace 'e07ZddOG' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateTag'
delete_file $TEMP_FILE

#- 26 adminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --body '{"tag": "TMlJjBwj"}' \
    --namespace '9HJHQKse' \
    --tagId 'EdSXRDSv' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateTag'
delete_file $TEMP_FILE

#- 27 adminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace 'guauw1xT' \
    --tagId '7eMwSl9M' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteTag'
delete_file $TEMP_FILE

#- 28 adminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace 'LH0NnTJ2' \
    --limit '41' \
    --offset '22' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetType'
delete_file $TEMP_FILE

#- 29 adminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --body '{"subtype": ["NzBvwJaQ"], "type": "a547Jllv"}' \
    --namespace 'A8RWSpab' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateType'
delete_file $TEMP_FILE

#- 30 adminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --body '{"subtype": ["Ut7xk6Qx"], "type": "yWhfqoWf"}' \
    --namespace 'Jw2o8oWU' \
    --typeId 'qvPCZ2Hz' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateType'
delete_file $TEMP_FILE

#- 31 adminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace 'T7NXmWDl' \
    --typeId 'XsuNIdQJ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteType'
delete_file $TEMP_FILE

#- 32 adminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace 'R5lsNOlv' \
    --userId 'kfwaSbns' \
    --limit '40' \
    --offset '74' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetChannel'
delete_file $TEMP_FILE

#- 33 adminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace 'CgToxuVT' \
    --userId 'ekJgvg6h' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteAllUserChannels'
delete_file $TEMP_FILE

#- 34 adminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --body '{"name": "5HIpH0Dv"}' \
    --channelId 'iplEk4vj' \
    --namespace '3LDp4yqD' \
    --userId 't8QUZDpx' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateChannel'
delete_file $TEMP_FILE

#- 35 adminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'lHasinGc' \
    --namespace 'jrkmRMtt' \
    --userId 'gjDSaIVB' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteChannel'
delete_file $TEMP_FILE

#- 36 adminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --body '{"contentType": "mft3Udg7", "fileExtension": "p9PGmY2H", "name": "5kX4Msis", "preview": "SX28nARx", "subType": "WRpv5ou5", "tags": ["xtvd28OU"], "type": "fCt8UJC5"}' \
    --channelId 'flNyj6Hs' \
    --contentId 'TtX8P3ll' \
    --namespace 'naaS9lqy' \
    --userId 'ygPcfkJI' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateContentS3'
delete_file $TEMP_FILE

#- 37 adminUpdateContentDirect
update_status 0 'adminUpdateContentDirect (skipped deprecated)'

#- 38 adminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'xfQZza8k' \
    --contentId 'NVbDxVMq' \
    --namespace '7HJk0F89' \
    --userId 'xAc3YVfa' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteContent'
delete_file $TEMP_FILE

#- 39 adminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace 'ENtrl0pT' \
    --userId 'KZTXqzHu' \
    --limit '55' \
    --offset '77' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetContent'
delete_file $TEMP_FILE

#- 40 adminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace 'YQSA2jz1' \
    --userId 'ZOpdOjSy' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteAllUserContents'
delete_file $TEMP_FILE

#- 41 adminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --body '{"isHidden": false}' \
    --contentId 'dB41JuMf' \
    --namespace '7RUyBHRj' \
    --userId '8IiRimRl' \
    >$TEMP_FILE 2>&1
update_status $? 'adminHideUserContent'
delete_file $TEMP_FILE

#- 42 adminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace 'lHT6Dc40' \
    --userId 'vFFA6gpU' \
    --limit '61' \
    --offset '97' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetAllGroups'
delete_file $TEMP_FILE

#- 43 adminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace '3x1dCpm5' \
    --userId '5gOeqQIq' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteAllUserGroup'
delete_file $TEMP_FILE

#- 44 adminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'cJVKmBM1' \
    --namespace 'J1IbuTrr' \
    --userId 'kbmuT1wh' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetGroup'
delete_file $TEMP_FILE

#- 45 adminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --body '{"contents": ["OqmEnDXI"], "name": "WrBPlSay"}' \
    --groupId '46mv71BA' \
    --namespace 'ZAOjtFJ2' \
    --userId 'vmTj7tT7' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateGroup'
delete_file $TEMP_FILE

#- 46 adminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'TZHWDdCk' \
    --namespace 'IsZoArWw' \
    --userId 'PHcyFAdA' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteGroup'
delete_file $TEMP_FILE

#- 47 adminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'tYciLIgR' \
    --namespace 'wFRr0gwB' \
    --userId '9tz3vp99' \
    --limit '98' \
    --offset '94' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetGroupContents'
delete_file $TEMP_FILE

#- 48 adminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace 'lV8rK3tE' \
    --userId '6n0smip1' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteAllUserStates'
delete_file $TEMP_FILE

#- 49 searchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'tw3L7cUd' \
    --namespace '9pqtv6Jf' \
    --creator 'PZwcCVOX' \
    --isofficial 'cVa80TmC' \
    --limit '44' \
    --name 'tD2lAH01' \
    --offset '29' \
    --orderby '6NdcBIgz' \
    --sortby 'rDyWpFBY' \
    --subtype 'GmmBawMy' \
    --tags 'oKyNpdAa' \
    --type 'sm8xwUfz' \
    --userId 'OlQiZY4N' \
    >$TEMP_FILE 2>&1
update_status $? 'searchChannelSpecificContent'
delete_file $TEMP_FILE

#- 50 publicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace 'bOQXJ7uO' \
    --creator 'TzNMvuq2' \
    --isofficial 'tNl4CX4I' \
    --limit '19' \
    --name 'iK4DEUJR' \
    --offset '94' \
    --orderby 'K3l9Eb0R' \
    --sortby '1XRb0RH8' \
    --subtype 'vS1smeOl' \
    --tags 'ngrdTXCz' \
    --type 'aPBtkZMi' \
    --userId 'o4wcyhlo' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSearchContent'
delete_file $TEMP_FILE

#- 51 getFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace 'VS3rYp8Q' \
    --limit '38' \
    --offset '5' \
    >$TEMP_FILE 2>&1
update_status $? 'getFollowedContent'
delete_file $TEMP_FILE

#- 52 getLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace 'EmCEVc75' \
    --limit '92' \
    --offset '11' \
    >$TEMP_FILE 2>&1
update_status $? 'getLikedContent'
delete_file $TEMP_FILE

#- 53 downloadContentByShareCode
samples/cli/sample-apps Ugc downloadContentByShareCode \
    --namespace 'eypWjDNh' \
    --shareCode 'zCL5sWS2' \
    >$TEMP_FILE 2>&1
update_status $? 'downloadContentByShareCode'
delete_file $TEMP_FILE

#- 54 publicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'qwO763iE' \
    --namespace 'klkzLm88' \
    >$TEMP_FILE 2>&1
update_status $? 'publicDownloadContentByContentID'
delete_file $TEMP_FILE

#- 55 addDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'LpLuYRO3' \
    --namespace 'C55yHpwK' \
    >$TEMP_FILE 2>&1
update_status $? 'addDownloadCount'
delete_file $TEMP_FILE

#- 56 updateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --body '{"likeStatus": false}' \
    --contentId 'qenDGn7a' \
    --namespace '2NUplWiL' \
    >$TEMP_FILE 2>&1
update_status $? 'updateContentLikeStatus'
delete_file $TEMP_FILE

#- 57 publicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'jq06n6a0' \
    --namespace 'rW8Efkpa' \
    >$TEMP_FILE 2>&1
update_status $? 'publicDownloadContentPreview'
delete_file $TEMP_FILE

#- 58 getTag
samples/cli/sample-apps Ugc getTag \
    --namespace 'XtwYZJaQ' \
    --limit '96' \
    --offset '3' \
    >$TEMP_FILE 2>&1
update_status $? 'getTag'
delete_file $TEMP_FILE

#- 59 getType
samples/cli/sample-apps Ugc getType \
    --namespace 'wNmsFYet' \
    --limit '18' \
    --offset '61' \
    >$TEMP_FILE 2>&1
update_status $? 'getType'
delete_file $TEMP_FILE

#- 60 getFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace 'urH8eloJ' \
    --limit '51' \
    --offset '78' \
    >$TEMP_FILE 2>&1
update_status $? 'getFollowedUsers'
delete_file $TEMP_FILE

#- 61 getCreator
samples/cli/sample-apps Ugc getCreator \
    --namespace 'KtRUaTz1' \
    --userId 'ETdsmwzj' \
    >$TEMP_FILE 2>&1
update_status $? 'getCreator'
delete_file $TEMP_FILE

#- 62 getChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace 'kkn9oiQl' \
    --userId '05g7cO3Z' \
    --limit '76' \
    --offset '2' \
    >$TEMP_FILE 2>&1
update_status $? 'getChannels'
delete_file $TEMP_FILE

#- 63 createChannel
samples/cli/sample-apps Ugc createChannel \
    --body '{"name": "6Ojlo6DM"}' \
    --namespace 'NpP2qMrT' \
    --userId 'Q1UpjfU6' \
    >$TEMP_FILE 2>&1
update_status $? 'createChannel'
delete_file $TEMP_FILE

#- 64 deleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace 'wJhy1jOV' \
    --userId 'kkUlS795' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteAllUserChannel'
delete_file $TEMP_FILE

#- 65 updateChannel
samples/cli/sample-apps Ugc updateChannel \
    --body '{"name": "27EZ25Ia"}' \
    --channelId '8uCeZFlL' \
    --namespace 'tEVpDAEb' \
    --userId 'A82jy74l' \
    >$TEMP_FILE 2>&1
update_status $? 'updateChannel'
delete_file $TEMP_FILE

#- 66 deleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'q0pDE5xR' \
    --namespace 'wh5b45eb' \
    --userId 'pcM7ScSs' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteChannel'
delete_file $TEMP_FILE

#- 67 createContentDirect
update_status 0 'createContentDirect (skipped deprecated)'

#- 68 createContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --body '{"contentType": "3UOpAwIp", "fileExtension": "9rRtn1Pc", "name": "CxdbumeY", "preview": "gOdEBWRQ", "subType": "iW3KFfU8", "tags": ["icH4081g"], "type": "RB1GyLfL"}' \
    --channelId 'g4RYuEbg' \
    --namespace 'UDEcJyIv' \
    --userId 'sPwOr0Bm' \
    >$TEMP_FILE 2>&1
update_status $? 'createContentS3'
delete_file $TEMP_FILE

#- 69 updateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --body '{"contentType": "V5iFvfwF", "fileExtension": "jTSmIEqo", "name": "LyLeUGmo", "preview": "mGX9sXTZ", "subType": "0v8pqLfc", "tags": ["5SwGnReU"], "type": "ULDX4QUI"}' \
    --channelId 'bb5nh68Z' \
    --contentId 'nyUtRvW9' \
    --namespace 'hNBSFTtF' \
    --userId 'rOmjkFrF' \
    >$TEMP_FILE 2>&1
update_status $? 'updateContentS3'
delete_file $TEMP_FILE

#- 70 updateContentDirect
update_status 0 'updateContentDirect (skipped deprecated)'

#- 71 deleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'VA8t0xF3' \
    --contentId '4Xpt6ZlT' \
    --namespace 'Tic0kr2a' \
    --userId '0nI2oo7U' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteContent'
delete_file $TEMP_FILE

#- 72 publicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace 'HCJK5sp0' \
    --userId 'aCvIq3aH' \
    --limit '94' \
    --offset '68' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserContent'
delete_file $TEMP_FILE

#- 73 deleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace 'lewLRuHY' \
    --userId '83bGj0HT' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteAllUserContents'
delete_file $TEMP_FILE

#- 74 updateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --body '{"screenshots": [{"description": "eeWXlIcR", "screenshotId": "idqctDpy"}]}' \
    --contentId 'gY0ax476' \
    --namespace 'ED4MMO9T' \
    --userId 'w2JH0qhW' \
    >$TEMP_FILE 2>&1
update_status $? 'updateScreenshots'
delete_file $TEMP_FILE

#- 75 uploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --body '{"screenshots": [{"contentType": "IwHWTgzJ", "description": "FRYw6t1I", "fileExtension": "bmp"}]}' \
    --contentId 'ZLO6V4Od' \
    --namespace 'e46QmCid' \
    --userId 'gdpP7RTC' \
    >$TEMP_FILE 2>&1
update_status $? 'uploadContentScreenshot'
delete_file $TEMP_FILE

#- 76 deleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId '587lmUmB' \
    --namespace 'ziPZBnpO' \
    --screenshotId 'fkllxfq0' \
    --userId 'NsrSjw5H' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteContentScreenshot'
delete_file $TEMP_FILE

#- 77 updateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --body '{"followStatus": false}' \
    --namespace 'g0blM1d5' \
    --userId 'MStYGczL' \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserFollowStatus'
delete_file $TEMP_FILE

#- 78 getPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace 'INlEC0OE' \
    --userId 'sE3yzIsU' \
    --limit 'P0NjluOr' \
    --offset 'GZTzsLW7' \
    >$TEMP_FILE 2>&1
update_status $? 'getPublicFollowers'
delete_file $TEMP_FILE

#- 79 getPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace 'Fjfs9nIk' \
    --userId 'cZ38fUEa' \
    --limit 'njKHbXfk' \
    --offset '1zxdzxg0' \
    >$TEMP_FILE 2>&1
update_status $? 'getPublicFollowing'
delete_file $TEMP_FILE

#- 80 getGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace 'UXcRyHi3' \
    --userId 'u8BzVWu1' \
    --limit '39' \
    --offset '81' \
    >$TEMP_FILE 2>&1
update_status $? 'getGroups'
delete_file $TEMP_FILE

#- 81 createGroup
samples/cli/sample-apps Ugc createGroup \
    --body '{"contents": ["mhUtCgcp"], "name": "vGrEbcZU"}' \
    --namespace 'DExH1tay' \
    --userId 'OGXIHzMR' \
    >$TEMP_FILE 2>&1
update_status $? 'createGroup'
delete_file $TEMP_FILE

#- 82 deleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace 'jMCtOJsE' \
    --userId 'ijlrbpyy' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteAllUserGroup'
delete_file $TEMP_FILE

#- 83 getGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'EcQxVgJI' \
    --namespace 'jMZqcWfM' \
    --userId 'l6dqrpD4' \
    >$TEMP_FILE 2>&1
update_status $? 'getGroup'
delete_file $TEMP_FILE

#- 84 updateGroup
samples/cli/sample-apps Ugc updateGroup \
    --body '{"contents": ["tnc3ZRB3"], "name": "IkdtPfAJ"}' \
    --groupId 'EomwenJv' \
    --namespace 'Q8grtQSv' \
    --userId '6EcALcMI' \
    >$TEMP_FILE 2>&1
update_status $? 'updateGroup'
delete_file $TEMP_FILE

#- 85 deleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'Pms5bT51' \
    --namespace 'M4yko8S0' \
    --userId 'EnGLvGvf' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGroup'
delete_file $TEMP_FILE

#- 86 getGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'uSyCTyjj' \
    --namespace '4mCaiuMG' \
    --userId 'KOF5GJJo' \
    --limit '29' \
    --offset '89' \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupContent'
delete_file $TEMP_FILE

#- 87 deleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace 'XUl3YU35' \
    --userId 'QHGpBABn' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteAllUserStates'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT