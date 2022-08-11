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
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "kdlIxWHu"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'a6qnNTAw' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "bAt2GJLH"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId '8W2GJoM4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'jHpXothN' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "13b796b2", "fileExtension": "spD7sXX0", "name": "O1EFjaZo", "preview": "ZBTKmJxt", "previewMetadata": {"previewContentType": "8CjQVARb", "previewFileExtension": "qsUuDLCd"}, "subType": "vMaviAWn", "tags": ["e2BkIuTn", "O49eo36y", "rScx7R1j"], "type": "EWVVonah"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'VbzJhyW8' \
    --contentId 'vqyMZnwB' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "zGwwFuLA", "fileExtension": "qX5CVd6L", "name": "srka1q5U", "preview": "0H830PcU", "previewMetadata": {"previewContentType": "7bf62kjo", "previewFileExtension": "cjfuepoF"}, "subType": "AEjmNRv6", "tags": ["SGn7LgfI", "ZxedF9IE", "sS4DmdmE"], "type": "03r0N838"}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'uQMTu8V4' \
    --namespace $AB_NAMESPACE \
    --creator 'rylr2Z5f' \
    --isofficial 'qj56BJJJ' \
    --limit '61' \
    --name 'EeOv2skH' \
    --offset '41' \
    --orderby '3Ah1nnbV' \
    --sortby 'tnifip4q' \
    --subtype '3cvRDSn1' \
    --tags '["kvXqA1mb", "nfsycbz4", "vKh5sVb2"]' \
    --type 'KAL3NiSw' \
    --userId 'p309mid6' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'FlGPHZy6' \
    --contentId 'lR9bFMJC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'DB1maFYn' \
    --isofficial 'EQg3Lhwy' \
    --limit '68' \
    --name 'W8o3Bs5D' \
    --offset '44' \
    --orderby '8clwyTiH' \
    --sortby 'LvbPhkhM' \
    --subtype 'JwIAHfOZ' \
    --tags '["2tIdyOIy", "AlmZaOZy", "WgiX2fN2"]' \
    --type 'jcOvakPR' \
    --userId 'rc0sq0Sf' \
    > test.out 2>&1
eval_tap $? 13 'AdminSearchContent' test.out

#- 14 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'zze9Emup' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminGetSpecificContent' test.out

#- 15 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'ew1cnBpi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminDownloadContentPreview' test.out

#- 16 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'lkCQFshK' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "SFMviscK", "screenshotId": "okBQpIif"}, {"description": "3xOHPl8h", "screenshotId": "zVGoJrpd"}, {"description": "mIRbOmyE", "screenshotId": "0FJ4wkvn"}]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateScreenshots' test.out

#- 17 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'OEsu6YKU' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "KsWwIg34", "description": "8QwiDaRe", "fileExtension": "pjp"}, {"contentType": "MY7qzUiP", "description": "Ke03HuxK", "fileExtension": "jpeg"}, {"contentType": "Xv23Mqhf", "description": "t3nmGlCD", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUploadContentScreenshot' test.out

#- 18 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'rFMQTV2S' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'UT50UwCq' \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteContentScreenshot' test.out

#- 19 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 19 'SingleAdminGetAllGroups' test.out

#- 20 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["8i3hrg5l", "p4domqb9", "GSopVqNn"], "name": "a7rvqNKY"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateGroup' test.out

#- 21 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'dadlBEkT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetGroup' test.out

#- 22 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '37ghyTdX' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["xhpx5T8I", "lgh0LAxd", "cfgv9iuV"], "name": "5rtaa2MF"}' \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminUpdateGroup' test.out

#- 23 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'WjRlv4jr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminDeleteGroup' test.out

#- 24 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'sxsLl85L' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetGroupContents' test.out

#- 25 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 25 'AdminGetTag' test.out

#- 26 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "gaxyrqoe"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminCreateTag' test.out

#- 27 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId '1tvnSOqf' \
    --body '{"tag": "kUJagX7z"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateTag' test.out

#- 28 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'Jb7AKxOW' \
    > test.out 2>&1
eval_tap $? 28 'AdminDeleteTag' test.out

#- 29 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 29 'AdminGetType' test.out

#- 30 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["Gnzk1HFK", "OPYPAoIm", "ZaIXo5MB"], "type": "HVocHD71"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminCreateType' test.out

#- 31 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '2c204jvx' \
    --body '{"subtype": ["SDJMSvrO", "4v2Cu2XY", "qr2hp63A"], "type": "RtsZrNwr"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateType' test.out

#- 32 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'XpX84qeh' \
    > test.out 2>&1
eval_tap $? 32 'AdminDeleteType' test.out

#- 33 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId '6c1H0e61' \
    --limit '94' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 33 'AdminGetChannel' test.out

#- 34 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'x6Gl4ZSE' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAllUserChannels' test.out

#- 35 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'QWFGDcWb' \
    --namespace $AB_NAMESPACE \
    --userId 'mqK8kefS' \
    --body '{"name": "jmzr53Sv"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminUpdateChannel' test.out

#- 36 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'utqcUy1V' \
    --namespace $AB_NAMESPACE \
    --userId 'JADaedRg' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteChannel' test.out

#- 37 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'lEQktcp1' \
    --contentId 'yhMJfCZG' \
    --namespace $AB_NAMESPACE \
    --userId 'tWjsA7RY' \
    --body '{"contentType": "LKuMSoYE", "fileExtension": "V7Ici5jr", "name": "zYHKlbhd", "preview": "Jj3qem9H", "previewMetadata": {"previewContentType": "vE2S69rh", "previewFileExtension": "cSo6mhXY"}, "subType": "va2nW9OI", "tags": ["12fxRk40", "WQSBvX9a", "qUmzYNLc"], "type": "073obF2P"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateContentS3' test.out

#- 38 AdminUpdateContentDirect
eval_tap 0 38 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 39 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'dV3hcRfL' \
    --contentId 'iRtodR4M' \
    --namespace $AB_NAMESPACE \
    --userId 'rZHJSI4A' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteContent' test.out

#- 40 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId '6hn5df44' \
    --limit '27' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 40 'AdminGetContent' test.out

#- 41 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'gyJA6i80' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteAllUserContents' test.out

#- 42 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'OFTSXXLs' \
    --namespace $AB_NAMESPACE \
    --userId 'gldjQfIY' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminHideUserContent' test.out

#- 43 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'sMY7oyWi' \
    --limit '86' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetAllGroups' test.out

#- 44 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'As7sFGSU' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteAllUserGroup' test.out

#- 45 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId '0NnM6x1p' \
    --namespace $AB_NAMESPACE \
    --userId 'VmbRvqFr' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetGroup' test.out

#- 46 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'a6nc2qRU' \
    --namespace $AB_NAMESPACE \
    --userId 'z4kVdRYe' \
    --body '{"contents": ["RXDSBosN", "db0NCKin", "ALhkB49V"], "name": "mHS9po9B"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateGroup' test.out

#- 47 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'KoW9qQC8' \
    --namespace $AB_NAMESPACE \
    --userId 'BoE0EhIT' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeleteGroup' test.out

#- 48 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '1lNFRrdv' \
    --namespace $AB_NAMESPACE \
    --userId 'jhEZyVra' \
    --limit '54' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetGroupContents' test.out

#- 49 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'J5iJHEbn' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteAllUserStates' test.out

#- 50 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'HrzGhwLo' \
    --namespace $AB_NAMESPACE \
    --creator 'N0TaJwQH' \
    --isofficial 'axmGLc30' \
    --limit '98' \
    --name 'YUNhbudm' \
    --offset '79' \
    --orderby 'QaxfohPj' \
    --sortby 'HTR7cMNh' \
    --subtype 'aJHt1S26' \
    --tags '["fFFC5J2x", "dJOY6frt", "HZySUwRw"]' \
    --type 'RDfRqdru' \
    --userId 'zI96kH3V' \
    > test.out 2>&1
eval_tap $? 50 'SearchChannelSpecificContent' test.out

#- 51 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'BQF7XZoz' \
    --isofficial '8z9DnY6p' \
    --limit '51' \
    --name 'P5VaefNz' \
    --offset '20' \
    --orderby 'UPeY3uJ6' \
    --sortby '3BujiYLi' \
    --subtype 'OiOWvzR4' \
    --tags '["gq2R5g91", "NQbT60nj", "CUTcXc7B"]' \
    --type 'cupFRn5x' \
    --userId 'zN2v8RQI' \
    > test.out 2>&1
eval_tap $? 51 'PublicSearchContent' test.out

#- 52 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["yYj9eqqx", "WZdeIqoo", "caAE3VF1"]}' \
    > test.out 2>&1
eval_tap $? 52 'PublicGetContentBulk' test.out

#- 53 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 53 'GetFollowedContent' test.out

#- 54 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '42' \
    --name 'RX49bWyr' \
    --offset '9' \
    --orderby '7kCcjpGB' \
    --sortby 's3xvpOit' \
    --subtype 'aRy33bxn' \
    --tags '["inarYKgk", "OQfmWfX3", "QxALjzM9"]' \
    --type 'e62Odah0' \
    > test.out 2>&1
eval_tap $? 54 'GetLikedContent' test.out

#- 55 DownloadContentByShareCode
samples/cli/sample-apps Ugc downloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '91TQASIc' \
    > test.out 2>&1
eval_tap $? 55 'DownloadContentByShareCode' test.out

#- 56 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'URmpkrR3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByContentID' test.out

#- 57 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'NhqAykPx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'AddDownloadCount' test.out

#- 58 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'w5yr8ZMr' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateContentLikeStatus' test.out

#- 59 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'yOxmg18t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'PublicDownloadContentPreview' test.out

#- 60 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 60 'GetTag' test.out

#- 61 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 61 'GetType' test.out

#- 62 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '90' \
    --orderby 'YoptPNzq' \
    --sortby 'vo5QyiZq' \
    > test.out 2>&1
eval_tap $? 62 'PublicSearchCreator' test.out

#- 63 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 63 'GetFollowedUsers' test.out

#- 64 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'S2rx2Y9G' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetCreator' test.out

#- 65 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'l2lmooE5' \
    --limit '52' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 65 'GetChannels' test.out

#- 66 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'aQCj8seL' \
    --body '{"name": "xn9kymnQ"}' \
    > test.out 2>&1
eval_tap $? 66 'CreateChannel' test.out

#- 67 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'bJ29ilda' \
    > test.out 2>&1
eval_tap $? 67 'DeleteAllUserChannel' test.out

#- 68 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'HowQN7vl' \
    --namespace $AB_NAMESPACE \
    --userId '5sOERI1Q' \
    --body '{"name": "DDVRm5qe"}' \
    > test.out 2>&1
eval_tap $? 68 'UpdateChannel' test.out

#- 69 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'YSKAT7j7' \
    --namespace $AB_NAMESPACE \
    --userId 'aP8FwEli' \
    > test.out 2>&1
eval_tap $? 69 'DeleteChannel' test.out

#- 70 CreateContentDirect
eval_tap 0 70 'CreateContentDirect # SKIP deprecated' test.out

#- 71 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'AYFtN9Zw' \
    --namespace $AB_NAMESPACE \
    --userId 'GCCv6TuI' \
    --body '{"contentType": "e947XMJr", "fileExtension": "Qf07JOiL", "name": "XLeBCbIR", "preview": "dWP7EzfY", "previewMetadata": {"previewContentType": "0Yh6L04M", "previewFileExtension": "mgMvlFzZ"}, "subType": "TanEpbl4", "tags": ["0rVyMwDC", "6qGbbMvO", "81g9yf1g"], "type": "tKEyCCNr"}' \
    > test.out 2>&1
eval_tap $? 71 'CreateContentS3' test.out

#- 72 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'thxlJkaa' \
    --contentId 'i09kQWgU' \
    --namespace $AB_NAMESPACE \
    --userId 'N6LjTWG8' \
    --body '{"contentType": "kqXvWZ2r", "fileExtension": "dkbmnlVY", "name": "dwRFYOQ4", "preview": "l1Y1ocjv", "previewMetadata": {"previewContentType": "oIfidWmd", "previewFileExtension": "pjSa6rKw"}, "subType": "Kj0zkm8m", "tags": ["NwqcyQYw", "C8qppS2g", "Qnvsvm55"], "type": "x81ZlpQ5"}' \
    > test.out 2>&1
eval_tap $? 72 'UpdateContentS3' test.out

#- 73 UpdateContentDirect
eval_tap 0 73 'UpdateContentDirect # SKIP deprecated' test.out

#- 74 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'BHUuB2Ak' \
    --contentId 'YmAByVTa' \
    --namespace $AB_NAMESPACE \
    --userId 'vYFnEn7w' \
    > test.out 2>&1
eval_tap $? 74 'DeleteContent' test.out

#- 75 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'iKjpfCky' \
    --limit '32' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 75 'PublicGetUserContent' test.out

#- 76 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'WprkzXQi' \
    > test.out 2>&1
eval_tap $? 76 'DeleteAllUserContents' test.out

#- 77 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'C97dCYLD' \
    --namespace $AB_NAMESPACE \
    --userId '8dEUM9T8' \
    --body '{"screenshots": [{"description": "8rV11Khj", "screenshotId": "Gta9il4b"}, {"description": "QM8U6IRI", "screenshotId": "xVly1Mi5"}, {"description": "W6JmKfEU", "screenshotId": "36Tq71cL"}]}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateScreenshots' test.out

#- 78 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'JcICRmGV' \
    --namespace $AB_NAMESPACE \
    --userId 'fd1xMTuZ' \
    --body '{"screenshots": [{"contentType": "Pxda5Cbl", "description": "dGa35u4Q", "fileExtension": "png"}, {"contentType": "ACcVdktq", "description": "AKv9EtCO", "fileExtension": "bmp"}, {"contentType": "bQiEdNJK", "description": "EV7NmsxO", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 78 'UploadContentScreenshot' test.out

#- 79 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId '5CL1Kl9m' \
    --namespace $AB_NAMESPACE \
    --screenshotId '3nclLCF6' \
    --userId 'vx9MvAEa' \
    > test.out 2>&1
eval_tap $? 79 'DeleteContentScreenshot' test.out

#- 80 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'VRlaeETZ' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 80 'UpdateUserFollowStatus' test.out

#- 81 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'QQ8Ni94R' \
    --limit '24' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 81 'GetPublicFollowers' test.out

#- 82 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'GRhHetf5' \
    --limit '23' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowing' test.out

#- 83 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId '0GeJrQuS' \
    --limit '21' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 83 'GetGroups' test.out

#- 84 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'fxrSDPIS' \
    --body '{"contents": ["sdBsEiRj", "46wzIos5", "TOyMCipN"], "name": "Q4sta8K7"}' \
    > test.out 2>&1
eval_tap $? 84 'CreateGroup' test.out

#- 85 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'EaKF1ruR' \
    > test.out 2>&1
eval_tap $? 85 'DeleteAllUserGroup' test.out

#- 86 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '9fhwrkmw' \
    --namespace $AB_NAMESPACE \
    --userId 'HPbzwh06' \
    > test.out 2>&1
eval_tap $? 86 'GetGroup' test.out

#- 87 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'G68DqqyI' \
    --namespace $AB_NAMESPACE \
    --userId 'gbgLEGeU' \
    --body '{"contents": ["xD5F2wKk", "MfjD2r9S", "4RKJWD5K"], "name": "lEX4OhFo"}' \
    > test.out 2>&1
eval_tap $? 87 'UpdateGroup' test.out

#- 88 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'lwYMZQKg' \
    --namespace $AB_NAMESPACE \
    --userId 'aDLpzclf' \
    > test.out 2>&1
eval_tap $? 88 'DeleteGroup' test.out

#- 89 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'uvlAuhQP' \
    --namespace $AB_NAMESPACE \
    --userId 'D9aqskSP' \
    --limit '28' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 89 'GetGroupContent' test.out

#- 90 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'tX4qcL2D' \
    > test.out 2>&1
eval_tap $? 90 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE