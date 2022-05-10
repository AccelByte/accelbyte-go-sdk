#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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

echo "TAP version 13"
echo "1..89"

#- 1 Login
samples/cli/sample-apps login \
    -u 'admin' \
    -p 'admin' \
    > test.out 2>&1
eval_tap $? 1 'Login' test.out

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
    --tags '["DK5T4Eog"]' \
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
    --tags '["u23REZ8h"]' \
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
    --tags '["oKyNpdAa"]' \
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
    --tags '["ngrdTXCz"]' \
    --type 'aPBtkZMi' \
    --userId 'o4wcyhlo' \
    > test.out 2>&1
eval_tap $? 51 'PublicSearchContent' test.out

#- 52 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --body '{"contentIds": ["VS3rYp8Q"]}' \
    --namespace 'tcEmCEVc' \
    > test.out 2>&1
eval_tap $? 52 'PublicGetContentBulk' test.out

#- 53 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace '75UfeypW' \
    --limit '19' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 53 'GetFollowedContent' test.out

#- 54 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace 'NhzCL5sW' \
    --limit '88' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 54 'GetLikedContent' test.out

#- 55 DownloadContentByShareCode
samples/cli/sample-apps Ugc downloadContentByShareCode \
    --namespace 'wO763iEk' \
    --shareCode 'lkzLm88L' \
    > test.out 2>&1
eval_tap $? 55 'DownloadContentByShareCode' test.out

#- 56 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'pLuYRO3C' \
    --namespace '55yHpwK2' \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByContentID' test.out

#- 57 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'JaqenDGn' \
    --namespace '7a2NUplW' \
    > test.out 2>&1
eval_tap $? 57 'AddDownloadCount' test.out

#- 58 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --body '{"likeStatus": false}' \
    --contentId 'Ljq06n6a' \
    --namespace '0rW8Efkp' \
    > test.out 2>&1
eval_tap $? 58 'UpdateContentLikeStatus' test.out

#- 59 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'aXtwYZJa' \
    --namespace 'Q4WbwNms' \
    > test.out 2>&1
eval_tap $? 59 'PublicDownloadContentPreview' test.out

#- 60 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace 'FYetjEur' \
    --limit '66' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 60 'GetTag' test.out

#- 61 GetType
samples/cli/sample-apps Ugc getType \
    --namespace 'loJzNKtR' \
    --limit '92' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 61 'GetType' test.out

#- 62 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace 'Tz1ETdsm' \
    --limit '44' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 62 'GetFollowedUsers' test.out

#- 63 GetCreator
samples/cli/sample-apps Ugc getCreator \
    --namespace 'jkkn9oiQ' \
    --userId 'l05g7cO3' \
    > test.out 2>&1
eval_tap $? 63 'GetCreator' test.out

#- 64 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace 'ZMb6Ojlo' \
    --userId '6DMNpP2q' \
    --limit '76' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 64 'GetChannels' test.out

#- 65 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --body '{"name": "TQ1UpjfU"}' \
    --namespace '6wJhy1jO' \
    --userId 'VkkUlS79' \
    > test.out 2>&1
eval_tap $? 65 'CreateChannel' test.out

#- 66 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace '527EZ25I' \
    --userId 'a8uCeZFl' \
    > test.out 2>&1
eval_tap $? 66 'DeleteAllUserChannel' test.out

#- 67 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --body '{"name": "LtEVpDAE"}' \
    --channelId 'bA82jy74' \
    --namespace 'lq0pDE5x' \
    --userId 'Rwh5b45e' \
    > test.out 2>&1
eval_tap $? 67 'UpdateChannel' test.out

#- 68 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'bpcM7ScS' \
    --namespace 's3UOpAwI' \
    --userId 'p9rRtn1P' \
    > test.out 2>&1
eval_tap $? 68 'DeleteChannel' test.out

#- 69 CreateContentDirect
eval_tap 0 69 'CreateContentDirect # SKIP deprecated' test.out

#- 70 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --body '{"contentType": "cCxdbume", "fileExtension": "YgOdEBWR", "name": "QiW3KFfU", "preview": "8icH4081", "subType": "gRB1GyLf", "tags": ["Lg4RYuEb"], "type": "gUDEcJyI"}' \
    --channelId 'vsPwOr0B' \
    --namespace 'mV5iFvfw' \
    --userId 'FjTSmIEq' \
    > test.out 2>&1
eval_tap $? 70 'CreateContentS3' test.out

#- 71 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --body '{"contentType": "oLyLeUGm", "fileExtension": "omGX9sXT", "name": "Z0v8pqLf", "preview": "c5SwGnRe", "subType": "UULDX4QU", "tags": ["Ibb5nh68"], "type": "ZnyUtRvW"}' \
    --channelId '9hNBSFTt' \
    --contentId 'FrOmjkFr' \
    --namespace 'FVA8t0xF' \
    --userId '34Xpt6Zl' \
    > test.out 2>&1
eval_tap $? 71 'UpdateContentS3' test.out

#- 72 UpdateContentDirect
eval_tap 0 72 'UpdateContentDirect # SKIP deprecated' test.out

#- 73 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'TTic0kr2' \
    --contentId 'a0nI2oo7' \
    --namespace 'UHCJK5sp' \
    --userId '0aCvIq3a' \
    > test.out 2>&1
eval_tap $? 73 'DeleteContent' test.out

#- 74 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace 'HVYIlewL' \
    --userId 'RuHY83bG' \
    --limit '18' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 74 'PublicGetUserContent' test.out

#- 75 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace 'TeeWXlIc' \
    --userId 'RidqctDp' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserContents' test.out

#- 76 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --body '{"screenshots": [{"description": "ygY0ax47", "screenshotId": "6ED4MMO9"}]}' \
    --contentId 'Tw2JH0qh' \
    --namespace 'WIwHWTgz' \
    --userId 'JFRYw6t1' \
    > test.out 2>&1
eval_tap $? 76 'UpdateScreenshots' test.out

#- 77 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --body '{"screenshots": [{"contentType": "IKZLO6V4", "description": "Ode46QmC", "fileExtension": "jpg"}]}' \
    --contentId 'dgdpP7RT' \
    --namespace 'C587lmUm' \
    --userId 'BziPZBnp' \
    > test.out 2>&1
eval_tap $? 77 'UploadContentScreenshot' test.out

#- 78 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'Ofkllxfq' \
    --namespace '0NsrSjw5' \
    --screenshotId 'Hog0blM1' \
    --userId 'd5MStYGc' \
    > test.out 2>&1
eval_tap $? 78 'DeleteContentScreenshot' test.out

#- 79 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --body '{"followStatus": true}' \
    --namespace 'LINlEC0O' \
    --userId 'EsE3yzIs' \
    > test.out 2>&1
eval_tap $? 79 'UpdateUserFollowStatus' test.out

#- 80 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace 'UP0NjluO' \
    --userId 'rGZTzsLW' \
    --limit '7Fjfs9nI' \
    --offset 'kcZ38fUE' \
    > test.out 2>&1
eval_tap $? 80 'GetPublicFollowers' test.out

#- 81 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace 'anjKHbXf' \
    --userId 'k1zxdzxg' \
    --limit '0UXcRyHi' \
    --offset '3u8BzVWu' \
    > test.out 2>&1
eval_tap $? 81 'GetPublicFollowing' test.out

#- 82 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace '1tOmhUtC' \
    --userId 'gcpvGrEb' \
    --limit '4' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 82 'GetGroups' test.out

#- 83 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --body '{"contents": ["DExH1tay"], "name": "OGXIHzMR"}' \
    --namespace 'jMCtOJsE' \
    --userId 'ijlrbpyy' \
    > test.out 2>&1
eval_tap $? 83 'CreateGroup' test.out

#- 84 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace 'EcQxVgJI' \
    --userId 'jMZqcWfM' \
    > test.out 2>&1
eval_tap $? 84 'DeleteAllUserGroup' test.out

#- 85 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'l6dqrpD4' \
    --namespace 'tnc3ZRB3' \
    --userId 'IkdtPfAJ' \
    > test.out 2>&1
eval_tap $? 85 'GetGroup' test.out

#- 86 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --body '{"contents": ["EomwenJv"], "name": "Q8grtQSv"}' \
    --groupId '6EcALcMI' \
    --namespace 'Pms5bT51' \
    --userId 'M4yko8S0' \
    > test.out 2>&1
eval_tap $? 86 'UpdateGroup' test.out

#- 87 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'EnGLvGvf' \
    --namespace 'uSyCTyjj' \
    --userId '4mCaiuMG' \
    > test.out 2>&1
eval_tap $? 87 'DeleteGroup' test.out

#- 88 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'KOF5GJJo' \
    --namespace 'oSXUl3YU' \
    --userId '35QHGpBA' \
    --limit '54' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 88 'GetGroupContent' test.out

#- 89 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace 'OlxDznIC' \
    --userId 'QVyqBg34' \
    > test.out 2>&1
eval_tap $? 89 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE