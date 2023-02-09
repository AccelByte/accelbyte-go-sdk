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
    --limit '45' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "SOUCAD2c"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'e2x5Qa5j' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Qy29dpMh"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'XVUStTI8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId '82ClNVqb' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "lBJEHJsz", "customAttributes": {"u1BujeV6": {}, "SD8X18OJ": {}, "KMCkevVs": {}}, "fileExtension": "tcPSDz6t", "name": "9YsPBfSH", "preview": "up7WxHRq", "previewMetadata": {"previewContentType": "VW8zLdy0", "previewFileExtension": "rSdFNAPf"}, "subType": "BlEIdDJB", "tags": ["Ie8zrkGn", "4Gc1GaB6", "92s3NJd6"], "type": "JRIsekhX"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'FlXyFceE' \
    --contentId 'FFRV2ovW' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "sfS12Fvd", "customAttributes": {"U1US4kIY": {}, "YEpin4CR": {}, "a4T5VyRu": {}}, "fileExtension": "2xd3jV8m", "name": "mMuyqbzi", "payload": "8ONkIvu4", "preview": "Fzv3Ujau", "previewMetadata": {"previewContentType": "Sr3cPTGY", "previewFileExtension": "HXooEnW2"}, "subType": "xLUIXnot", "tags": ["t0Dj9ulZ", "osIs4Ga5", "57wbWXu0"], "type": "mndCEzmK", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'GJRdVo5a' \
    --namespace $AB_NAMESPACE \
    --creator 'Sdbij5gC' \
    --isofficial 'z8dbwU8x' \
    --limit '88' \
    --name 'NnHHahie' \
    --offset '43' \
    --orderby 'm1fmqBo3' \
    --sortby 'EY0YM2J0' \
    --subtype 'Fsq9PrNm' \
    --tags '["mCGI4tEa", "tLZ5lhfp", "TqgCRLe7"]' \
    --type '96BBfN5n' \
    --userId '1vtkqw6s' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'FwEf5jeu' \
    --contentId '7wt8JTAv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ogV2LhaL", "8XCwB8Oz", "6QeepkYa"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'uherujv9' \
    --isofficial 'Gd7q2LUm' \
    --limit '51' \
    --name 'kuGsOZy4' \
    --offset '52' \
    --orderby 'o4kDMHku' \
    --sortby 'DYyyJd6K' \
    --subtype 'gxysiVoo' \
    --tags '["JvwoLkBA", "ETMoehDS", "HxJUmZUH"]' \
    --type 'cgblYTiY' \
    --userId '9UtpTJzn' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'SpBSR9cu' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'S4539SGD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'CPd8J9d0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'JBNYVOdX' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "k8pCklUK", "screenshotId": "GvBYKweZ"}, {"description": "8hCzUDM9", "screenshotId": "99b6MYA3"}, {"description": "NN7yVA6p", "screenshotId": "IJN7olMe"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId '3vZMNma5' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "1XfpApNh", "description": "mi5FBY5n", "fileExtension": "bmp"}, {"contentType": "vm9yeYjP", "description": "Jln0MI2E", "fileExtension": "pjp"}, {"contentType": "EoXAUzzJ", "description": "tfnkqVO6", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'cHCX0m6B' \
    --namespace $AB_NAMESPACE \
    --screenshotId '630hc3GH' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["myzsn4t0", "OhNniPAb", "YlZiNq5B"], "name": "SpZ3Zv7x"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'e7VMowTJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'JOpagPzG' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["mPszi1Zb", "lGIniGwY", "5OgUOkC8"], "name": "vH4x77C4"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'OomeJFdz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'R19Wnt25' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "2GHHRvxI"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'iOA0eUID' \
    --body '{"tag": "uWCFdftE"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'CBTdJ0xQ' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["3rgeNOVW", "Ov6pfNPX", "biWS65YN"], "type": "UzN1MgpC"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'R8IhrGU3' \
    --body '{"subtype": ["FnhiwmZG", "yPKqwQWP", "jJHMUc3l"], "type": "rybb5WNm"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'u2VXtlzx' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'nnrTtbpt' \
    --limit '93' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'LqwHlDv9' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'JXcciaxX' \
    --namespace $AB_NAMESPACE \
    --userId 'NlcdnuFw' \
    --body '{"name": "F7QuYfdR"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'cGYbwoTV' \
    --namespace $AB_NAMESPACE \
    --userId 'dBPh97r3' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'umKmci3B' \
    --contentId 'rsspN2V7' \
    --namespace $AB_NAMESPACE \
    --userId '72PZuNdD' \
    --body '{"contentType": "DmATh4Pj", "customAttributes": {"freiXwDO": {}, "2yK8p6im": {}, "IUjqoNRc": {}}, "fileExtension": "SIl5s5IW", "name": "cQrBmjn5", "payload": "0lAZ7omB", "preview": "SOzbzwY0", "previewMetadata": {"previewContentType": "pVrxS5fn", "previewFileExtension": "wXiDypKd"}, "subType": "odIRCWs2", "tags": ["oFw68Lq0", "huWZIiyg", "lsJtqNLH"], "type": "0hJx8p99", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'u6hjJP4W' \
    --contentId 'nlrJMBG7' \
    --namespace $AB_NAMESPACE \
    --userId 'xRrmFJN8' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'wv8Bc33Z' \
    --limit '71' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'Oly8goSb' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'x24TbBR3' \
    --namespace $AB_NAMESPACE \
    --userId '1NDY7Cye' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '8TObwG1Q' \
    --limit '11' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'SDMHVJU8' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'pfgXF2Xh' \
    --namespace $AB_NAMESPACE \
    --userId 'jibnoJu6' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'nByTMV1t' \
    --namespace $AB_NAMESPACE \
    --userId 'ultf5HTj' \
    --body '{"contents": ["cmPxXbMk", "g4daF16v", "aS3V1WxP"], "name": "u20MzjsN"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'YNxLX5i3' \
    --namespace $AB_NAMESPACE \
    --userId '9epqsHjX' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'AAzC6IoD' \
    --namespace $AB_NAMESPACE \
    --userId 'Of74CEkU' \
    --limit '63' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '0Jc02Sn4' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'xqND76XU' \
    --namespace $AB_NAMESPACE \
    --creator '1YWpBk3E' \
    --isofficial 'YytGojD5' \
    --limit '31' \
    --name 'WBXGrUh2' \
    --offset '3' \
    --orderby '6K57W3sf' \
    --sortby 'Sg9c1h51' \
    --subtype 'vDYUG9Z1' \
    --tags '["qnLcwNw0", "eJjhDlrD", "J4nOfHQu"]' \
    --type 'Hur009o4' \
    --userId '11HmDzk3' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'LPIp3gqA' \
    --isofficial '0tK4O8yK' \
    --limit '61' \
    --name 'IuWgyjMR' \
    --offset '64' \
    --orderby 'qaTC2COY' \
    --sortby 'RHWZQA5O' \
    --subtype 'Doa3eFR0' \
    --tags '["h1aSNZAA", "CNUB3GfZ", "HBI4Jrlg"]' \
    --type 'uhO6ENoQ' \
    --userId 'YKJzLqw1' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["y67DnJ55", "kNDwZOHl", "M84oXeQz"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '27' \
    --name 'M0AUIEpY' \
    --offset '80' \
    --orderby 'FY0F04Sn' \
    --sortby 'm8b79uUE' \
    --subtype 'OxHjhBjJ' \
    --tags '["gRMK60gO", "uKBnW5zY", "qLJsHH6Q"]' \
    --type 'FWJUQUJN' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'iEY7arMb' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'lyk0Z9jr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'JUdUCv0D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'QfQn4uGX' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId '6sTwV7u3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '95' \
    --orderby 'kf92lhrM' \
    --sortby 'STxPuQLH' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'X5SLQMcW' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '8e05uLpV' \
    --limit '75' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'VLgK8sgV' \
    --body '{"name": "cEhix8KL"}' \
    > test.out 2>&1
eval_tap $? 68 'CreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'rQCCIakj' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'ETP7eW7o' \
    --namespace $AB_NAMESPACE \
    --userId 'pMxCiNCx' \
    --body '{"name": "SHSghACh"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'RjlFP2Ly' \
    --namespace $AB_NAMESPACE \
    --userId 'jo6U23UU' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'jJVlT5FH' \
    --namespace $AB_NAMESPACE \
    --userId 'hobJFXiP' \
    --body '{"contentType": "zl0aCl34", "customAttributes": {"ukTJzGVJ": {}, "GzCieKKG": {}, "Ejfb0Z79": {}}, "fileExtension": "Y8EWfvNd", "name": "lviSMshq", "preview": "yro0EwGB", "previewMetadata": {"previewContentType": "Ba1Lap4f", "previewFileExtension": "LfoSQhQP"}, "subType": "wy2Q585S", "tags": ["fJ0mG1Ah", "pQp2xbT0", "sYNQDqlO"], "type": "agM5YPrH"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'SBCZHdZ0' \
    --contentId 'hbZBLMbx' \
    --namespace $AB_NAMESPACE \
    --userId '6MtfZBcW' \
    --body '{"contentType": "Qp9PSuGd", "customAttributes": {"LXafrbZN": {}, "ALzMTrKH": {}, "dzTwtdHm": {}}, "fileExtension": "EpYSf3Kk", "name": "9PL39gPy", "payload": "Fb0v2oG4", "preview": "cPr3MZLl", "previewMetadata": {"previewContentType": "zvTWPiyA", "previewFileExtension": "My8FTwnT"}, "subType": "FHsey6YL", "tags": ["GccoVglM", "eETVfe1h", "02sjXGa9"], "type": "WHNSpBEY", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'wOD9Pdi9' \
    --contentId 'dSadeNoN' \
    --namespace $AB_NAMESPACE \
    --userId 'XRM7sRIc' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'Sh7fOVrz' \
    --limit '86' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'n3m6IzRA' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'Uxko0FLU' \
    --namespace $AB_NAMESPACE \
    --userId 'sOnSEGX8' \
    --body '{"screenshots": [{"description": "pJjgCH2b", "screenshotId": "BcdQ5lPI"}, {"description": "ci9ggaju", "screenshotId": "kXfahRnd"}, {"description": "sQxDpeGP", "screenshotId": "oGCHCrnA"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'TYECQsF7' \
    --namespace $AB_NAMESPACE \
    --userId 'rZByOKGN' \
    --body '{"screenshots": [{"contentType": "EiF3BSCQ", "description": "TDRrRyDL", "fileExtension": "bmp"}, {"contentType": "WCPx7KGj", "description": "A9wc4mov", "fileExtension": "jfif"}, {"contentType": "zqYslIs4", "description": "vXLR54fS", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'dcnq64la' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'fHfEWpXD' \
    --userId '79o97Fdo' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'gyDCbbmf' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'V89bIlT1' \
    --limit '75' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'zPdaYU6a' \
    --limit '56' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'OuzCTKro' \
    --limit '53' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'kq1BFoLG' \
    --body '{"contents": ["f2ODyjah", "tEdFFFGq", "L2luZf2s"], "name": "JOjkWNYs"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'vqB73wh5' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'PxyvuZQW' \
    --namespace $AB_NAMESPACE \
    --userId 'ulPeF6AK' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'MnfmAmhq' \
    --namespace $AB_NAMESPACE \
    --userId 'bVoK2v7w' \
    --body '{"contents": ["zwsqW6PM", "wX3BmzBS", "d7HemxV2"], "name": "GBGMAazy"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'ju8bkEmU' \
    --namespace $AB_NAMESPACE \
    --userId 'N7fX2Qjt' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'yBoKPPk0' \
    --namespace $AB_NAMESPACE \
    --userId 'kJRGQJTK' \
    --limit '68' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'Qga1cTzd' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE