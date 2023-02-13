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
    --limit '47' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "AZSKNeNg"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'Kffiaaim' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "ARmxOw1n"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'BTCKTGc8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 't0KYyU5o' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "XFYCJNIO", "customAttributes": {"mQGhPTQR": {}, "VjyXeJ4U": {}, "AyrNu9wr": {}}, "fileExtension": "D8EkngHm", "name": "JIgtPILr", "preview": "5F5T70pU", "previewMetadata": {"previewContentType": "4KTbyhGn", "previewFileExtension": "ZPCMbD85"}, "subType": "D5mpy83G", "tags": ["I8rXCfuo", "ZBYCCkNI", "Uh2uSgYm"], "type": "leeYpqxC"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'R219SW5Y' \
    --contentId 'J2GhsXuA' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "sFhbvP3i", "customAttributes": {"n4hzINyq": {}, "dtIJ4XFa": {}, "ZPIeTQ6h": {}}, "fileExtension": "kpFneA0Y", "name": "PfTGQqWW", "payload": "3KXKAdRE", "preview": "oyCfxnle", "previewMetadata": {"previewContentType": "ufr8amD2", "previewFileExtension": "fInuPIJl"}, "subType": "O1smxnhC", "tags": ["fmhMexc4", "LCB5RYER", "2s7suxb2"], "type": "GvX7swvW", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'CzGvdSGZ' \
    --namespace $AB_NAMESPACE \
    --creator 'tFAlSDQk' \
    --isofficial 'UPAdRadX' \
    --limit '99' \
    --name 'pTLpGXQq' \
    --offset '62' \
    --orderby 'z8UF8NRK' \
    --sortby 'fczQGrgl' \
    --subtype 'G730OHcg' \
    --tags '["h556NnIq", "h1jkOwhG", "K09XwDpN"]' \
    --type 'vC6h37bX' \
    --userId '04Z3QZms' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'kZ5tJs7A' \
    --contentId 'ZmSBDkiF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["qjnEBUCF", "OYfTiuCa", "CAD09tJ5"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'tD183gzW' \
    --isofficial 'RE1CV8mm' \
    --limit '48' \
    --name 'QWHlN588' \
    --offset '56' \
    --orderby '0WFj4QWq' \
    --sortby '67WNv5Xb' \
    --subtype 'S8XvFUDc' \
    --tags '["lIpFLXib", "nVgfj89U", "4aTE9GcP"]' \
    --type 'sXXJMQvz' \
    --userId 'YGXXe7sn' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '8thvtnTN' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'xcTsGiS2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '66pS6OyI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '8crlh9dE' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "L7ajLvqT", "screenshotId": "yNnAgVoV"}, {"description": "6ffr6YBA", "screenshotId": "uKNEv9K0"}, {"description": "3RVvZXu3", "screenshotId": "AK1gpDVF"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'nJVOOfO5' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "ZazC3yCy", "description": "W8XZURVz", "fileExtension": "bmp"}, {"contentType": "gPSqmSGz", "description": "wUQHf0uj", "fileExtension": "jpg"}, {"contentType": "aipMzy9G", "description": "xhszCnph", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'gaOKFOm3' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'JcUiuy3C' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["T68wThS2", "zHk5Gthn", "BocC1lwV"], "name": "zwSTG86r"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'F0hNKdp8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '4e5G4s5k' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["ADEOFclU", "FzEniPGm", "PGELb3yS"], "name": "SclhvVNv"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'BNNyltbj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'Yk7GGTk4' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "g5PGmvuv"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'sq9FDZPz' \
    --body '{"tag": "B5adwEOO"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '3W1z1y5J' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["U5iu9Oy2", "BUNDGs6H", "UAjgW0Sp"], "type": "pHyoAkSY"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'jgicNHiY' \
    --body '{"subtype": ["KJVKgvZY", "CZJOtfL9", "AaUrcIpI"], "type": "xWzwnUYo"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'EFAzPmF5' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId '0G81UdLf' \
    --limit '15' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'OrHROQNC' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'RJAu8LTX' \
    --namespace $AB_NAMESPACE \
    --userId '5kSWTrqb' \
    --body '{"name": "TuV3p5bG"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'HJT3uhiu' \
    --namespace $AB_NAMESPACE \
    --userId '0ikYkmRG' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'jsGEc81Q' \
    --contentId 'DUZ3Hp0n' \
    --namespace $AB_NAMESPACE \
    --userId '2fcYRTkA' \
    --body '{"contentType": "e4I70RKC", "customAttributes": {"7HT0DKdr": {}, "w4huhqEu": {}, "KiSIjL7A": {}}, "fileExtension": "OxhmVvsf", "name": "57ZbZIaW", "payload": "gbLiEdwP", "preview": "OLnqMDAh", "previewMetadata": {"previewContentType": "oOchSbTs", "previewFileExtension": "adTyPHS8"}, "subType": "7YLw8h89", "tags": ["OAxUHY3T", "Ki2j7sVQ", "nTH5rhI0"], "type": "OM8QO15C", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'V6I0l3Xm' \
    --contentId '9rCErAj4' \
    --namespace $AB_NAMESPACE \
    --userId '0NpVWkov' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'od7w8Lok' \
    --limit '90' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'YXb5fumS' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'izALFzZR' \
    --namespace $AB_NAMESPACE \
    --userId 'P0aTlodY' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'bWKeXWFn' \
    --limit '57' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'ayxFGzdG' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'gxVkbva4' \
    --namespace $AB_NAMESPACE \
    --userId '6Dv9RUWn' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'LblOXFTQ' \
    --namespace $AB_NAMESPACE \
    --userId 'zIdzVfFX' \
    --body '{"contents": ["Khe47i2J", "H2mQ1ixI", "LSi5bsKI"], "name": "zf0Zl2fU"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'lQJ673HL' \
    --namespace $AB_NAMESPACE \
    --userId 'W7V1M3MZ' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '8TXHADEo' \
    --namespace $AB_NAMESPACE \
    --userId 'PtEOg6v0' \
    --limit '88' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'oydjZe7T' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'b6dSd0FM' \
    --namespace $AB_NAMESPACE \
    --creator 'UMBs6pC8' \
    --isofficial 'Ywwjjgas' \
    --limit '71' \
    --name 'efYNBm5p' \
    --offset '49' \
    --orderby 'pAhgqe9r' \
    --sortby 'CgeeEMDP' \
    --subtype 'mNlQoMvQ' \
    --tags '["pMV8XEcg", "RRT2x14B", "petZnGWb"]' \
    --type 'cx6w9Gzx' \
    --userId 'fSq2nwfm' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'BizapkZo' \
    --isofficial '1Ne0gEGI' \
    --limit '99' \
    --name 'U2NUIzyp' \
    --offset '96' \
    --orderby 'YnMwRRmd' \
    --sortby 'QHJQkui6' \
    --subtype 'UgB1h7w6' \
    --tags '["fr0qZ9PA", "PJpxgONt", "HwDXPoKa"]' \
    --type '4hQfyPSp' \
    --userId '5iDvmcBG' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["lNtgvHex", "teHq1xw0", "jbHMemCI"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '58' \
    --name 'Q3PMtiE7' \
    --offset '23' \
    --orderby 'AsJelFEX' \
    --sortby 'IzaU3ILd' \
    --subtype 's42PYMcY' \
    --tags '["DVMgybgE", "3Hvqd5mm", "dzEWdpUN"]' \
    --type '3aPYNndE' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '7DOe3ws3' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'kSP6uyxH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'pIyjmVMd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'bPP8wjHC' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'Yru0AfkY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '20' \
    --orderby '3jQTCluU' \
    --sortby 'pmJtIcY4' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '2rCgvIMK' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'MYdlgjPd' \
    --limit '46' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'EvFBo7bk' \
    --body '{"name": "Fs96j970"}' \
    > test.out 2>&1
eval_tap $? 68 'CreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '092YowtS' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'psZzRA9u' \
    --namespace $AB_NAMESPACE \
    --userId 'oO6DQlm3' \
    --body '{"name": "PNX8xd6u"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'YEVvaz2I' \
    --namespace $AB_NAMESPACE \
    --userId 'TAvFyQQM' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'AmA3tBsA' \
    --namespace $AB_NAMESPACE \
    --userId 'Uyz0sL5s' \
    --body '{"contentType": "ekyJb4hi", "customAttributes": {"jpwPekye": {}, "FDZSALZf": {}, "ByDadFGD": {}}, "fileExtension": "ZsVvhO70", "name": "aU5VkpEx", "preview": "NrhYHHur", "previewMetadata": {"previewContentType": "wPns7epB", "previewFileExtension": "mbGiRnj6"}, "subType": "plcdAr1k", "tags": ["eOp3TDSy", "1Q2GXQX5", "4Yi8Q3s5"], "type": "6qpCzwYy"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'W5MMWGPv' \
    --contentId 'g1OhxKYo' \
    --namespace $AB_NAMESPACE \
    --userId 'UibUArlC' \
    --body '{"contentType": "OYWatUaZ", "customAttributes": {"rDyi1mWp": {}, "6SGw1Xb2": {}, "IvwH6Rgd": {}}, "fileExtension": "PdRZsC7t", "name": "MmTCWiUu", "payload": "uDaZb5W1", "preview": "GA1NBUiK", "previewMetadata": {"previewContentType": "8MgOZiRx", "previewFileExtension": "LBs14spl"}, "subType": "eflwnwqJ", "tags": ["LcN8gm6p", "jrSY7hM0", "ruBkjzrK"], "type": "ngBSIcVT", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '23f8mcxX' \
    --contentId '4EdRT7lM' \
    --namespace $AB_NAMESPACE \
    --userId 'rRfn2X9l' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'R8jS8xmo' \
    --limit '42' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '2Q2Hd0jX' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'rmrznZbw' \
    --namespace $AB_NAMESPACE \
    --userId 'R6aQvDj4' \
    --body '{"screenshots": [{"description": "fa3oXBBg", "screenshotId": "yxAZIPCk"}, {"description": "O75oHP0q", "screenshotId": "fInD8Flc"}, {"description": "fQhD8A21", "screenshotId": "gmpjMJC5"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'Ygk6OOpb' \
    --namespace $AB_NAMESPACE \
    --userId 'qOnLwgXC' \
    --body '{"screenshots": [{"contentType": "Tm7Wj8i3", "description": "55BB9pqt", "fileExtension": "pjp"}, {"contentType": "Zt0ULFYi", "description": "G3606jdW", "fileExtension": "bmp"}, {"contentType": "pbd7t7wz", "description": "ShvJ8Vei", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'Xg67Rzmq' \
    --namespace $AB_NAMESPACE \
    --screenshotId '3wgqDMHw' \
    --userId 'n9gJrNYM' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'bfr1J79t' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'fcAnouFj' \
    --limit '84' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'Ncjvu3uh' \
    --limit '81' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'AYh1F9zd' \
    --limit '41' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'JGAsJ4h9' \
    --body '{"contents": ["rJbkEh7E", "vkLd767X", "mN0sWmIG"], "name": "UQA7nPte"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'O0IBnjr6' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'ulFZWP86' \
    --namespace $AB_NAMESPACE \
    --userId 'BtyBAHaB' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'fq3Y5mDx' \
    --namespace $AB_NAMESPACE \
    --userId 'uiIi7jiq' \
    --body '{"contents": ["WaAcnzTo", "jfqUIvLb", "Rxzt2BaB"], "name": "mEomPG7d"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId '3jVqwTA2' \
    --namespace $AB_NAMESPACE \
    --userId 'LrtCGbX7' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'Vkz8gpIZ' \
    --namespace $AB_NAMESPACE \
    --userId 'vfO8HUhx' \
    --limit '54' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'yfi6o6Y4' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE