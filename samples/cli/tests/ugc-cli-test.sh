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
    --limit '30' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "sWMM615W"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'eCqVbEo6' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "7mvF2wMH"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'D9cVcHxo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'yDx3VSlm' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "KXzUW2PL", "fileExtension": "1BTm6ls2", "name": "GXEl8601", "preview": "RZl2ITgn", "previewMetadata": {"previewContentType": "MOl8Em8k", "previewFileExtension": "pBiZcJZx"}, "subType": "JoRnOun6", "tags": ["mJ2q6jLt", "Fb3fQWiq", "M2dRyPiA"], "type": "WuQc82rk"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId '6oi75KrO' \
    --contentId '5rauoatb' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "C4xfMq8L", "fileExtension": "81bXUMUD", "name": "3PEhW0vG", "preview": "WITGFX7z", "previewMetadata": {"previewContentType": "gORklFyi", "previewFileExtension": "tJ2U7V8d"}, "subType": "AforJ3z2", "tags": ["1ax2f17D", "OpeydIIZ", "dv7C4NZG"], "type": "TOGJqV2S"}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'XMDy6S13' \
    --namespace $AB_NAMESPACE \
    --creator '7eseyAYJ' \
    --isofficial 'xF98VGkh' \
    --limit '46' \
    --name 'GFAElbmW' \
    --offset '99' \
    --orderby '9UcDpZEP' \
    --sortby 'ad8X1GCC' \
    --subtype 'RYiJdq9P' \
    --tags '["riL8Oa1C", "CPdMfTcX", "o7GxsztQ"]' \
    --type 'yfqiNvcy' \
    --userId 'xmWpmvlg' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'eqGAetJ2' \
    --contentId 'KL9LVfnX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'YwAVXsqh' \
    --isofficial 'Bpeuz3Ve' \
    --limit '84' \
    --name 'jRrhzHaf' \
    --offset '38' \
    --orderby '30ftCQXT' \
    --sortby 'z3KKPiPx' \
    --subtype '5XxtYYWp' \
    --tags '["6dBnbbgk", "RZNpXb5y", "4k2Hl3WX"]' \
    --type 'ebbuU5kw' \
    --userId '0YVM1xfb' \
    > test.out 2>&1
eval_tap $? 13 'AdminSearchContent' test.out

#- 14 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '3IpjNtDR' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserContentByShareCode' test.out

#- 15 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '5hh3WeaL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetSpecificContent' test.out

#- 16 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '0f6wQ75i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDownloadContentPreview' test.out

#- 17 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'S8oMvt5c' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "WFpDCZpe", "screenshotId": "kBWfaDN6"}, {"description": "kDXoLUuM", "screenshotId": "n0leX99c"}, {"description": "3wA7UYCy", "screenshotId": "0HhXm5VN"}]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateScreenshots' test.out

#- 18 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'GVUmBX0Y' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "0iOWfYUT", "description": "ybeYxZSg", "fileExtension": "jpg"}, {"contentType": "02jSZSfS", "description": "4T8ixw5Q", "fileExtension": "pjp"}, {"contentType": "ok8gZlpb", "description": "SJy0mLCw", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUploadContentScreenshot' test.out

#- 19 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '73Fm9igM' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'SIi0U2LB' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteContentScreenshot' test.out

#- 20 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 20 'SingleAdminGetAllGroups' test.out

#- 21 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["uu9R3j43", "TUoeksSL", "v4lNDjP1"], "name": "llc2UZMQ"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateGroup' test.out

#- 22 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'JBUnfqdT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetGroup' test.out

#- 23 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '7DeK7vfp' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["I1AKh5Xz", "v4fdFXGf", "NyXSDNvN"], "name": "r65xGqDO"}' \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminUpdateGroup' test.out

#- 24 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'TXDYJaXy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminDeleteGroup' test.out

#- 25 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '3bAxwZKz' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminGetGroupContents' test.out

#- 26 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 26 'AdminGetTag' test.out

#- 27 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "N4WuGlGk"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateTag' test.out

#- 28 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'PZCh8JXm' \
    --body '{"tag": "LTKtlAFB"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateTag' test.out

#- 29 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'Elf9xVSd' \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteTag' test.out

#- 30 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetType' test.out

#- 31 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["I2qWAGcY", "I5zOW00K", "NQxyh8zd"], "type": "pG3Z9EPK"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateType' test.out

#- 32 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'edTDovea' \
    --body '{"subtype": ["ywIn8kle", "rjnFyKor", "qet1R1rE"], "type": "XRQqDxMN"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateType' test.out

#- 33 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'WoufqF8y' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteType' test.out

#- 34 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'OLPhbVWR' \
    --limit '99' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetChannel' test.out

#- 35 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'yHZQ0c4P' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteAllUserChannels' test.out

#- 36 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'h79mClh7' \
    --namespace $AB_NAMESPACE \
    --userId 'OME77j5p' \
    --body '{"name": "XLPV32LM"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateChannel' test.out

#- 37 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'x8psSqHB' \
    --namespace $AB_NAMESPACE \
    --userId 'i1QR62ci' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteChannel' test.out

#- 38 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'S3u7Ut6I' \
    --contentId '1aJywPNr' \
    --namespace $AB_NAMESPACE \
    --userId 'ehS4wzf8' \
    --body '{"contentType": "fsXyV7CG", "fileExtension": "j5734QS3", "name": "wNvNXFuc", "preview": "SF0Kn0pn", "previewMetadata": {"previewContentType": "hwUm02uS", "previewFileExtension": "dZQywC2D"}, "subType": "q4TDBlzt", "tags": ["7XWFAXWl", "4aW7t7kf", "UT0kVoUW"], "type": "7byXon7A"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateContentS3' test.out

#- 39 AdminUpdateContentDirect
eval_tap 0 39 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 40 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'MjMyXkhi' \
    --contentId 'ljxU4oCV' \
    --namespace $AB_NAMESPACE \
    --userId 'CFjXGaVv' \
    > test.out 2>&1
eval_tap $? 40 'AdminDeleteContent' test.out

#- 41 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'SILUYRH4' \
    --limit '55' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetContent' test.out

#- 42 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'Yz4Llt04' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAllUserContents' test.out

#- 43 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'AM9e7BuR' \
    --namespace $AB_NAMESPACE \
    --userId '130AabUo' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminHideUserContent' test.out

#- 44 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'aDGTN0oF' \
    --limit '4' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetAllGroups' test.out

#- 45 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'KlELkRwn' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteAllUserGroup' test.out

#- 46 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'vuMTh630' \
    --namespace $AB_NAMESPACE \
    --userId 'l3iOIGd6' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetGroup' test.out

#- 47 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'lTyPq9Xa' \
    --namespace $AB_NAMESPACE \
    --userId 'uJouPQRS' \
    --body '{"contents": ["K2YqW1Dz", "rX7SZDs3", "GLC9fkon"], "name": "mJERDWpv"}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateGroup' test.out

#- 48 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'wZRwdPzy' \
    --namespace $AB_NAMESPACE \
    --userId 'r7cygYEM' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteGroup' test.out

#- 49 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'uD5ZlkMQ' \
    --namespace $AB_NAMESPACE \
    --userId '84ILD8Iw' \
    --limit '49' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetGroupContents' test.out

#- 50 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'xbBiHU4D' \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteAllUserStates' test.out

#- 51 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'Rf1SOq8h' \
    --namespace $AB_NAMESPACE \
    --creator '6b3kb7u7' \
    --isofficial 'X5v6TmYP' \
    --limit '92' \
    --name 'rTBUZ3Or' \
    --offset '31' \
    --orderby 'T2XfConD' \
    --sortby 'H3sziVH7' \
    --subtype 'GQovQWSu' \
    --tags '["VTwSjrq5", "mFBrJnxM", "07MqseCs"]' \
    --type 'JOT1l62Y' \
    --userId 'RVLaSM1f' \
    > test.out 2>&1
eval_tap $? 51 'SearchChannelSpecificContent' test.out

#- 52 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'jCfmhej8' \
    --isofficial 'A3rWnUEi' \
    --limit '55' \
    --name 'wILViOcl' \
    --offset '93' \
    --orderby 'Ko9eaOi3' \
    --sortby '4WxpqPTf' \
    --subtype 'OeQj75oK' \
    --tags '["wma3bYvJ", "H1Y0V12u", "gvisNc17"]' \
    --type 'BRgrDLEx' \
    --userId 'dcU04nlr' \
    > test.out 2>&1
eval_tap $? 52 'PublicSearchContent' test.out

#- 53 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["EdZ807gf", "RVLk6lwf", "abBBR9qI"]}' \
    > test.out 2>&1
eval_tap $? 53 'PublicGetContentBulk' test.out

#- 54 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 54 'GetFollowedContent' test.out

#- 55 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '7' \
    --name 'pVTtaPAB' \
    --offset '7' \
    --orderby 'BCHrwan8' \
    --sortby 'P3uJqHHz' \
    --subtype '6mMmpHH5' \
    --tags '["hF8vzIjn", "mEtBxBJy", "9Rs2r6F7"]' \
    --type 'dmNl1efo' \
    > test.out 2>&1
eval_tap $? 55 'GetLikedContent' test.out

#- 56 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'zesHVvqA' \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByShareCode' test.out

#- 57 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'gGHSC6z3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByContentID' test.out

#- 58 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'a7SZy3bA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AddDownloadCount' test.out

#- 59 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'miJwQ3uM' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateContentLikeStatus' test.out

#- 60 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'sCS1xClE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentPreview' test.out

#- 61 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 61 'GetTag' test.out

#- 62 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 62 'GetType' test.out

#- 63 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '44' \
    --orderby 'c7vZhLpc' \
    --sortby 'e6dHQSXa' \
    > test.out 2>&1
eval_tap $? 63 'PublicSearchCreator' test.out

#- 64 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 64 'GetFollowedUsers' test.out

#- 65 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'boQMLt5Y' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCreator' test.out

#- 66 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '7jSXOE3p' \
    --limit '12' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 66 'GetChannels' test.out

#- 67 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'xalmxjvK' \
    --body '{"name": "CVTArZht"}' \
    > test.out 2>&1
eval_tap $? 67 'CreateChannel' test.out

#- 68 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '9TZqBRGq' \
    > test.out 2>&1
eval_tap $? 68 'DeleteAllUserChannel' test.out

#- 69 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'cg8HeWlW' \
    --namespace $AB_NAMESPACE \
    --userId 'uciaMCTm' \
    --body '{"name": "cLV98elH"}' \
    > test.out 2>&1
eval_tap $? 69 'UpdateChannel' test.out

#- 70 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'Qy30g2mg' \
    --namespace $AB_NAMESPACE \
    --userId 'lLbJT7z4' \
    > test.out 2>&1
eval_tap $? 70 'DeleteChannel' test.out

#- 71 CreateContentDirect
eval_tap 0 71 'CreateContentDirect # SKIP deprecated' test.out

#- 72 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'N35Mvd0U' \
    --namespace $AB_NAMESPACE \
    --userId 'ro4ka8Kp' \
    --body '{"contentType": "VQtrFUjG", "fileExtension": "4d9jvIKP", "name": "oZ6UhtZv", "preview": "nthKeRkg", "previewMetadata": {"previewContentType": "gMWNPLHi", "previewFileExtension": "fdzvI1n1"}, "subType": "09lJkml0", "tags": ["VaifnMUJ", "2S1clpRu", "JMNV75MP"], "type": "d3H2vsId"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateContentS3' test.out

#- 73 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'UbTCqBTV' \
    --contentId 'cQjgQUoF' \
    --namespace $AB_NAMESPACE \
    --userId 'bTay4Plt' \
    --body '{"contentType": "Y5A5Ab2M", "fileExtension": "t1oYi6L1", "name": "Ve8MLerS", "preview": "i26kq83p", "previewMetadata": {"previewContentType": "Ip4T35FT", "previewFileExtension": "Azr1ga8o"}, "subType": "GBe5HDel", "tags": ["RiCiElnD", "mGJxWiAm", "iRngFw7q"], "type": "8YZzyUA2"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateContentS3' test.out

#- 74 UpdateContentDirect
eval_tap 0 74 'UpdateContentDirect # SKIP deprecated' test.out

#- 75 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'E6orNebV' \
    --contentId 'm6aJiGTr' \
    --namespace $AB_NAMESPACE \
    --userId 'XV17vhor' \
    > test.out 2>&1
eval_tap $? 75 'DeleteContent' test.out

#- 76 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'JqZodQR5' \
    --limit '94' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 76 'PublicGetUserContent' test.out

#- 77 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'UDPJObAv' \
    > test.out 2>&1
eval_tap $? 77 'DeleteAllUserContents' test.out

#- 78 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId '2AAruhUU' \
    --namespace $AB_NAMESPACE \
    --userId '5kOPEZGd' \
    --body '{"screenshots": [{"description": "PoQNz4Id", "screenshotId": "ykHuYcRH"}, {"description": "9en3EmEB", "screenshotId": "pbYKrGQi"}, {"description": "j9tJnpON", "screenshotId": "akE59Tx1"}]}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateScreenshots' test.out

#- 79 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'LL0UmZu9' \
    --namespace $AB_NAMESPACE \
    --userId 'SMBpF31C' \
    --body '{"screenshots": [{"contentType": "f13hGHvZ", "description": "hdtMTk2c", "fileExtension": "png"}, {"contentType": "XYNmih3z", "description": "ZwJezJFq", "fileExtension": "bmp"}, {"contentType": "2l6b9Gic", "description": "Rdt6451v", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UploadContentScreenshot' test.out

#- 80 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'p2kOJnCt' \
    --namespace $AB_NAMESPACE \
    --screenshotId '3qzaTDEm' \
    --userId 'MAmFaBQa' \
    > test.out 2>&1
eval_tap $? 80 'DeleteContentScreenshot' test.out

#- 81 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'SaTUDpDn' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateUserFollowStatus' test.out

#- 82 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'N1M6UAQO' \
    --limit '60' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowers' test.out

#- 83 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'NPEA4Iv7' \
    --limit '94' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowing' test.out

#- 84 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'ie769ras' \
    --limit '30' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 84 'GetGroups' test.out

#- 85 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'dory1TT5' \
    --body '{"contents": ["zXeObpVl", "jtvHrm0P", "ayxTicrn"], "name": "RPKFFZRG"}' \
    > test.out 2>&1
eval_tap $? 85 'CreateGroup' test.out

#- 86 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'BKLLrE7I' \
    > test.out 2>&1
eval_tap $? 86 'DeleteAllUserGroup' test.out

#- 87 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'h8RRmrpX' \
    --namespace $AB_NAMESPACE \
    --userId 'EghEft7c' \
    > test.out 2>&1
eval_tap $? 87 'GetGroup' test.out

#- 88 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'Oo3rDE1z' \
    --namespace $AB_NAMESPACE \
    --userId '0TS5NsJk' \
    --body '{"contents": ["ey8N7rwH", "zwxMZQQr", "IUBmMGuE"], "name": "AGVWqnTU"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateGroup' test.out

#- 89 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'jXWSClHw' \
    --namespace $AB_NAMESPACE \
    --userId 'pe4iLSrZ' \
    > test.out 2>&1
eval_tap $? 89 'DeleteGroup' test.out

#- 90 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'BfMvnoBA' \
    --namespace $AB_NAMESPACE \
    --userId 'g8CU0q9W' \
    --limit '28' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 90 'GetGroupContent' test.out

#- 91 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'Ahz5yxxn' \
    > test.out 2>&1
eval_tap $? 91 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE