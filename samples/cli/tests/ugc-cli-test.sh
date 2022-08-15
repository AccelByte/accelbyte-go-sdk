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
    --limit '56' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "OSZFeRZU"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'VQoZMlNI' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "4nOHhHLT"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'FKziGhkk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'Z1t4nNZk' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "4p9RNYs7", "fileExtension": "OKfo0eEw", "name": "PxlpOERc", "preview": "1be3jeRT", "previewMetadata": {"previewContentType": "dHGNqtEQ", "previewFileExtension": "V2jMis7d"}, "subType": "AMSxavOu", "tags": ["OjI05RaG", "W8Ub9fMN", "TX2hmWbG"], "type": "1uJB5QNf"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'lw7qcuxn' \
    --contentId 'j0X1owrf' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "qcimg1B9", "fileExtension": "AMcmsMbL", "name": "JFKEvRaO", "preview": "Jk5mcbhC", "previewMetadata": {"previewContentType": "ifpEBqUk", "previewFileExtension": "c64VJZ3X"}, "subType": "WITipT8R", "tags": ["4Z9U5ARg", "wOWt87Ve", "zTOv6HaS"], "type": "Ykk7zJ2m"}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '7wWDph3E' \
    --namespace $AB_NAMESPACE \
    --creator 'YrYGyLO9' \
    --isofficial 't30Tlqtw' \
    --limit '83' \
    --name '2OecHywU' \
    --offset '35' \
    --orderby 'L00BnGcn' \
    --sortby 'gK6tQnJ1' \
    --subtype '6rNKIp5W' \
    --tags '["nLpcqbrS", "ztDHlAm1", "WS2MhajT"]' \
    --type 'bZmwfWJz' \
    --userId 'PiJnlQDS' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'LbeC844f' \
    --contentId 'udUKwyGF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '1DTO8i1E' \
    --isofficial 'Jr2URMsv' \
    --limit '56' \
    --name 'dyUtd9D2' \
    --offset '78' \
    --orderby 'fahGPNV1' \
    --sortby 'n9SDNCGY' \
    --subtype 'ajAhrzHe' \
    --tags '["ZzYR4bFq", "uovVvpP8", "dxYhcnZS"]' \
    --type 'nV2NP0Fe' \
    --userId '6AV3Nqwq' \
    > test.out 2>&1
eval_tap $? 13 'AdminSearchContent' test.out

#- 14 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'ATHYNZCL' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserContentByShareCode' test.out

#- 15 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '7rmnU4ht' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetSpecificContent' test.out

#- 16 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '2riu75Ga' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDownloadContentPreview' test.out

#- 17 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'I79H5FyT' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "BOMvg9IB", "screenshotId": "A7VmHT3Z"}, {"description": "tNky8ol1", "screenshotId": "z5K6quTC"}, {"description": "cRq3rDzu", "screenshotId": "z0Ak4eAv"}]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateScreenshots' test.out

#- 18 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'meMsOGtc' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "fldiWtVC", "description": "JLoED8GZ", "fileExtension": "bmp"}, {"contentType": "rK77HLC9", "description": "spgp899c", "fileExtension": "jfif"}, {"contentType": "GbkmikPg", "description": "0As5EsrC", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUploadContentScreenshot' test.out

#- 19 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'GWJzuDBM' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'IVgIIzzP' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteContentScreenshot' test.out

#- 20 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 20 'SingleAdminGetAllGroups' test.out

#- 21 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["WPOHZyDs", "vYEMyItW", "qs5Yz7mY"], "name": "9zWBUlWS"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateGroup' test.out

#- 22 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'R8NdCh3N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetGroup' test.out

#- 23 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'GHkrjDLW' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["tbYmWiTB", "aHLzM6Zt", "UfitEufA"], "name": "srkOUKDM"}' \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminUpdateGroup' test.out

#- 24 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'FsAtVWwA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminDeleteGroup' test.out

#- 25 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'IDoGJgg6' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminGetGroupContents' test.out

#- 26 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 26 'AdminGetTag' test.out

#- 27 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "T9t6xoBs"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateTag' test.out

#- 28 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'vXdug4em' \
    --body '{"tag": "VzZxobm5"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateTag' test.out

#- 29 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '4lN5oBvQ' \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteTag' test.out

#- 30 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetType' test.out

#- 31 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["kBJRxJzb", "vSPVD5lk", "250Aku5U"], "type": "yZVqXY4n"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateType' test.out

#- 32 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'nzSOy31o' \
    --body '{"subtype": ["rgy5R7E0", "98zMUsHX", "SuQ5YT2Y"], "type": "glLa68vw"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateType' test.out

#- 33 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'cWm7wRuZ' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteType' test.out

#- 34 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId '5TZOhH8d' \
    --limit '7' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetChannel' test.out

#- 35 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'thW9CDVA' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteAllUserChannels' test.out

#- 36 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'wx435mKu' \
    --namespace $AB_NAMESPACE \
    --userId 'vsZaU93n' \
    --body '{"name": "rU1Jo2Zy"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateChannel' test.out

#- 37 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '4eoXKV8O' \
    --namespace $AB_NAMESPACE \
    --userId 'nz01bV2l' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteChannel' test.out

#- 38 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'hmD3NJjW' \
    --contentId 'YEMt3Lsm' \
    --namespace $AB_NAMESPACE \
    --userId '81ztaVMp' \
    --body '{"contentType": "A7BUDm3P", "fileExtension": "9MmgL2J2", "name": "cqtSAmtw", "preview": "seSNCyeB", "previewMetadata": {"previewContentType": "haGABjkh", "previewFileExtension": "16qa3V1o"}, "subType": "0agE7FBQ", "tags": ["Q1MrhbvE", "CYLp6kLM", "yVKfGArA"], "type": "otk0GQgD"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateContentS3' test.out

#- 39 AdminUpdateContentDirect
eval_tap 0 39 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 40 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'EwwcsewX' \
    --contentId 'mkgHHDqP' \
    --namespace $AB_NAMESPACE \
    --userId 'OxMGaHm3' \
    > test.out 2>&1
eval_tap $? 40 'AdminDeleteContent' test.out

#- 41 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'Uhqpez6M' \
    --limit '61' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetContent' test.out

#- 42 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'F7F30AjQ' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAllUserContents' test.out

#- 43 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'kDg5rnG3' \
    --namespace $AB_NAMESPACE \
    --userId '26CmK8r3' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminHideUserContent' test.out

#- 44 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'HovmYZqy' \
    --limit '66' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetAllGroups' test.out

#- 45 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'BpTanLKB' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteAllUserGroup' test.out

#- 46 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'ZR3G9KtE' \
    --namespace $AB_NAMESPACE \
    --userId '2jpjtlKA' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetGroup' test.out

#- 47 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'C4uyXjaK' \
    --namespace $AB_NAMESPACE \
    --userId 'geMWgR3e' \
    --body '{"contents": ["7BnwRd79", "YZXiX2ls", "9Y1tGabU"], "name": "99zO1rbi"}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateGroup' test.out

#- 48 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '1NipGJr8' \
    --namespace $AB_NAMESPACE \
    --userId 'u2XPouD4' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteGroup' test.out

#- 49 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'Vp0Egt4N' \
    --namespace $AB_NAMESPACE \
    --userId 'XXZj5c9S' \
    --limit '61' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetGroupContents' test.out

#- 50 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'yw9wx4u4' \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteAllUserStates' test.out

#- 51 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'XCog9ov9' \
    --namespace $AB_NAMESPACE \
    --creator 'nDRo1ZVU' \
    --isofficial 'zBFloow1' \
    --limit '19' \
    --name 'VjlZ6uDF' \
    --offset '8' \
    --orderby 'vvZ42GYQ' \
    --sortby 'GIN6tNHy' \
    --subtype 'u7GGNfgL' \
    --tags '["L9gxRj3R", "YdGguADN", "dqBTEf2z"]' \
    --type 'EvKmjzyS' \
    --userId 'DBY66saJ' \
    > test.out 2>&1
eval_tap $? 51 'SearchChannelSpecificContent' test.out

#- 52 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'wg2phply' \
    --isofficial '7Yv3skvX' \
    --limit '36' \
    --name 'rR0SC01S' \
    --offset '42' \
    --orderby 'GRS0uvZa' \
    --sortby 'WPvOPeVD' \
    --subtype '00yfsYq0' \
    --tags '["UcIW893o", "tg22FI9i", "oB7kVDEV"]' \
    --type 'wWIMUBTJ' \
    --userId 'WCrCqAD4' \
    > test.out 2>&1
eval_tap $? 52 'PublicSearchContent' test.out

#- 53 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["tNDf72K2", "jJcxY5u6", "gRTJhZgb"]}' \
    > test.out 2>&1
eval_tap $? 53 'PublicGetContentBulk' test.out

#- 54 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 54 'GetFollowedContent' test.out

#- 55 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '77' \
    --name 'bv3Elw7T' \
    --offset '84' \
    --orderby 'haglwVfS' \
    --sortby 'bL0mc5ny' \
    --subtype 'CxP1chP0' \
    --tags '["FHJri1Gi", "WUBI9MAO", "jwTwaZpX"]' \
    --type 'GslR662g' \
    > test.out 2>&1
eval_tap $? 55 'GetLikedContent' test.out

#- 56 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'PlhiffBX' \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByShareCode' test.out

#- 57 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'thVDw4Y3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByContentID' test.out

#- 58 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'qCGlADJv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AddDownloadCount' test.out

#- 59 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'ptomNncH' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateContentLikeStatus' test.out

#- 60 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'VF28hsT6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentPreview' test.out

#- 61 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 61 'GetTag' test.out

#- 62 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 62 'GetType' test.out

#- 63 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '59' \
    --orderby 'MNSIHEql' \
    --sortby '4OQt8Xd8' \
    > test.out 2>&1
eval_tap $? 63 'PublicSearchCreator' test.out

#- 64 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 64 'GetFollowedUsers' test.out

#- 65 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'zO2sVQgi' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCreator' test.out

#- 66 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'eZkVcJY5' \
    --limit '0' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 66 'GetChannels' test.out

#- 67 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'Hentfcfc' \
    --body '{"name": "eyKQh9xE"}' \
    > test.out 2>&1
eval_tap $? 67 'CreateChannel' test.out

#- 68 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'J1zXxjoE' \
    > test.out 2>&1
eval_tap $? 68 'DeleteAllUserChannel' test.out

#- 69 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'dZ1NfmSs' \
    --namespace $AB_NAMESPACE \
    --userId 'MX7BnGu1' \
    --body '{"name": "RlgV61Jm"}' \
    > test.out 2>&1
eval_tap $? 69 'UpdateChannel' test.out

#- 70 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'K4zUsykP' \
    --namespace $AB_NAMESPACE \
    --userId 'P0GsVhSt' \
    > test.out 2>&1
eval_tap $? 70 'DeleteChannel' test.out

#- 71 CreateContentDirect
eval_tap 0 71 'CreateContentDirect # SKIP deprecated' test.out

#- 72 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'KjRq35ms' \
    --namespace $AB_NAMESPACE \
    --userId 'GmGVZlGM' \
    --body '{"contentType": "EnXTYbhc", "fileExtension": "u2gjLQPr", "name": "FzDxRlkO", "preview": "tG20Dyhb", "previewMetadata": {"previewContentType": "zeq4Zboj", "previewFileExtension": "GVvn0O2n"}, "subType": "LCMZBEwi", "tags": ["yAgmRaiq", "139MpMI0", "pCBGxyoh"], "type": "2rbGUA1K"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateContentS3' test.out

#- 73 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'rDj3kmnQ' \
    --contentId 'OibOfJtC' \
    --namespace $AB_NAMESPACE \
    --userId 'wAzyrX4c' \
    --body '{"contentType": "k55355bF", "fileExtension": "WCYa52uu", "name": "deR6L8GW", "preview": "14z99FuW", "previewMetadata": {"previewContentType": "LJoGqL0n", "previewFileExtension": "SppVTL3t"}, "subType": "GBXFIbH7", "tags": ["SF9GuvBd", "Hu7DevDh", "Qhc9CTob"], "type": "VHVHyZeP"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateContentS3' test.out

#- 74 UpdateContentDirect
eval_tap 0 74 'UpdateContentDirect # SKIP deprecated' test.out

#- 75 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'qNKkwQSG' \
    --contentId 'VGYcdGx7' \
    --namespace $AB_NAMESPACE \
    --userId 'O9jZekKl' \
    > test.out 2>&1
eval_tap $? 75 'DeleteContent' test.out

#- 76 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'fz2YWUxr' \
    --limit '30' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 76 'PublicGetUserContent' test.out

#- 77 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '4gs4qBKk' \
    > test.out 2>&1
eval_tap $? 77 'DeleteAllUserContents' test.out

#- 78 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'UGrk3YFt' \
    --namespace $AB_NAMESPACE \
    --userId 'ajQH215J' \
    --body '{"screenshots": [{"description": "09vK9QEC", "screenshotId": "UHZ16Sas"}, {"description": "atzQBX93", "screenshotId": "0tmWCr9D"}, {"description": "LrqA92xX", "screenshotId": "BSgGHFEK"}]}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateScreenshots' test.out

#- 79 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'TY9upHYF' \
    --namespace $AB_NAMESPACE \
    --userId 'sHIxfj7I' \
    --body '{"screenshots": [{"contentType": "AJP6COwL", "description": "LWsgVVEr", "fileExtension": "jfif"}, {"contentType": "vlU65tpM", "description": "N8KPvfaH", "fileExtension": "jfif"}, {"contentType": "LxWmiRzs", "description": "pquD2DlB", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UploadContentScreenshot' test.out

#- 80 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'YH0OiNna' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'yoAkWSUy' \
    --userId 'Q1ArjhXy' \
    > test.out 2>&1
eval_tap $? 80 'DeleteContentScreenshot' test.out

#- 81 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId '7Jr4zk3d' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateUserFollowStatus' test.out

#- 82 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'zZIQ5jTI' \
    --limit '78' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowers' test.out

#- 83 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'vqS8ix3F' \
    --limit '91' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowing' test.out

#- 84 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'S1TKLtDj' \
    --limit '38' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 84 'GetGroups' test.out

#- 85 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId '1DaozN7Q' \
    --body '{"contents": ["BwSoVBj3", "VCQEdEQq", "zQLAHV2l"], "name": "cHu7u1a1"}' \
    > test.out 2>&1
eval_tap $? 85 'CreateGroup' test.out

#- 86 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '0DJr1Cpu' \
    > test.out 2>&1
eval_tap $? 86 'DeleteAllUserGroup' test.out

#- 87 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'W3JWXOJu' \
    --namespace $AB_NAMESPACE \
    --userId '6QeQMJ7Z' \
    > test.out 2>&1
eval_tap $? 87 'GetGroup' test.out

#- 88 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'j4yDaiiN' \
    --namespace $AB_NAMESPACE \
    --userId 'OJdQTNqv' \
    --body '{"contents": ["0pScNioV", "8bjOPThx", "N0bM5agM"], "name": "CTiVqrPn"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateGroup' test.out

#- 89 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'RWlSTMuE' \
    --namespace $AB_NAMESPACE \
    --userId 'ZvT279NV' \
    > test.out 2>&1
eval_tap $? 89 'DeleteGroup' test.out

#- 90 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'pw0KxYOB' \
    --namespace $AB_NAMESPACE \
    --userId 'bL5nlF64' \
    --limit '21' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 90 'GetGroupContent' test.out

#- 91 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'NujurhZP' \
    > test.out 2>&1
eval_tap $? 91 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE