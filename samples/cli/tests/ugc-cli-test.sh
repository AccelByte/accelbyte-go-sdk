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
echo "1..90"

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
    --namespace 'NhSfX7aC' \
    --limit '52' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --body '{"name": "x3uNDBZP"}' \
    --namespace 'PCoF0UZX' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --body '{"name": "wK29behd"}' \
    --channelId 'r3cInpsk' \
    --namespace 'Qj4jdzON' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'fh0R4Sbq' \
    --namespace 'LkbdgxoY' \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --body '{"contentType": "PUUBlRqQ", "fileExtension": "fLmpWxxc", "name": "bHbGoRe0", "preview": "CrrMxegr", "previewMetadata": {"previewContentType": "h6L8uurx", "previewFileExtension": "8CTeFDsj"}, "subType": "2mJg9KgR", "tags": ["it9TDjsZ", "0VfC1DRR", "Lejzjb34"], "type": "8HkdpOnX"}' \
    --channelId 'MRhgMd1Z' \
    --namespace 'wzX0X576' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --body '{"contentType": "1Q3O6xmS", "fileExtension": "tJRwog1x", "name": "hkvo4McM", "preview": "PfZMCiQE", "previewMetadata": {"previewContentType": "mGuNg1Kn", "previewFileExtension": "IOzilT44"}, "subType": "6sn9Y7EB", "tags": ["gKep6MaS", "amo5oTaI", "HvmyAKWy"], "type": "kGHWBrt5"}' \
    --channelId 'fx011azw' \
    --contentId 'RRxbcXxM' \
    --namespace 'bhw9OOgI' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'gFC75JG9' \
    --namespace 'OcrEq4mR' \
    --creator 'jIKxj6NO' \
    --isofficial 'Cky00Cyj' \
    --limit '22' \
    --name 'jpknO4q4' \
    --offset '4' \
    --orderby '7ea9oAdW' \
    --sortby 'LwDKPnFm' \
    --subtype '6L23wHzE' \
    --tags '["jFVvD6Mq", "SR53tiZ6", "ebDlFNpy"]' \
    --type 'XKLCd27S' \
    --userId 'ZGXDuLUB' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'HQwTWrUG' \
    --contentId 'uZQlHOCf' \
    --namespace 'iSu3hxZ3' \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace 'zKFNGwlX' \
    --limit '43' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace 'nPaBEb0h' \
    --creator 'Rit29f4U' \
    --isofficial 'KgyWXWuQ' \
    --limit '85' \
    --name 'gROcdGIO' \
    --offset '46' \
    --orderby 'AKpvlAhe' \
    --sortby 'uWEwB4qr' \
    --subtype 'nyyOSpeb' \
    --tags '["JBxFBWI7", "WEz4pkgp", "DCVws6PD"]' \
    --type 's6lS91fO' \
    --userId 'YndP0e8i' \
    > test.out 2>&1
eval_tap $? 13 'AdminSearchContent' test.out

#- 14 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'gqOzSsa4' \
    --namespace 'u3QfXFzX' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetSpecificContent' test.out

#- 15 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '5Hn5OzMs' \
    --namespace 'ZvwlltBr' \
    > test.out 2>&1
eval_tap $? 15 'AdminDownloadContentPreview' test.out

#- 16 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --body '{"screenshots": [{"description": "1RRXgPDt", "screenshotId": "KmcHtQSh"}, {"description": "Tplk5XFI", "screenshotId": "5CM19xiy"}, {"description": "yKIsBBdS", "screenshotId": "lIN2SbPf"}]}' \
    --contentId 'aSwxUZNT' \
    --namespace '8GJJIlpy' \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateScreenshots' test.out

#- 17 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --body '{"screenshots": [{"contentType": "YZkSTY5e", "description": "S49cDupX", "fileExtension": "png"}, {"contentType": "GJ8aH0Lw", "description": "Xik5ASzu", "fileExtension": "bmp"}, {"contentType": "thARR7UV", "description": "e4R63nuc", "fileExtension": "jpeg"}]}' \
    --contentId 'L4yRRxyX' \
    --namespace 'kNJFwB8o' \
    > test.out 2>&1
eval_tap $? 17 'AdminUploadContentScreenshot' test.out

#- 18 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'dJfPcpse' \
    --namespace 'a8g9FIV2' \
    --screenshotId '5FNOH04h' \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteContentScreenshot' test.out

#- 19 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace 'oV1sklTh' \
    --limit '82' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 19 'SingleAdminGetAllGroups' test.out

#- 20 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --body '{"contents": ["962Dbs97", "jNQeTmrs", "tZWRd931"], "name": "VyuWF0Mc"}' \
    --namespace 'UcCHBDek' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateGroup' test.out

#- 21 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'i4sN86y3' \
    --namespace '58RA0fMA' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetGroup' test.out

#- 22 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --body '{"contents": ["v51Rxq9f", "YAaQ2kLt", "gKT6BEqX"], "name": "2sDpfsrP"}' \
    --groupId 'bWB81COq' \
    --namespace 'G6KL1804' \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminUpdateGroup' test.out

#- 23 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'ubzJc159' \
    --namespace 'z4kZ93s6' \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminDeleteGroup' test.out

#- 24 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '4L9U9HMG' \
    --namespace 'RsLiAPLr' \
    --limit '54' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetGroupContents' test.out

#- 25 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace 'moDvNqMD' \
    --limit '91' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 25 'AdminGetTag' test.out

#- 26 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --body '{"tag": "nHMrMGjU"}' \
    --namespace 'GgNFHDyk' \
    > test.out 2>&1
eval_tap $? 26 'AdminCreateTag' test.out

#- 27 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --body '{"tag": "BjsOHZZc"}' \
    --namespace 'kV7uttmQ' \
    --tagId '7UDOynW0' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateTag' test.out

#- 28 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace 'nD3pNCq2' \
    --tagId 'nQfdLJob' \
    > test.out 2>&1
eval_tap $? 28 'AdminDeleteTag' test.out

#- 29 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace '2J6err1D' \
    --limit '73' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 29 'AdminGetType' test.out

#- 30 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --body '{"subtype": ["piONUHMh", "SWtQCCM7", "C1MQG6rm"], "type": "arAaQeAX"}' \
    --namespace 'fnoiojt7' \
    > test.out 2>&1
eval_tap $? 30 'AdminCreateType' test.out

#- 31 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --body '{"subtype": ["Ln3CsxZJ", "mkmcvmcC", "hDVVsKuY"], "type": "4r5ZAGHa"}' \
    --namespace 'zX2WxPmf' \
    --typeId 'gCMOC6sv' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateType' test.out

#- 32 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace 'gWzamNN2' \
    --typeId 'EpgTzI7u' \
    > test.out 2>&1
eval_tap $? 32 'AdminDeleteType' test.out

#- 33 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace 'cSEMAdOB' \
    --userId 'LFcGLFSX' \
    --limit '75' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 33 'AdminGetChannel' test.out

#- 34 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace 'HZy5edSm' \
    --userId '7SQAVFBS' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAllUserChannels' test.out

#- 35 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --body '{"name": "wvkjEIk8"}' \
    --channelId 'Ratx36Ti' \
    --namespace 'Ak6bW7uC' \
    --userId 'oR0Cd1w8' \
    > test.out 2>&1
eval_tap $? 35 'AdminUpdateChannel' test.out

#- 36 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'k5AktR3r' \
    --namespace 'IAF07E1Z' \
    --userId 'PrcqE2er' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteChannel' test.out

#- 37 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --body '{"contentType": "QJPffowT", "fileExtension": "KAV6CxUD", "name": "jgfvdO6S", "preview": "4MurM0Jc", "previewMetadata": {"previewContentType": "fRbJxM6U", "previewFileExtension": "VnyzezQX"}, "subType": "nSbawQlx", "tags": ["VzA0Ef6K", "Ht5q0sSF", "JZ99FEKT"], "type": "6hj0Dz3H"}' \
    --channelId '5f3z0XKE' \
    --contentId 'BJIyHFDe' \
    --namespace 'jLRoFyKB' \
    --userId 'AaxiE2MH' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateContentS3' test.out

#- 38 AdminUpdateContentDirect
eval_tap 0 38 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 39 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'Mi9T7Hhw' \
    --contentId 'm24jhwfH' \
    --namespace 'VAwPqYqy' \
    --userId 'lYwpzDxB' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteContent' test.out

#- 40 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace 'tYp9ghKJ' \
    --userId 'j3GVtddj' \
    --limit '0' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 40 'AdminGetContent' test.out

#- 41 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace 'Sl3L4xq3' \
    --userId 'qWtcnujp' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteAllUserContents' test.out

#- 42 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --body '{"isHidden": true}' \
    --contentId '73ULJBff' \
    --namespace 'LF8p3uw3' \
    --userId 'gXXziwSM' \
    > test.out 2>&1
eval_tap $? 42 'AdminHideUserContent' test.out

#- 43 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace 'TOCmxgdu' \
    --userId 'YCzgJd6W' \
    --limit '28' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetAllGroups' test.out

#- 44 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace 'W4IYm7YS' \
    --userId 'fV5ErVDc' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteAllUserGroup' test.out

#- 45 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'EP10A6cG' \
    --namespace 'tWmi9eIn' \
    --userId 'EbwIMKAQ' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetGroup' test.out

#- 46 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --body '{"contents": ["1WEbXc2N", "JDV0pCOu", "PqJBv3Gp"], "name": "VQCjzCgF"}' \
    --groupId '0mb1o4ks' \
    --namespace 'lHzy7mI0' \
    --userId 'qq9EvZn3' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateGroup' test.out

#- 47 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'Qsu1W5jH' \
    --namespace 'QgAYYSY4' \
    --userId 'OchceODI' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeleteGroup' test.out

#- 48 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '02Ofy8Fx' \
    --namespace 'Jk1WurQj' \
    --userId 'ynN78qEf' \
    --limit '72' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetGroupContents' test.out

#- 49 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace 'fLZZOS9W' \
    --userId 'yRdzIjX5' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteAllUserStates' test.out

#- 50 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '4MUCIts0' \
    --namespace 'R9dEEorp' \
    --creator 'osr7V8RH' \
    --isofficial 'RzDkZilt' \
    --limit '45' \
    --name 'q7KQHpl8' \
    --offset '56' \
    --orderby 'kQcyYTPa' \
    --sortby '5TqnsNI0' \
    --subtype 'i5sCFPoj' \
    --tags '["5yd7Nm6d", "S6JrETSu", "RRCUJrKt"]' \
    --type 'UOPAs8gY' \
    --userId 'kg27b5cG' \
    > test.out 2>&1
eval_tap $? 50 'SearchChannelSpecificContent' test.out

#- 51 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace 'pX76NIxy' \
    --creator 'O4Flpbo8' \
    --isofficial 'il9rF85O' \
    --limit '79' \
    --name 'iCAmcEmk' \
    --offset '55' \
    --orderby 'NjRqOE1g' \
    --sortby 'SIGbpY48' \
    --subtype 'GH3sLdPm' \
    --tags '["pZ2pJ3RT", "hSromMGC", "YHjrxuyK"]' \
    --type 'Fzj2js8q' \
    --userId 'e1Y0IFJO' \
    > test.out 2>&1
eval_tap $? 51 'PublicSearchContent' test.out

#- 52 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --body '{"contentIds": ["B3A6DRU6", "1gvgFiV4", "GB6TrQmy"]}' \
    --namespace 'MWjnFVvl' \
    > test.out 2>&1
eval_tap $? 52 'PublicGetContentBulk' test.out

#- 53 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace 'r2hfv87H' \
    --limit '82' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 53 'GetFollowedContent' test.out

#- 54 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace 'oGypjnxr' \
    --isofficial 'true' \
    --limit '69' \
    --name 't3eZb2FD' \
    --offset '84' \
    --orderby 'KnxipIdi' \
    --sortby 'eBMVmGho' \
    --subtype '70QK24oD' \
    --tags '["zazAWxoV", "9YXW7iAW", "A3ODDpoZ"]' \
    --type 'moqTmBcX' \
    > test.out 2>&1
eval_tap $? 54 'GetLikedContent' test.out

#- 55 DownloadContentByShareCode
samples/cli/sample-apps Ugc downloadContentByShareCode \
    --namespace 'XRHn5Pti' \
    --shareCode '68icJZ2a' \
    > test.out 2>&1
eval_tap $? 55 'DownloadContentByShareCode' test.out

#- 56 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'gVuscuKj' \
    --namespace 'ExAl8PLR' \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByContentID' test.out

#- 57 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'O0Yelxc4' \
    --namespace '5CGrkpo1' \
    > test.out 2>&1
eval_tap $? 57 'AddDownloadCount' test.out

#- 58 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --body '{"likeStatus": true}' \
    --contentId 'ZNyx41Vp' \
    --namespace 'ZvR9x3q0' \
    > test.out 2>&1
eval_tap $? 58 'UpdateContentLikeStatus' test.out

#- 59 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'JeHt1y6Z' \
    --namespace 'L2EpRYyf' \
    > test.out 2>&1
eval_tap $? 59 'PublicDownloadContentPreview' test.out

#- 60 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace 'l7T17KAO' \
    --limit '20' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 60 'GetTag' test.out

#- 61 GetType
samples/cli/sample-apps Ugc getType \
    --namespace 'SgBTkHC8' \
    --limit '30' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 61 'GetType' test.out

#- 62 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace 'dICBKEeB' \
    --limit '18' \
    --offset '27' \
    --orderby 'srv7Trt3' \
    --sortby 'ku1nEJi7' \
    > test.out 2>&1
eval_tap $? 62 'PublicSearchCreator' test.out

#- 63 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace 'mgJlpwT4' \
    --limit '87' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 63 'GetFollowedUsers' test.out

#- 64 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace '85squQWI' \
    --userId 'JSXAM7MH' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetCreator' test.out

#- 65 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace 'ScpfB1qE' \
    --userId 'lwQUcyUW' \
    --limit '100' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 65 'GetChannels' test.out

#- 66 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --body '{"name": "fWfUlzRt"}' \
    --namespace 'dhDJT2hr' \
    --userId 'wFhXKOJj' \
    > test.out 2>&1
eval_tap $? 66 'CreateChannel' test.out

#- 67 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace 'TQOZMUBw' \
    --userId 'uSnt4wdF' \
    > test.out 2>&1
eval_tap $? 67 'DeleteAllUserChannel' test.out

#- 68 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --body '{"name": "SjZlUfdC"}' \
    --channelId 'RVQlcNWo' \
    --namespace 'eJTZcDvf' \
    --userId 'asNCTwX9' \
    > test.out 2>&1
eval_tap $? 68 'UpdateChannel' test.out

#- 69 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'lne2XEvC' \
    --namespace 'HitE56hA' \
    --userId '5r5RxlSt' \
    > test.out 2>&1
eval_tap $? 69 'DeleteChannel' test.out

#- 70 CreateContentDirect
eval_tap 0 70 'CreateContentDirect # SKIP deprecated' test.out

#- 71 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --body '{"contentType": "tlzqbuSi", "fileExtension": "8OCtxssm", "name": "aR8mp9R0", "preview": "Ium4oiSn", "previewMetadata": {"previewContentType": "vh6zjUoX", "previewFileExtension": "d5xTW6RD"}, "subType": "1cMYwCC3", "tags": ["QIrcpe62", "uJCrNdym", "t1cm4lbL"], "type": "oI7fHJer"}' \
    --channelId 'JVaHtqKC' \
    --namespace 'Zm2PBlvI' \
    --userId 'Ed07BMqc' \
    > test.out 2>&1
eval_tap $? 71 'CreateContentS3' test.out

#- 72 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --body '{"contentType": "zT6QSa5t", "fileExtension": "Kt8WUSKh", "name": "pfs2mNeN", "preview": "xcuxA6Go", "previewMetadata": {"previewContentType": "Q9xCGkHb", "previewFileExtension": "tTFBIcOK"}, "subType": "2uzPDpSz", "tags": ["KK4iqDPD", "OabGlKVN", "uUFoANyn"], "type": "fGo79wA0"}' \
    --channelId 'jEDmdm9X' \
    --contentId 'Rrhm6moS' \
    --namespace 'hWKbage0' \
    --userId 'gtRruLop' \
    > test.out 2>&1
eval_tap $? 72 'UpdateContentS3' test.out

#- 73 UpdateContentDirect
eval_tap 0 73 'UpdateContentDirect # SKIP deprecated' test.out

#- 74 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'GKk2ZJG4' \
    --contentId 'lludpBiH' \
    --namespace 'kS7UjxOh' \
    --userId 'nwtgfqnv' \
    > test.out 2>&1
eval_tap $? 74 'DeleteContent' test.out

#- 75 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace 'sLe0pyDZ' \
    --userId 'GXazj6nf' \
    --limit '24' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 75 'PublicGetUserContent' test.out

#- 76 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace 'LLqpYmNI' \
    --userId 'K91SeybT' \
    > test.out 2>&1
eval_tap $? 76 'DeleteAllUserContents' test.out

#- 77 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --body '{"screenshots": [{"description": "BWPqSajv", "screenshotId": "ITaFSSSB"}, {"description": "lqRntgvS", "screenshotId": "TqL00un1"}, {"description": "SKNeEmfc", "screenshotId": "ol4IHVX8"}]}' \
    --contentId 'rUgIgAsj' \
    --namespace 'IJIeEboa' \
    --userId '2MiLQHZh' \
    > test.out 2>&1
eval_tap $? 77 'UpdateScreenshots' test.out

#- 78 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --body '{"screenshots": [{"contentType": "yRbgfIV0", "description": "0bwocgt5", "fileExtension": "jfif"}, {"contentType": "IJumjBey", "description": "qfjRaIMa", "fileExtension": "bmp"}, {"contentType": "KwI2orKT", "description": "J5duU2RZ", "fileExtension": "jpeg"}]}' \
    --contentId 'o0qmuOlK' \
    --namespace '0xxOTazO' \
    --userId 'lDZcgLlB' \
    > test.out 2>&1
eval_tap $? 78 'UploadContentScreenshot' test.out

#- 79 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'olPz1lTx' \
    --namespace '2VpoLown' \
    --screenshotId 'cgg0diId' \
    --userId 'THcqsX4u' \
    > test.out 2>&1
eval_tap $? 79 'DeleteContentScreenshot' test.out

#- 80 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --body '{"followStatus": false}' \
    --namespace 'dLc1x3Ir' \
    --userId 'bpZPj1pY' \
    > test.out 2>&1
eval_tap $? 80 'UpdateUserFollowStatus' test.out

#- 81 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace 'rWAOCAQK' \
    --userId 'tLnQZgTz' \
    --limit '86' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 81 'GetPublicFollowers' test.out

#- 82 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace 'Nz1zdgGI' \
    --userId 's1QlSUGz' \
    --limit '68' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowing' test.out

#- 83 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace 'eH2H5J69' \
    --userId '8ljhTF3N' \
    --limit '79' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 83 'GetGroups' test.out

#- 84 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --body '{"contents": ["YG2ywgwY", "6yXWG3oq", "KeaKbf2g"], "name": "HEsA8FI4"}' \
    --namespace '5JuZfbr2' \
    --userId 'ZRUOQIyo' \
    > test.out 2>&1
eval_tap $? 84 'CreateGroup' test.out

#- 85 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace 'APr0MgRG' \
    --userId 'jybIzdDJ' \
    > test.out 2>&1
eval_tap $? 85 'DeleteAllUserGroup' test.out

#- 86 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '67U0BmHJ' \
    --namespace 'r6XalLzY' \
    --userId 'PnYxJV6x' \
    > test.out 2>&1
eval_tap $? 86 'GetGroup' test.out

#- 87 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --body '{"contents": ["jEMQQFhv", "Z5eXuVfc", "AqCy9b5S"], "name": "DBQb0Be1"}' \
    --groupId 'FD5znxKy' \
    --namespace 'y5kyyeBZ' \
    --userId 'W5OQkeXU' \
    > test.out 2>&1
eval_tap $? 87 'UpdateGroup' test.out

#- 88 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'R0bulnEz' \
    --namespace 'rFNw7BKs' \
    --userId 'vv1UC5tr' \
    > test.out 2>&1
eval_tap $? 88 'DeleteGroup' test.out

#- 89 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'RdwC0daL' \
    --namespace '8jZ3KpWu' \
    --userId 'krZWrep0' \
    --limit '78' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 89 'GetGroupContent' test.out

#- 90 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace 'wzyfxLR2' \
    --userId 'm9a9PvnF' \
    > test.out 2>&1
eval_tap $? 90 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE