#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: go-cli-unit-test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

export JUSTICE_BASE_URL="$AB_BASE_URL"
export APP_CLIENT_ID="$AB_CLIENT_ID"
export APP_CLIENT_SECRET="$AB_CLIENT_SECRET"

EXIT_CODE=0

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_TOKEN="/tmp/justice-sample-apps/userData"

echo "TAP version 13"
echo "1..88"

#- 1 Login
rm -f $TEMP_TOKEN \
    && mkdir -p $(dirname $TEMP_TOKEN) \
    && echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
eval_tap 0 1 'Login # SKIP not tested' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 SingleAdminGetChannel
samples/cli/sample-apps Ugc singleAdminGetChannel \
    --namespace 'FtBxyZcD' \
    --limit '98' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --body '{"name": "pGlsQuJu"}' \
    --namespace '8vMf0IsJ' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --body '{"name": "kTrd8IDc"}' \
    --channelId 'V2zXnTKj' \
    --namespace 'XY1bPqam' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'iBxx9Cs1' \
    --namespace '8EY84ekI' \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --body '{"contentType": "tqRzHU1o", "fileExtension": "h570KQBV", "name": "aewc72kr", "preview": "Sha68n3Y", "subType": "nozp1C2K", "tags": ["mIQTuBdN"], "type": "EUsxFb8C"}' \
    --channelId 'J17M7DJZ' \
    --namespace 'aMSxECbZ' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --body '{"contentType": "bygyoarO", "fileExtension": "RoeNHSb8", "name": "Rh3kgs9q", "preview": "qJbnQsoB", "subType": "giVpP8Cm", "tags": ["3yvASUox"], "type": "dxxFqmAG"}' \
    --channelId 'TJ8IEdag' \
    --contentId 'Etp4w29K' \
    --namespace 'Ou9c19R6' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
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
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'tsDhUTDU' \
    --contentId 'scbQDjbT' \
    --namespace 'QuPMz2PT' \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace 'RlkyU89Z' \
    --limit '82' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminSearchContent
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
    > test.out 2>&1
eval_tap $? 13 'AdminSearchContent' test.out

#- 14 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '7mV1C91p' \
    --namespace 'jG9gpxL6' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetSpecificContent' test.out

#- 15 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'ycTQdvln' \
    --namespace '2LAuSQWE' \
    > test.out 2>&1
eval_tap $? 15 'AdminDownloadContentPreview' test.out

#- 16 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --body '{"screenshots": [{"description": "XL6LFE1Y", "screenshotId": "Ho9m126Z"}]}' \
    --contentId 'Wc8hHtWv' \
    --namespace 'bNYqgUqs' \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateScreenshots' test.out

#- 17 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --body '{"screenshots": [{"contentType": "lArFPiHU", "description": "IvaCv8kU", "fileExtension": "pjp"}]}' \
    --contentId 'BBpdsJLh' \
    --namespace 'sVyExrkx' \
    > test.out 2>&1
eval_tap $? 17 'AdminUploadContentScreenshot' test.out

#- 18 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'oot0B7WO' \
    --namespace 'fercZdpM' \
    --screenshotId 'ci37Ds7Y' \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteContentScreenshot' test.out

#- 19 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace 'SfExaI3u' \
    --limit '51' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 19 'SingleAdminGetAllGroups' test.out

#- 20 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --body '{"contents": ["teMbFAlt"], "name": "4hr7HmOY"}' \
    --namespace 'iBA5ltAO' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateGroup' test.out

#- 21 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'XmlG6eh1' \
    --namespace 'dTdoTFpB' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetGroup' test.out

#- 22 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --body '{"contents": ["IcuC1dQY"], "name": "93OJnJ6T"}' \
    --groupId 'e9vD8ldz' \
    --namespace '7Hu8AD79' \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminUpdateGroup' test.out

#- 23 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'kdWunviz' \
    --namespace 'U0q1pHyh' \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminDeleteGroup' test.out

#- 24 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'hERoGgdr' \
    --namespace 'ysMizBGS' \
    --limit '87' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetGroupContents' test.out

#- 25 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace 'P2l7DNSZ' \
    --limit '53' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 25 'AdminGetTag' test.out

#- 26 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --body '{"tag": "0XiPLQXS"}' \
    --namespace 'e07ZddOG' \
    > test.out 2>&1
eval_tap $? 26 'AdminCreateTag' test.out

#- 27 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --body '{"tag": "TMlJjBwj"}' \
    --namespace '9HJHQKse' \
    --tagId 'EdSXRDSv' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateTag' test.out

#- 28 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace 'guauw1xT' \
    --tagId '7eMwSl9M' \
    > test.out 2>&1
eval_tap $? 28 'AdminDeleteTag' test.out

#- 29 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace 'LH0NnTJ2' \
    --limit '41' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 29 'AdminGetType' test.out

#- 30 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --body '{"subtype": ["NzBvwJaQ"], "type": "a547Jllv"}' \
    --namespace 'A8RWSpab' \
    > test.out 2>&1
eval_tap $? 30 'AdminCreateType' test.out

#- 31 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --body '{"subtype": ["Ut7xk6Qx"], "type": "yWhfqoWf"}' \
    --namespace 'Jw2o8oWU' \
    --typeId 'qvPCZ2Hz' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateType' test.out

#- 32 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace 'T7NXmWDl' \
    --typeId 'XsuNIdQJ' \
    > test.out 2>&1
eval_tap $? 32 'AdminDeleteType' test.out

#- 33 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace 'R5lsNOlv' \
    --userId 'kfwaSbns' \
    --limit '40' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 33 'AdminGetChannel' test.out

#- 34 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace 'CgToxuVT' \
    --userId 'ekJgvg6h' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAllUserChannels' test.out

#- 35 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --body '{"name": "5HIpH0Dv"}' \
    --channelId 'iplEk4vj' \
    --namespace '3LDp4yqD' \
    --userId 't8QUZDpx' \
    > test.out 2>&1
eval_tap $? 35 'AdminUpdateChannel' test.out

#- 36 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'lHasinGc' \
    --namespace 'jrkmRMtt' \
    --userId 'gjDSaIVB' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteChannel' test.out

#- 37 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --body '{"contentType": "mft3Udg7", "fileExtension": "p9PGmY2H", "name": "5kX4Msis", "preview": "SX28nARx", "subType": "WRpv5ou5", "tags": ["xtvd28OU"], "type": "fCt8UJC5"}' \
    --channelId 'flNyj6Hs' \
    --contentId 'TtX8P3ll' \
    --namespace 'naaS9lqy' \
    --userId 'ygPcfkJI' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateContentS3' test.out

#- 38 AdminUpdateContentDirect
eval_tap 0 38 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 39 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'xfQZza8k' \
    --contentId 'NVbDxVMq' \
    --namespace '7HJk0F89' \
    --userId 'xAc3YVfa' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteContent' test.out

#- 40 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace 'ENtrl0pT' \
    --userId 'KZTXqzHu' \
    --limit '55' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 40 'AdminGetContent' test.out

#- 41 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace 'YQSA2jz1' \
    --userId 'ZOpdOjSy' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteAllUserContents' test.out

#- 42 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --body '{"isHidden": false}' \
    --contentId 'dB41JuMf' \
    --namespace '7RUyBHRj' \
    --userId '8IiRimRl' \
    > test.out 2>&1
eval_tap $? 42 'AdminHideUserContent' test.out

#- 43 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace 'lHT6Dc40' \
    --userId 'vFFA6gpU' \
    --limit '61' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetAllGroups' test.out

#- 44 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace '3x1dCpm5' \
    --userId '5gOeqQIq' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteAllUserGroup' test.out

#- 45 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'cJVKmBM1' \
    --namespace 'J1IbuTrr' \
    --userId 'kbmuT1wh' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetGroup' test.out

#- 46 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --body '{"contents": ["OqmEnDXI"], "name": "WrBPlSay"}' \
    --groupId '46mv71BA' \
    --namespace 'ZAOjtFJ2' \
    --userId 'vmTj7tT7' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateGroup' test.out

#- 47 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'TZHWDdCk' \
    --namespace 'IsZoArWw' \
    --userId 'PHcyFAdA' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeleteGroup' test.out

#- 48 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'tYciLIgR' \
    --namespace 'wFRr0gwB' \
    --userId '9tz3vp99' \
    --limit '98' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetGroupContents' test.out

#- 49 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace 'lV8rK3tE' \
    --userId '6n0smip1' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteAllUserStates' test.out

#- 50 SearchChannelSpecificContent
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
    > test.out 2>&1
eval_tap $? 50 'SearchChannelSpecificContent' test.out

#- 51 PublicSearchContent
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
    > test.out 2>&1
eval_tap $? 51 'PublicSearchContent' test.out

#- 52 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace 'VS3rYp8Q' \
    --limit '38' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 52 'GetFollowedContent' test.out

#- 53 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace 'EmCEVc75' \
    --limit '92' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 53 'GetLikedContent' test.out

#- 54 DownloadContentByShareCode
samples/cli/sample-apps Ugc downloadContentByShareCode \
    --namespace 'eypWjDNh' \
    --shareCode 'zCL5sWS2' \
    > test.out 2>&1
eval_tap $? 54 'DownloadContentByShareCode' test.out

#- 55 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'qwO763iE' \
    --namespace 'klkzLm88' \
    > test.out 2>&1
eval_tap $? 55 'PublicDownloadContentByContentID' test.out

#- 56 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'LpLuYRO3' \
    --namespace 'C55yHpwK' \
    > test.out 2>&1
eval_tap $? 56 'AddDownloadCount' test.out

#- 57 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --body '{"likeStatus": false}' \
    --contentId 'qenDGn7a' \
    --namespace '2NUplWiL' \
    > test.out 2>&1
eval_tap $? 57 'UpdateContentLikeStatus' test.out

#- 58 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'jq06n6a0' \
    --namespace 'rW8Efkpa' \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentPreview' test.out

#- 59 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace 'XtwYZJaQ' \
    --limit '96' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 59 'GetTag' test.out

#- 60 GetType
samples/cli/sample-apps Ugc getType \
    --namespace 'wNmsFYet' \
    --limit '18' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 60 'GetType' test.out

#- 61 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace 'urH8eloJ' \
    --limit '51' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 61 'GetFollowedUsers' test.out

#- 62 GetCreator
samples/cli/sample-apps Ugc getCreator \
    --namespace 'KtRUaTz1' \
    --userId 'ETdsmwzj' \
    > test.out 2>&1
eval_tap $? 62 'GetCreator' test.out

#- 63 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace 'kkn9oiQl' \
    --userId '05g7cO3Z' \
    --limit '76' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 63 'GetChannels' test.out

#- 64 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --body '{"name": "6Ojlo6DM"}' \
    --namespace 'NpP2qMrT' \
    --userId 'Q1UpjfU6' \
    > test.out 2>&1
eval_tap $? 64 'CreateChannel' test.out

#- 65 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace 'wJhy1jOV' \
    --userId 'kkUlS795' \
    > test.out 2>&1
eval_tap $? 65 'DeleteAllUserChannel' test.out

#- 66 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --body '{"name": "27EZ25Ia"}' \
    --channelId '8uCeZFlL' \
    --namespace 'tEVpDAEb' \
    --userId 'A82jy74l' \
    > test.out 2>&1
eval_tap $? 66 'UpdateChannel' test.out

#- 67 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'q0pDE5xR' \
    --namespace 'wh5b45eb' \
    --userId 'pcM7ScSs' \
    > test.out 2>&1
eval_tap $? 67 'DeleteChannel' test.out

#- 68 CreateContentDirect
eval_tap 0 68 'CreateContentDirect # SKIP deprecated' test.out

#- 69 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --body '{"contentType": "3UOpAwIp", "fileExtension": "9rRtn1Pc", "name": "CxdbumeY", "preview": "gOdEBWRQ", "subType": "iW3KFfU8", "tags": ["icH4081g"], "type": "RB1GyLfL"}' \
    --channelId 'g4RYuEbg' \
    --namespace 'UDEcJyIv' \
    --userId 'sPwOr0Bm' \
    > test.out 2>&1
eval_tap $? 69 'CreateContentS3' test.out

#- 70 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --body '{"contentType": "V5iFvfwF", "fileExtension": "jTSmIEqo", "name": "LyLeUGmo", "preview": "mGX9sXTZ", "subType": "0v8pqLfc", "tags": ["5SwGnReU"], "type": "ULDX4QUI"}' \
    --channelId 'bb5nh68Z' \
    --contentId 'nyUtRvW9' \
    --namespace 'hNBSFTtF' \
    --userId 'rOmjkFrF' \
    > test.out 2>&1
eval_tap $? 70 'UpdateContentS3' test.out

#- 71 UpdateContentDirect
eval_tap 0 71 'UpdateContentDirect # SKIP deprecated' test.out

#- 72 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'VA8t0xF3' \
    --contentId '4Xpt6ZlT' \
    --namespace 'Tic0kr2a' \
    --userId '0nI2oo7U' \
    > test.out 2>&1
eval_tap $? 72 'DeleteContent' test.out

#- 73 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace 'HCJK5sp0' \
    --userId 'aCvIq3aH' \
    --limit '94' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 73 'PublicGetUserContent' test.out

#- 74 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace 'lewLRuHY' \
    --userId '83bGj0HT' \
    > test.out 2>&1
eval_tap $? 74 'DeleteAllUserContents' test.out

#- 75 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --body '{"screenshots": [{"description": "eeWXlIcR", "screenshotId": "idqctDpy"}]}' \
    --contentId 'gY0ax476' \
    --namespace 'ED4MMO9T' \
    --userId 'w2JH0qhW' \
    > test.out 2>&1
eval_tap $? 75 'UpdateScreenshots' test.out

#- 76 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --body '{"screenshots": [{"contentType": "IwHWTgzJ", "description": "FRYw6t1I", "fileExtension": "bmp"}]}' \
    --contentId 'ZLO6V4Od' \
    --namespace 'e46QmCid' \
    --userId 'gdpP7RTC' \
    > test.out 2>&1
eval_tap $? 76 'UploadContentScreenshot' test.out

#- 77 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId '587lmUmB' \
    --namespace 'ziPZBnpO' \
    --screenshotId 'fkllxfq0' \
    --userId 'NsrSjw5H' \
    > test.out 2>&1
eval_tap $? 77 'DeleteContentScreenshot' test.out

#- 78 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --body '{"followStatus": false}' \
    --namespace 'g0blM1d5' \
    --userId 'MStYGczL' \
    > test.out 2>&1
eval_tap $? 78 'UpdateUserFollowStatus' test.out

#- 79 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace 'INlEC0OE' \
    --userId 'sE3yzIsU' \
    --limit 'P0NjluOr' \
    --offset 'GZTzsLW7' \
    > test.out 2>&1
eval_tap $? 79 'GetPublicFollowers' test.out

#- 80 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace 'Fjfs9nIk' \
    --userId 'cZ38fUEa' \
    --limit 'njKHbXfk' \
    --offset '1zxdzxg0' \
    > test.out 2>&1
eval_tap $? 80 'GetPublicFollowing' test.out

#- 81 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace 'UXcRyHi3' \
    --userId 'u8BzVWu1' \
    --limit '39' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 81 'GetGroups' test.out

#- 82 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --body '{"contents": ["mhUtCgcp"], "name": "vGrEbcZU"}' \
    --namespace 'DExH1tay' \
    --userId 'OGXIHzMR' \
    > test.out 2>&1
eval_tap $? 82 'CreateGroup' test.out

#- 83 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace 'jMCtOJsE' \
    --userId 'ijlrbpyy' \
    > test.out 2>&1
eval_tap $? 83 'DeleteAllUserGroup' test.out

#- 84 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'EcQxVgJI' \
    --namespace 'jMZqcWfM' \
    --userId 'l6dqrpD4' \
    > test.out 2>&1
eval_tap $? 84 'GetGroup' test.out

#- 85 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --body '{"contents": ["tnc3ZRB3"], "name": "IkdtPfAJ"}' \
    --groupId 'EomwenJv' \
    --namespace 'Q8grtQSv' \
    --userId '6EcALcMI' \
    > test.out 2>&1
eval_tap $? 85 'UpdateGroup' test.out

#- 86 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'Pms5bT51' \
    --namespace 'M4yko8S0' \
    --userId 'EnGLvGvf' \
    > test.out 2>&1
eval_tap $? 86 'DeleteGroup' test.out

#- 87 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'uSyCTyjj' \
    --namespace '4mCaiuMG' \
    --userId 'KOF5GJJo' \
    --limit '29' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 87 'GetGroupContent' test.out

#- 88 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace 'XUl3YU35' \
    --userId 'QHGpBABn' \
    > test.out 2>&1
eval_tap $? 88 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE