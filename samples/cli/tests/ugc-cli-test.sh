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
echo "1..91"

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
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "mSfieShr"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'K6zWIrAT' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "qBkidgF9"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'uDUnXh5H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'K7sguS9E' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "H3rHpNLi", "fileExtension": "3M9RT8LV", "name": "vpRRvp00", "preview": "2BWEMPXi", "previewMetadata": {"previewContentType": "VjXSr0CG", "previewFileExtension": "oDBFxflq"}, "subType": "sxvZ56I0", "tags": ["5GOoIK8z", "Td1D8K33", "HZ0YlEHN"], "type": "IBEAHkh7"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'DdPyDDsn' \
    --contentId '6u8XpJgT' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "YTOKrLXL", "fileExtension": "29jH6R7Q", "name": "dHccTmFu", "preview": "GGhnFIQT", "previewMetadata": {"previewContentType": "CKjgDO9s", "previewFileExtension": "QcnUcFhx"}, "subType": "twNlzP5N", "tags": ["QKGE5Dar", "8Pgs5iqu", "sKr4PvwT"], "type": "NHmExLIZ"}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '8pstTsWk' \
    --namespace $AB_NAMESPACE \
    --creator 'J2tFolbb' \
    --isofficial 'IbdFkmSo' \
    --limit '7' \
    --name '54aeGeXN' \
    --offset '65' \
    --orderby 'QUiTiKG5' \
    --sortby 'NMqNDajE' \
    --subtype '85PmMUSD' \
    --tags '["auTb9UzG", "eGZpPTeM", "DZWYkwXr"]' \
    --type 'qi4bq7EP' \
    --userId 'GN4ntLCl' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'CSko7vwv' \
    --contentId 'jtHi2D4S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'HPRqhNUv' \
    --isofficial 'Ddf2VRlC' \
    --limit '67' \
    --name 'cdGSee30' \
    --offset '75' \
    --orderby 'OL6J0t49' \
    --sortby 'i6XeIhiE' \
    --subtype 'i5MJNoXd' \
    --tags '["tW9HjOkv", "avBVcpIs", "HuecXmWB"]' \
    --type 'SvOIBIHf' \
    --userId '1UgP9OIp' \
    > test.out 2>&1
eval_tap $? 13 'AdminSearchContent' test.out

#- 14 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'V5s6aj3I' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserContentByShareCode' test.out

#- 15 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'Esuoxw8R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetSpecificContent' test.out

#- 16 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'I7Xv7u7Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDownloadContentPreview' test.out

#- 17 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '81n9giSY' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "WcgcdJwd", "screenshotId": "bYTYMfzR"}, {"description": "i5nJSRcc", "screenshotId": "nUoTeh1q"}, {"description": "Ovr6Q2hm", "screenshotId": "S6OZq7Kh"}]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateScreenshots' test.out

#- 18 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'JnapKGc9' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "2atRcPIL", "description": "8Rfvkw96", "fileExtension": "png"}, {"contentType": "mO6M3TN6", "description": "u3AuzHzc", "fileExtension": "jpg"}, {"contentType": "X3mr3IND", "description": "El3zQtRm", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUploadContentScreenshot' test.out

#- 19 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'vUgJEiZO' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'VP8WUHtj' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteContentScreenshot' test.out

#- 20 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 20 'SingleAdminGetAllGroups' test.out

#- 21 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["JtWGW0FA", "EkZVKtA3", "KFtDytMP"], "name": "qRF1ScDE"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateGroup' test.out

#- 22 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'jRsU2Wwd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetGroup' test.out

#- 23 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '77DeRcFU' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["q5YmRPDM", "yRRxTLwv", "MWb880ac"], "name": "rv2fkxNH"}' \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminUpdateGroup' test.out

#- 24 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'VefQBQz0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminDeleteGroup' test.out

#- 25 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'nC0ow1D7' \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminGetGroupContents' test.out

#- 26 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 26 'AdminGetTag' test.out

#- 27 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "HbKnzN5C"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateTag' test.out

#- 28 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'bYwwDluB' \
    --body '{"tag": "yDNHruyM"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateTag' test.out

#- 29 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'f1JnaxPW' \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteTag' test.out

#- 30 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetType' test.out

#- 31 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["KrpEiwDE", "4ZBPA42y", "pXAC1uTQ"], "type": "MKpkKSNb"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateType' test.out

#- 32 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'n7R0ChtO' \
    --body '{"subtype": ["69MNDreA", "AHbD2fb9", "LwvPopZB"], "type": "eyfmeEhJ"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateType' test.out

#- 33 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'kQtMxlhw' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteType' test.out

#- 34 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'GXhOxIVT' \
    --limit '22' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetChannel' test.out

#- 35 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'oilU4Xtm' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteAllUserChannels' test.out

#- 36 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'hwzRbt2j' \
    --namespace $AB_NAMESPACE \
    --userId 'ZXf2Zzq8' \
    --body '{"name": "vHbmA5GX"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateChannel' test.out

#- 37 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'lSUBahS2' \
    --namespace $AB_NAMESPACE \
    --userId '33sqULg3' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteChannel' test.out

#- 38 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'qrqyLnkq' \
    --contentId 'uTo8jyHX' \
    --namespace $AB_NAMESPACE \
    --userId 'RNcZ2BSq' \
    --body '{"contentType": "6yxkgvj4", "fileExtension": "Yyw7bgUW", "name": "m6Z90uu7", "preview": "zEbe4SAa", "previewMetadata": {"previewContentType": "Ua4OrTc7", "previewFileExtension": "jdslDvuy"}, "subType": "tbhC0QLP", "tags": ["zkZEutDU", "GF20cHLe", "SX2wuHFc"], "type": "5KkpYPxY"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateContentS3' test.out

#- 39 AdminUpdateContentDirect
eval_tap 0 39 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 40 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'GvrcO7NY' \
    --contentId '89bb89ys' \
    --namespace $AB_NAMESPACE \
    --userId 'QxRP87tL' \
    > test.out 2>&1
eval_tap $? 40 'AdminDeleteContent' test.out

#- 41 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'ZO3kSyW8' \
    --limit '47' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetContent' test.out

#- 42 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'BhtBhX2P' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAllUserContents' test.out

#- 43 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'wTJ2lOOr' \
    --namespace $AB_NAMESPACE \
    --userId '4mV5WBLH' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminHideUserContent' test.out

#- 44 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'nsWmwdjG' \
    --limit '43' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetAllGroups' test.out

#- 45 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '7Yt8i8N8' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteAllUserGroup' test.out

#- 46 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'X5RIKurs' \
    --namespace $AB_NAMESPACE \
    --userId 'Po5rWVor' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetGroup' test.out

#- 47 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'C75UFUTH' \
    --namespace $AB_NAMESPACE \
    --userId '70lfI4Zx' \
    --body '{"contents": ["QDzv2f8e", "LBbHq95o", "k5cUbKXp"], "name": "WtNLeFHC"}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateGroup' test.out

#- 48 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '4lrVxSK4' \
    --namespace $AB_NAMESPACE \
    --userId 'vbHdtSg9' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteGroup' test.out

#- 49 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'Z6upuAGS' \
    --namespace $AB_NAMESPACE \
    --userId 'vIDSadiw' \
    --limit '28' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetGroupContents' test.out

#- 50 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'eDt39rao' \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteAllUserStates' test.out

#- 51 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'zHyr5tmZ' \
    --namespace $AB_NAMESPACE \
    --creator 'pEbARMAV' \
    --isofficial 'fIL2dxuB' \
    --limit '70' \
    --name '6C4jza46' \
    --offset '25' \
    --orderby 'ya5fLkUL' \
    --sortby 'B3wWnvCD' \
    --subtype 'mb22JlLG' \
    --tags '["fdiEzu0l", "JU8weC4Y", "3cl9WsYC"]' \
    --type '6G5qsYIL' \
    --userId 'WLFDkV0M' \
    > test.out 2>&1
eval_tap $? 51 'SearchChannelSpecificContent' test.out

#- 52 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'af8XR3Lr' \
    --isofficial 'UucTJ6Pp' \
    --limit '62' \
    --name '7vWLKYjF' \
    --offset '100' \
    --orderby '2USYRrDa' \
    --sortby 'PPhw0lzH' \
    --subtype '05bb1VTf' \
    --tags '["nSqMxKFp", "sAq6XMLK", "pDaqqQyq"]' \
    --type 'lz8ztHzy' \
    --userId 'CgeIESwO' \
    > test.out 2>&1
eval_tap $? 52 'PublicSearchContent' test.out

#- 53 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Go3VQzXc", "zSOSZhBu", "vlvNE4Ou"]}' \
    > test.out 2>&1
eval_tap $? 53 'PublicGetContentBulk' test.out

#- 54 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 54 'GetFollowedContent' test.out

#- 55 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '80' \
    --name 'U94Nr4rE' \
    --offset '25' \
    --orderby 'ajwnlQTK' \
    --sortby 'rlI1Dp77' \
    --subtype 'V5Ul8sgE' \
    --tags '["7Cb1hCQH", "UJGtDiwg", "nc8zWzWh"]' \
    --type 'RI11tFnV' \
    > test.out 2>&1
eval_tap $? 55 'GetLikedContent' test.out

#- 56 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '6XXjZOZ9' \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByShareCode' test.out

#- 57 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '4FnKRQtM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByContentID' test.out

#- 58 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId '2j8kyuSN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AddDownloadCount' test.out

#- 59 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'OsOCmcz1' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateContentLikeStatus' test.out

#- 60 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'NAw6V46H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentPreview' test.out

#- 61 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 61 'GetTag' test.out

#- 62 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 62 'GetType' test.out

#- 63 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '38' \
    --orderby 'Tb0cBdNA' \
    --sortby '0EJHxOGf' \
    > test.out 2>&1
eval_tap $? 63 'PublicSearchCreator' test.out

#- 64 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 64 'GetFollowedUsers' test.out

#- 65 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'j8nTRTUV' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCreator' test.out

#- 66 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'uWyD9r45' \
    --limit '51' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 66 'GetChannels' test.out

#- 67 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'IDVWQMgM' \
    --body '{"name": "aVjP2wvy"}' \
    > test.out 2>&1
eval_tap $? 67 'CreateChannel' test.out

#- 68 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '6Te16eTt' \
    > test.out 2>&1
eval_tap $? 68 'DeleteAllUserChannel' test.out

#- 69 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'HnbMHOVn' \
    --namespace $AB_NAMESPACE \
    --userId 'LrCoq5Re' \
    --body '{"name": "rJFMkMha"}' \
    > test.out 2>&1
eval_tap $? 69 'UpdateChannel' test.out

#- 70 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId '1r1Tm4yn' \
    --namespace $AB_NAMESPACE \
    --userId 'XeXriAem' \
    > test.out 2>&1
eval_tap $? 70 'DeleteChannel' test.out

#- 71 CreateContentDirect
eval_tap 0 71 'CreateContentDirect # SKIP deprecated' test.out

#- 72 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'hb0ytTIc' \
    --namespace $AB_NAMESPACE \
    --userId 'CkQPWsWl' \
    --body '{"contentType": "HMBVz2bI", "fileExtension": "UOuFB4aY", "name": "IOEGzZqJ", "preview": "E9gAkZdk", "previewMetadata": {"previewContentType": "5g9KmTGa", "previewFileExtension": "4okKYFDA"}, "subType": "QByJf0Nk", "tags": ["CUcpcMNS", "FPHNwuKp", "owHayT19"], "type": "8ENxgILQ"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateContentS3' test.out

#- 73 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId '44ztMDtL' \
    --contentId 'ocyer2uu' \
    --namespace $AB_NAMESPACE \
    --userId '4VTZ85vW' \
    --body '{"contentType": "m8aWtjMr", "fileExtension": "qAuxuPpm", "name": "kOWRnD2f", "preview": "74aFq3dM", "previewMetadata": {"previewContentType": "uVzRAfc2", "previewFileExtension": "dvGOorV4"}, "subType": "ygWyIwrl", "tags": ["BVwZEu43", "6DKhQWGC", "WmEKsDRB"], "type": "rKtbvIpC"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateContentS3' test.out

#- 74 UpdateContentDirect
eval_tap 0 74 'UpdateContentDirect # SKIP deprecated' test.out

#- 75 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '4CfC3Wek' \
    --contentId 'A1SQEKlO' \
    --namespace $AB_NAMESPACE \
    --userId 'x1AfKyew' \
    > test.out 2>&1
eval_tap $? 75 'DeleteContent' test.out

#- 76 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'byeSDPsp' \
    --limit '74' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 76 'PublicGetUserContent' test.out

#- 77 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'P2yvB9Oi' \
    > test.out 2>&1
eval_tap $? 77 'DeleteAllUserContents' test.out

#- 78 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'yTXI1LrC' \
    --namespace $AB_NAMESPACE \
    --userId 'MPq5N9LX' \
    --body '{"screenshots": [{"description": "6yJNYYEF", "screenshotId": "8vNX7snf"}, {"description": "LK53VtYm", "screenshotId": "RTBUvJyy"}, {"description": "UFDTXoBa", "screenshotId": "WqZFg49x"}]}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateScreenshots' test.out

#- 79 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'RE91OBaZ' \
    --namespace $AB_NAMESPACE \
    --userId 'c5udmi7R' \
    --body '{"screenshots": [{"contentType": "wfQfgZKT", "description": "blYX0IgC", "fileExtension": "png"}, {"contentType": "ni5UWwpx", "description": "pPedGTuV", "fileExtension": "png"}, {"contentType": "9Yk4qHBd", "description": "j9FxvyE6", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UploadContentScreenshot' test.out

#- 80 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId '1GuPZhoL' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'jAqolS7H' \
    --userId 'GZJBq2wS' \
    > test.out 2>&1
eval_tap $? 80 'DeleteContentScreenshot' test.out

#- 81 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'wD7USOjQ' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateUserFollowStatus' test.out

#- 82 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'C75vK981' \
    --limit '15' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowers' test.out

#- 83 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId '726aJTfg' \
    --limit '79' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowing' test.out

#- 84 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'DrHzh1ur' \
    --limit '83' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 84 'GetGroups' test.out

#- 85 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'F00OujYS' \
    --body '{"contents": ["pEfO1hoR", "QBki6hzy", "wgMcmcHb"], "name": "MEvW5BTG"}' \
    > test.out 2>&1
eval_tap $? 85 'CreateGroup' test.out

#- 86 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'MOYJOvYM' \
    > test.out 2>&1
eval_tap $? 86 'DeleteAllUserGroup' test.out

#- 87 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'VVfMHUZr' \
    --namespace $AB_NAMESPACE \
    --userId 'A1ppKsi6' \
    > test.out 2>&1
eval_tap $? 87 'GetGroup' test.out

#- 88 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'U5o2EpLq' \
    --namespace $AB_NAMESPACE \
    --userId '7u6xc7oR' \
    --body '{"contents": ["eyaOtM5d", "xUDPeSmO", "AIo5NEfb"], "name": "VufKjozf"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateGroup' test.out

#- 89 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'GYFc7Uxg' \
    --namespace $AB_NAMESPACE \
    --userId 'iRa6q74I' \
    > test.out 2>&1
eval_tap $? 89 'DeleteGroup' test.out

#- 90 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'I3HdOgHp' \
    --namespace $AB_NAMESPACE \
    --userId 'Hv54cLdH' \
    --limit '31' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 90 'GetGroupContent' test.out

#- 91 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'Iu6BA5Ai' \
    > test.out 2>&1
eval_tap $? 91 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE