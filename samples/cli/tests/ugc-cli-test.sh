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
    --limit '29' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "KN323NQi"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'x5vueJE4' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "oZ61vq3m"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'wcWSBlcx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'H93mye1y' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "HmkrePKq", "fileExtension": "hkcIS0xA", "name": "vgNoeKEB", "preview": "izneM0UN", "previewMetadata": {"previewContentType": "nsUlNqp1", "previewFileExtension": "uqTKSUsk"}, "subType": "msq8kARJ", "tags": ["ZR4yLhz5", "RhZGha0S", "woambbxD"], "type": "CVlKlhUC"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'Mafo5NVS' \
    --contentId 'lfhEx8XH' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "caxhLsTD", "fileExtension": "TkFQrBLs", "name": "5xzT7vuh", "preview": "xBiF6Rxh", "previewMetadata": {"previewContentType": "4NRKztlh", "previewFileExtension": "4ASiDqcd"}, "subType": "iCGrGVq6", "tags": ["baMlHoeV", "GpqX8VnI", "k3QgitTa"], "type": "ZWCPyMsc"}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'ifxsqiBg' \
    --namespace $AB_NAMESPACE \
    --creator 'W7MYx0B1' \
    --isofficial 'XwPhpbeR' \
    --limit '100' \
    --name 'O2GTpNml' \
    --offset '68' \
    --orderby 'GMQ9YAGF' \
    --sortby 'AZnKmYOp' \
    --subtype 'vrsSXJwS' \
    --tags '["zmUj85c9", "UYXORJYL", "tmXHLM9H"]' \
    --type 'PfEUig25' \
    --userId 'PtdGaRVs' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'TVa99m3y' \
    --contentId 'ftsxleXK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'VHFj6O6G' \
    --isofficial 'lROTpF05' \
    --limit '72' \
    --name '2kRIR1c5' \
    --offset '49' \
    --orderby 'CzJbJgBZ' \
    --sortby 'N36zB4zG' \
    --subtype 'qsivpqas' \
    --tags '["wMOG3dpx", "3SjKsbDT", "JaTNYmrn"]' \
    --type 'b2JN2YvQ' \
    --userId 'OwvbmpeZ' \
    > test.out 2>&1
eval_tap $? 13 'AdminSearchContent' test.out

#- 14 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'ViCDHAry' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserContentByShareCode' test.out

#- 15 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'DLJkWn0O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetSpecificContent' test.out

#- 16 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '5tTSlqjJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDownloadContentPreview' test.out

#- 17 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'BvrjvZDN' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "1uYnEvJt", "screenshotId": "HVsvBwVu"}, {"description": "1YIoBSn5", "screenshotId": "eOkag2ME"}, {"description": "lV57xZ0g", "screenshotId": "Xfpvw4nU"}]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateScreenshots' test.out

#- 18 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId '3tD5pbWP' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "WcqaIQOX", "description": "X0NJlIW9", "fileExtension": "jfif"}, {"contentType": "cBllR3vi", "description": "ONryEdSC", "fileExtension": "jpg"}, {"contentType": "9bAdbzzp", "description": "tXaS4d0t", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUploadContentScreenshot' test.out

#- 19 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'Fktqr5lQ' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'KDpR67sE' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteContentScreenshot' test.out

#- 20 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 20 'SingleAdminGetAllGroups' test.out

#- 21 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["owGDwYWe", "QuR4kc0g", "OcHC7TQM"], "name": "EADjJwQO"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateGroup' test.out

#- 22 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'g4eGEWeB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetGroup' test.out

#- 23 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'HIgv3A98' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["qiQKfTEe", "WiFUi8nI", "XzXhMj42"], "name": "Z3CB3i0C"}' \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminUpdateGroup' test.out

#- 24 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'hDoB5b0k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminDeleteGroup' test.out

#- 25 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'fWVwPGQX' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminGetGroupContents' test.out

#- 26 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 26 'AdminGetTag' test.out

#- 27 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "y9sw59ps"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateTag' test.out

#- 28 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'bBKJOlpp' \
    --body '{"tag": "iuEBjOlE"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateTag' test.out

#- 29 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'M6oCz3KT' \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteTag' test.out

#- 30 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetType' test.out

#- 31 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["53pJ0UTn", "nqye5oUp", "W6omnbqZ"], "type": "SQXRHBop"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateType' test.out

#- 32 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'hSjQDhQl' \
    --body '{"subtype": ["JD2rDBb3", "VO1U124e", "l1DkIo0g"], "type": "NQ5nHXLU"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateType' test.out

#- 33 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '9avRv4Ht' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteType' test.out

#- 34 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId '7NQNl9RX' \
    --limit '47' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetChannel' test.out

#- 35 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'MvWhA55A' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteAllUserChannels' test.out

#- 36 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '4Husgw10' \
    --namespace $AB_NAMESPACE \
    --userId 'pfUMXKco' \
    --body '{"name": "XAK4uVv2"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateChannel' test.out

#- 37 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'ewKOIgMu' \
    --namespace $AB_NAMESPACE \
    --userId '6fNVnFIl' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteChannel' test.out

#- 38 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'WeMeibSO' \
    --contentId 'adXdlxt2' \
    --namespace $AB_NAMESPACE \
    --userId 'E5XL4Gtu' \
    --body '{"contentType": "7RRlwYxS", "fileExtension": "GJ19hPYe", "name": "F9NiB4i3", "preview": "I3DDtV1S", "previewMetadata": {"previewContentType": "iEOV4Nce", "previewFileExtension": "NyCgjVSs"}, "subType": "fhFbloGl", "tags": ["V7AJTQSu", "S8gl0AwW", "7In6Cjqj"], "type": "IG3NwKfe"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateContentS3' test.out

#- 39 AdminUpdateContentDirect
eval_tap 0 39 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 40 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'xvjummMQ' \
    --contentId '3u8wR6av' \
    --namespace $AB_NAMESPACE \
    --userId 'Sgvbvnqq' \
    > test.out 2>&1
eval_tap $? 40 'AdminDeleteContent' test.out

#- 41 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'zDYqYa6s' \
    --limit '46' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetContent' test.out

#- 42 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '25lDBcLC' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAllUserContents' test.out

#- 43 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'nqP8h3MX' \
    --namespace $AB_NAMESPACE \
    --userId 'YDRPDTfk' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminHideUserContent' test.out

#- 44 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'YZYH6X0h' \
    --limit '2' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetAllGroups' test.out

#- 45 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'zDxTlwil' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteAllUserGroup' test.out

#- 46 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId '0lp8xE7v' \
    --namespace $AB_NAMESPACE \
    --userId 'feCVepHi' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetGroup' test.out

#- 47 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'kKPDdJPh' \
    --namespace $AB_NAMESPACE \
    --userId 'sIj2mxeV' \
    --body '{"contents": ["VabsV9d5", "OxwZhGy8", "jEin3Yaj"], "name": "KV5y4jeR"}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateGroup' test.out

#- 48 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 's7PQMlG1' \
    --namespace $AB_NAMESPACE \
    --userId 'LfpRjSmz' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteGroup' test.out

#- 49 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '1ODSKnbm' \
    --namespace $AB_NAMESPACE \
    --userId 'MRBr8ROT' \
    --limit '45' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetGroupContents' test.out

#- 50 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'n9S9pl3t' \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteAllUserStates' test.out

#- 51 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'aEcpeoMn' \
    --namespace $AB_NAMESPACE \
    --creator '5kCcIAFo' \
    --isofficial 'JlrKskSp' \
    --limit '43' \
    --name 'MCb0LRCw' \
    --offset '98' \
    --orderby 'zpvrDJJm' \
    --sortby 'OZj7iguN' \
    --subtype 'qShWROhw' \
    --tags '["XWTb32mZ", "7Q2N5MTA", "3Eym0SiD"]' \
    --type 'Dshu3Fpz' \
    --userId 'j6K6D3jF' \
    > test.out 2>&1
eval_tap $? 51 'SearchChannelSpecificContent' test.out

#- 52 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '4tJECIRe' \
    --isofficial 'OuW04ipW' \
    --limit '41' \
    --name 'X9LWDkI1' \
    --offset '60' \
    --orderby 'H3FFH1qy' \
    --sortby 'DOmJNgmy' \
    --subtype 'z2w5OdfX' \
    --tags '["ba9JC5GN", "wOirlrY5", "6n94zNlz"]' \
    --type 'bKDZm4CK' \
    --userId '2FwdYhQL' \
    > test.out 2>&1
eval_tap $? 52 'PublicSearchContent' test.out

#- 53 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["2vSzE9cU", "R7hGgoID", "XxYke8sD"]}' \
    > test.out 2>&1
eval_tap $? 53 'PublicGetContentBulk' test.out

#- 54 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 54 'GetFollowedContent' test.out

#- 55 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '100' \
    --name '1RqYLexn' \
    --offset '71' \
    --orderby 'hQvoLCVc' \
    --sortby 'UvmaLnjG' \
    --subtype 'zzqLIgX6' \
    --tags '["hNQEtdRN", "xBMP0xLp", "JsFg53uT"]' \
    --type 'Ct6cxtO4' \
    > test.out 2>&1
eval_tap $? 55 'GetLikedContent' test.out

#- 56 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'RxIDp7wc' \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByShareCode' test.out

#- 57 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'fDPaTN6L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByContentID' test.out

#- 58 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'dydo9jjb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AddDownloadCount' test.out

#- 59 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'aOTCm19g' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateContentLikeStatus' test.out

#- 60 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId '2nKMQ11w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentPreview' test.out

#- 61 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 61 'GetTag' test.out

#- 62 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 62 'GetType' test.out

#- 63 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '98' \
    --orderby 'yOY64rYk' \
    --sortby 'IaT6SRdm' \
    > test.out 2>&1
eval_tap $? 63 'PublicSearchCreator' test.out

#- 64 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 64 'GetFollowedUsers' test.out

#- 65 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '8BDu4EPz' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCreator' test.out

#- 66 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '65uxqadl' \
    --limit '23' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 66 'GetChannels' test.out

#- 67 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'V3NxtTDc' \
    --body '{"name": "nTWjpH69"}' \
    > test.out 2>&1
eval_tap $? 67 'CreateChannel' test.out

#- 68 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '3Dsbd6Ch' \
    > test.out 2>&1
eval_tap $? 68 'DeleteAllUserChannel' test.out

#- 69 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '5kcY33rV' \
    --namespace $AB_NAMESPACE \
    --userId 'swPOfD9Z' \
    --body '{"name": "w9zoNmqu"}' \
    > test.out 2>&1
eval_tap $? 69 'UpdateChannel' test.out

#- 70 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'o6eA3iIb' \
    --namespace $AB_NAMESPACE \
    --userId 'vOWsJyWY' \
    > test.out 2>&1
eval_tap $? 70 'DeleteChannel' test.out

#- 71 CreateContentDirect
eval_tap 0 71 'CreateContentDirect # SKIP deprecated' test.out

#- 72 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'zib9s3kD' \
    --namespace $AB_NAMESPACE \
    --userId 'aIyFkFQA' \
    --body '{"contentType": "ma5P1tej", "fileExtension": "pE3hi3UJ", "name": "zoWFCB6w", "preview": "iaQ3X2cf", "previewMetadata": {"previewContentType": "eXYTFmQG", "previewFileExtension": "JoWIGkOy"}, "subType": "fyofUcAH", "tags": ["M9wd9v6T", "pkHXT43v", "S4w1jq2Y"], "type": "TIKRTk99"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateContentS3' test.out

#- 73 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'uDX1m4gY' \
    --contentId 'I4npGrNG' \
    --namespace $AB_NAMESPACE \
    --userId 'hZsh6XYQ' \
    --body '{"contentType": "P5wfeR0j", "fileExtension": "9snaxJ8V", "name": "PwHy4JWS", "preview": "41S4aEzc", "previewMetadata": {"previewContentType": "rwvCDp6a", "previewFileExtension": "1FQNmv35"}, "subType": "3KxZcUqI", "tags": ["QinhV69V", "VXfYGb6k", "C0DMK7uA"], "type": "bZrlMSVo"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateContentS3' test.out

#- 74 UpdateContentDirect
eval_tap 0 74 'UpdateContentDirect # SKIP deprecated' test.out

#- 75 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'GXN45ZfS' \
    --contentId 'uemxPV2a' \
    --namespace $AB_NAMESPACE \
    --userId 'gsFS9OEz' \
    > test.out 2>&1
eval_tap $? 75 'DeleteContent' test.out

#- 76 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'yZ4g8SEP' \
    --limit '25' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 76 'PublicGetUserContent' test.out

#- 77 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'Q2umSj7V' \
    > test.out 2>&1
eval_tap $? 77 'DeleteAllUserContents' test.out

#- 78 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId '5nzWcqyu' \
    --namespace $AB_NAMESPACE \
    --userId 'eaRjZvSr' \
    --body '{"screenshots": [{"description": "je4rsGCh", "screenshotId": "WWT7RakE"}, {"description": "zxjNnooO", "screenshotId": "8w7fT64Y"}, {"description": "qdqWlvQR", "screenshotId": "nS4ggzj2"}]}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateScreenshots' test.out

#- 79 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'sXpn6hK1' \
    --namespace $AB_NAMESPACE \
    --userId 'UkWuqy6S' \
    --body '{"screenshots": [{"contentType": "gs5EGtT1", "description": "cPxaWovq", "fileExtension": "jfif"}, {"contentType": "5T8R6ux1", "description": "3QZKNZA4", "fileExtension": "png"}, {"contentType": "xG2y67Ms", "description": "j3VzZwnK", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UploadContentScreenshot' test.out

#- 80 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'Rl7Qy5vZ' \
    --namespace $AB_NAMESPACE \
    --screenshotId '6eUo9KFs' \
    --userId 'nb7YAZhF' \
    > test.out 2>&1
eval_tap $? 80 'DeleteContentScreenshot' test.out

#- 81 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId '5Zv1fkjy' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateUserFollowStatus' test.out

#- 82 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'qQbnXIz7' \
    --limit '78' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowers' test.out

#- 83 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'LTId2tik' \
    --limit '2' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowing' test.out

#- 84 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'lenYjnhJ' \
    --limit '20' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 84 'GetGroups' test.out

#- 85 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'tT2nHTZT' \
    --body '{"contents": ["ZqYi0L8j", "UJ9t1mHc", "IZZeJvaH"], "name": "6eTpRMVC"}' \
    > test.out 2>&1
eval_tap $? 85 'CreateGroup' test.out

#- 86 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'jy1lnMse' \
    > test.out 2>&1
eval_tap $? 86 'DeleteAllUserGroup' test.out

#- 87 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '85tPXuCR' \
    --namespace $AB_NAMESPACE \
    --userId 'cYZABYb4' \
    > test.out 2>&1
eval_tap $? 87 'GetGroup' test.out

#- 88 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'HV39DcYv' \
    --namespace $AB_NAMESPACE \
    --userId '9BnSInfW' \
    --body '{"contents": ["Uyc50GbR", "F38Mdkln", "bsSza53B"], "name": "BwxWBr9l"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateGroup' test.out

#- 89 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'moL4gXnN' \
    --namespace $AB_NAMESPACE \
    --userId 'z5j3PxZo' \
    > test.out 2>&1
eval_tap $? 89 'DeleteGroup' test.out

#- 90 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'S6PAttSG' \
    --namespace $AB_NAMESPACE \
    --userId 'bLoAU599' \
    --limit '26' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 90 'GetGroupContent' test.out

#- 91 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'vw77YXHG' \
    > test.out 2>&1
eval_tap $? 91 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE