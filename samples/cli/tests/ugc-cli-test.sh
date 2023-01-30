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
    --limit '37' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "GCK6EPrg"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'aI3gORGI' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "1hQLBX6x"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'CTbIls3e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'uoUMvv0j' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "qOJoUbVS", "customAttributes": {"Rcmffle7": {}, "s2CDrt5M": {}, "S7UpWeK0": {}}, "fileExtension": "9aTJHKCl", "name": "js2GhRNu", "preview": "LsuQ87nq", "previewMetadata": {"previewContentType": "HJxbe6eQ", "previewFileExtension": "3CGGFntj"}, "subType": "zNvh5NWX", "tags": ["kCS0k01Y", "pcm2tliL", "YsG73AJX"], "type": "Bw3WTZL6"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'q7CLiEZS' \
    --contentId 'IYtzEuun' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "cBbtbbId", "customAttributes": {"spoVzxyb": {}, "62CBEcfC": {}, "ahno4E7C": {}}, "fileExtension": "EBMwgG5u", "name": "g8iFIqSR", "payload": "IX1yPdZM", "preview": "xYPj4Mia", "previewMetadata": {"previewContentType": "VjVrdT9t", "previewFileExtension": "r5QIrPon"}, "subType": "LGJwPp3Q", "tags": ["IPMFwE0c", "MKsotPoh", "fo6oc6ru"], "type": "lzJhuXHS", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'ZriHP8M9' \
    --namespace $AB_NAMESPACE \
    --creator 'FbwpT0rs' \
    --isofficial 'S7IGmbZS' \
    --limit '30' \
    --name 'TO0RIhqr' \
    --offset '78' \
    --orderby 'TfgiungY' \
    --sortby 'SEV8J3ur' \
    --subtype 'Vw8FKG0v' \
    --tags '["GYjouDgV", "lyg8wwIX", "IytV9Al2"]' \
    --type 'ivmYHYJ1' \
    --userId 'rSUPWawH' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'kBElcnFh' \
    --contentId 'YjSVP3gG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["hgGdhZoo", "hvfr4GMT", "8UDAmRKj"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'Uhc5FIG2' \
    --isofficial 'qo8mjNw7' \
    --limit '17' \
    --name 'tR197HCy' \
    --offset '36' \
    --orderby 'fpfuGbDQ' \
    --sortby '7yP20NuR' \
    --subtype 'tA6ncsLj' \
    --tags '["udVInsZe", "Gh2bS0XV", "irx58kiS"]' \
    --type 'tKPCpmhm' \
    --userId 'dEsyogYe' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'X2Jm5FG0' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '3clwkBLz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'uyQCg8sD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'tQu5PBN0' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "IZlJycAn", "screenshotId": "lY7EF9W1"}, {"description": "JWBmzFdY", "screenshotId": "FqDt6va7"}, {"description": "PfGE2nJn", "screenshotId": "GDckFazs"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'iP4AG3l4' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "XwJ56RWl", "description": "HeaRV6NE", "fileExtension": "jfif"}, {"contentType": "gVbiUARG", "description": "b3POdQmH", "fileExtension": "bmp"}, {"contentType": "WCrtOvCP", "description": "aL9188JR", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'WWRzpGge' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'Geo1U5Fg' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["OK57DLKM", "Y1Wk7bqb", "cqOsgWQ9"], "name": "wO6rBuJe"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'fCArPNKI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'j1WPCpgp' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["q6iQaIuC", "lmJCPHGb", "7TH4tvKP"], "name": "fs1dDd2S"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'pNzo84wK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'czzg4PZ3' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "GMoJltjT"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'jFObFXdH' \
    --body '{"tag": "emNoZwqm"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '2fpi2RcO' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["jemOcQAm", "F99vyorv", "R79LjQG3"], "type": "ZKoBlFxG"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'kHBjdYvH' \
    --body '{"subtype": ["7ZeIbk6k", "Eip6EbIj", "Y7kRr8H9"], "type": "IOHShpb6"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'aj6a8txi' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'k7IM54jg' \
    --limit '49' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'Jd9vbRTQ' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'cIvs0qwp' \
    --namespace $AB_NAMESPACE \
    --userId 'Q3oMoYgI' \
    --body '{"name": "lk2V67cI"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'XlJuqs8O' \
    --namespace $AB_NAMESPACE \
    --userId 'GpXRnjUv' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'H6AzCNtg' \
    --contentId 'WMKyd3Cm' \
    --namespace $AB_NAMESPACE \
    --userId 'LM2Nxxkd' \
    --body '{"contentType": "ewJW7V5U", "customAttributes": {"LERtQkgg": {}, "ZO19ZGX2": {}, "sKQQ69pO": {}}, "fileExtension": "2PixPPXn", "name": "gdJTOeV0", "payload": "Z57F4a4O", "preview": "QVmiaje9", "previewMetadata": {"previewContentType": "3cttxJIn", "previewFileExtension": "xrRPMCtx"}, "subType": "VkBwC0kV", "tags": ["Oj5Dz74U", "5SJIZw5S", "b4IiQnyL"], "type": "EwIpVtz9", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '7cTcx46P' \
    --contentId 'MqsPzGOv' \
    --namespace $AB_NAMESPACE \
    --userId 'd9x0Hkfi' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'YKM4cnet' \
    --limit '4' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '0mDHihId' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId '4jGB7ZGb' \
    --namespace $AB_NAMESPACE \
    --userId 'C4W9d23Z' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'rYyGjgoN' \
    --limit '66' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'T3ty8awg' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'jmRRyDXN' \
    --namespace $AB_NAMESPACE \
    --userId 'yz4HeVdy' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'YYzJFkKt' \
    --namespace $AB_NAMESPACE \
    --userId '6aeuUL20' \
    --body '{"contents": ["DMGSCqhs", "AB5rqWu7", "vIANChRl"], "name": "dmzoLzYT"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '01XglK8n' \
    --namespace $AB_NAMESPACE \
    --userId 'l6Vn1Ifn' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'JVpiazPn' \
    --namespace $AB_NAMESPACE \
    --userId '533P3mIc' \
    --limit '86' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'VZuaV2cG' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'TWqvrtAU' \
    --namespace $AB_NAMESPACE \
    --creator 'YoFU0Szx' \
    --isofficial 'WdbmOgvW' \
    --limit '73' \
    --name 'UKipqzUb' \
    --offset '52' \
    --orderby 'A9SrtNGa' \
    --sortby 'MoJT6bZO' \
    --subtype 'uHFOd6RA' \
    --tags '["MkSEgN4d", "E6eof6ux", "laXv8wWs"]' \
    --type '6DAOMi7f' \
    --userId 'wAA6gFJW' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'nkaU2fEy' \
    --isofficial 'j0jsl9Ju' \
    --limit '36' \
    --name 'D1m4CBga' \
    --offset '38' \
    --orderby 'JIAPGtEt' \
    --sortby 'WCkiDFTb' \
    --subtype 'vCbHewdr' \
    --tags '["eZW7CBw7", "3paxfy0L", "aF2dl1TC"]' \
    --type 'ULUM5XhM' \
    --userId '4u8TpwKh' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["HVbsaZpe", "3k7jbsWr", "pvYcvWEM"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '3' \
    --name 'vOTIOU9f' \
    --offset '76' \
    --orderby 'IpHKwUHE' \
    --sortby 'pky8emaI' \
    --subtype '8UhZc6je' \
    --tags '["lAevKrk1", "ie3t2M7Q", "C3eY2c01"]' \
    --type 'NazZCrdg' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'nngNSht2' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'n4t0UpOO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId '6GnKDKqA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'Krp5ONd8' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'kkaBx6r8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '58' \
    --orderby 'zaSHlwa9' \
    --sortby 'y5RbgeIg' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'MwAsFl0N' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'LJUTMG47' \
    --limit '90' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'a9B7zlJw' \
    --body '{"name": "WzKHpYcf"}' \
    > test.out 2>&1
eval_tap $? 68 'CreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'BsFeSA1f' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'wGNDYc5k' \
    --namespace $AB_NAMESPACE \
    --userId 'uVKpyK93' \
    --body '{"name": "UgT8YYPH"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'UF8IENfc' \
    --namespace $AB_NAMESPACE \
    --userId 'Wgwms0wN' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId '5SyFYQBe' \
    --namespace $AB_NAMESPACE \
    --userId 'JLlQXpdQ' \
    --body '{"contentType": "qn26dLm2", "customAttributes": {"2JmCNt5L": {}, "7tR6g4uh": {}, "tKFKKPCk": {}}, "fileExtension": "0dllpQHG", "name": "BmKZv94I", "preview": "c76BtBLQ", "previewMetadata": {"previewContentType": "XH0wU813", "previewFileExtension": "WFY9XsFy"}, "subType": "m0z8ZZzR", "tags": ["Lh8zBTLP", "jvhy7b9j", "F1aVLbGN"], "type": "WyTVy4Dc"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId '3rnco25a' \
    --contentId 'ZYFtWhi7' \
    --namespace $AB_NAMESPACE \
    --userId '3dnDla4o' \
    --body '{"contentType": "6JOe2BHg", "customAttributes": {"X159GpXv": {}, "TuQYwzGz": {}, "nKn7diej": {}}, "fileExtension": "K57pssRA", "name": "9bJcblQg", "payload": "iKhGmYFp", "preview": "fKt5HTGN", "previewMetadata": {"previewContentType": "ktrUskog", "previewFileExtension": "0E3uoEkA"}, "subType": "r399MfBT", "tags": ["jb0MfuXj", "egumxeQv", "5gnCJrCF"], "type": "9KTtSWcs", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'iQuVCiS9' \
    --contentId 'wkBiGEeM' \
    --namespace $AB_NAMESPACE \
    --userId 'dN8D86s0' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'po7T9ybh' \
    --limit '19' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'KbPUx957' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'kqJuz8By' \
    --namespace $AB_NAMESPACE \
    --userId 'b3PkPxus' \
    --body '{"screenshots": [{"description": "WsT8GC9z", "screenshotId": "lG1ifHDw"}, {"description": "4N1lnqaE", "screenshotId": "nBgtE5mT"}, {"description": "S9qwK5jv", "screenshotId": "7H1UV2Nu"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '7vAMDmMc' \
    --namespace $AB_NAMESPACE \
    --userId 'W7UsNvSh' \
    --body '{"screenshots": [{"contentType": "hIdmk9jE", "description": "FDofCRCJ", "fileExtension": "png"}, {"contentType": "mYQBUpqS", "description": "5TDn8w2A", "fileExtension": "jpg"}, {"contentType": "GM9j4gw2", "description": "BaMqnv2B", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'L4TlVOZL' \
    --namespace $AB_NAMESPACE \
    --screenshotId '68guqWVE' \
    --userId 'pMSbCgMF' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'l3BnWJf8' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'WbImKnYP' \
    --limit '58' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'CUoQZJTN' \
    --limit '19' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'KJPrjTLg' \
    --limit '15' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'kjWPwikR' \
    --body '{"contents": ["v1q6iM3M", "p2zuKBsi", "8KA8uQhx"], "name": "Qn0KWyXM"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'bOTIFI9J' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '1pQBPGhf' \
    --namespace $AB_NAMESPACE \
    --userId 'Y0Exzbn2' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'EwpiYTy0' \
    --namespace $AB_NAMESPACE \
    --userId 's4OKDOn9' \
    --body '{"contents": ["WoyxTx7h", "Gs157g3V", "TTmP7oii"], "name": "57bek0Gi"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'qWBxwId9' \
    --namespace $AB_NAMESPACE \
    --userId '9TeIfGQo' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'tlV6EnfW' \
    --namespace $AB_NAMESPACE \
    --userId 'f3rElhbH' \
    --limit '22' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'SxEPehfn' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE