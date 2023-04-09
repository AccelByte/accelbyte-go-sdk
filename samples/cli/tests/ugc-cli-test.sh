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
echo "1..92"

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
    --limit '52' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "TOzD1d16", "name": "Ua9cG8iw"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'F3sewiwT' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "XAFJ9f4L"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'So9ruIeY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'z79zSapJ' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "CfqjUfz7", "customAttributes": {"1tFZPRl0": {}, "D6ZYjcDu": {}, "mcmQPfJj": {}}, "fileExtension": "pmCcJNaz", "name": "mq44Pj7M", "preview": "YsAblum3", "previewMetadata": {"previewContentType": "MitgRE61", "previewFileExtension": "xbWSYkDP"}, "shareCode": "pLQOCj8K", "subType": "kSdcBGW2", "tags": ["jZ1krjTV", "LUwdlNRn", "LsdO6wtw"], "type": "Y1qvYvA0"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'jQkuc5MA' \
    --contentId 'RVYjCl2d' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "ZO5m4T22", "customAttributes": {"wWPTiHLU": {}, "ifN9WUC2": {}, "VglvRqqr": {}}, "fileExtension": "O4lWpypH", "name": "1D7xjyV2", "payload": "x3puvx2h", "preview": "0OAdR4yy", "previewMetadata": {"previewContentType": "YXBLgygm", "previewFileExtension": "7GqY5SGK"}, "subType": "bqCNYoGC", "tags": ["sIzO4tKW", "aXR0OBwu", "ihFmLdig"], "type": "kCrXa6em", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'l6KsMaZI' \
    --namespace $AB_NAMESPACE \
    --creator 'vE1sYMUf' \
    --isofficial 'zcIjt5Gz' \
    --limit '41' \
    --name 'iPLSuMKf' \
    --offset '99' \
    --orderby 'P6cjppLl' \
    --sortby 'DkBxBSrl' \
    --subtype 'yoaRTzRu' \
    --tags '["PSpw4kXB", "bLBpxpkF", "gHpDVDPn"]' \
    --type 'XnVhas1K' \
    --userId '0GFbu8vm' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'tZruZ3QQ' \
    --contentId 'wUnBM7R7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ITZrefgv", "jxy2ak52", "uoG6oTtX"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '9CUH1nqm' \
    --isofficial '1p3CKhqj' \
    --limit '11' \
    --name 'sTMC3bk2' \
    --offset '30' \
    --orderby '3L9soS6z' \
    --sortby 'd8ywGqkj' \
    --subtype 'VmR5zCyV' \
    --tags '["0lDC7XPx", "Uwxn0t1J", "prE9gM11"]' \
    --type 'FJCEqzQy' \
    --userId 'lWPJiHVy' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'HCtp9BmE' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'mrnLnnmt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'VLng4Ioo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'O2Mo2YNo' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "sMdTddMa", "screenshotId": "DSPGh2eG"}, {"description": "k7PW4tDi", "screenshotId": "92aYNNJK"}, {"description": "5rpiDkAx", "screenshotId": "sn7mtQTA"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'yEI7m4hJ' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "uCNqJAVR", "description": "1mbeKzTY", "fileExtension": "pjp"}, {"contentType": "VuEMFUTs", "description": "dkNYs71g", "fileExtension": "png"}, {"contentType": "byDfxTzb", "description": "yVAjmBUv", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'GlVl20hN' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'rWucY9ck' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Jb99kNtZ", "P4QyHMTf", "vSQ9m440"], "name": "f2CfiAse"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '5vXABeEL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'YLBDghwg' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["AH641OdM", "RUJWVrid", "OvonEZrH"], "name": "2SybGOxB"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'scv4V7pX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '29NAlMd4' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "9S8IU7F2"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'DuACscYL' \
    --body '{"tag": "EibyPShe"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'n0mq6Law' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["vdY2iGX7", "Bok3Nen1", "yUAKnTPd"], "type": "CE6oQQnZ"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'Eg3sH6FJ' \
    --body '{"subtype": ["VnQKDhAG", "2csFtyCv", "CykBpRka"], "type": "5rViu20J"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'Hjd2Lhox' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'HyjR0d1X' \
    --limit '50' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'EdX6t2Nq' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'fIfe5FUL' \
    --namespace $AB_NAMESPACE \
    --userId 'o37Cm6T3' \
    --body '{"name": "0OvpUb8Z"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'BU0eF4GL' \
    --namespace $AB_NAMESPACE \
    --userId 'txLjnHnH' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId '1GhQsR8L' \
    --contentId 'jvBv6V0S' \
    --namespace $AB_NAMESPACE \
    --userId 'Xp197D4d' \
    --body '{"contentType": "Ezc0xGad", "customAttributes": {"WfAZfG2q": {}, "edIYO8Pg": {}, "MAyY7m02": {}}, "fileExtension": "HVyWoXtM", "name": "GNArA22R", "payload": "v7ZNrqKY", "preview": "oeQj3EeX", "previewMetadata": {"previewContentType": "19bFgzc8", "previewFileExtension": "udlhVrUw"}, "subType": "CcCpnrtW", "tags": ["iupN2ZLT", "lc9oqmPE", "tJvngKSR"], "type": "4pjsHjyx", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'jHG4aDXA' \
    --contentId 'zuYH0i3g' \
    --namespace $AB_NAMESPACE \
    --userId '8d2Qtuxm' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'Mc5I91g0' \
    --limit '46' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'R6aOgT4a' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'duILI1Sl' \
    --namespace $AB_NAMESPACE \
    --userId '6QCntgS0' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'ySE0oA8c' \
    --limit '91' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'ELlGxN9y' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'WCUM32yF' \
    --namespace $AB_NAMESPACE \
    --userId 'HODNzHjC' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 't0Cv76dO' \
    --namespace $AB_NAMESPACE \
    --userId 'L1KmU3Kz' \
    --body '{"contents": ["YIaD7OMb", "ImvaRzZw", "a1Kg0wEP"], "name": "pP1BHq8x"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'keRGz2RJ' \
    --namespace $AB_NAMESPACE \
    --userId '00zBtCMz' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'ItHHPAEs' \
    --namespace $AB_NAMESPACE \
    --userId 'z7nvjrEQ' \
    --limit '69' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '0hZO7qYf' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'yy68aBLC' \
    --namespace $AB_NAMESPACE \
    --creator 'MjLj3iyq' \
    --isofficial 'I7cqpOfA' \
    --limit '82' \
    --name 'lQN6Nsy4' \
    --offset '92' \
    --orderby 'vV183Ovr' \
    --sortby 'FCJac6og' \
    --subtype 'CqfhVlDQ' \
    --tags '["ghr1bdEm", "ZHhtrs0l", "6cehM9kA"]' \
    --type 'CFWYlUwe' \
    --userId '4dfCmmPL' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'G8w4n3Ul' \
    --isofficial 'a6nQBXmj' \
    --limit '1' \
    --name 'czEYmQ2j' \
    --offset '92' \
    --orderby 'pb1CrCPN' \
    --sortby 'FJBm2bhV' \
    --subtype 'oAR1UdRJ' \
    --tags '["G848bOKg", "yYQaiJsA", "O1g1rgyk"]' \
    --type 'ix2cTuZC' \
    --userId 'JKijKWra' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Z0d02tBQ", "dlIDsuJB", "WZgyfNVd"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '56' \
    --name 'NHv0kFpm' \
    --offset '79' \
    --orderby 'QOoIlILz' \
    --sortby '89NCfJST' \
    --subtype '0PPhmLL0' \
    --tags '["LFD8OiXs", "m6X4rJjq", "WXB5SGhR"]' \
    --type 'qyropk8H' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'Nu2YFCjN' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'pEdJGrZ6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'nndbSrkJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'WEt4PHQb' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'iGCktXBo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '88' \
    --orderby 'zrMlR6Uu' \
    --sortby 'g7n7pLDs' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'ML10v10z' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'TuDLaQIs' \
    --limit '97' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'gOt66deJ' \
    --body '{"name": "dT5zKEIe"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'huhGyu7T' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'cQsOWQQ4' \
    --namespace $AB_NAMESPACE \
    --userId '1EiB6DTI' \
    --body '{"name": "Ujo0z0nZ"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'PzdByead' \
    --namespace $AB_NAMESPACE \
    --userId 'y20NMl1l' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'Rg7atdA7' \
    --namespace $AB_NAMESPACE \
    --userId 'gOp1EikF' \
    --body '{"contentType": "4L6qHWaS", "customAttributes": {"ssWyLuv5": {}, "OdkkCzPi": {}, "2a3GKZQd": {}}, "fileExtension": "2hHlgP3P", "name": "c7CDWXNi", "preview": "KR7k4byn", "previewMetadata": {"previewContentType": "u0gddVWd", "previewFileExtension": "0fo0834s"}, "subType": "l6oROS7P", "tags": ["KVZ5hBcl", "z4nDuFoZ", "H1AYe5yx"], "type": "RSlhNBCp"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'gWIWtxYt' \
    --contentId 'kXrFyJKK' \
    --namespace $AB_NAMESPACE \
    --userId 'raMlqB05' \
    --body '{"contentType": "HiUb5aYn", "customAttributes": {"qeLeIyXC": {}, "GDGNfJM2": {}, "sOXg83xP": {}}, "fileExtension": "Nfdxy9sl", "name": "GuzrhCVc", "payload": "pYp6gC5g", "preview": "11qkAHqf", "previewMetadata": {"previewContentType": "5rAXJDpF", "previewFileExtension": "mMH0wvZh"}, "subType": "FlVADJV5", "tags": ["c5RjYTUv", "1ICgjLDz", "pWVbcASf"], "type": "4K0NJtYy", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'QTPCCPZ3' \
    --contentId 'srlCpIQG' \
    --namespace $AB_NAMESPACE \
    --userId 'qLRMxLfC' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'AzKYSSQl' \
    --limit '91' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'brfzl0EK' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'gGLCylHM' \
    --namespace $AB_NAMESPACE \
    --userId 'A6mZA9pL' \
    --body '{"screenshots": [{"description": "tJLQIFDR", "screenshotId": "euZmzFEh"}, {"description": "Fp6VPqFH", "screenshotId": "Nwwgqbbm"}, {"description": "pB48cftH", "screenshotId": "CI5qbd22"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'WyEH09Bv' \
    --namespace $AB_NAMESPACE \
    --userId 'YcAmdV1o' \
    --body '{"screenshots": [{"contentType": "JZEoX8VS", "description": "fjwQaAtp", "fileExtension": "jpeg"}, {"contentType": "irsfAYoj", "description": "czBio0Kf", "fileExtension": "pjp"}, {"contentType": "gc02kKev", "description": "VVw5vVp1", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId '0sosYtx5' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'wjshBuhf' \
    --userId 'xBVO4IYS' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'dZiUkPBN' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'zHLDWAy0' \
    --limit '47' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'DIohdzYK' \
    --limit '6' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'UigGyW6J' \
    --limit '91' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'ak3CkWx8' \
    --body '{"contents": ["C9bPlWs6", "iph20pkZ", "4IdX2FBN"], "name": "GG1yarRU"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'sa4hozQa' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '7aUyn2W9' \
    --namespace $AB_NAMESPACE \
    --userId 'N4WcsaNy' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'jtaTMoma' \
    --namespace $AB_NAMESPACE \
    --userId 'cscCcH4c' \
    --body '{"contents": ["X7HrSvyb", "acaleH0E", "ku3b0JxZ"], "name": "pRjwdWD7"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'nW2r35ka' \
    --namespace $AB_NAMESPACE \
    --userId 'QbmFOI9r' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'P5fZua7q' \
    --namespace $AB_NAMESPACE \
    --userId 'lww8TDtv' \
    --limit '92' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'nsnurSCT' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE