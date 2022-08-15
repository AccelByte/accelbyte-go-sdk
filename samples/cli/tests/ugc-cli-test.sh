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
    --limit '46' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "cwBgxfAx"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'YpoACLvu' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "9ZWw6ubZ"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'JVdPkxzF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'JACOFj7o' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "haIcN8EI", "fileExtension": "16h9uurT", "name": "wHUexfsP", "preview": "2eukx27y", "previewMetadata": {"previewContentType": "Uo2i0HVS", "previewFileExtension": "caiBq389"}, "subType": "4hsZdzgp", "tags": ["QwEsmeTA", "Xba7ecXD", "aP98ZPyg"], "type": "P3GHfRTl"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'eQLeS23E' \
    --contentId 'YL1PKDhx' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "SZHiRPtH", "fileExtension": "o7wRyG3Y", "name": "BUeYFtL8", "preview": "8hOsDYGX", "previewMetadata": {"previewContentType": "ODB86uYz", "previewFileExtension": "1XdW3Tou"}, "subType": "xn4yCsP9", "tags": ["xUHHVUgF", "ckiut3FW", "p7zVONlQ"], "type": "NBbnWiXU"}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '1nhsS9f6' \
    --namespace $AB_NAMESPACE \
    --creator 'FxOconm7' \
    --isofficial 'fziOjZ1Q' \
    --limit '20' \
    --name 'mOWj9mFf' \
    --offset '17' \
    --orderby '7TQTpuXV' \
    --sortby 'fEZ1hy6N' \
    --subtype 'FQEiFp1x' \
    --tags '["R2ww2Nj8", "C7T9HEH8", "MezUWugi"]' \
    --type 'JIRfxQEO' \
    --userId 'rjPEmopt' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '1VZBtnFS' \
    --contentId 'WzWPJKL8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'jInUdt0X' \
    --isofficial 'K9At58Cp' \
    --limit '72' \
    --name 'w3pcm1jL' \
    --offset '53' \
    --orderby 'BeCKxzVg' \
    --sortby 'JBrCmRJw' \
    --subtype 'CPcsnq6d' \
    --tags '["SebdxCPK", "eFNvsLE1", "fRAorL3D"]' \
    --type '3HMwu9Gq' \
    --userId '9WY3C3Ud' \
    > test.out 2>&1
eval_tap $? 13 'AdminSearchContent' test.out

#- 14 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'FLSDGuxb' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserContentByShareCode' test.out

#- 15 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'jRwLrlya' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetSpecificContent' test.out

#- 16 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'yDK24MDv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDownloadContentPreview' test.out

#- 17 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'sfJR5JyH' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "zwxVwfzv", "screenshotId": "a9eukmkR"}, {"description": "K7TQgM7l", "screenshotId": "8NYKInvJ"}, {"description": "dGzE1h3U", "screenshotId": "VEyrDILY"}]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateScreenshots' test.out

#- 18 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'v5nJFaxq' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "afUFtAiY", "description": "QvkeBJOP", "fileExtension": "jfif"}, {"contentType": "Fik3HS5i", "description": "FBw6IQja", "fileExtension": "jpeg"}, {"contentType": "uCdBzres", "description": "dr29OvYO", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUploadContentScreenshot' test.out

#- 19 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '56TKXnOy' \
    --namespace $AB_NAMESPACE \
    --screenshotId '7zLCn6Wa' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteContentScreenshot' test.out

#- 20 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 20 'SingleAdminGetAllGroups' test.out

#- 21 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["FP21CjA7", "vTDgkpAJ", "CbGinZG2"], "name": "z95pd3jd"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateGroup' test.out

#- 22 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 't2LQEX3T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetGroup' test.out

#- 23 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'i8mTRNBr' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["G1p7RNGP", "lNMgnM2L", "fhHmNPbb"], "name": "T29UDVUw"}' \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminUpdateGroup' test.out

#- 24 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'bb7hualH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminDeleteGroup' test.out

#- 25 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'HANrIELq' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminGetGroupContents' test.out

#- 26 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 26 'AdminGetTag' test.out

#- 27 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "RjFEtBKU"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateTag' test.out

#- 28 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'SUD2kWYW' \
    --body '{"tag": "Bbp7g8PP"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateTag' test.out

#- 29 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'hq5uC9Ng' \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteTag' test.out

#- 30 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetType' test.out

#- 31 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["SA5TzQ4X", "AWzNneAs", "d2G65Ygv"], "type": "AuM0kfPd"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateType' test.out

#- 32 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'uFC2tHn8' \
    --body '{"subtype": ["xI73j92l", "yfKqlW2a", "fzQ1xsmn"], "type": "Zo55uiDJ"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateType' test.out

#- 33 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'lXD4FVhl' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteType' test.out

#- 34 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'VjWffza6' \
    --limit '96' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetChannel' test.out

#- 35 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'itBRQKun' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteAllUserChannels' test.out

#- 36 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'zeIn480t' \
    --namespace $AB_NAMESPACE \
    --userId 'cCNUIsx0' \
    --body '{"name": "z1sCmuoF"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateChannel' test.out

#- 37 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'LMmlUu2t' \
    --namespace $AB_NAMESPACE \
    --userId '6FyppiLK' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteChannel' test.out

#- 38 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'yAQlZq3Y' \
    --contentId 'OpfC50XO' \
    --namespace $AB_NAMESPACE \
    --userId 'PKFC3JH2' \
    --body '{"contentType": "I7FE9TDd", "fileExtension": "bi4x3HeV", "name": "s7XjYwdo", "preview": "zedCAoQj", "previewMetadata": {"previewContentType": "vN66FRnX", "previewFileExtension": "WFTgKV2M"}, "subType": "XPWZOHrX", "tags": ["uOKstoHd", "HbYoN1Az", "7LtMhYIZ"], "type": "CGIgzZF3"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateContentS3' test.out

#- 39 AdminUpdateContentDirect
eval_tap 0 39 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 40 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'U9ZUB3B3' \
    --contentId 'g67kxWkb' \
    --namespace $AB_NAMESPACE \
    --userId 'XtuSzbCO' \
    > test.out 2>&1
eval_tap $? 40 'AdminDeleteContent' test.out

#- 41 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'mUQONgi6' \
    --limit '71' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetContent' test.out

#- 42 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'jt5dTLmI' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAllUserContents' test.out

#- 43 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'yXOpAMTx' \
    --namespace $AB_NAMESPACE \
    --userId '1vC90vV5' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminHideUserContent' test.out

#- 44 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'tyBuYnN3' \
    --limit '67' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetAllGroups' test.out

#- 45 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'JIUzKFoR' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteAllUserGroup' test.out

#- 46 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'cFxtizTQ' \
    --namespace $AB_NAMESPACE \
    --userId 'BF0EkS4B' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetGroup' test.out

#- 47 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'yasNoLLL' \
    --namespace $AB_NAMESPACE \
    --userId 'rbF5nKXs' \
    --body '{"contents": ["gV6ZZK6U", "i8eYtTvo", "613R6qz0"], "name": "u7VWRDZQ"}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateGroup' test.out

#- 48 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'GgqcW5WY' \
    --namespace $AB_NAMESPACE \
    --userId 'veKHNDTQ' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteGroup' test.out

#- 49 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'sRDpfZiY' \
    --namespace $AB_NAMESPACE \
    --userId 'auYrdBBC' \
    --limit '19' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetGroupContents' test.out

#- 50 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'Zsj37vG2' \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteAllUserStates' test.out

#- 51 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'CONK5u8W' \
    --namespace $AB_NAMESPACE \
    --creator 'ztW6t78L' \
    --isofficial 'gt6ocY7L' \
    --limit '46' \
    --name 'WObTohpo' \
    --offset '75' \
    --orderby 'waxxvpyb' \
    --sortby 'LL3khQ5d' \
    --subtype 'u8w0Aew5' \
    --tags '["891NWLn4", "WnBGcklt", "CvPmDoxs"]' \
    --type 'nn7PFiuw' \
    --userId '6lfymfHm' \
    > test.out 2>&1
eval_tap $? 51 'SearchChannelSpecificContent' test.out

#- 52 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'uALcx7zf' \
    --isofficial 'BsD8aIvD' \
    --limit '9' \
    --name 'Uh5XiX4h' \
    --offset '90' \
    --orderby '2dkeVYkw' \
    --sortby 'UVk2v2ZX' \
    --subtype 'F0qQzi16' \
    --tags '["UzUHWBB1", "YSGOQDoJ", "wqM8tVNN"]' \
    --type 'PsY9Y07Y' \
    --userId 'tTUi4B8G' \
    > test.out 2>&1
eval_tap $? 52 'PublicSearchContent' test.out

#- 53 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["EO4s7qlx", "HdNmZqii", "WKADTCQQ"]}' \
    > test.out 2>&1
eval_tap $? 53 'PublicGetContentBulk' test.out

#- 54 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 54 'GetFollowedContent' test.out

#- 55 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '27' \
    --name 'Ti8ut3Xc' \
    --offset '8' \
    --orderby 'SgSggePo' \
    --sortby 'ZcOBX1C6' \
    --subtype 'EaiN60ts' \
    --tags '["rmg4CrrA", "X2YK2fTU", "ufUVac56"]' \
    --type 'TTVfYvsw' \
    > test.out 2>&1
eval_tap $? 55 'GetLikedContent' test.out

#- 56 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'QDtut6gi' \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByShareCode' test.out

#- 57 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'T7141EAo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByContentID' test.out

#- 58 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'aZkHLfl9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AddDownloadCount' test.out

#- 59 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'N8W9QQXE' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateContentLikeStatus' test.out

#- 60 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'E3RWxQPf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentPreview' test.out

#- 61 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 61 'GetTag' test.out

#- 62 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 62 'GetType' test.out

#- 63 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '58' \
    --orderby 'ykhTPsPW' \
    --sortby '0cnv0rZj' \
    > test.out 2>&1
eval_tap $? 63 'PublicSearchCreator' test.out

#- 64 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 64 'GetFollowedUsers' test.out

#- 65 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'NEIxc4ST' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCreator' test.out

#- 66 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'TOkFQSyc' \
    --limit '73' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 66 'GetChannels' test.out

#- 67 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'uEghxwgF' \
    --body '{"name": "HRKWw5mq"}' \
    > test.out 2>&1
eval_tap $? 67 'CreateChannel' test.out

#- 68 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'GOsewfuK' \
    > test.out 2>&1
eval_tap $? 68 'DeleteAllUserChannel' test.out

#- 69 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'd0DSBcmq' \
    --namespace $AB_NAMESPACE \
    --userId 'FPE86H8F' \
    --body '{"name": "Aky8HoZL"}' \
    > test.out 2>&1
eval_tap $? 69 'UpdateChannel' test.out

#- 70 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'f6BsLXMy' \
    --namespace $AB_NAMESPACE \
    --userId 'CQFsZ3pD' \
    > test.out 2>&1
eval_tap $? 70 'DeleteChannel' test.out

#- 71 CreateContentDirect
eval_tap 0 71 'CreateContentDirect # SKIP deprecated' test.out

#- 72 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'IY7FpkVa' \
    --namespace $AB_NAMESPACE \
    --userId 'IdWQXeq7' \
    --body '{"contentType": "O9LEMcwO", "fileExtension": "UBQUk357", "name": "WkBbaGg6", "preview": "zy87WHsT", "previewMetadata": {"previewContentType": "1Z83yMtq", "previewFileExtension": "cG0gV61W"}, "subType": "2kGgEm8f", "tags": ["xx1Pu8ao", "GO0xykJW", "jnE4ylSI"], "type": "DEx9ITJp"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateContentS3' test.out

#- 73 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId '1gs8xgDv' \
    --contentId 'Ns9BesX1' \
    --namespace $AB_NAMESPACE \
    --userId 'hoa6rBQ9' \
    --body '{"contentType": "wvVmjeP4", "fileExtension": "54inm8OX", "name": "WLNAGuUV", "preview": "5BcLrnhh", "previewMetadata": {"previewContentType": "58FPpm6A", "previewFileExtension": "2B6drcgF"}, "subType": "01NqBZEL", "tags": ["Lf6bufU4", "nLCSObnb", "zAvMC4Wl"], "type": "tQdqjLJn"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateContentS3' test.out

#- 74 UpdateContentDirect
eval_tap 0 74 'UpdateContentDirect # SKIP deprecated' test.out

#- 75 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'liuHAFeR' \
    --contentId '3VvgiPPt' \
    --namespace $AB_NAMESPACE \
    --userId '8373OjTi' \
    > test.out 2>&1
eval_tap $? 75 'DeleteContent' test.out

#- 76 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'UcUA4Xnp' \
    --limit '89' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 76 'PublicGetUserContent' test.out

#- 77 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'ho1m4f2t' \
    > test.out 2>&1
eval_tap $? 77 'DeleteAllUserContents' test.out

#- 78 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'rsTrA14K' \
    --namespace $AB_NAMESPACE \
    --userId 'qQsQ5mjr' \
    --body '{"screenshots": [{"description": "0UZUUmGg", "screenshotId": "8zdcIk0X"}, {"description": "BXYaS2e3", "screenshotId": "J9OGxpHX"}, {"description": "sCTZrTT6", "screenshotId": "iQwNzQUU"}]}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateScreenshots' test.out

#- 79 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'y6GnfwEL' \
    --namespace $AB_NAMESPACE \
    --userId 'LlWU2ryc' \
    --body '{"screenshots": [{"contentType": "S9bAE8ps", "description": "tOvCzEnD", "fileExtension": "png"}, {"contentType": "RA7LvT05", "description": "IE1zii10", "fileExtension": "pjp"}, {"contentType": "bGu05Z95", "description": "zlOTJEfE", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UploadContentScreenshot' test.out

#- 80 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'HnjX38SN' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'wQAzzKut' \
    --userId 'OaHU8Gfs' \
    > test.out 2>&1
eval_tap $? 80 'DeleteContentScreenshot' test.out

#- 81 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'h1BwMBEZ' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateUserFollowStatus' test.out

#- 82 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'aPMSeCap' \
    --limit '64' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowers' test.out

#- 83 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'HeTg6t1A' \
    --limit '89' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowing' test.out

#- 84 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'SOCyXUlH' \
    --limit '60' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 84 'GetGroups' test.out

#- 85 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'uJVFIpXs' \
    --body '{"contents": ["DNi12C06", "x139EOTf", "F36u4O12"], "name": "aaUBo6sx"}' \
    > test.out 2>&1
eval_tap $? 85 'CreateGroup' test.out

#- 86 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '0VN8f1sP' \
    > test.out 2>&1
eval_tap $? 86 'DeleteAllUserGroup' test.out

#- 87 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'K2yc4Pdu' \
    --namespace $AB_NAMESPACE \
    --userId '069EYi0g' \
    > test.out 2>&1
eval_tap $? 87 'GetGroup' test.out

#- 88 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'dagww0Ev' \
    --namespace $AB_NAMESPACE \
    --userId 'kDOpBQqG' \
    --body '{"contents": ["N1xR9O9a", "CgZHfAli", "R93t84Jg"], "name": "Iky5kpMi"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateGroup' test.out

#- 89 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'cjn1wwu9' \
    --namespace $AB_NAMESPACE \
    --userId 'IvRCql6B' \
    > test.out 2>&1
eval_tap $? 89 'DeleteGroup' test.out

#- 90 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'agkc3sMq' \
    --namespace $AB_NAMESPACE \
    --userId 'DqLHu5rM' \
    --limit '9' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 90 'GetGroupContent' test.out

#- 91 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'V1V00b1F' \
    > test.out 2>&1
eval_tap $? 91 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE