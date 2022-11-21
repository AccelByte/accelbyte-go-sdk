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
    --limit '45' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "PYVxrOHJ"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'FLNmPVQS' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "4fNbb2Iw"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'Vk7xbvOF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId '76vpCQfa' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "a0bprIiK", "fileExtension": "ZJgaJcEx", "name": "dLuIfb1p", "preview": "4fbQnY4x", "previewMetadata": {"previewContentType": "cw75tZeK", "previewFileExtension": "8x57AAuC"}, "subType": "fPw72DRc", "tags": ["p2YzjRvF", "5IOpPuXK", "h9uV2kAm"], "type": "7I9UY0Uv"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'jr7iTnZm' \
    --contentId 'awuH7Z7D' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "pNqAQJJF", "fileExtension": "VtoXpl1d", "name": "vYp9SSYu", "preview": "xQrvUdW0", "previewMetadata": {"previewContentType": "W3i3E4Bx", "previewFileExtension": "gv6pzrrA"}, "subType": "CApFrhzY", "tags": ["yLnbfzvG", "PQuUc8Ci", "6ykuVNxu"], "type": "6sa6Cbq1"}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'bZFtxvJ6' \
    --namespace $AB_NAMESPACE \
    --creator 'n4LQen4p' \
    --isofficial 'uLOqx90Z' \
    --limit '33' \
    --name 'uPsZ7jwj' \
    --offset '61' \
    --orderby 'An6yADIl' \
    --sortby 'MmQm6szX' \
    --subtype 'V2PKLl03' \
    --tags '["38HWY6kA", "YpNks8Bq", "6fP1BHUR"]' \
    --type 'GYA3uwxD' \
    --userId 'WiUjlufV' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '6nrgF6JL' \
    --contentId 'fLz0b7yW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'cf97ThUB' \
    --isofficial 'kQscERyv' \
    --limit '40' \
    --name 'RFUTD3P8' \
    --offset '57' \
    --orderby 'fiEN91lQ' \
    --sortby 'myHKuRy3' \
    --subtype 'siLCbPal' \
    --tags '["0bQKWJ7X", "0kpLIPwN", "8BKEoR8s"]' \
    --type 'gg9CjJZo' \
    --userId 'nV5y9gf2' \
    > test.out 2>&1
eval_tap $? 13 'AdminSearchContent' test.out

#- 14 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'gCoz17Oz' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserContentByShareCode' test.out

#- 15 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'QmMvkvHA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetSpecificContent' test.out

#- 16 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'ipPsC4ZN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDownloadContentPreview' test.out

#- 17 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '4CBclwqH' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "pMcHSbd7", "screenshotId": "2WKzqQJV"}, {"description": "VGQFvXUb", "screenshotId": "4e2ZQEfC"}, {"description": "TBuhzCEf", "screenshotId": "aMj5ceLy"}]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateScreenshots' test.out

#- 18 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'ewvLtppR' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "jVxI5p4t", "description": "eRPHAbAY", "fileExtension": "png"}, {"contentType": "yplemDo8", "description": "ObHtiOu7", "fileExtension": "pjp"}, {"contentType": "LxyRglnd", "description": "7nvvGzF7", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUploadContentScreenshot' test.out

#- 19 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'zZMB5rbK' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'sGoDLYKv' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteContentScreenshot' test.out

#- 20 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 20 'SingleAdminGetAllGroups' test.out

#- 21 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["FkBmbetf", "HOfYBWfj", "UIFFxhcA"], "name": "K5RozvuE"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateGroup' test.out

#- 22 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'wtZe0NGu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetGroup' test.out

#- 23 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'Apb8vliC' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Y4WMnoth", "ZqB4I8cU", "bX0iEnyV"], "name": "TAu02SoD"}' \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminUpdateGroup' test.out

#- 24 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'frL5HEXg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminDeleteGroup' test.out

#- 25 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'u6GIYcN7' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminGetGroupContents' test.out

#- 26 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 26 'AdminGetTag' test.out

#- 27 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "Ju30Xbcx"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateTag' test.out

#- 28 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'Kjlk2ZWm' \
    --body '{"tag": "pPO1T1Sz"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateTag' test.out

#- 29 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'Sv0sxgtk' \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteTag' test.out

#- 30 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetType' test.out

#- 31 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["lH8j9gQO", "NLqXYAgH", "dqZaEbLI"], "type": "lq1Nsoet"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateType' test.out

#- 32 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'QHkgZgnk' \
    --body '{"subtype": ["90nllaXJ", "156OP5V9", "qmXXmROQ"], "type": "EhZtmcVZ"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateType' test.out

#- 33 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '1DGMt0Kk' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteType' test.out

#- 34 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'NW2zVvGt' \
    --limit '21' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetChannel' test.out

#- 35 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'ryUuur9B' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteAllUserChannels' test.out

#- 36 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'hGSIi8KG' \
    --namespace $AB_NAMESPACE \
    --userId 'pJaL4CLG' \
    --body '{"name": "h68G27MA"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateChannel' test.out

#- 37 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'sKQdl5Kq' \
    --namespace $AB_NAMESPACE \
    --userId 'odAoDokr' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteChannel' test.out

#- 38 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'GBVj93q6' \
    --contentId 'pW3oQlC8' \
    --namespace $AB_NAMESPACE \
    --userId 'yENaAkLY' \
    --body '{"contentType": "TczlUWEB", "fileExtension": "XQKY7G3E", "name": "RlF9Dufz", "preview": "aNLeHvbj", "previewMetadata": {"previewContentType": "IqXYjdAX", "previewFileExtension": "1uoiD1Qj"}, "subType": "3eqDBnCM", "tags": ["FD6vkkK6", "EJ3jzCZd", "ePHJlKi4"], "type": "r1yBWO4m"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateContentS3' test.out

#- 39 AdminUpdateContentDirect
eval_tap 0 39 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 40 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'xEbIwmeb' \
    --contentId 'MLhI1iTr' \
    --namespace $AB_NAMESPACE \
    --userId 'fZwcfDoa' \
    > test.out 2>&1
eval_tap $? 40 'AdminDeleteContent' test.out

#- 41 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'TAnoUcd2' \
    --limit '50' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetContent' test.out

#- 42 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '5OpeXtUx' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAllUserContents' test.out

#- 43 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId '5n2sl37B' \
    --namespace $AB_NAMESPACE \
    --userId 'FUsWcNoc' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminHideUserContent' test.out

#- 44 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'xPgsQkNz' \
    --limit '77' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetAllGroups' test.out

#- 45 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'wFOFWN3x' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteAllUserGroup' test.out

#- 46 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'kdSA5K7a' \
    --namespace $AB_NAMESPACE \
    --userId 'QLqhn3RO' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetGroup' test.out

#- 47 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'iLrvSnjd' \
    --namespace $AB_NAMESPACE \
    --userId 'EfcVdHEO' \
    --body '{"contents": ["phdThSDA", "Be4pkmCJ", "grmxjT13"], "name": "aDmP6620"}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateGroup' test.out

#- 48 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'NZ8iqIhz' \
    --namespace $AB_NAMESPACE \
    --userId 'h9BEWDHB' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteGroup' test.out

#- 49 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '4JTmNsht' \
    --namespace $AB_NAMESPACE \
    --userId 'QDvkWxk3' \
    --limit '89' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetGroupContents' test.out

#- 50 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'jwjJ4PLj' \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteAllUserStates' test.out

#- 51 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'qGI1iA5b' \
    --namespace $AB_NAMESPACE \
    --creator 'rUsCsXAf' \
    --isofficial 'w9qOHpLE' \
    --limit '25' \
    --name 'NvsWNZsZ' \
    --offset '52' \
    --orderby 'fp7TLJ43' \
    --sortby 'mhI9QjBT' \
    --subtype 'chSRM8C8' \
    --tags '["bQfDK7Gy", "k2p2doVI", "76lNKd1m"]' \
    --type 'eWCFNKmN' \
    --userId 'qy7GYuVS' \
    > test.out 2>&1
eval_tap $? 51 'SearchChannelSpecificContent' test.out

#- 52 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'USr2GmDi' \
    --isofficial 'cRsZ6G8q' \
    --limit '69' \
    --name 'IVX5IazU' \
    --offset '34' \
    --orderby 'mkfE9A92' \
    --sortby 'PhUHV3dI' \
    --subtype '6QN7caQi' \
    --tags '["DWUFcZYx", "1mmTdhEL", "8FkpZ8Xg"]' \
    --type '4PaXX8X0' \
    --userId 'nQ1GIpx8' \
    > test.out 2>&1
eval_tap $? 52 'PublicSearchContent' test.out

#- 53 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["BnJnXYGg", "SlcxvhdH", "XkU4uCk3"]}' \
    > test.out 2>&1
eval_tap $? 53 'PublicGetContentBulk' test.out

#- 54 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 54 'GetFollowedContent' test.out

#- 55 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '47' \
    --name 'D1w3N6Zn' \
    --offset '65' \
    --orderby 'IFE4dFXZ' \
    --sortby 'vRW1PFmh' \
    --subtype 'Ok0V885P' \
    --tags '["c8SJ9c2M", "pmk6Z0D1", "iScvGK2O"]' \
    --type 'XvlHW44v' \
    > test.out 2>&1
eval_tap $? 55 'GetLikedContent' test.out

#- 56 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'uo2ZJxrj' \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByShareCode' test.out

#- 57 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'LzRB8nuq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByContentID' test.out

#- 58 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'OBPcRUHA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AddDownloadCount' test.out

#- 59 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'z36MzPlv' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateContentLikeStatus' test.out

#- 60 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'j6YVZ4EU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentPreview' test.out

#- 61 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 61 'GetTag' test.out

#- 62 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 62 'GetType' test.out

#- 63 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '22' \
    --orderby 'PE93YeBy' \
    --sortby '06lQgDT5' \
    > test.out 2>&1
eval_tap $? 63 'PublicSearchCreator' test.out

#- 64 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 64 'GetFollowedUsers' test.out

#- 65 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'jWyqKQ9S' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCreator' test.out

#- 66 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'oZP2Kx2C' \
    --limit '18' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 66 'GetChannels' test.out

#- 67 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'qSIW7xi6' \
    --body '{"name": "F8osCyO9"}' \
    > test.out 2>&1
eval_tap $? 67 'CreateChannel' test.out

#- 68 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'p4b8ZECi' \
    > test.out 2>&1
eval_tap $? 68 'DeleteAllUserChannel' test.out

#- 69 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'yYD9C8uL' \
    --namespace $AB_NAMESPACE \
    --userId 'LoJmgyWS' \
    --body '{"name": "BiTaDUOR"}' \
    > test.out 2>&1
eval_tap $? 69 'UpdateChannel' test.out

#- 70 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'OeHA6Fue' \
    --namespace $AB_NAMESPACE \
    --userId 'zUTiVXVn' \
    > test.out 2>&1
eval_tap $? 70 'DeleteChannel' test.out

#- 71 CreateContentDirect
eval_tap 0 71 'CreateContentDirect # SKIP deprecated' test.out

#- 72 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'LGaiVkjf' \
    --namespace $AB_NAMESPACE \
    --userId 'RdAvKzJn' \
    --body '{"contentType": "qHAYLnAi", "fileExtension": "4TI6AvUm", "name": "T3rz6ovh", "preview": "gFQ3T4lW", "previewMetadata": {"previewContentType": "mYFuytCr", "previewFileExtension": "ImM8CltZ"}, "subType": "RAzw363d", "tags": ["OL3AT9R6", "bYitxS3E", "B4dpGWd4"], "type": "SGwtFtSB"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateContentS3' test.out

#- 73 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId '2BufKfWT' \
    --contentId '4WLLV8A8' \
    --namespace $AB_NAMESPACE \
    --userId 'w02y92N3' \
    --body '{"contentType": "Y3DUlE5b", "fileExtension": "bQNpx9Ys", "name": "stzbSZ9U", "preview": "jSepps7d", "previewMetadata": {"previewContentType": "288lzisM", "previewFileExtension": "6z3w7k0a"}, "subType": "9maLST7U", "tags": ["40BQSjMb", "dvEGG2VB", "rQPhv09V"], "type": "0yWtYCh1"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateContentS3' test.out

#- 74 UpdateContentDirect
eval_tap 0 74 'UpdateContentDirect # SKIP deprecated' test.out

#- 75 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'pFVIEzWF' \
    --contentId 'BbVid51I' \
    --namespace $AB_NAMESPACE \
    --userId 'KO5rjH9J' \
    > test.out 2>&1
eval_tap $? 75 'DeleteContent' test.out

#- 76 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'zaFinXCZ' \
    --limit '8' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 76 'PublicGetUserContent' test.out

#- 77 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '9aTu92c8' \
    > test.out 2>&1
eval_tap $? 77 'DeleteAllUserContents' test.out

#- 78 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'sbxkaGdJ' \
    --namespace $AB_NAMESPACE \
    --userId 'Do2WCgQf' \
    --body '{"screenshots": [{"description": "cdemEkCN", "screenshotId": "84NRydz6"}, {"description": "9WCqNqz0", "screenshotId": "uXBTsOEq"}, {"description": "9rmi3Kwu", "screenshotId": "YNfkuvyI"}]}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateScreenshots' test.out

#- 79 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'Ez7ujyNs' \
    --namespace $AB_NAMESPACE \
    --userId 'FRstm3RW' \
    --body '{"screenshots": [{"contentType": "169kqBlL", "description": "KdoQo5LB", "fileExtension": "pjp"}, {"contentType": "ftrQQyLu", "description": "gc2PnW9t", "fileExtension": "jpg"}, {"contentType": "sM494EYG", "description": "shprL1bA", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UploadContentScreenshot' test.out

#- 80 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'Dgg9AVpB' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'ZHHBDnRC' \
    --userId 'g4GDIK81' \
    > test.out 2>&1
eval_tap $? 80 'DeleteContentScreenshot' test.out

#- 81 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId '1iRidI9P' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateUserFollowStatus' test.out

#- 82 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'Jr4gqP2c' \
    --limit '12' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowers' test.out

#- 83 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'qHavETc3' \
    --limit '40' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowing' test.out

#- 84 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'OeODw0AT' \
    --limit '19' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 84 'GetGroups' test.out

#- 85 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'xibZt6km' \
    --body '{"contents": ["odefEunt", "hs1aSeCd", "SFfSoYhf"], "name": "1vP77Zyx"}' \
    > test.out 2>&1
eval_tap $? 85 'CreateGroup' test.out

#- 86 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'JMF09x5C' \
    > test.out 2>&1
eval_tap $? 86 'DeleteAllUserGroup' test.out

#- 87 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'ssgZqURP' \
    --namespace $AB_NAMESPACE \
    --userId 'oODANP30' \
    > test.out 2>&1
eval_tap $? 87 'GetGroup' test.out

#- 88 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId '4Rwl5FJq' \
    --namespace $AB_NAMESPACE \
    --userId 'C8XSGIzl' \
    --body '{"contents": ["VkEbGQYu", "yEUVAPPD", "UwYrb42f"], "name": "Y2r2K8eN"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateGroup' test.out

#- 89 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId '5chuH8eF' \
    --namespace $AB_NAMESPACE \
    --userId 'vj84vPGd' \
    > test.out 2>&1
eval_tap $? 89 'DeleteGroup' test.out

#- 90 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'HUAWcaM4' \
    --namespace $AB_NAMESPACE \
    --userId 'AAIyydkJ' \
    --limit '96' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 90 'GetGroupContent' test.out

#- 91 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'FKU8hHNN' \
    > test.out 2>&1
eval_tap $? 91 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE