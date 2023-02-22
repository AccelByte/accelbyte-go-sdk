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
    --limit '92' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "IeXOfXud"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'BBoF9SiG' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "gCNoFw2j"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'cKrKkHl5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'cAVZVOHv' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "O3L2OSwi", "customAttributes": {"CAlyMs95": {}, "CXMiqZzq": {}, "qcTM0JP6": {}}, "fileExtension": "MbQtsNDP", "name": "IseerRSY", "preview": "yy6fZU2d", "previewMetadata": {"previewContentType": "tnGiQaRr", "previewFileExtension": "F3cks9mH"}, "subType": "ugxXaBlp", "tags": ["Jjq0GpW8", "pxv7rPdL", "d8IXj5pq"], "type": "nR9JuR8i"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'icJo3f4k' \
    --contentId 'DvzMde1p' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "zIuFBNMr", "customAttributes": {"OxLAgX2Y": {}, "Sl7vpbrB": {}, "ODvS441Z": {}}, "fileExtension": "AR3V1A0q", "name": "s5xUJRmT", "payload": "7elW09iN", "preview": "sAJV0NoT", "previewMetadata": {"previewContentType": "mkWH08TR", "previewFileExtension": "mZJ3acvb"}, "subType": "aEVmlfAa", "tags": ["c9FSNlC7", "MP9ZFPFV", "nt0kGxlm"], "type": "9VEYM3LF", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'viiNkZpt' \
    --namespace $AB_NAMESPACE \
    --creator 'V1AowdIy' \
    --isofficial '4UbiD5ZH' \
    --limit '96' \
    --name 'J0O3Ch2P' \
    --offset '21' \
    --orderby 'zM1AMSeH' \
    --sortby 'K2EtyfQK' \
    --subtype 'xe6NfGNV' \
    --tags '["fmP2T4Y8", "0O8hQDtb", "NZYkXmtG"]' \
    --type 'vLMTdvUj' \
    --userId 'KNZJ9265' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '0pnzRnsJ' \
    --contentId 'GVs9Fy0g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["xZyrvL8N", "bnPmuLZA", "gvXXCrc3"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'M71n3Ncx' \
    --isofficial 'XK71Cnkn' \
    --limit '85' \
    --name 'tlzlwOaa' \
    --offset '13' \
    --orderby '3i4BvQy0' \
    --sortby 'L1FrJkP1' \
    --subtype 'd1BiQnSf' \
    --tags '["umztqVch", "VDqBpCYy", "m8nOuQ1O"]' \
    --type 'lrj8kOnn' \
    --userId '6QjdD6Tk' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '8tzbrr4v' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'ngcFn9Jy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'BW6LrLSf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'uxINLLqB' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "1kR2adSU", "screenshotId": "gsyKQwRK"}, {"description": "vvo81Nbr", "screenshotId": "lWNQr8OX"}, {"description": "DeE5j3mW", "screenshotId": "fvpAh2UC"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'lDfbmRva' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "XuoNmcej", "description": "eBXAniRY", "fileExtension": "jfif"}, {"contentType": "tZL2UfB5", "description": "xPuoIoqF", "fileExtension": "jpg"}, {"contentType": "KZOxpd0I", "description": "XfXnU0So", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'HODJ37q9' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'UiyCiqCf' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["YAe5yqO5", "qoq97gGw", "QVEyGaVm"], "name": "C5Ysuhu0"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'x3qvX6D1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'uT3DwqA4' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["nRTYXnag", "RBZGvIph", "O5ErQMqu"], "name": "KEIbdkWH"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'yDZLIU9P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'PjiEOnaN' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "xc9pkpCi"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'riBspUnM' \
    --body '{"tag": "oi7Lu349"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'pvwsdz7x' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["pSZgdXz0", "GMkGPOMk", "xSIxPGuU"], "type": "QgFlSsxn"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '2QzteiA3' \
    --body '{"subtype": ["4OPrdOA7", "woUGN0dh", "b5i1VktR"], "type": "8SsfHHIB"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'aZ6juSWJ' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'FPApri9f' \
    --limit '50' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'GgZjaqlv' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'aahNxJox' \
    --namespace $AB_NAMESPACE \
    --userId 've5ZoAfG' \
    --body '{"name": "6OEPRqt2"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'tjvPFAMw' \
    --namespace $AB_NAMESPACE \
    --userId '2LxABqq0' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'HQmA3HiB' \
    --contentId 'XOXrMBvo' \
    --namespace $AB_NAMESPACE \
    --userId 'ia0SQWCj' \
    --body '{"contentType": "Q1QPkIFd", "customAttributes": {"hHY2AhKZ": {}, "JHucpBK2": {}, "0leyEzyQ": {}}, "fileExtension": "fHX6UurU", "name": "f7ngwK8O", "payload": "fBdwMIIx", "preview": "7w9xpyCJ", "previewMetadata": {"previewContentType": "C38lVWFH", "previewFileExtension": "2Zf9M1sj"}, "subType": "sT9IiYsr", "tags": ["7zUwpXHf", "PDBnty1E", "i8EPBgvB"], "type": "t31CTdB6", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'jNXAM3tF' \
    --contentId 'AhWjJRWw' \
    --namespace $AB_NAMESPACE \
    --userId 'nhzsSb7P' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'E8cPw7wO' \
    --limit '19' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'g2LtykZi' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'nehQNuCC' \
    --namespace $AB_NAMESPACE \
    --userId 'AGcnJeP8' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'sLKbgjhn' \
    --limit '93' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'GmOkhNuI' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'HGS8BJis' \
    --namespace $AB_NAMESPACE \
    --userId 'KQcUzO1s' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'gql4GASd' \
    --namespace $AB_NAMESPACE \
    --userId 'VGHNhUJf' \
    --body '{"contents": ["Vdpjm5UT", "Ov7bfDb4", "QhBD6hBb"], "name": "NsuJqunc"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'l0Zdu0NW' \
    --namespace $AB_NAMESPACE \
    --userId 'ouno8Vco' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '0N7ui8ka' \
    --namespace $AB_NAMESPACE \
    --userId 'ZmpBPLoX' \
    --limit '62' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'f8bVwqvN' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'ICWCnW0e' \
    --namespace $AB_NAMESPACE \
    --creator 'Ijn0dxyT' \
    --isofficial 'c1oNu3rL' \
    --limit '0' \
    --name 'S8DpNehf' \
    --offset '38' \
    --orderby 'Qbf3qCOB' \
    --sortby '0I2nGQ1q' \
    --subtype 'hQDuYJBz' \
    --tags '["uTXKPuNT", "RD1AgswI", "LP22CYVs"]' \
    --type 'EtFBDMK7' \
    --userId 'KW8AZN8J' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'zDwwkQpg' \
    --isofficial 'zRpCzRf9' \
    --limit '63' \
    --name 'XdhYrTyg' \
    --offset '14' \
    --orderby 'TlKwCjG4' \
    --sortby 'sEGveSJS' \
    --subtype 'ndO4fmiW' \
    --tags '["AfZ85swW", "sPJmpwwI", "C9KW5o7j"]' \
    --type 'X2FgCj6C' \
    --userId '6Cs2mx43' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["mklLRevt", "ich9pygY", "8VUCswou"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '64' \
    --name 'HUIKlOCw' \
    --offset '27' \
    --orderby 'VYJBAcqR' \
    --sortby 'us00tdMh' \
    --subtype '0N2sWZcP' \
    --tags '["2m9fC6rU", "YJJ9clPF", "E7GJaRZI"]' \
    --type 'cR3jHlgQ' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '4tSYPD7M' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '8lcIs8uR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'zaZnvyt1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'Kv8yVSz9' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'jjMy3ztM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '2' \
    --orderby 'kkOYEqTl' \
    --sortby 't3jxP7yd' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'GnJaXqMo' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'aKOkPEaK' \
    --limit '24' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'y1BgDmor' \
    --body '{"name": "SZzspMHE"}' \
    > test.out 2>&1
eval_tap $? 68 'CreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '0Cw2uzSa' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'KTmaU8kH' \
    --namespace $AB_NAMESPACE \
    --userId 'b88faZBO' \
    --body '{"name": "jvvslT1s"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'xkDtActA' \
    --namespace $AB_NAMESPACE \
    --userId 'w3JQTGd7' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'GHWqOWuQ' \
    --namespace $AB_NAMESPACE \
    --userId 'GvxpCeQp' \
    --body '{"contentType": "gMkGjcYd", "customAttributes": {"uh7YN2Bs": {}, "4q1JZAWr": {}, "202hcfKY": {}}, "fileExtension": "uZ3roWHD", "name": "VrCS0MiE", "preview": "wiGjwC3P", "previewMetadata": {"previewContentType": "UoWZILLN", "previewFileExtension": "9rMYHSX7"}, "subType": "qDT75kCs", "tags": ["n2zU3jnD", "j3VxPp2b", "U7Wq0RzN"], "type": "56EQdKbP"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId '6kDG3fMl' \
    --contentId 'KsnJuJtI' \
    --namespace $AB_NAMESPACE \
    --userId 'Doy1zsPU' \
    --body '{"contentType": "608JEGOa", "customAttributes": {"MrR8gb2H": {}, "lTD52Bof": {}, "soqJmNxH": {}}, "fileExtension": "vbTVWccv", "name": "znKyaZQi", "payload": "L94qxv0O", "preview": "ZC0AYCrF", "previewMetadata": {"previewContentType": "aNXfmNN9", "previewFileExtension": "f0imjzOn"}, "subType": "EqdkrNDc", "tags": ["d8VifusJ", "TRw1JT7t", "2OYsTaIC"], "type": "rjYbP3VQ", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'laqebKEW' \
    --contentId 'yQOI0IC7' \
    --namespace $AB_NAMESPACE \
    --userId 'hHZD3TOk' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'YdrMmIWS' \
    --limit '78' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '4wa3swAk' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId '2s1TE499' \
    --namespace $AB_NAMESPACE \
    --userId 'K8bdDkVj' \
    --body '{"screenshots": [{"description": "JDPw6NXM", "screenshotId": "aIJP4D2l"}, {"description": "KZr0GDyA", "screenshotId": "SLekos9v"}, {"description": "v5R5kGbm", "screenshotId": "SZEajMZL"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'XwgdH1JL' \
    --namespace $AB_NAMESPACE \
    --userId 'y0d5aN0H' \
    --body '{"screenshots": [{"contentType": "8EzDYg3k", "description": "HTrb6feK", "fileExtension": "jpg"}, {"contentType": "ampiDvwm", "description": "L886bmWT", "fileExtension": "jfif"}, {"contentType": "VZcCL4rj", "description": "Ym84u4M5", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'v7G4tRka' \
    --namespace $AB_NAMESPACE \
    --screenshotId '3JtKRPEf' \
    --userId 'SA4DsAaa' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'Q8LxrJE9' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'iKLFKJbM' \
    --limit '53' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'mt9L3O8u' \
    --limit '26' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'XqWSlyEP' \
    --limit '39' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'DIUMSm95' \
    --body '{"contents": ["AK6bj6bm", "ZigNhS5v", "qZiNMUar"], "name": "pbCp6vWH"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'RiTlz74F' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'obV2rmDo' \
    --namespace $AB_NAMESPACE \
    --userId 'Q7uRYJgX' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'hSz9XwUj' \
    --namespace $AB_NAMESPACE \
    --userId 'O52rc0Ez' \
    --body '{"contents": ["83X1Gl94", "KUkPtubP", "PwGcDXVp"], "name": "vqzZNwrG"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'NlmQ5JAM' \
    --namespace $AB_NAMESPACE \
    --userId 'tEmhlQwy' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'WU60GZod' \
    --namespace $AB_NAMESPACE \
    --userId 'AICwkzUX' \
    --limit '73' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'Yd22NUUv' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE