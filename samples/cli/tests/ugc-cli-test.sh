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
    --limit '62' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "AxcVpFrt"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'tufHIRdH' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "9UzVRiXb"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'qlAw7r6W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId '2ktQG0h5' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "JAav5kRa", "customAttributes": {"62WopBJH": {}, "PtcDs8bB": {}, "ZLCXLx8b": {}}, "fileExtension": "bgorQeFb", "name": "Q1g7qbPn", "preview": "gUNB1vRo", "previewMetadata": {"previewContentType": "dwpzS6Da", "previewFileExtension": "Dpv8N7ZQ"}, "subType": "VqGj6oDL", "tags": ["jWjkY1aX", "lFcDtgOj", "chIua5tW"], "type": "EIC32ogW"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId '7olvbTgr' \
    --contentId 'hRTcPiSu' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "L0Sly6XM", "customAttributes": {"4OI18mAQ": {}, "LnzjMf8G": {}, "Z2WBZqxY": {}}, "fileExtension": "G3aREAu2", "name": "D6QVKNCW", "payload": "P75TB0i7", "preview": "pKxR8dl0", "previewMetadata": {"previewContentType": "zRVW4EZG", "previewFileExtension": "9m0XcgGV"}, "subType": "bMqSszE8", "tags": ["GHavj7Ao", "rKsxwkos", "AVerXpc1"], "type": "C8XfwHuK", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'LEzth6mX' \
    --namespace $AB_NAMESPACE \
    --creator 'hzkzWkFe' \
    --isofficial 'ZSoEAcBd' \
    --limit '100' \
    --name '7MIIR7Ck' \
    --offset '50' \
    --orderby '5tA5jUmi' \
    --sortby 'TqpyhPFd' \
    --subtype 'xLzFQN05' \
    --tags '["MYzYiKWe", "5dNRljv7", "IPrDQQRg"]' \
    --type 'at0SevkL' \
    --userId 'GMS0lyuI' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '9a2I9u6V' \
    --contentId 'pbsx5w8h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["UI06UpOX", "GSLmCVuH", "OPlLlkvR"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '8sKgnuRk' \
    --isofficial 'gghGoYup' \
    --limit '61' \
    --name 'jvjKoyD6' \
    --offset '92' \
    --orderby 'YokahFjk' \
    --sortby 'QsfCaTmt' \
    --subtype '1d67FXGk' \
    --tags '["2s9Q0mPV", "o3twu0Me", "sTCf9x4r"]' \
    --type 't69lna7q' \
    --userId 'xNeIxPz6' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'MbwL6IY6' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '9z1UaLqY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'SYWytLPz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'iZMdjxcB' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "ZufQxGiH", "screenshotId": "PllG4cYE"}, {"description": "zfTD1ZBm", "screenshotId": "3MqHcUmL"}, {"description": "ZZbSqb8R", "screenshotId": "wNmn9HrN"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'Qy4uZAAi' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "E0mit9RG", "description": "CCHYzUOc", "fileExtension": "jpg"}, {"contentType": "zzWi9gwQ", "description": "Yv7t1o7T", "fileExtension": "png"}, {"contentType": "6Jt4Ymos", "description": "9Jcdos4f", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'cTVU6RBt' \
    --namespace $AB_NAMESPACE \
    --screenshotId '0zYoMcHy' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["UEXlAvxJ", "MdalwSyl", "iWMNW5Ny"], "name": "Lu0M3VHh"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '2EI8JlDb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'PWbQ6Q9l' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["NmqRBaAk", "LnvxkT1X", "68cmDc3f"], "name": "xU8MyKrQ"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'pM4hkkK6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'KKXNB3Gv' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "mF51Tkhj"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'Ynaq6foW' \
    --body '{"tag": "vXa3bMrX"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'sDr6kILs' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["SyDdmykm", "oPYgc2L4", "jk4Lo0LS"], "type": "P0pf4Ixj"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'Ukl535X3' \
    --body '{"subtype": ["ateEKDpA", "Dz1x3poD", "3Qgb3boL"], "type": "QQ1MzH7Q"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'm8bwbmXg' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'dAPh1ETh' \
    --limit '67' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'QZxfgPub' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'TDIHrvqA' \
    --namespace $AB_NAMESPACE \
    --userId 'ThuwjRHp' \
    --body '{"name": "KKTlmVr9"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'XuoJbRFQ' \
    --namespace $AB_NAMESPACE \
    --userId 'SKVPHbn4' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'Xxtu7LQR' \
    --contentId 'ENjEEztx' \
    --namespace $AB_NAMESPACE \
    --userId '1WsYSiZq' \
    --body '{"contentType": "an0nSBJr", "customAttributes": {"oav91GXl": {}, "vPG6bFYR": {}, "eVHQipcC": {}}, "fileExtension": "x9Zw5D2L", "name": "7vIYhGGS", "payload": "yEW4ZJJ4", "preview": "2d3PBddN", "previewMetadata": {"previewContentType": "8S48l9ly", "previewFileExtension": "NApflxqM"}, "subType": "rj3oZk03", "tags": ["QXcKMDYD", "DxHSZjtq", "XyJ58f7G"], "type": "c26SaiGV", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'ZxzfTcyi' \
    --contentId 'uATus9hs' \
    --namespace $AB_NAMESPACE \
    --userId 'fpFDcSDG' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId '8aMVGLiB' \
    --limit '81' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'rDjqoxcw' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'gGLXpUL4' \
    --namespace $AB_NAMESPACE \
    --userId 'pp2ncYAH' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'tfIovmv9' \
    --limit '13' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'sR5cJcHm' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId '3SZLxoRD' \
    --namespace $AB_NAMESPACE \
    --userId 'FuuuySj2' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId '9a9LJE8H' \
    --namespace $AB_NAMESPACE \
    --userId 'oRS1X2PF' \
    --body '{"contents": ["AAMwzHPx", "B1UskYs4", "Yw20DOqO"], "name": "BSC2DKHR"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'uPMMWH8Y' \
    --namespace $AB_NAMESPACE \
    --userId 'b33T5UBJ' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'CjfcnLRf' \
    --namespace $AB_NAMESPACE \
    --userId 'xeCSz9WE' \
    --limit '18' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '8KlloeH0' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'JT1yduat' \
    --namespace $AB_NAMESPACE \
    --creator '2vQR3biB' \
    --isofficial 'fsu4jmsR' \
    --limit '62' \
    --name 'sXzOXQAk' \
    --offset '14' \
    --orderby 'mqrxzTtu' \
    --sortby 'Ll4XlbGL' \
    --subtype '8QOxtjzm' \
    --tags '["8y2wNhmw", "oYZyI4EF", "ZKBcYrCE"]' \
    --type 'AE7WIsfm' \
    --userId 'x40NLRc6' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'm8heKnWh' \
    --isofficial 'zfe2Nube' \
    --limit '29' \
    --name '7fdgLA84' \
    --offset '29' \
    --orderby 'YYk6QEgJ' \
    --sortby 'jBbEDoNf' \
    --subtype '3n0hEoRC' \
    --tags '["Acf80zfF", "yabWAgIU", "XiI07A68"]' \
    --type 'eaqC2J9j' \
    --userId 'yEW6GLbc' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["0NaKDUL3", "sa13lk1d", "QBHO86Il"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '27' \
    --name 'CO39PXDN' \
    --offset '48' \
    --orderby 'UXlTDBzO' \
    --sortby 'uYsaZA2y' \
    --subtype 'yd4mbqoO' \
    --tags '["fADMMAXF", "aY9eKa69", "9bRVhyaK"]' \
    --type 'wwrAP2aM' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'lu7WtjCt' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'oYetOO84' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId '7g8OudOf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'jnCuHZ3c' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId '6IjGa23Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '26' \
    --orderby 's92epxk0' \
    --sortby 'i8VxsZNe' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'eSvf9699' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'mCEHThUJ' \
    --limit '22' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'ETAsSp7g' \
    --body '{"name": "h4TeUTkO"}' \
    > test.out 2>&1
eval_tap $? 68 'CreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'kAYfJB8A' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'T9t4Tv20' \
    --namespace $AB_NAMESPACE \
    --userId '7Y2QD3oD' \
    --body '{"name": "5fLCr3OO"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'lXVv8ZGF' \
    --namespace $AB_NAMESPACE \
    --userId '7uYnGzpi' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'pNDigNJm' \
    --namespace $AB_NAMESPACE \
    --userId 'a1MbqqZt' \
    --body '{"contentType": "fNWql4nm", "customAttributes": {"wAft4gqk": {}, "NNlWkD9e": {}, "OziYRFOn": {}}, "fileExtension": "0jJLHC9L", "name": "xhvNXTwG", "preview": "BCtohLtl", "previewMetadata": {"previewContentType": "9Zuhytm5", "previewFileExtension": "UDrT6QXC"}, "subType": "s5SPBbRP", "tags": ["ZTF6oQAX", "VG7tnsZg", "5QgXjvyG"], "type": "JPN4eXbJ"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'E5Vs2Gcy' \
    --contentId 'omQoIXim' \
    --namespace $AB_NAMESPACE \
    --userId 'BJehyxlN' \
    --body '{"contentType": "sjUgxBkF", "customAttributes": {"6wFPoJeQ": {}, "ediogEhh": {}, "M2rIizGd": {}}, "fileExtension": "KvOPdq5x", "name": "rgxSmy1D", "payload": "N9LFkYW5", "preview": "DQyj4bj5", "previewMetadata": {"previewContentType": "Ro2ogaKt", "previewFileExtension": "2ujQSa3Z"}, "subType": "db65UXmy", "tags": ["0Zp6iIaT", "IKUkmkk9", "QM0NBMA9"], "type": "ORxpzwLR", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'AK6eXUGP' \
    --contentId 'Jsw1fiP8' \
    --namespace $AB_NAMESPACE \
    --userId '0G9Pclxc' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'ft2ulIJz' \
    --limit '86' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'yrVEiOG4' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'UcqsuGKH' \
    --namespace $AB_NAMESPACE \
    --userId 'hMRWLVd3' \
    --body '{"screenshots": [{"description": "DlhLuIpo", "screenshotId": "mM8sm1Mi"}, {"description": "aI1mX2tJ", "screenshotId": "oARtdbBe"}, {"description": "7udsMrok", "screenshotId": "0WvGYYnx"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '4V709xbn' \
    --namespace $AB_NAMESPACE \
    --userId 'GezKsDwG' \
    --body '{"screenshots": [{"contentType": "2omOR2nv", "description": "YI9TVqJd", "fileExtension": "jpeg"}, {"contentType": "jvsugAOS", "description": "7u8RiWye", "fileExtension": "jpeg"}, {"contentType": "L4bTxBmZ", "description": "jdrrIxsB", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'NRsB1fPq' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'qRRulpqp' \
    --userId 'ymDkQhtr' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'HWwRVnwV' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'BLy8wbhM' \
    --limit '37' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'sAHjapIk' \
    --limit '20' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'Rf4wP57d' \
    --limit '57' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'ZNR88YbC' \
    --body '{"contents": ["tmKy8M9z", "VrjfGXZn", "qAQUoY1G"], "name": "jlIIk0iK"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'oTTS1j02' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'o7JjTXAQ' \
    --namespace $AB_NAMESPACE \
    --userId 'N0qdskdQ' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'V0TqI8EF' \
    --namespace $AB_NAMESPACE \
    --userId 'nmDbxIxi' \
    --body '{"contents": ["4YKlONk2", "Q5Y4Jvai", "zwiilatu"], "name": "Ujjt9lIM"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'Gql5ElEa' \
    --namespace $AB_NAMESPACE \
    --userId '9EIIlGcH' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'B3CfR3nc' \
    --namespace $AB_NAMESPACE \
    --userId 'Dlwi3v3M' \
    --limit '65' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'FJ1KesKo' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE