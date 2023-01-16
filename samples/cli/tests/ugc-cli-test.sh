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
    --limit '96' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "QCMcceI4"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'XBqWvl21' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "sGPKBxNc"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId '0z5UKAQV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'zftntXXc' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "JG68NBUI", "customAttributes": {"RVTq0LfU": {}, "PnZeWp2P": {}, "8s3qPRBu": {}}, "fileExtension": "JLbL9aii", "name": "x8oveF5C", "preview": "1wbApTj2", "previewMetadata": {"previewContentType": "mSuX1lJf", "previewFileExtension": "VzyyCXkA"}, "subType": "YFzpzhOx", "tags": ["sBe6BI6i", "yAJsfmYa", "VLCBG8c5"], "type": "LCnfToUR"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'ot6tQ0GC' \
    --contentId 'MCKMQWGw' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "S4bQ1Q2S", "customAttributes": {"2CVZUWtg": {}, "VmGaoAN1": {}, "moXHiWD6": {}}, "fileExtension": "kreBgBs7", "name": "rPKrXE1m", "preview": "lwuA36lH", "previewMetadata": {"previewContentType": "Ch16PZmL", "previewFileExtension": "5LDiwlKA"}, "subType": "QF1b4HIX", "tags": ["M6gMtNNo", "Z9ZO9U9i", "uzPyIiWI"], "type": "aiYv7o86"}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'YUPngq0r' \
    --namespace $AB_NAMESPACE \
    --creator 'HrFh8yqF' \
    --isofficial 'L0enEYeo' \
    --limit '58' \
    --name '3YHJcvxr' \
    --offset '18' \
    --orderby 'DRApxA1i' \
    --sortby 'g3TUbU5V' \
    --subtype 'LALK9QpO' \
    --tags '["IzYWUhCl", "FBugFxDx", "8vVxeVHA"]' \
    --type 'V0dhWBsG' \
    --userId 'qnRa4MJB' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '2WTTF3bE' \
    --contentId 'nLnhmPkd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ZDvaCHOn", "EwIcDx07", "s3BTLcab"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'GXrSMR0O' \
    --isofficial 'pmr8oIis' \
    --limit '41' \
    --name 'ePHdlFx6' \
    --offset '14' \
    --orderby 'U45gH0Ri' \
    --sortby 'peAYBswg' \
    --subtype '24TpMhPr' \
    --tags '["9qy850tN", "nGDmesbd", "osCb2GCy"]' \
    --type 'Cldiqpg0' \
    --userId '3ZiMF26D' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'I5Kk0Qpw' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'URwQFIh0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'btVrCXBN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'JdEpr1hH' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "M68VpDpp", "screenshotId": "vT57KUwI"}, {"description": "mGmQKBXu", "screenshotId": "af4H522a"}, {"description": "X7UFQiKz", "screenshotId": "0iTkCnwC"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'rXBuInBy' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "EmJXYjNb", "description": "1je8fpWr", "fileExtension": "jpg"}, {"contentType": "03ZgznEA", "description": "8DepKtjF", "fileExtension": "pjp"}, {"contentType": "OH4KlWnM", "description": "bTa2k8cc", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'NDmhap8A' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'VcFcnxYH' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["pGjJ6aQ6", "WLDvu0YV", "z7RPg7Iq"], "name": "7xV20kxD"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'zqdTOn9t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'oT0B5oEP' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["pLaoDUME", "a245dHSx", "P9y9JEPy"], "name": "YkTBeMfi"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'y3aQ66ut' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'QAGaZwqm' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "F1WOdjA7"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'WdbVJAQF' \
    --body '{"tag": "FQlFOsVW"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'SrblEK36' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["xmU9VB4I", "mtBwxt8U", "HRcy7zTf"], "type": "9avv1bVs"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'jPJ8xIsc' \
    --body '{"subtype": ["cxiLOlca", "eTSvEVXQ", "sUrUo13x"], "type": "6Qj0eUnn"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'A2ym0HLt' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'mzPB9GZ6' \
    --limit '16' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'Jwm5aBfS' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'JVBnZ0Mh' \
    --namespace $AB_NAMESPACE \
    --userId '4v3eOGLJ' \
    --body '{"name": "r7LVELFG"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'xLbATT1l' \
    --namespace $AB_NAMESPACE \
    --userId '9Brb7NxR' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'Of6ab8Eb' \
    --contentId 'aNcudBLl' \
    --namespace $AB_NAMESPACE \
    --userId 'fBmo4wfk' \
    --body '{"contentType": "Lu68UmEI", "customAttributes": {"zEIfzb8v": {}, "dvVW96jC": {}, "JOOkBDqJ": {}}, "fileExtension": "vpqIRp9K", "name": "r7RcPTQc", "preview": "etKCRBba", "previewMetadata": {"previewContentType": "cXalRG1d", "previewFileExtension": "idGyhL79"}, "subType": "DvpvjTjC", "tags": ["V8xnQCe5", "3xPGXP13", "dZDPSHcV"], "type": "hrqQV7kJ"}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'HyJE3ZlK' \
    --contentId 'CTQII9J8' \
    --namespace $AB_NAMESPACE \
    --userId 's83mkTh6' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'EMPy3KM3' \
    --limit '24' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'OkQvcjw1' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'AAoPW16x' \
    --namespace $AB_NAMESPACE \
    --userId 'PKuA1mEh' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'RWAoOPSQ' \
    --limit '1' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'p2CPFQDv' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'etxeZUxq' \
    --namespace $AB_NAMESPACE \
    --userId '3roH6asr' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'EFHHWUnB' \
    --namespace $AB_NAMESPACE \
    --userId '6UqXrnE6' \
    --body '{"contents": ["bKbYiKQ7", "CrLx9qY5", "aFRxWNN8"], "name": "shRqf9UF"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '7Yr7qrwC' \
    --namespace $AB_NAMESPACE \
    --userId 'vggjggtc' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'FauQf64V' \
    --namespace $AB_NAMESPACE \
    --userId 'Jathibk6' \
    --limit '24' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'hFMaJknf' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'Bj8zM2kg' \
    --namespace $AB_NAMESPACE \
    --creator 'iMTj02OM' \
    --isofficial 'oAgg5vcz' \
    --limit '62' \
    --name 'jClWKa0G' \
    --offset '82' \
    --orderby 'xeN8acyN' \
    --sortby 'OxN5g8kG' \
    --subtype '7J0nHEPr' \
    --tags '["Dtz5xtEJ", "qi3znmHc", "gMB0dIfa"]' \
    --type 'jZjcBNqU' \
    --userId 'bpPBCUBF' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'z5LwcDbj' \
    --isofficial 'jirarF2v' \
    --limit '47' \
    --name '4U3uvFXy' \
    --offset '36' \
    --orderby 'jLrBlOt5' \
    --sortby 'Z3ILZeBW' \
    --subtype 'Oc5BsSo4' \
    --tags '["gl21BFxI", "Ub7dcsS1", "KD0DF1J3"]' \
    --type 'wk6mTUJT' \
    --userId 'bnGE2CsA' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["zfOFDpbf", "ZGoCaMCk", "aEBXAOFT"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '55' \
    --name 'uHdMRRCX' \
    --offset '59' \
    --orderby 'UsH9PxdL' \
    --sortby 'YHXeAA0u' \
    --subtype 'Ee8fVT4K' \
    --tags '["hpjRYKuq", "GfFHAmNP", "Ux1Beukl"]' \
    --type 'nG3MNosy' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'V9q9pCzE' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'TpOEilrz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'fMPTjzKY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId '0cw1fnKC' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'wlWhC7Wq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '80' \
    --orderby 'e1ZrLZe1' \
    --sortby 'STUCRv2S' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'esZKaTn8' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'YXRuUCG5' \
    --limit '31' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId '3uOhx7Sl' \
    --body '{"name": "Vt2FMYo0"}' \
    > test.out 2>&1
eval_tap $? 68 'CreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'YymmHHDW' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'SmMPTPYm' \
    --namespace $AB_NAMESPACE \
    --userId '54WFZ7cI' \
    --body '{"name": "4no2Z4v9"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'c2fv1Zce' \
    --namespace $AB_NAMESPACE \
    --userId 'lQh2J5t2' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'dpkHjU27' \
    --namespace $AB_NAMESPACE \
    --userId 'joP0NOPe' \
    --body '{"contentType": "PTT4OyUP", "customAttributes": {"0Ol23Eug": {}, "imzPgLzz": {}, "jsw6W9Xd": {}}, "fileExtension": "8g0OT3km", "name": "gruOR6sT", "preview": "cXrkmJVt", "previewMetadata": {"previewContentType": "uJKSyYjH", "previewFileExtension": "xQPXaBcO"}, "subType": "n2Z1qd8h", "tags": ["96IZqB6S", "2JuksHV0", "wgpIzJmV"], "type": "GyI4TODp"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'SpaaM8EC' \
    --contentId '3IV7bUR1' \
    --namespace $AB_NAMESPACE \
    --userId '1m6LRscf' \
    --body '{"contentType": "ShsQSlsD", "customAttributes": {"haHOxYMH": {}, "2v3Fw7ET": {}, "ThSyIpqw": {}}, "fileExtension": "PTShOTXW", "name": "j1aReMrR", "preview": "1Vf8YTlN", "previewMetadata": {"previewContentType": "NuX1Ik6Q", "previewFileExtension": "SMHxDDn8"}, "subType": "EAzoElNY", "tags": ["RM76I2Wu", "gk9PONyO", "ZL0FfEev"], "type": "qvyDUmz9"}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '9kxGGWhk' \
    --contentId '6VDzwvIB' \
    --namespace $AB_NAMESPACE \
    --userId '9CGlJSCy' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'j08ZCvJB' \
    --limit '18' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'c0sKjzDd' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'NpQfnN7d' \
    --namespace $AB_NAMESPACE \
    --userId 'SoKgJmd7' \
    --body '{"screenshots": [{"description": "iOkVLkYy", "screenshotId": "qhkIKwZ6"}, {"description": "I2LdUlcr", "screenshotId": "od3XjIoP"}, {"description": "LpjUGqYM", "screenshotId": "uCXpz1tI"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '5iQGFhHx' \
    --namespace $AB_NAMESPACE \
    --userId 'AnpRCTo7' \
    --body '{"screenshots": [{"contentType": "NuNJibMV", "description": "Y8EhOrxk", "fileExtension": "pjp"}, {"contentType": "QxmGE1TP", "description": "orIOOCeU", "fileExtension": "bmp"}, {"contentType": "RKhuD1sr", "description": "svp1s3zE", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'aUErJ5wF' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'klLiXg3L' \
    --userId 'zjRGIigK' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'R7iuAbNC' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'of2cBJEd' \
    --limit '96' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'VHn0JJ4S' \
    --limit '25' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'Val4uR1a' \
    --limit '50' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'LYiWnKMw' \
    --body '{"contents": ["9uQrPas1", "UuYHseEq", "vu4tjQj8"], "name": "4BOWbyP2"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'E8jTVxDw' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'qyWkaWca' \
    --namespace $AB_NAMESPACE \
    --userId 'L4PSgkWb' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'frbcpI9Q' \
    --namespace $AB_NAMESPACE \
    --userId 'WhIQbM6a' \
    --body '{"contents": ["6SUWKDDh", "CQX3GmpS", "nLB2iINa"], "name": "tIs60XD3"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'Q2HXglv1' \
    --namespace $AB_NAMESPACE \
    --userId 'g9BF50jx' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '6brtVEjK' \
    --namespace $AB_NAMESPACE \
    --userId 'IvBbuwXJ' \
    --limit '50' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'fhpnexbQ' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE