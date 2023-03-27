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
    --limit '53' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "G86j6tre"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'xor7NWr5' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "O3bpZJIn"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'ijBr7Pz5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'rR2pEvW0' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "CVmvNMmD", "customAttributes": {"16ixvQGR": {}, "CLfkak62": {}, "KTcbQD2o": {}}, "fileExtension": "1ZX1LbWa", "name": "mMJEinRO", "preview": "JexIZrC8", "previewMetadata": {"previewContentType": "qH325KSo", "previewFileExtension": "TYe28b9w"}, "subType": "weH9tV1J", "tags": ["uC4qWmjn", "3LrczU58", "8lKMK5pT"], "type": "CmZrTMXY"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'DjeCHCan' \
    --contentId 'N2OEjMKn' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "NZKkBjNz", "customAttributes": {"ZnQBBddM": {}, "VNc6qTCk": {}, "031OmIaI": {}}, "fileExtension": "lpllLmcp", "name": "AU80Xzfj", "payload": "VAaWA9N6", "preview": "8XR3PBeY", "previewMetadata": {"previewContentType": "OI02UE7b", "previewFileExtension": "EqOSZL72"}, "subType": "xLt2j0Pw", "tags": ["vQZUQBpW", "TXNbREAe", "yZrrS1LK"], "type": "6pta0RRN", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'qJPOnRpk' \
    --namespace $AB_NAMESPACE \
    --creator 'G4xguRMG' \
    --isofficial 'UwXuqDG0' \
    --limit '92' \
    --name '2RWg0eeg' \
    --offset '90' \
    --orderby 'vXCzF3jr' \
    --sortby '2eaWwoIO' \
    --subtype 'r2lEvaft' \
    --tags '["3dyxiFmi", "8UTnrBdH", "gzSBEPor"]' \
    --type 'B8j4o7zV' \
    --userId 'hxObBgCg' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '5Z1vkqDW' \
    --contentId 'VuTB45vo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["2o1PLwre", "8c8wFh4D", "8ZYdFGKM"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'YnjLVoz6' \
    --isofficial 'nVutvn9W' \
    --limit '87' \
    --name 'bpP1ACe6' \
    --offset '18' \
    --orderby 'VX3CDqV9' \
    --sortby '9EDehfNF' \
    --subtype 'UyCykJi0' \
    --tags '["4LhgGs2y", "hp7H2DkQ", "mYXrIwJS"]' \
    --type 'hP65bAwu' \
    --userId 'W0LTTCWA' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'nS0Wzjmy' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'mofBmQw3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'Mltw7X5B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'FiGTsvlS' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "ubLbZuv0", "screenshotId": "ZrQldOfS"}, {"description": "LlQ4ERTq", "screenshotId": "oSaqerxL"}, {"description": "iJnZ3J2F", "screenshotId": "UAChjEfU"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'RjYexpEB' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "0GZKDjhX", "description": "6O7Js843", "fileExtension": "png"}, {"contentType": "cNLlQLsd", "description": "4A8TvipT", "fileExtension": "png"}, {"contentType": "5RTEI6EQ", "description": "69Ic8hqD", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'iBm3JyOA' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'sJ9hm6WV' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["XUHlkPtJ", "KJnc3sPR", "XpRrA2Vh"], "name": "Eq5hDzsb"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'BumP76tN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'vPysXZcU' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["nTEtcxrE", "T92ufe5G", "XSZ9wlmz"], "name": "wcqrfIik"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'VSCRgdgo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'R9x75DyS' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "ayPYbiFJ"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'MXBWTtFv' \
    --body '{"tag": "Po2gJ03N"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '59bxPPSs' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["rm7nKFtf", "miPGklZC", "ISF5Qes6"], "type": "rfBjhzVX"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '6S7wxaFT' \
    --body '{"subtype": ["5vdFffY3", "2Zz5ZtTy", "FkCsaHXV"], "type": "vz0PNpiZ"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'd7Oqk1S5' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'm7CUviHX' \
    --limit '15' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '4IZUErbH' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'PwySX7rq' \
    --namespace $AB_NAMESPACE \
    --userId 'CSqiUmAl' \
    --body '{"name": "mWETxXoJ"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '30yZk1tE' \
    --namespace $AB_NAMESPACE \
    --userId 'rH9Q6zTo' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'CGHaB5bf' \
    --contentId 'FmdK34sk' \
    --namespace $AB_NAMESPACE \
    --userId 'ka88gGba' \
    --body '{"contentType": "nIBFYLLM", "customAttributes": {"kZFF34UF": {}, "FuDS6nWI": {}, "AYnb1b4T": {}}, "fileExtension": "ZW6hma3T", "name": "f76tpitp", "payload": "1X6OESlZ", "preview": "T0anRqOT", "previewMetadata": {"previewContentType": "jvrqNvek", "previewFileExtension": "SbVicni0"}, "subType": "eClxC8da", "tags": ["4ozJmVW7", "iWRlDKY7", "EH2uaJv0"], "type": "votCTHiv", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'TdmR0GCr' \
    --contentId 'YWGQJ3fU' \
    --namespace $AB_NAMESPACE \
    --userId 'YbGPHWI4' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'awg95iSO' \
    --limit '69' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'eZaPcz7P' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'Fg4FhCht' \
    --namespace $AB_NAMESPACE \
    --userId 'RTYLCKrl' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'CtntDMUf' \
    --limit '85' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'wzNJX5OV' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'bhlUApmI' \
    --namespace $AB_NAMESPACE \
    --userId '82ZsTmJz' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'dFONhzem' \
    --namespace $AB_NAMESPACE \
    --userId 'Ue3qbNvp' \
    --body '{"contents": ["j1CiclGn", "xLxfzPTt", "3Wdv5C7v"], "name": "uDcDIYzv"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'mbj3oNT8' \
    --namespace $AB_NAMESPACE \
    --userId 'laT1gmCI' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '61yXMCyL' \
    --namespace $AB_NAMESPACE \
    --userId '4iyGKzdr' \
    --limit '97' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'KE43T8nH' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'TeUMi52M' \
    --namespace $AB_NAMESPACE \
    --creator '4CoizaTB' \
    --isofficial '0yNFsFyJ' \
    --limit '52' \
    --name 'azeJUSHB' \
    --offset '49' \
    --orderby 'jWkUGKMd' \
    --sortby '7Ex67usO' \
    --subtype 'VD05c3b9' \
    --tags '["oJnaIVGD", "LhbKRYcm", "xzmTKTaQ"]' \
    --type 'twRfiVtS' \
    --userId 'r8KYUwxv' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '8TVfCW3C' \
    --isofficial 'UzjbSK2m' \
    --limit '18' \
    --name 'NIJ61xFO' \
    --offset '4' \
    --orderby 'IXHf3Z6D' \
    --sortby 'n5jDgcR8' \
    --subtype 'oNByJwij' \
    --tags '["m4eKKzxw", "binGlhln", "fvhaEprs"]' \
    --type 'DLp2bEgO' \
    --userId 'lBqc5Hvk' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["wzHvMbW2", "hs5TKnd7", "5H2fpFTp"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '78' \
    --name 'fJcZso8g' \
    --offset '22' \
    --orderby '5H3omNUg' \
    --sortby 'sKzE50Dj' \
    --subtype 'DHpKlBR9' \
    --tags '["6UDnk0X5", "o9C86Mi9", "XcFiZNZA"]' \
    --type 'YjnCZtw4' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'y2wu22t9' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'ESdsCWYs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 't5pLFd50' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'nZMz91xj' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId '2AVQpn4W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '48' \
    --orderby 'BpJlr1Ld' \
    --sortby 'sXk2QQNG' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'e37r6Z4Q' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'lnzjljh0' \
    --limit '5' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'gc00rMpI' \
    --body '{"name": "dFWPczL6"}' \
    > test.out 2>&1
eval_tap $? 68 'CreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'UK55ABIY' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'qokHVTVv' \
    --namespace $AB_NAMESPACE \
    --userId 'HK1tphlR' \
    --body '{"name": "QLnFR38P"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'HVqJBvJE' \
    --namespace $AB_NAMESPACE \
    --userId '4D1zwOFX' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'kUB5FPFC' \
    --namespace $AB_NAMESPACE \
    --userId 'SKAYqYP7' \
    --body '{"contentType": "zEjK8BUu", "customAttributes": {"oVgojMEy": {}, "0gYV96Sm": {}, "cFIW6YNm": {}}, "fileExtension": "7fXouYMJ", "name": "f9wvL8c4", "preview": "qzynAmXk", "previewMetadata": {"previewContentType": "oAQD0MYx", "previewFileExtension": "0cxM3ugz"}, "subType": "68fqz1bN", "tags": ["DUUzoqe5", "Q4jmsYKy", "d5G4SeBk"], "type": "afipCKu5"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'gVYG9XVQ' \
    --contentId '3LumHHPT' \
    --namespace $AB_NAMESPACE \
    --userId 'Liw8gX8r' \
    --body '{"contentType": "3Fa1hAhN", "customAttributes": {"kRVCmZnd": {}, "xHfXnjkI": {}, "OJOFexcD": {}}, "fileExtension": "C4DnNxiO", "name": "6gOnqXr3", "payload": "2SFdZP2w", "preview": "DYGHptVb", "previewMetadata": {"previewContentType": "h90i7iEU", "previewFileExtension": "CT5X4d2f"}, "subType": "34HgKvAR", "tags": ["d0iBJ2AK", "EBrqV1KV", "xauzxBPw"], "type": "1Sz2GULQ", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'Z8vosOPL' \
    --contentId 'YNl8Kw5y' \
    --namespace $AB_NAMESPACE \
    --userId 'gaNsANpG' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'Wgm5pnnG' \
    --limit '2' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'UmcKXYlO' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'zpwp8uKf' \
    --namespace $AB_NAMESPACE \
    --userId 'ANNP502S' \
    --body '{"screenshots": [{"description": "9dEzRXkn", "screenshotId": "pT2lH761"}, {"description": "0BGMUAqu", "screenshotId": "2HwYI2tP"}, {"description": "zq95P6eA", "screenshotId": "FE1YwJZw"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'wzsHXOez' \
    --namespace $AB_NAMESPACE \
    --userId 'Ja392Mb5' \
    --body '{"screenshots": [{"contentType": "AHhNRkY4", "description": "qYTJUSpn", "fileExtension": "png"}, {"contentType": "YyK9L6jC", "description": "6lSHUmY8", "fileExtension": "png"}, {"contentType": "dxlC3DfM", "description": "Hv66PVHS", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'VNqjMyo4' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'MlPgYjFC' \
    --userId '2IWtT7U3' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'TlsS4PxQ' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId '12UBY3KX' \
    --limit '71' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId '75HKBT4A' \
    --limit '15' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId '2br7Q8Kl' \
    --limit '10' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId '3PlEdfxF' \
    --body '{"contents": ["LcTsIjCe", "doofEBrY", "mqYsdA1l"], "name": "H86HpvFs"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'wANost0O' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'b4NGqbTK' \
    --namespace $AB_NAMESPACE \
    --userId 'IDjoJlqx' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'IQkfJ1hd' \
    --namespace $AB_NAMESPACE \
    --userId 'qCQkZoBG' \
    --body '{"contents": ["X6Osjb2D", "L6vveDWR", "x8Kh0Rrx"], "name": "yEXW69rS"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId '3BVrSHiJ' \
    --namespace $AB_NAMESPACE \
    --userId '2nbxFocs' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'ACIq3T33' \
    --namespace $AB_NAMESPACE \
    --userId 'Nd6Tyr0B' \
    --limit '85' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'mQsT4hRb' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE