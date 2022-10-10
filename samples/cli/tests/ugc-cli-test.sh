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
    --limit '1' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "jSLB4Ui6"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'BYBcFKz8' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "R6Xjf27C"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'rrNu0NoO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'sAG4IVOT' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "CekRhGRg", "fileExtension": "bWMZmUfH", "name": "1TH28hcU", "preview": "37OWb4CV", "previewMetadata": {"previewContentType": "WKHW3fZQ", "previewFileExtension": "MsvjS52o"}, "subType": "1iYMkhFY", "tags": ["ZvCV2C6n", "UjyKxkr2", "9TcazevN"], "type": "Q4yyLMnY"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId '5M38ypih' \
    --contentId 'X4swINav' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "DlEZYHKG", "fileExtension": "cYlrjqnO", "name": "jBM6aPbB", "preview": "rkSIjDSo", "previewMetadata": {"previewContentType": "BbTvnTz3", "previewFileExtension": "8GTV25Hq"}, "subType": "ccaXJcql", "tags": ["EOj1n7vj", "qtatDONB", "kE7HTaZv"], "type": "Vn3lIDgs"}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '5r9MbG7X' \
    --namespace $AB_NAMESPACE \
    --creator 'lgFHGS79' \
    --isofficial '7Tt02SaG' \
    --limit '12' \
    --name 'TIYOU2ua' \
    --offset '65' \
    --orderby 'GCqyvlEa' \
    --sortby '9lk9UzMl' \
    --subtype 'UCBopQlO' \
    --tags '["XDDdYlec", "JPDdvuXq", "uoTqnQXg"]' \
    --type 'tN1BoBoL' \
    --userId 'UAmaSNIj' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'ZTm2i958' \
    --contentId '2hZmjvqQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'eLAhKIWf' \
    --isofficial 'W5HnI93b' \
    --limit '43' \
    --name '5qLbqTsw' \
    --offset '68' \
    --orderby 'g5B76tPr' \
    --sortby 'vDMI8aVL' \
    --subtype 'YVp4XRof' \
    --tags '["qsVXbBBe", "mmyyJcYs", "mf4u74oT"]' \
    --type 'iS6cvzoY' \
    --userId 'I8rumyXu' \
    > test.out 2>&1
eval_tap $? 13 'AdminSearchContent' test.out

#- 14 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'NPJ1X8IT' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserContentByShareCode' test.out

#- 15 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'Pzahh6nH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetSpecificContent' test.out

#- 16 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'ZOaUJKwt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDownloadContentPreview' test.out

#- 17 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'KHaDnD9x' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "Qmr6GPeL", "screenshotId": "9miw9BWO"}, {"description": "Ls4CisYI", "screenshotId": "QzoIXuzV"}, {"description": "9QDitELV", "screenshotId": "8FYEE7gq"}]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateScreenshots' test.out

#- 18 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'AaTkSKG3' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "JbsRuqkJ", "description": "VKRoFs0G", "fileExtension": "bmp"}, {"contentType": "YX2eZbll", "description": "ygmnje82", "fileExtension": "jpeg"}, {"contentType": "zbSRXDES", "description": "ro37tty8", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUploadContentScreenshot' test.out

#- 19 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'ccTznrPS' \
    --namespace $AB_NAMESPACE \
    --screenshotId '7mmMrMsL' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteContentScreenshot' test.out

#- 20 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 20 'SingleAdminGetAllGroups' test.out

#- 21 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["QAjeiKg3", "xKkdfHkV", "OQA2Mglz"], "name": "Wgv8UH5l"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateGroup' test.out

#- 22 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'WJXyi1Eg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetGroup' test.out

#- 23 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'KbwIoSPQ' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Xv0YTdDq", "1eVdPk1d", "nGwCM4qg"], "name": "lrE9qTOx"}' \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminUpdateGroup' test.out

#- 24 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'IZGHWngN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminDeleteGroup' test.out

#- 25 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'LARaAiWP' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminGetGroupContents' test.out

#- 26 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 26 'AdminGetTag' test.out

#- 27 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "JbG56XEw"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateTag' test.out

#- 28 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'bTMYa9av' \
    --body '{"tag": "44Jo69TH"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateTag' test.out

#- 29 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'LgelE3Y2' \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteTag' test.out

#- 30 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetType' test.out

#- 31 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["EXA3ZRQh", "BnioAtTO", "oPTftPEb"], "type": "W1OFKeew"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateType' test.out

#- 32 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'pDyT812d' \
    --body '{"subtype": ["JaIicztQ", "cmN9ccNH", "o8qmIEsy"], "type": "YpVEEi4E"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateType' test.out

#- 33 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'a3Tv3oBW' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteType' test.out

#- 34 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'lAek1qMq' \
    --limit '49' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetChannel' test.out

#- 35 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'X9xev4Ag' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteAllUserChannels' test.out

#- 36 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'eEhk1Lem' \
    --namespace $AB_NAMESPACE \
    --userId 'sjCKCpmk' \
    --body '{"name": "7NLmg82z"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateChannel' test.out

#- 37 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'YPfkZXYY' \
    --namespace $AB_NAMESPACE \
    --userId 'sUIWGvqS' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteChannel' test.out

#- 38 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'ogDILuGO' \
    --contentId 'M61Z68ii' \
    --namespace $AB_NAMESPACE \
    --userId 'wcR0uPF4' \
    --body '{"contentType": "iwgV8VT8", "fileExtension": "aXdFWwW1", "name": "svw6Vimr", "preview": "B0EJiJ0d", "previewMetadata": {"previewContentType": "BNCPxjA5", "previewFileExtension": "9c1AZrA7"}, "subType": "k2rlOsi4", "tags": ["tw5GV0Px", "c2VGRLIV", "KSZSPQf8"], "type": "iNjKYmmo"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateContentS3' test.out

#- 39 AdminUpdateContentDirect
eval_tap 0 39 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 40 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'Voa1aWUN' \
    --contentId 'yW4IsDzC' \
    --namespace $AB_NAMESPACE \
    --userId 'cqPmWMLw' \
    > test.out 2>&1
eval_tap $? 40 'AdminDeleteContent' test.out

#- 41 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'x4G60MGv' \
    --limit '78' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetContent' test.out

#- 42 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'ePUgS9KB' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAllUserContents' test.out

#- 43 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'fEIwExiM' \
    --namespace $AB_NAMESPACE \
    --userId '6rghFwXM' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminHideUserContent' test.out

#- 44 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'D0QzJJHA' \
    --limit '31' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetAllGroups' test.out

#- 45 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'fjEiGU3o' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteAllUserGroup' test.out

#- 46 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'RPgj4e5N' \
    --namespace $AB_NAMESPACE \
    --userId 'XMISbOnu' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetGroup' test.out

#- 47 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'm6KNvYTL' \
    --namespace $AB_NAMESPACE \
    --userId '9rloLpSO' \
    --body '{"contents": ["Fcv7EkVT", "Ml1sUEqg", "cTQIYsOV"], "name": "MW41JdkY"}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateGroup' test.out

#- 48 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'DpZ35jXl' \
    --namespace $AB_NAMESPACE \
    --userId '48cnnvS4' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteGroup' test.out

#- 49 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'bc8D9f07' \
    --namespace $AB_NAMESPACE \
    --userId 'eukYrueB' \
    --limit '41' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetGroupContents' test.out

#- 50 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'hvo0A7QX' \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteAllUserStates' test.out

#- 51 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '9hYbyzVH' \
    --namespace $AB_NAMESPACE \
    --creator 'lDGss9Qu' \
    --isofficial 'WSJ9ItkM' \
    --limit '81' \
    --name 'pSGcVtqr' \
    --offset '97' \
    --orderby '4pL9rHUr' \
    --sortby 'ZHqIyLEA' \
    --subtype 'YRUvfOOZ' \
    --tags '["FTbjhRoA", "QBS5uRiS", "p2toG5Wi"]' \
    --type 'MaI91QkL' \
    --userId 'kbyuvzYw' \
    > test.out 2>&1
eval_tap $? 51 'SearchChannelSpecificContent' test.out

#- 52 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'X4sbQLKj' \
    --isofficial '5Hb7AEBC' \
    --limit '7' \
    --name 'd5PcYRmZ' \
    --offset '73' \
    --orderby 'dDwR67Rx' \
    --sortby '5rM3nyDx' \
    --subtype 'zbx6o1Fi' \
    --tags '["0T6mE21a", "rxPQsAvZ", "2ELMQoJ4"]' \
    --type 'N8fPytrs' \
    --userId 'dqdTmAnM' \
    > test.out 2>&1
eval_tap $? 52 'PublicSearchContent' test.out

#- 53 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["gShPKC2V", "QnshDkNW", "IVvBN4QC"]}' \
    > test.out 2>&1
eval_tap $? 53 'PublicGetContentBulk' test.out

#- 54 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 54 'GetFollowedContent' test.out

#- 55 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '28' \
    --name 'gZeo62vA' \
    --offset '39' \
    --orderby 'NCTyDJd1' \
    --sortby 'q1qLCGWN' \
    --subtype 'cTIODHD6' \
    --tags '["WMvh2K0N", "KPZZr3br", "VxZ7fBPQ"]' \
    --type 'mN9GqJLc' \
    > test.out 2>&1
eval_tap $? 55 'GetLikedContent' test.out

#- 56 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'mivwUSsl' \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByShareCode' test.out

#- 57 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'uJQLkhMI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByContentID' test.out

#- 58 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'XvJlLyMm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AddDownloadCount' test.out

#- 59 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'jlYxyjT1' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateContentLikeStatus' test.out

#- 60 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'Qkx6032Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentPreview' test.out

#- 61 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 61 'GetTag' test.out

#- 62 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 62 'GetType' test.out

#- 63 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '23' \
    --orderby 'vU8wYnKC' \
    --sortby 'zDrxAzid' \
    > test.out 2>&1
eval_tap $? 63 'PublicSearchCreator' test.out

#- 64 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 64 'GetFollowedUsers' test.out

#- 65 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'GzuiOQZV' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCreator' test.out

#- 66 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '3UUvs60J' \
    --limit '27' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 66 'GetChannels' test.out

#- 67 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId '2x7YlJ1e' \
    --body '{"name": "9NMaO4eP"}' \
    > test.out 2>&1
eval_tap $? 67 'CreateChannel' test.out

#- 68 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '2d2hoSCH' \
    > test.out 2>&1
eval_tap $? 68 'DeleteAllUserChannel' test.out

#- 69 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '5GVaGXvC' \
    --namespace $AB_NAMESPACE \
    --userId 'oPWpyCuI' \
    --body '{"name": "FmMptjaT"}' \
    > test.out 2>&1
eval_tap $? 69 'UpdateChannel' test.out

#- 70 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'ZY92GNPM' \
    --namespace $AB_NAMESPACE \
    --userId 'JNL0CI6e' \
    > test.out 2>&1
eval_tap $? 70 'DeleteChannel' test.out

#- 71 CreateContentDirect
eval_tap 0 71 'CreateContentDirect # SKIP deprecated' test.out

#- 72 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'kKvn8qDp' \
    --namespace $AB_NAMESPACE \
    --userId '5vHMNJos' \
    --body '{"contentType": "j6M5VxYb", "fileExtension": "ArGGM4UP", "name": "wg11OZjs", "preview": "p4VbGm0S", "previewMetadata": {"previewContentType": "uDAuW3OB", "previewFileExtension": "38aIQYpO"}, "subType": "CvQNdR5m", "tags": ["th1wDeAw", "8hYB0Hj4", "zXBvTSqA"], "type": "tx1CJjsL"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateContentS3' test.out

#- 73 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'ik4B9S7x' \
    --contentId 'gcG3wurX' \
    --namespace $AB_NAMESPACE \
    --userId 'vkMNso5y' \
    --body '{"contentType": "Aj5PZ7mq", "fileExtension": "tmDgDD55", "name": "mNwPwI2B", "preview": "4Mz797m2", "previewMetadata": {"previewContentType": "kMaAKvZB", "previewFileExtension": "9w6cV00c"}, "subType": "uAQ7dGIy", "tags": ["9oSEPRqR", "wfvsslTJ", "YTBdxIjx"], "type": "v9x6jGa1"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateContentS3' test.out

#- 74 UpdateContentDirect
eval_tap 0 74 'UpdateContentDirect # SKIP deprecated' test.out

#- 75 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'bC8LGTa2' \
    --contentId 'BtaRWbSU' \
    --namespace $AB_NAMESPACE \
    --userId 'LhCNKZFz' \
    > test.out 2>&1
eval_tap $? 75 'DeleteContent' test.out

#- 76 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'kxzyFNUB' \
    --limit '100' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 76 'PublicGetUserContent' test.out

#- 77 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'I7Gki0hW' \
    > test.out 2>&1
eval_tap $? 77 'DeleteAllUserContents' test.out

#- 78 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'Z216vMN3' \
    --namespace $AB_NAMESPACE \
    --userId 'FaERczcj' \
    --body '{"screenshots": [{"description": "fEH4gktE", "screenshotId": "MX2VNRBf"}, {"description": "FxGzzVV5", "screenshotId": "Aa1hxgII"}, {"description": "Vj6noEgA", "screenshotId": "EQiTcVNN"}]}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateScreenshots' test.out

#- 79 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'Lf53d76W' \
    --namespace $AB_NAMESPACE \
    --userId 'F9sPeuBN' \
    --body '{"screenshots": [{"contentType": "6FoCvVGy", "description": "hOmhtuEM", "fileExtension": "png"}, {"contentType": "V7mPgfEb", "description": "hdRGYYrI", "fileExtension": "jpeg"}, {"contentType": "Glxyf2sh", "description": "LqI9Z111", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UploadContentScreenshot' test.out

#- 80 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'WGr8uZfT' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'SxcKjHeh' \
    --userId 'rKyRqEMm' \
    > test.out 2>&1
eval_tap $? 80 'DeleteContentScreenshot' test.out

#- 81 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'hpjpqAMT' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateUserFollowStatus' test.out

#- 82 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'IW8Mq8Vg' \
    --limit '63' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowers' test.out

#- 83 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'nAZGUTB0' \
    --limit '93' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowing' test.out

#- 84 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'wJk0j2z9' \
    --limit '47' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 84 'GetGroups' test.out

#- 85 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'kQ71lAuB' \
    --body '{"contents": ["c00JC8Qb", "U1dQGncV", "8PppYYGp"], "name": "yHTgOPcl"}' \
    > test.out 2>&1
eval_tap $? 85 'CreateGroup' test.out

#- 86 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'RMCBula3' \
    > test.out 2>&1
eval_tap $? 86 'DeleteAllUserGroup' test.out

#- 87 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'TFWGBARP' \
    --namespace $AB_NAMESPACE \
    --userId 'LGDwf573' \
    > test.out 2>&1
eval_tap $? 87 'GetGroup' test.out

#- 88 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId '3pINHJfu' \
    --namespace $AB_NAMESPACE \
    --userId 'sG9K4FhD' \
    --body '{"contents": ["RFr0C232", "9BdXXrx0", "74IrNOLI"], "name": "7ryXl2tZ"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateGroup' test.out

#- 89 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'k1aUnMsq' \
    --namespace $AB_NAMESPACE \
    --userId 'hKiNo9jC' \
    > test.out 2>&1
eval_tap $? 89 'DeleteGroup' test.out

#- 90 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'BRDnhCb7' \
    --namespace $AB_NAMESPACE \
    --userId 'hkkW3JLi' \
    --limit '97' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 90 'GetGroupContent' test.out

#- 91 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '1NeX0lFs' \
    > test.out 2>&1
eval_tap $? 91 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE