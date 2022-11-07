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
    --limit '99' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Xn2wKFiJ"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'tESYpnx6' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "XjofX6Eg"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'ytTh3BeE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'QNXzVWVz' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "LjhvGkG0", "fileExtension": "IcIACyza", "name": "qmOEuLDO", "preview": "1jkHbO4u", "previewMetadata": {"previewContentType": "QOAe8eWh", "previewFileExtension": "fYV6FqLL"}, "subType": "fBHwQO9W", "tags": ["XMIu1jXA", "XoxKp6mz", "iQnkTcKW"], "type": "1PbiUsrh"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'EngoGa7a' \
    --contentId 'UM8IaWiz' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "jUDBCOUF", "fileExtension": "8ykgt8fV", "name": "fnWtyxPH", "preview": "Layd9vro", "previewMetadata": {"previewContentType": "mSzLirab", "previewFileExtension": "yfL9gfeu"}, "subType": "QxaNUmTK", "tags": ["LjQ6CDUL", "zY0o8yru", "XFVMy1AJ"], "type": "pdtWbQnR"}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'kknU60ED' \
    --namespace $AB_NAMESPACE \
    --creator 'wDQ6bLtR' \
    --isofficial 'PAlF6X4J' \
    --limit '65' \
    --name 'v1upGANn' \
    --offset '48' \
    --orderby 'uw0QtCuq' \
    --sortby 'SV1MwekX' \
    --subtype 'hu3LXUMX' \
    --tags '["3qTpipeI", "fCLfarhW", "g2Q4p8pv"]' \
    --type '78u5uWxG' \
    --userId 'paEHQtcR' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'ZpfZceNW' \
    --contentId 'LvEDV9Bq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'tznyI0pE' \
    --isofficial 'GgutxJPH' \
    --limit '34' \
    --name 'pN9rwHEK' \
    --offset '31' \
    --orderby 'KdXbRoWQ' \
    --sortby 'ZmmNZx5B' \
    --subtype '6SufMpPS' \
    --tags '["VM7MfJpK", "zyUIBQ08", "CwTUWEB6"]' \
    --type 'DfiFNQL6' \
    --userId 'EfIVjTxl' \
    > test.out 2>&1
eval_tap $? 13 'AdminSearchContent' test.out

#- 14 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'Vyqixqxl' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserContentByShareCode' test.out

#- 15 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 't0PQ0gCZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetSpecificContent' test.out

#- 16 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'zIeXM37p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDownloadContentPreview' test.out

#- 17 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'Vfe5l85u' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "PCPMDCQO", "screenshotId": "szgOS0WH"}, {"description": "fnoaloU9", "screenshotId": "uYpY38Wn"}, {"description": "XYytTJJ7", "screenshotId": "QyGgyYak"}]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateScreenshots' test.out

#- 18 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'Jwr8w00x' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "UbP6iRQo", "description": "4Gm7hPQk", "fileExtension": "bmp"}, {"contentType": "LovSET3b", "description": "Muq5eTJY", "fileExtension": "bmp"}, {"contentType": "puWj4N2f", "description": "bsEYF0We", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUploadContentScreenshot' test.out

#- 19 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'RKO6Z89p' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'NLLMiPEQ' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteContentScreenshot' test.out

#- 20 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 20 'SingleAdminGetAllGroups' test.out

#- 21 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["gubxeW8B", "h9ISOzMK", "XxB85Qj1"], "name": "VXr5SILF"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateGroup' test.out

#- 22 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'AWZMpsqr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetGroup' test.out

#- 23 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'WF1KIBpY' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["ZtSYJvmb", "UHvHRsDv", "9Kk9OPr8"], "name": "bFhs0BiO"}' \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminUpdateGroup' test.out

#- 24 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'eOr3ZYVC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminDeleteGroup' test.out

#- 25 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '9qiKQxPt' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminGetGroupContents' test.out

#- 26 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 26 'AdminGetTag' test.out

#- 27 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "RVmI5lXe"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateTag' test.out

#- 28 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'ahgZKJNB' \
    --body '{"tag": "5hmm9YmM"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateTag' test.out

#- 29 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'NzBe22VG' \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteTag' test.out

#- 30 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetType' test.out

#- 31 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["WIisvhBu", "KX3iRun2", "eZglPv7T"], "type": "7eqG5jG1"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateType' test.out

#- 32 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'HoKD4aIt' \
    --body '{"subtype": ["eankXeMI", "AIx0XPGI", "gvjvETgi"], "type": "ScOiTHfX"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateType' test.out

#- 33 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'yuw4vK57' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteType' test.out

#- 34 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'xj61no8z' \
    --limit '98' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetChannel' test.out

#- 35 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'DGMIKbQB' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteAllUserChannels' test.out

#- 36 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'WB6t9gJc' \
    --namespace $AB_NAMESPACE \
    --userId 'Zpcsqmyv' \
    --body '{"name": "BvLaK8Rc"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateChannel' test.out

#- 37 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 's9jWCZyF' \
    --namespace $AB_NAMESPACE \
    --userId 'hAt19rBm' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteChannel' test.out

#- 38 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'HKKEp2Q6' \
    --contentId 'yoZ6LJam' \
    --namespace $AB_NAMESPACE \
    --userId 'richhqsz' \
    --body '{"contentType": "mq1W7UKe", "fileExtension": "UotrCHdw", "name": "DhC4Ds8v", "preview": "lh4Qly0M", "previewMetadata": {"previewContentType": "hQNpTowh", "previewFileExtension": "VUJ6kApa"}, "subType": "hKkHKPjq", "tags": ["6mFut6QQ", "RYt8OFCI", "EZ9TSSgW"], "type": "I3YPZpNc"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateContentS3' test.out

#- 39 AdminUpdateContentDirect
eval_tap 0 39 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 40 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '2M3d2nbN' \
    --contentId 'GUA0YSFY' \
    --namespace $AB_NAMESPACE \
    --userId 'KOfis3sT' \
    > test.out 2>&1
eval_tap $? 40 'AdminDeleteContent' test.out

#- 41 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'nO6poREa' \
    --limit '12' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetContent' test.out

#- 42 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'x5TlIT1B' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAllUserContents' test.out

#- 43 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'FtAl7Oil' \
    --namespace $AB_NAMESPACE \
    --userId 'RoGMpBx1' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminHideUserContent' test.out

#- 44 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'wTNSGCcf' \
    --limit '80' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetAllGroups' test.out

#- 45 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'eHiaCqx0' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteAllUserGroup' test.out

#- 46 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId '7UWfosHW' \
    --namespace $AB_NAMESPACE \
    --userId 'ual2sLRJ' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetGroup' test.out

#- 47 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'TxjBcQ08' \
    --namespace $AB_NAMESPACE \
    --userId 'w0sBdA9C' \
    --body '{"contents": ["XthiaETv", "5Z0OJxbA", "wV8UbTRN"], "name": "YR8Tiun9"}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateGroup' test.out

#- 48 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'ffOpJTwg' \
    --namespace $AB_NAMESPACE \
    --userId 'DKfJi8hk' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteGroup' test.out

#- 49 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'EFwGEcLb' \
    --namespace $AB_NAMESPACE \
    --userId 'fHsGq5Ug' \
    --limit '3' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetGroupContents' test.out

#- 50 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '1uBkqASX' \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteAllUserStates' test.out

#- 51 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'LmCRFPJt' \
    --namespace $AB_NAMESPACE \
    --creator 'Eoi6Wo4y' \
    --isofficial 'lFVo5RPL' \
    --limit '88' \
    --name '0t93cYbn' \
    --offset '58' \
    --orderby 'OG6NAjrl' \
    --sortby 'C1PfEJMl' \
    --subtype 'oiMe4tr8' \
    --tags '["bqCqxncy", "8G8yYkgN", "RLt1FPCB"]' \
    --type 'Hnca1SxS' \
    --userId 'fTtA6qLK' \
    > test.out 2>&1
eval_tap $? 51 'SearchChannelSpecificContent' test.out

#- 52 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'FpF0iQmN' \
    --isofficial 'P4Hh4xkW' \
    --limit '91' \
    --name 'rvGAiIes' \
    --offset '14' \
    --orderby 'PhFeLvAI' \
    --sortby 'K4qvE3eK' \
    --subtype 'xNoHUKxV' \
    --tags '["LIgNywJ1", "QrIMCeDq", "yedX9EIZ"]' \
    --type 'AFv0Pfd2' \
    --userId 'LxNUKXY2' \
    > test.out 2>&1
eval_tap $? 52 'PublicSearchContent' test.out

#- 53 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["I7a8RSon", "JGWvyCWv", "II0fzl37"]}' \
    > test.out 2>&1
eval_tap $? 53 'PublicGetContentBulk' test.out

#- 54 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 54 'GetFollowedContent' test.out

#- 55 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '60' \
    --name 'YbzO13id' \
    --offset '52' \
    --orderby 'CzBVyJbD' \
    --sortby '9Nu2ZVux' \
    --subtype 'gDyDNwXl' \
    --tags '["se9B6NIh", "yHvF37gt", "zmjsRWEh"]' \
    --type 'UEvH8tKs' \
    > test.out 2>&1
eval_tap $? 55 'GetLikedContent' test.out

#- 56 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'C8w4Jpqt' \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByShareCode' test.out

#- 57 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'Sm77ZJRo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByContentID' test.out

#- 58 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'd6vzlLrQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AddDownloadCount' test.out

#- 59 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'zVcJ8Bmc' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateContentLikeStatus' test.out

#- 60 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'dg5zqB6Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentPreview' test.out

#- 61 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 61 'GetTag' test.out

#- 62 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 62 'GetType' test.out

#- 63 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '65' \
    --orderby 'EctnyJAd' \
    --sortby 'ru2bbppR' \
    > test.out 2>&1
eval_tap $? 63 'PublicSearchCreator' test.out

#- 64 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 64 'GetFollowedUsers' test.out

#- 65 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'SGryrsxq' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCreator' test.out

#- 66 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'UwRPDZgV' \
    --limit '85' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 66 'GetChannels' test.out

#- 67 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'hSzE02fd' \
    --body '{"name": "zUueO4E5"}' \
    > test.out 2>&1
eval_tap $? 67 'CreateChannel' test.out

#- 68 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'pZVpKI4M' \
    > test.out 2>&1
eval_tap $? 68 'DeleteAllUserChannel' test.out

#- 69 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '0XJi2M0E' \
    --namespace $AB_NAMESPACE \
    --userId 'AcWKzxDD' \
    --body '{"name": "BjxEMS2U"}' \
    > test.out 2>&1
eval_tap $? 69 'UpdateChannel' test.out

#- 70 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId '3jN8tVFx' \
    --namespace $AB_NAMESPACE \
    --userId 'D9r6ttkg' \
    > test.out 2>&1
eval_tap $? 70 'DeleteChannel' test.out

#- 71 CreateContentDirect
eval_tap 0 71 'CreateContentDirect # SKIP deprecated' test.out

#- 72 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'jiP6SMlg' \
    --namespace $AB_NAMESPACE \
    --userId 'YBNcinEq' \
    --body '{"contentType": "b4lx5Ljz", "fileExtension": "UjGtAPV9", "name": "cqVTndwn", "preview": "Uetzw0eP", "previewMetadata": {"previewContentType": "F48EgkiU", "previewFileExtension": "4JVnw6u5"}, "subType": "i58b6wHN", "tags": ["WOwJf7gq", "TahOuk72", "0s2lhUVh"], "type": "aIAp23ES"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateContentS3' test.out

#- 73 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'pWPdJWZc' \
    --contentId '87Q5NZKn' \
    --namespace $AB_NAMESPACE \
    --userId '2UFFErUA' \
    --body '{"contentType": "U8kxhjMF", "fileExtension": "Pvg3mtNg", "name": "S3afbh9y", "preview": "aXexuTGU", "previewMetadata": {"previewContentType": "PPpzfka6", "previewFileExtension": "ck0cobha"}, "subType": "1lk7rUXM", "tags": ["6p5WQZz1", "5YR7eUNt", "wHJEKEsS"], "type": "0bPCG5FV"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateContentS3' test.out

#- 74 UpdateContentDirect
eval_tap 0 74 'UpdateContentDirect # SKIP deprecated' test.out

#- 75 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '0iD5v8LQ' \
    --contentId 'j9JISQdS' \
    --namespace $AB_NAMESPACE \
    --userId 'njg79p7T' \
    > test.out 2>&1
eval_tap $? 75 'DeleteContent' test.out

#- 76 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'CiRG4M0h' \
    --limit '41' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 76 'PublicGetUserContent' test.out

#- 77 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'mAlp5a3H' \
    > test.out 2>&1
eval_tap $? 77 'DeleteAllUserContents' test.out

#- 78 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId '3CSU0kEo' \
    --namespace $AB_NAMESPACE \
    --userId 'GHJ1loHK' \
    --body '{"screenshots": [{"description": "O5hLvJyb", "screenshotId": "ed70GdVj"}, {"description": "B54rXdxe", "screenshotId": "5ILjoYXH"}, {"description": "vuzGR3Sk", "screenshotId": "7HDWtbU9"}]}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateScreenshots' test.out

#- 79 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'xoJbNQ4K' \
    --namespace $AB_NAMESPACE \
    --userId 'WGmVzrMF' \
    --body '{"screenshots": [{"contentType": "LxHHILqK", "description": "4GrlRumg", "fileExtension": "jpg"}, {"contentType": "RA7HoDlC", "description": "w4FS1RiD", "fileExtension": "png"}, {"contentType": "L6r2M3sh", "description": "ixmNMIAG", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UploadContentScreenshot' test.out

#- 80 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'agqFqH2t' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'nFulGCPi' \
    --userId '60bota7W' \
    > test.out 2>&1
eval_tap $? 80 'DeleteContentScreenshot' test.out

#- 81 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'qq6TivfC' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateUserFollowStatus' test.out

#- 82 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'sSyU0XN4' \
    --limit '88' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowers' test.out

#- 83 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'Jn80R0lc' \
    --limit '4' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowing' test.out

#- 84 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'vqarKIxw' \
    --limit '31' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 84 'GetGroups' test.out

#- 85 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Nl0HKxRD' \
    --body '{"contents": ["jWucHu5Q", "75tCNyyG", "XZXOBVW5"], "name": "nf1YtQsl"}' \
    > test.out 2>&1
eval_tap $? 85 'CreateGroup' test.out

#- 86 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Us78yD8k' \
    > test.out 2>&1
eval_tap $? 86 'DeleteAllUserGroup' test.out

#- 87 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'vcT7ABzp' \
    --namespace $AB_NAMESPACE \
    --userId 'LcDSK4gx' \
    > test.out 2>&1
eval_tap $? 87 'GetGroup' test.out

#- 88 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'mR2tCb3t' \
    --namespace $AB_NAMESPACE \
    --userId 'y5qYpPaS' \
    --body '{"contents": ["lWuGFjZZ", "O4MOHbuf", "Cv2BZdwJ"], "name": "wxiOxx2U"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateGroup' test.out

#- 89 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId '0at20nGn' \
    --namespace $AB_NAMESPACE \
    --userId 't18xrz5b' \
    > test.out 2>&1
eval_tap $? 89 'DeleteGroup' test.out

#- 90 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'v2F8Di2J' \
    --namespace $AB_NAMESPACE \
    --userId 'aDFJohzu' \
    --limit '14' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 90 'GetGroupContent' test.out

#- 91 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'tU89Oeu4' \
    > test.out 2>&1
eval_tap $? 91 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE