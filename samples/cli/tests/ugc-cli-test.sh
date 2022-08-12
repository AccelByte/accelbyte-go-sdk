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
    --limit '50' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Mq83JqyC"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId '0iyMB61x' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Jyj10Ebr"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'pr9x4Emw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'IxaA2jXG' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "fJplcQWb", "fileExtension": "LGVnAcdw", "name": "fmNaXNQs", "preview": "1ImS85xx", "previewMetadata": {"previewContentType": "fAXDJHGF", "previewFileExtension": "O99XkvQx"}, "subType": "Ip8RzUxY", "tags": ["V9SWL5iq", "o8aOWbp9", "9aBmz3LD"], "type": "lCdPpEjP"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'XxyETmtx' \
    --contentId 'vmxRWf6o' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "HLmqSMmo", "fileExtension": "xmeYVkoC", "name": "CtSQTLdw", "preview": "rXgpOQRP", "previewMetadata": {"previewContentType": "wAceTxUq", "previewFileExtension": "YdBlnAoV"}, "subType": "3nfT132W", "tags": ["113KeBgN", "L5fujfmB", "lADkZ1Ry"], "type": "IebyrfRx"}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'gKVnPmQ5' \
    --namespace $AB_NAMESPACE \
    --creator 'iMca7nrj' \
    --isofficial 'Tk9EnYT4' \
    --limit '25' \
    --name 'KSrkz6RF' \
    --offset '98' \
    --orderby 'eeyokPDI' \
    --sortby '2w4y9saf' \
    --subtype 'JFCHg0mW' \
    --tags '["lgsHMGr1", "lxaF7oql", "reGmTQLd"]' \
    --type '21yUSCv0' \
    --userId 'hu8mphwf' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'Hs9Q13MJ' \
    --contentId 'KOx5wXLC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'oPz6tg5w' \
    --isofficial 'vHZiTtfp' \
    --limit '98' \
    --name 'BV4pJEFM' \
    --offset '35' \
    --orderby 'RD6uwLVW' \
    --sortby 'li0ahJa2' \
    --subtype '3S8KMoKo' \
    --tags '["6LBbq2Zl", "y5R1SnCf", "rUTvIXYa"]' \
    --type '5crdYoEV' \
    --userId 'RlepdUGT' \
    > test.out 2>&1
eval_tap $? 13 'AdminSearchContent' test.out

#- 14 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'PX9bnKCC' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserContentByShareCode' test.out

#- 15 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'erlyxWCc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetSpecificContent' test.out

#- 16 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'xC3XJHBS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDownloadContentPreview' test.out

#- 17 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'zAvD6v7z' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "Eev4iOAi", "screenshotId": "Pn1d2rm1"}, {"description": "6GBOSdan", "screenshotId": "H4DHtyte"}, {"description": "SitPsWum", "screenshotId": "j5eqfC7K"}]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateScreenshots' test.out

#- 18 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'lzAuVL2H' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "relfjEKF", "description": "Tejz8yfF", "fileExtension": "jfif"}, {"contentType": "Y8ILNWNR", "description": "skKQpvgA", "fileExtension": "jpg"}, {"contentType": "HiUrB89F", "description": "Dcl3MgeA", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUploadContentScreenshot' test.out

#- 19 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'R1Cunziu' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'ek2asqpu' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteContentScreenshot' test.out

#- 20 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 20 'SingleAdminGetAllGroups' test.out

#- 21 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["HPhQrwEp", "YOYFV25J", "wYCpFFXY"], "name": "5QQQTzyd"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateGroup' test.out

#- 22 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'AdenqnAs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetGroup' test.out

#- 23 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'n6ztmpZl' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["4uvwB8vs", "CnviRt1I", "HyVLFoMS"], "name": "42ymkv4D"}' \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminUpdateGroup' test.out

#- 24 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'DxlBXrXB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminDeleteGroup' test.out

#- 25 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'LToZxkkb' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminGetGroupContents' test.out

#- 26 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 26 'AdminGetTag' test.out

#- 27 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "XepJMA0I"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateTag' test.out

#- 28 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'UAT2HSmq' \
    --body '{"tag": "GsyHkijV"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateTag' test.out

#- 29 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'fwRAenBV' \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteTag' test.out

#- 30 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetType' test.out

#- 31 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["QHopFaTz", "qPE4Sk3j", "wOMVdy3l"], "type": "izKo9yTS"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateType' test.out

#- 32 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '82Pr1BBj' \
    --body '{"subtype": ["KHaWQ7Q0", "QQ2b399i", "nPfajcHt"], "type": "gjhBpZaB"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateType' test.out

#- 33 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'vYIn8bFl' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteType' test.out

#- 34 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'wVV8O5Ij' \
    --limit '31' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetChannel' test.out

#- 35 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'oupmU5lY' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteAllUserChannels' test.out

#- 36 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'gD6359uq' \
    --namespace $AB_NAMESPACE \
    --userId 'tEuS3Ly0' \
    --body '{"name": "Ah31AkXB"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateChannel' test.out

#- 37 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'tNbC09XG' \
    --namespace $AB_NAMESPACE \
    --userId 'iHZGjuvQ' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteChannel' test.out

#- 38 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'EDMEmXVr' \
    --contentId 'firg5r1X' \
    --namespace $AB_NAMESPACE \
    --userId 'HlH0W6mD' \
    --body '{"contentType": "Xcu59Wn4", "fileExtension": "FNh1is26", "name": "k83Phyfg", "preview": "YgGSOxqJ", "previewMetadata": {"previewContentType": "aymjQXnl", "previewFileExtension": "hmq66plT"}, "subType": "OGooFVqw", "tags": ["SuUw3sBC", "TL2RA2sS", "jgY0M9Sz"], "type": "ZUTQdcCW"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateContentS3' test.out

#- 39 AdminUpdateContentDirect
eval_tap 0 39 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 40 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '4SYfPBgr' \
    --contentId '1wTt0ojU' \
    --namespace $AB_NAMESPACE \
    --userId 'Wi6lIihj' \
    > test.out 2>&1
eval_tap $? 40 'AdminDeleteContent' test.out

#- 41 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'Tj1I5Iay' \
    --limit '12' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetContent' test.out

#- 42 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'fFH7jQiU' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAllUserContents' test.out

#- 43 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'Yxadmckv' \
    --namespace $AB_NAMESPACE \
    --userId 'wkVTg6VK' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminHideUserContent' test.out

#- 44 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'rMzOM411' \
    --limit '98' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetAllGroups' test.out

#- 45 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'VwWJkh54' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteAllUserGroup' test.out

#- 46 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'XbQgCq0A' \
    --namespace $AB_NAMESPACE \
    --userId 'mR53jElm' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetGroup' test.out

#- 47 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'pwN4Ggn0' \
    --namespace $AB_NAMESPACE \
    --userId 'oXNUynsj' \
    --body '{"contents": ["M6N3AfV7", "zVRpeT2B", "ubNoz2Ti"], "name": "EGHPht2t"}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateGroup' test.out

#- 48 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'WMb9rAH8' \
    --namespace $AB_NAMESPACE \
    --userId '9HjxTgbp' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteGroup' test.out

#- 49 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'CWt0CjOe' \
    --namespace $AB_NAMESPACE \
    --userId 'suEVkw9q' \
    --limit '78' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetGroupContents' test.out

#- 50 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'miQTJz6M' \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteAllUserStates' test.out

#- 51 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '8SZS6kJA' \
    --namespace $AB_NAMESPACE \
    --creator 'nSgAgxAx' \
    --isofficial 'Gufu9GUH' \
    --limit '69' \
    --name 'S6X5rALt' \
    --offset '100' \
    --orderby 'YipGu76c' \
    --sortby '89BtWh6f' \
    --subtype '58sQZFt1' \
    --tags '["duTDA3Qg", "oSC8Bsav", "p1KsWrZ2"]' \
    --type 'y99SiH0q' \
    --userId 'SfCEgxJR' \
    > test.out 2>&1
eval_tap $? 51 'SearchChannelSpecificContent' test.out

#- 52 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'ufwu8Sqk' \
    --isofficial '67P27ter' \
    --limit '54' \
    --name 'edxfgVdZ' \
    --offset '86' \
    --orderby 'hvieFFQu' \
    --sortby 'rhlTrNzh' \
    --subtype 'RHkndqEL' \
    --tags '["s3xqP5Gj", "pg9vth7P", "ALuAriJr"]' \
    --type '4wcRkOb2' \
    --userId 'CRf7EGTw' \
    > test.out 2>&1
eval_tap $? 52 'PublicSearchContent' test.out

#- 53 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ruIdU2YK", "xsxjOVDk", "muqGa5NT"]}' \
    > test.out 2>&1
eval_tap $? 53 'PublicGetContentBulk' test.out

#- 54 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 54 'GetFollowedContent' test.out

#- 55 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '62' \
    --name 'GlbtBGEw' \
    --offset '0' \
    --orderby 'fWdthxkD' \
    --sortby 'VUNT6rBM' \
    --subtype '8egh3uLq' \
    --tags '["Wt28jd7m", "TBVzN9J5", "j96HwDJf"]' \
    --type 'sLQMM6ec' \
    > test.out 2>&1
eval_tap $? 55 'GetLikedContent' test.out

#- 56 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '3SiASjmA' \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByShareCode' test.out

#- 57 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '1i9Abxd3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByContentID' test.out

#- 58 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'PeL3hwDv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AddDownloadCount' test.out

#- 59 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'mYFw2r7I' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateContentLikeStatus' test.out

#- 60 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'bQo7MZGI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentPreview' test.out

#- 61 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 61 'GetTag' test.out

#- 62 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 62 'GetType' test.out

#- 63 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '70' \
    --orderby 'Bm8dfuVc' \
    --sortby 'aY6XEzgz' \
    > test.out 2>&1
eval_tap $? 63 'PublicSearchCreator' test.out

#- 64 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 64 'GetFollowedUsers' test.out

#- 65 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'vt58MBZ7' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCreator' test.out

#- 66 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'zInJvyzN' \
    --limit '88' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 66 'GetChannels' test.out

#- 67 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'BezD7JXs' \
    --body '{"name": "qDSGMgOw"}' \
    > test.out 2>&1
eval_tap $? 67 'CreateChannel' test.out

#- 68 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'ATF7kasw' \
    > test.out 2>&1
eval_tap $? 68 'DeleteAllUserChannel' test.out

#- 69 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'yeKvN5OO' \
    --namespace $AB_NAMESPACE \
    --userId 'DUnh4tba' \
    --body '{"name": "EV6KmKKa"}' \
    > test.out 2>&1
eval_tap $? 69 'UpdateChannel' test.out

#- 70 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'vSajt9Lk' \
    --namespace $AB_NAMESPACE \
    --userId 'MKnj1O6X' \
    > test.out 2>&1
eval_tap $? 70 'DeleteChannel' test.out

#- 71 CreateContentDirect
eval_tap 0 71 'CreateContentDirect # SKIP deprecated' test.out

#- 72 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'T6lAlvmT' \
    --namespace $AB_NAMESPACE \
    --userId 'yVE6GZH5' \
    --body '{"contentType": "VC1cRelA", "fileExtension": "zWdGZHB2", "name": "p5A3hNYG", "preview": "68hbX6mK", "previewMetadata": {"previewContentType": "vrdi0AVo", "previewFileExtension": "0CtlgxUn"}, "subType": "yYJkojWw", "tags": ["oqtq5uIz", "JjuXsijb", "Qu7X0wx0"], "type": "NfMh3IDM"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateContentS3' test.out

#- 73 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'gxtFo8dY' \
    --contentId 'K2wJUiuw' \
    --namespace $AB_NAMESPACE \
    --userId 'P9A5Sr9z' \
    --body '{"contentType": "AC2piV3H", "fileExtension": "1mtOz0d4", "name": "ZoLvKuiR", "preview": "4fs8fQhc", "previewMetadata": {"previewContentType": "3QqF11qo", "previewFileExtension": "AKs6myfy"}, "subType": "Xvtg4kwZ", "tags": ["X3376qUx", "zmGdtoW2", "UGSWFwwP"], "type": "Y4UQqD46"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateContentS3' test.out

#- 74 UpdateContentDirect
eval_tap 0 74 'UpdateContentDirect # SKIP deprecated' test.out

#- 75 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '64exqSWv' \
    --contentId '5pADuvaL' \
    --namespace $AB_NAMESPACE \
    --userId 'PZR36E3Q' \
    > test.out 2>&1
eval_tap $? 75 'DeleteContent' test.out

#- 76 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'mseTb2AV' \
    --limit '56' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 76 'PublicGetUserContent' test.out

#- 77 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '821kG6Un' \
    > test.out 2>&1
eval_tap $? 77 'DeleteAllUserContents' test.out

#- 78 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'mebdvusl' \
    --namespace $AB_NAMESPACE \
    --userId 'e9leOvXD' \
    --body '{"screenshots": [{"description": "e9ahbIln", "screenshotId": "3c7rA6Er"}, {"description": "qDbnoVQf", "screenshotId": "o7p9AtYx"}, {"description": "DUAZPyjK", "screenshotId": "l1AmW4K0"}]}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateScreenshots' test.out

#- 79 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'TIukpQfm' \
    --namespace $AB_NAMESPACE \
    --userId 'aqI1H4rQ' \
    --body '{"screenshots": [{"contentType": "Wk0vctOy", "description": "O0NvcwYs", "fileExtension": "png"}, {"contentType": "lj4PdxE9", "description": "eWrpDcNO", "fileExtension": "pjp"}, {"contentType": "jqZurHKs", "description": "ZYbmUrjr", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UploadContentScreenshot' test.out

#- 80 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'lGUaMs2K' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'rientCpZ' \
    --userId 'vvWwOujq' \
    > test.out 2>&1
eval_tap $? 80 'DeleteContentScreenshot' test.out

#- 81 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'D0y5GUGj' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateUserFollowStatus' test.out

#- 82 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'S0ohszKj' \
    --limit '7' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowers' test.out

#- 83 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'ZDVpklIl' \
    --limit '10' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowing' test.out

#- 84 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'XXlOjzzg' \
    --limit '13' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 84 'GetGroups' test.out

#- 85 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'uRJhYBe4' \
    --body '{"contents": ["hS0kKIKf", "Kb9V6GmF", "MU5eC3Pg"], "name": "y7mgN7r8"}' \
    > test.out 2>&1
eval_tap $? 85 'CreateGroup' test.out

#- 86 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'xCVSn4Sl' \
    > test.out 2>&1
eval_tap $? 86 'DeleteAllUserGroup' test.out

#- 87 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'U8k0UjZT' \
    --namespace $AB_NAMESPACE \
    --userId 'HnRqJFNc' \
    > test.out 2>&1
eval_tap $? 87 'GetGroup' test.out

#- 88 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId '4ZkMSh18' \
    --namespace $AB_NAMESPACE \
    --userId 'YU5LZRSa' \
    --body '{"contents": ["NLCAclzc", "7e6DoMQB", "GIKCtpmg"], "name": "A4Lu2VYd"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateGroup' test.out

#- 89 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'gbdGcfXx' \
    --namespace $AB_NAMESPACE \
    --userId 'WzTrwbXS' \
    > test.out 2>&1
eval_tap $? 89 'DeleteGroup' test.out

#- 90 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'SqNO8Y2f' \
    --namespace $AB_NAMESPACE \
    --userId 'Z2NKvJQe' \
    --limit '67' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 90 'GetGroupContent' test.out

#- 91 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'XfsWUth1' \
    > test.out 2>&1
eval_tap $? 91 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE