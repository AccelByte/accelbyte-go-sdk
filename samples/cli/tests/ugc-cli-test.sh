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
    --limit '74' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "fiO1aAB5"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId '5jeIelLG' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "ELrd4moj"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId '2pJUH1BX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'fY1fggm1' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "86mF8MLh", "fileExtension": "ByzPIDKX", "name": "83vRqg0S", "preview": "Y7EKdOhv", "previewMetadata": {"previewContentType": "830uu1GQ", "previewFileExtension": "E20JKJGR"}, "subType": "WlUni42W", "tags": ["YtWSwyFb", "kAHmkicU", "qXU2rJYo"], "type": "M3PsGgsm"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId '6YY1ATgU' \
    --contentId 'JMgE2Y41' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "oNDnpcoO", "fileExtension": "Bz8pQNTJ", "name": "nimfEwxd", "preview": "J0SQ0hRp", "previewMetadata": {"previewContentType": "yhkU7C1n", "previewFileExtension": "AwqdzQkl"}, "subType": "oOBLsftK", "tags": ["1lRwqfV7", "rCGbA8fo", "TYUxSdeS"], "type": "7IAYYc21"}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'lkWo4v8N' \
    --namespace $AB_NAMESPACE \
    --creator 'WicrMGQK' \
    --isofficial 'PQ6JfwFc' \
    --limit '7' \
    --name 'PawHU20p' \
    --offset '79' \
    --orderby 'tcqHALHF' \
    --sortby '7xfRydA9' \
    --subtype 'ihFzMyfu' \
    --tags '["uPJJYPT2", "pdRAo6xz", "SzVk66Je"]' \
    --type 'Flu1yiom' \
    --userId '0n0Vskon' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'NOIM4s8R' \
    --contentId '57gjlb91' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'ixKmqQAI' \
    --isofficial 'UYAxJmiJ' \
    --limit '55' \
    --name 'rIbdfPEE' \
    --offset '97' \
    --orderby 'zFfieQdc' \
    --sortby 'AimGXQZy' \
    --subtype 'e8lPy4sf' \
    --tags '["eOYoQIZH", "uJwNwyEp", "wuauHb6y"]' \
    --type 'yV3xSsWn' \
    --userId 'nL83jdwT' \
    > test.out 2>&1
eval_tap $? 13 'AdminSearchContent' test.out

#- 14 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'ugyGZgvI' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserContentByShareCode' test.out

#- 15 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'YMq9k4eV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetSpecificContent' test.out

#- 16 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'QyYUenv1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDownloadContentPreview' test.out

#- 17 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'LvkSNfaX' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "kTNuSasO", "screenshotId": "2RtzWlEn"}, {"description": "P0GOvZtl", "screenshotId": "y3ZnVHST"}, {"description": "NyYpdB8u", "screenshotId": "1VluH9Pe"}]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateScreenshots' test.out

#- 18 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'qhEJS50X' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "j1WKbRGI", "description": "5yoT5wzu", "fileExtension": "png"}, {"contentType": "uCe1G2ON", "description": "xr84tCNc", "fileExtension": "jpg"}, {"contentType": "tmF7Thxp", "description": "zRySUSLr", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUploadContentScreenshot' test.out

#- 19 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'NyEbiyzL' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'LhqYH7lp' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteContentScreenshot' test.out

#- 20 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 20 'SingleAdminGetAllGroups' test.out

#- 21 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Cg5hwY8f", "tvxUXPAW", "rsNIT9wa"], "name": "Va6K78Ft"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateGroup' test.out

#- 22 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'CbX1tzGU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetGroup' test.out

#- 23 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'sJjcdTLO' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["FgcrDBPi", "uOltHBaH", "5Ol3koIo"], "name": "yZwf0JUl"}' \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminUpdateGroup' test.out

#- 24 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'tYuxQqwQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminDeleteGroup' test.out

#- 25 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'DcEucCyB' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminGetGroupContents' test.out

#- 26 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 26 'AdminGetTag' test.out

#- 27 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "Py5HUPDb"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateTag' test.out

#- 28 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'ATs2GcqE' \
    --body '{"tag": "4In8j3xa"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateTag' test.out

#- 29 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'Zpb0Z7Ep' \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteTag' test.out

#- 30 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetType' test.out

#- 31 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["JZBAKHbY", "0oL0Th5W", "ctKEflGF"], "type": "YuZpCVMe"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateType' test.out

#- 32 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'wwx5D9P3' \
    --body '{"subtype": ["10GApeR1", "rNzLMUZY", "eaFHtDhV"], "type": "TxrYYQFX"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateType' test.out

#- 33 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'XJxX3fuK' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteType' test.out

#- 34 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'raZvrxyX' \
    --limit '30' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetChannel' test.out

#- 35 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '7DoY8w7J' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteAllUserChannels' test.out

#- 36 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'jjHUIKYK' \
    --namespace $AB_NAMESPACE \
    --userId 'oqkPbIzJ' \
    --body '{"name": "HwS5V75J"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateChannel' test.out

#- 37 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'h7xGrML5' \
    --namespace $AB_NAMESPACE \
    --userId 'WnF3ZVyk' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteChannel' test.out

#- 38 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'VoJNCIZU' \
    --contentId 'MbnkRf00' \
    --namespace $AB_NAMESPACE \
    --userId 'aSNCT95P' \
    --body '{"contentType": "XGRF6pRa", "fileExtension": "mfLy9Mzb", "name": "noNcckVX", "preview": "pRSByKuf", "previewMetadata": {"previewContentType": "OmrbSoKv", "previewFileExtension": "x0CqS49E"}, "subType": "FfxUwuok", "tags": ["QKbUzYQf", "yUtRaGCM", "Nraui6Ft"], "type": "Zp3U88dw"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateContentS3' test.out

#- 39 AdminUpdateContentDirect
eval_tap 0 39 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 40 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'paSJSuid' \
    --contentId '3ZEg7fMB' \
    --namespace $AB_NAMESPACE \
    --userId 'fUmKAJPG' \
    > test.out 2>&1
eval_tap $? 40 'AdminDeleteContent' test.out

#- 41 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId '71z11uJF' \
    --limit '73' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetContent' test.out

#- 42 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'JHj7ZKWZ' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAllUserContents' test.out

#- 43 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'ONdhV3h0' \
    --namespace $AB_NAMESPACE \
    --userId 'sLkmYKKa' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminHideUserContent' test.out

#- 44 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'iqykw1Z6' \
    --limit '39' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetAllGroups' test.out

#- 45 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Vgofrers' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteAllUserGroup' test.out

#- 46 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'sTie7Q9S' \
    --namespace $AB_NAMESPACE \
    --userId 'xXBxltWf' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetGroup' test.out

#- 47 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId '0DajouLM' \
    --namespace $AB_NAMESPACE \
    --userId 'BJKXkfrE' \
    --body '{"contents": ["Z3F653zo", "GX0RxY4z", "7igJKMMO"], "name": "FTEM4cTh"}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateGroup' test.out

#- 48 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'lP6cQHnO' \
    --namespace $AB_NAMESPACE \
    --userId 'jcXp5FCz' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteGroup' test.out

#- 49 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'f3ihvS3A' \
    --namespace $AB_NAMESPACE \
    --userId 'joSbIFDV' \
    --limit '62' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetGroupContents' test.out

#- 50 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '7FqtNMzi' \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteAllUserStates' test.out

#- 51 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'oKO06IPu' \
    --namespace $AB_NAMESPACE \
    --creator 'QLDDX6tY' \
    --isofficial 'AykG282M' \
    --limit '62' \
    --name 'SQbO1JBF' \
    --offset '10' \
    --orderby 'Yd37j2Dc' \
    --sortby 'gVVY8He7' \
    --subtype 'm6wlxYX6' \
    --tags '["1ITIUOAs", "9SAAXcys", "3wqcK7Go"]' \
    --type 'MASndTrJ' \
    --userId 'M6wU3yH0' \
    > test.out 2>&1
eval_tap $? 51 'SearchChannelSpecificContent' test.out

#- 52 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'mSRq2J8B' \
    --isofficial '9MOZOROO' \
    --limit '54' \
    --name 'wgTkGy35' \
    --offset '13' \
    --orderby 'JJYjD8pq' \
    --sortby 'p927qfWc' \
    --subtype 'BjyDNMig' \
    --tags '["hjgxYr0n", "g1xJWUDy", "BycwwYZ0"]' \
    --type 'QLaEuQY1' \
    --userId 'DOwh0VfO' \
    > test.out 2>&1
eval_tap $? 52 'PublicSearchContent' test.out

#- 53 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["BQWdnCQO", "oG4UYcYF", "wSinZSCG"]}' \
    > test.out 2>&1
eval_tap $? 53 'PublicGetContentBulk' test.out

#- 54 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 54 'GetFollowedContent' test.out

#- 55 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '69' \
    --name 'Lo1NANvb' \
    --offset '62' \
    --orderby 'BTlEY2UE' \
    --sortby 'cpmguW7w' \
    --subtype 'o0bruTfC' \
    --tags '["Ksbx9K59", "rlpdqRfR", "5wkNL0lq"]' \
    --type 'jgq5wgiR' \
    > test.out 2>&1
eval_tap $? 55 'GetLikedContent' test.out

#- 56 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'HJAY9lz5' \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByShareCode' test.out

#- 57 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '0HZQtQSP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByContentID' test.out

#- 58 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'YAr2QT4K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AddDownloadCount' test.out

#- 59 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'Oghj9wzH' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateContentLikeStatus' test.out

#- 60 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'jCWu7r3Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentPreview' test.out

#- 61 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 61 'GetTag' test.out

#- 62 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 62 'GetType' test.out

#- 63 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '26' \
    --orderby 'cqxcqGSD' \
    --sortby 'UDv6WsKd' \
    > test.out 2>&1
eval_tap $? 63 'PublicSearchCreator' test.out

#- 64 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 64 'GetFollowedUsers' test.out

#- 65 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'Xj052Vnu' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCreator' test.out

#- 66 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'o2DvxUio' \
    --limit '53' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 66 'GetChannels' test.out

#- 67 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'z1zHaOFy' \
    --body '{"name": "JjlxUnOp"}' \
    > test.out 2>&1
eval_tap $? 67 'CreateChannel' test.out

#- 68 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'tI2rX5Ya' \
    > test.out 2>&1
eval_tap $? 68 'DeleteAllUserChannel' test.out

#- 69 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'gndTaXJH' \
    --namespace $AB_NAMESPACE \
    --userId 'kW0shwvY' \
    --body '{"name": "1sR3IBDr"}' \
    > test.out 2>&1
eval_tap $? 69 'UpdateChannel' test.out

#- 70 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'jE74nQCD' \
    --namespace $AB_NAMESPACE \
    --userId 'i8O0nkxE' \
    > test.out 2>&1
eval_tap $? 70 'DeleteChannel' test.out

#- 71 CreateContentDirect
eval_tap 0 71 'CreateContentDirect # SKIP deprecated' test.out

#- 72 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId '4XQN52Sp' \
    --namespace $AB_NAMESPACE \
    --userId 'VOV7N0Sz' \
    --body '{"contentType": "UJhUZrPV", "fileExtension": "CIryxPDN", "name": "ZcI3hPbO", "preview": "Pf1hJWmz", "previewMetadata": {"previewContentType": "OOjIaoYY", "previewFileExtension": "1w8k30sT"}, "subType": "O6tq5092", "tags": ["pVfuCqXM", "GGCuR0Wd", "x8erE8fq"], "type": "bpt8nzgI"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateContentS3' test.out

#- 73 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'Q3JQ4Q5J' \
    --contentId 'pUzwEzbq' \
    --namespace $AB_NAMESPACE \
    --userId 'augEi2FL' \
    --body '{"contentType": "FyNSLNHS", "fileExtension": "hZauNrL2", "name": "aM3aDIV2", "preview": "Gq0baf9U", "previewMetadata": {"previewContentType": "PYVcKKI6", "previewFileExtension": "kYD5PIkT"}, "subType": "FjY2W608", "tags": ["ibjryJeO", "nfjEQBXZ", "CRH2apFP"], "type": "TkOt0laJ"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateContentS3' test.out

#- 74 UpdateContentDirect
eval_tap 0 74 'UpdateContentDirect # SKIP deprecated' test.out

#- 75 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'jnES2U3J' \
    --contentId 'KtKNlzEC' \
    --namespace $AB_NAMESPACE \
    --userId 'VorbzHGi' \
    > test.out 2>&1
eval_tap $? 75 'DeleteContent' test.out

#- 76 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'qYaL35Fk' \
    --limit '28' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 76 'PublicGetUserContent' test.out

#- 77 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'qPQMBRql' \
    > test.out 2>&1
eval_tap $? 77 'DeleteAllUserContents' test.out

#- 78 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'Wytnn2T4' \
    --namespace $AB_NAMESPACE \
    --userId 'a5w6rF6I' \
    --body '{"screenshots": [{"description": "qFxkE0et", "screenshotId": "wAvM3RuV"}, {"description": "MrJRsSY3", "screenshotId": "2jF2OuGc"}, {"description": "Pcwniigj", "screenshotId": "uuBLL3HT"}]}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateScreenshots' test.out

#- 79 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'BWYjLhdL' \
    --namespace $AB_NAMESPACE \
    --userId 'CF6OiF96' \
    --body '{"screenshots": [{"contentType": "tcdem6Xi", "description": "xPowdT6l", "fileExtension": "jfif"}, {"contentType": "Uzl4bu8G", "description": "3A3gOpv4", "fileExtension": "pjp"}, {"contentType": "o2QgdoNz", "description": "RHjLTyK1", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UploadContentScreenshot' test.out

#- 80 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'uiQSxd3L' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'zWandIHv' \
    --userId 'wNczDgWe' \
    > test.out 2>&1
eval_tap $? 80 'DeleteContentScreenshot' test.out

#- 81 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'v2txHFgc' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateUserFollowStatus' test.out

#- 82 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'Psmcu37h' \
    --limit '63' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowers' test.out

#- 83 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'XOWkfuRE' \
    --limit '63' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowing' test.out

#- 84 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'ZnQrlOjX' \
    --limit '32' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 84 'GetGroups' test.out

#- 85 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'KhjpMGMv' \
    --body '{"contents": ["2sLmyvgf", "TegO4qMh", "ZDVNuthN"], "name": "neTZW27G"}' \
    > test.out 2>&1
eval_tap $? 85 'CreateGroup' test.out

#- 86 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'yp7avS3Y' \
    > test.out 2>&1
eval_tap $? 86 'DeleteAllUserGroup' test.out

#- 87 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '3H56QET1' \
    --namespace $AB_NAMESPACE \
    --userId '7k4a0jMX' \
    > test.out 2>&1
eval_tap $? 87 'GetGroup' test.out

#- 88 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'yjJHbXYH' \
    --namespace $AB_NAMESPACE \
    --userId '23TKlwJL' \
    --body '{"contents": ["NEH598ZD", "64qtAJmf", "bcyInVRR"], "name": "P2rM6GJL"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateGroup' test.out

#- 89 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId '54makb1O' \
    --namespace $AB_NAMESPACE \
    --userId 'IodujkEr' \
    > test.out 2>&1
eval_tap $? 89 'DeleteGroup' test.out

#- 90 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'RdugL7S5' \
    --namespace $AB_NAMESPACE \
    --userId 'ospwDM8b' \
    --limit '51' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 90 'GetGroupContent' test.out

#- 91 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'rkwgCk3D' \
    > test.out 2>&1
eval_tap $? 91 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE