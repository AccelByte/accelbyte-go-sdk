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
    --limit '14' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "RlmNguCD"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'NesGLpV9' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "SDlKIKHy"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId '1lKerxpV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'icNamZlH' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "vBBleRgW", "fileExtension": "21WgzJpS", "name": "WwGn46K7", "preview": "oWsekl0H", "previewMetadata": {"previewContentType": "N7Wwa2KD", "previewFileExtension": "6QpfdOaH"}, "subType": "98ahLpBc", "tags": ["MXpfJIWw", "6pJEIQUA", "ROocdcym"], "type": "Iv2aOJBU"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'QsHUG45F' \
    --contentId 'FQkr5YA8' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "geivpnNY", "fileExtension": "lAGFaGTX", "name": "AF3A4XBb", "preview": "q6G1fu72", "previewMetadata": {"previewContentType": "mCr3VN8N", "previewFileExtension": "enNQvI33"}, "subType": "Z7RnRtEJ", "tags": ["wjVa8YCa", "5PxWM6CA", "oFXkR2E6"], "type": "MbNMYNbd"}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'awTRwuur' \
    --namespace $AB_NAMESPACE \
    --creator 'mfChFgUp' \
    --isofficial 'FmvqaHmf' \
    --limit '75' \
    --name 'CbvRKs9c' \
    --offset '3' \
    --orderby 'A27NvoRV' \
    --sortby 'B7q5iwR0' \
    --subtype 'NlQh9z8y' \
    --tags '["g7Lcj1zw", "XGeM2Kss", "3lmxT4WA"]' \
    --type 'FOLxGDIo' \
    --userId 'Wzs27PU5' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'MF7yvDSJ' \
    --contentId 'X77aPXgI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'P7agUuQA' \
    --isofficial 'oE93dFml' \
    --limit '2' \
    --name 'dB9qj37J' \
    --offset '84' \
    --orderby 'TFW2QRIR' \
    --sortby 'VSjaPyhI' \
    --subtype '9BUZRs64' \
    --tags '["bCdVnAB1", "TdTYyEpS", "eN6nKQ06"]' \
    --type 'k9fFqWMa' \
    --userId '4ZK9Tdzw' \
    > test.out 2>&1
eval_tap $? 13 'AdminSearchContent' test.out

#- 14 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'pzVfmCuK' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserContentByShareCode' test.out

#- 15 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '2ekNbM4o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetSpecificContent' test.out

#- 16 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'RIYm4WDB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDownloadContentPreview' test.out

#- 17 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'wq3Z5d14' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "1KaHyxku", "screenshotId": "5QNaqXlr"}, {"description": "N6kVSyIV", "screenshotId": "tIYETiad"}, {"description": "gb7hd0MK", "screenshotId": "9Abz0OJn"}]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateScreenshots' test.out

#- 18 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'cBSP2s6C' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "ZuPLgZTC", "description": "qwL0HiyA", "fileExtension": "jpg"}, {"contentType": "cr0tnnC6", "description": "EsiM65V5", "fileExtension": "bmp"}, {"contentType": "bnOpplWX", "description": "pvOeMSGg", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUploadContentScreenshot' test.out

#- 19 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '7hVb7ERW' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'G5eEw861' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteContentScreenshot' test.out

#- 20 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 20 'SingleAdminGetAllGroups' test.out

#- 21 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["GFkzvBIA", "HBmFic0E", "mQsdSnuw"], "name": "NYX2E5iQ"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateGroup' test.out

#- 22 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'k4cNAtNp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetGroup' test.out

#- 23 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'rJNL7OsY' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["W4csEfaa", "lLGZ1zJT", "LKu8WGyF"], "name": "JxemnyfU"}' \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminUpdateGroup' test.out

#- 24 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'XDeQJbUH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminDeleteGroup' test.out

#- 25 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'SZZw5ggr' \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminGetGroupContents' test.out

#- 26 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 26 'AdminGetTag' test.out

#- 27 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "sMGrQVdV"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateTag' test.out

#- 28 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'venqBj4r' \
    --body '{"tag": "BDKktjPF"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateTag' test.out

#- 29 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'CNYwmKmq' \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteTag' test.out

#- 30 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetType' test.out

#- 31 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["vH4586bK", "yOQsK9y9", "WWKferDw"], "type": "UkaiBbD2"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateType' test.out

#- 32 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '8FydseOp' \
    --body '{"subtype": ["8evHIGZa", "hjLZKp4k", "hLGkQApT"], "type": "C6j4bkDF"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateType' test.out

#- 33 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '9yuGkE9r' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteType' test.out

#- 34 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'UMbyXShK' \
    --limit '32' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetChannel' test.out

#- 35 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '9Uzxyg0Z' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteAllUserChannels' test.out

#- 36 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '7IhdjXOc' \
    --namespace $AB_NAMESPACE \
    --userId '0ds78qcR' \
    --body '{"name": "JsoXTtuH"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateChannel' test.out

#- 37 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'YRH3qJur' \
    --namespace $AB_NAMESPACE \
    --userId '5EstGifU' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteChannel' test.out

#- 38 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'BSL1cQCA' \
    --contentId 'Sws3T0Tp' \
    --namespace $AB_NAMESPACE \
    --userId 'ecdjimeo' \
    --body '{"contentType": "9jzQICx6", "fileExtension": "SzJhJ5ZX", "name": "FtnL5Ofa", "preview": "n7DUcGdk", "previewMetadata": {"previewContentType": "u9LGuxQe", "previewFileExtension": "2emQNekz"}, "subType": "4lzLAkLa", "tags": ["Erz9JcId", "VMVVJo59", "IJy8sh92"], "type": "YJdvsfmK"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateContentS3' test.out

#- 39 AdminUpdateContentDirect
eval_tap 0 39 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 40 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'urSgTZMH' \
    --contentId 'iZWrf8Hz' \
    --namespace $AB_NAMESPACE \
    --userId 'ePHENJjB' \
    > test.out 2>&1
eval_tap $? 40 'AdminDeleteContent' test.out

#- 41 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId '1kJiOica' \
    --limit '42' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetContent' test.out

#- 42 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'hfWxURbR' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAllUserContents' test.out

#- 43 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId '25B3M2iN' \
    --namespace $AB_NAMESPACE \
    --userId '5qhlociD' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminHideUserContent' test.out

#- 44 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'Gnd5xaMP' \
    --limit '92' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetAllGroups' test.out

#- 45 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'BI8tv3gf' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteAllUserGroup' test.out

#- 46 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'MglIjI2x' \
    --namespace $AB_NAMESPACE \
    --userId 'i7O6u8rA' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetGroup' test.out

#- 47 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'JcYqHQlc' \
    --namespace $AB_NAMESPACE \
    --userId 'T5RDwyEv' \
    --body '{"contents": ["MTsV6KBN", "nEYhNkY7", "LOqDY45R"], "name": "FjaGA6oh"}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateGroup' test.out

#- 48 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'fuxHjEB1' \
    --namespace $AB_NAMESPACE \
    --userId 'U7spAhLl' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteGroup' test.out

#- 49 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '3yZSyBS9' \
    --namespace $AB_NAMESPACE \
    --userId 'PZb1k7Dl' \
    --limit '100' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetGroupContents' test.out

#- 50 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'ZdPaoLC0' \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteAllUserStates' test.out

#- 51 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '5eDBdtaf' \
    --namespace $AB_NAMESPACE \
    --creator 'Vvk2K6IX' \
    --isofficial 'MZug2GoY' \
    --limit '56' \
    --name 'FaTe2jw9' \
    --offset '42' \
    --orderby 'jmJcIWG3' \
    --sortby 'WPPKnSsv' \
    --subtype 'TZz1hRYs' \
    --tags '["m24Wvl1B", "4SdHasmw", "hU8g8etX"]' \
    --type 'oAHmr3td' \
    --userId '41E0q7Ww' \
    > test.out 2>&1
eval_tap $? 51 'SearchChannelSpecificContent' test.out

#- 52 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '4nWGFHR0' \
    --isofficial '8jHItjCW' \
    --limit '82' \
    --name 'IOGFsR4x' \
    --offset '17' \
    --orderby 'rVKr0buD' \
    --sortby 'NkVJRL1U' \
    --subtype 'gVS4lfQB' \
    --tags '["dCgYS51s", "Z4p4wcPC", "rTE76FAP"]' \
    --type 'Ko4skaLK' \
    --userId '6J8aZWGs' \
    > test.out 2>&1
eval_tap $? 52 'PublicSearchContent' test.out

#- 53 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Em9hfXdb", "gHmdOXpZ", "jiZUyrWv"]}' \
    > test.out 2>&1
eval_tap $? 53 'PublicGetContentBulk' test.out

#- 54 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 54 'GetFollowedContent' test.out

#- 55 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '6' \
    --name '29qOVNyK' \
    --offset '17' \
    --orderby '1WuKisGK' \
    --sortby 'sWafnNkm' \
    --subtype 'NGNZcjpN' \
    --tags '["NhE4jY6Y", "9ZND6cQ6", "Qiv5ndbO"]' \
    --type 'AhVn6KEH' \
    > test.out 2>&1
eval_tap $? 55 'GetLikedContent' test.out

#- 56 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'w5gtTmT4' \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByShareCode' test.out

#- 57 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'TqpHJZxM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByContentID' test.out

#- 58 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'otZOtj1l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AddDownloadCount' test.out

#- 59 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'cog0XfR6' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateContentLikeStatus' test.out

#- 60 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'u8vtwVq3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentPreview' test.out

#- 61 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 61 'GetTag' test.out

#- 62 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 62 'GetType' test.out

#- 63 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '6' \
    --orderby 'TkW3G8kW' \
    --sortby 'QQHHFiYf' \
    > test.out 2>&1
eval_tap $? 63 'PublicSearchCreator' test.out

#- 64 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 64 'GetFollowedUsers' test.out

#- 65 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'f3zgCkaF' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCreator' test.out

#- 66 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'fltLVoQ9' \
    --limit '88' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 66 'GetChannels' test.out

#- 67 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'xUdsmAj1' \
    --body '{"name": "Nr7SbQfz"}' \
    > test.out 2>&1
eval_tap $? 67 'CreateChannel' test.out

#- 68 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'Z0lqygF8' \
    > test.out 2>&1
eval_tap $? 68 'DeleteAllUserChannel' test.out

#- 69 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '6oFEraeo' \
    --namespace $AB_NAMESPACE \
    --userId 'Kx9LfoNS' \
    --body '{"name": "knOSpAmK"}' \
    > test.out 2>&1
eval_tap $? 69 'UpdateChannel' test.out

#- 70 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'V1f3FeIM' \
    --namespace $AB_NAMESPACE \
    --userId 'pVKizjUe' \
    > test.out 2>&1
eval_tap $? 70 'DeleteChannel' test.out

#- 71 CreateContentDirect
eval_tap 0 71 'CreateContentDirect # SKIP deprecated' test.out

#- 72 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'BXraWfwg' \
    --namespace $AB_NAMESPACE \
    --userId 'iyzuYSGQ' \
    --body '{"contentType": "K0d4356f", "fileExtension": "9cB5ksAS", "name": "JxDTuK82", "preview": "WC7kJdNX", "previewMetadata": {"previewContentType": "gZA1CqfV", "previewFileExtension": "EdfammLM"}, "subType": "xsA510Ch", "tags": ["aglk2A0I", "gh39b9Um", "KgBBeFg7"], "type": "3MpZ2ZfX"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateContentS3' test.out

#- 73 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'yOQBaok1' \
    --contentId 'QBAakXfe' \
    --namespace $AB_NAMESPACE \
    --userId 'MIv9ZK52' \
    --body '{"contentType": "4OlwQn1R", "fileExtension": "AUGKPUAG", "name": "5lUWPv7u", "preview": "womkcxJx", "previewMetadata": {"previewContentType": "Xh674N6d", "previewFileExtension": "qt4eeRfX"}, "subType": "edtks7KR", "tags": ["9BVtXZmn", "ZxMKVcAM", "vSci9jcZ"], "type": "iVHe7yr2"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateContentS3' test.out

#- 74 UpdateContentDirect
eval_tap 0 74 'UpdateContentDirect # SKIP deprecated' test.out

#- 75 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'CdoK4984' \
    --contentId 'Itqxvgt6' \
    --namespace $AB_NAMESPACE \
    --userId 'ZTijkJOF' \
    > test.out 2>&1
eval_tap $? 75 'DeleteContent' test.out

#- 76 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '0jByq8sZ' \
    --limit '54' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 76 'PublicGetUserContent' test.out

#- 77 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'Pl4vS4YQ' \
    > test.out 2>&1
eval_tap $? 77 'DeleteAllUserContents' test.out

#- 78 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'ZRYUUyci' \
    --namespace $AB_NAMESPACE \
    --userId 'KoYPc42g' \
    --body '{"screenshots": [{"description": "aCQsbkGq", "screenshotId": "dnD3Fcn3"}, {"description": "XCWRxnHm", "screenshotId": "Xx8sr7H8"}, {"description": "azxw6t0g", "screenshotId": "ARZBzaZw"}]}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateScreenshots' test.out

#- 79 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '2weOTEoC' \
    --namespace $AB_NAMESPACE \
    --userId 'Ilaatvqh' \
    --body '{"screenshots": [{"contentType": "bgDPGhfN", "description": "TxNjfhVb", "fileExtension": "png"}, {"contentType": "DEjGzh1N", "description": "l7NhBDvg", "fileExtension": "jpeg"}, {"contentType": "3Gx14Cfz", "description": "yyxzaqeu", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UploadContentScreenshot' test.out

#- 80 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'js0GjgQ8' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'fp3QBtbj' \
    --userId 'jwMUFNbu' \
    > test.out 2>&1
eval_tap $? 80 'DeleteContentScreenshot' test.out

#- 81 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'y9QrLyW8' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateUserFollowStatus' test.out

#- 82 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId '6XFZ2i5s' \
    --limit '44' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowers' test.out

#- 83 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'ei0qCaO3' \
    --limit '19' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowing' test.out

#- 84 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'ZZd7TPqA' \
    --limit '90' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 84 'GetGroups' test.out

#- 85 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId '936UJv7D' \
    --body '{"contents": ["bvCJ47aV", "QEy2lbhN", "Ml8upkzg"], "name": "TWnAJfzc"}' \
    > test.out 2>&1
eval_tap $? 85 'CreateGroup' test.out

#- 86 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'PyZtFDeM' \
    > test.out 2>&1
eval_tap $? 86 'DeleteAllUserGroup' test.out

#- 87 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'g7fJRtdw' \
    --namespace $AB_NAMESPACE \
    --userId 'ohfKvGvb' \
    > test.out 2>&1
eval_tap $? 87 'GetGroup' test.out

#- 88 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'y4nKrc1j' \
    --namespace $AB_NAMESPACE \
    --userId 'FJE3JR2U' \
    --body '{"contents": ["ndWAaluV", "kTmFB3uF", "6qiCdO6x"], "name": "PJr8xrtf"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateGroup' test.out

#- 89 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'ev3zVK5A' \
    --namespace $AB_NAMESPACE \
    --userId 'mInzf46g' \
    > test.out 2>&1
eval_tap $? 89 'DeleteGroup' test.out

#- 90 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '07ovQYgA' \
    --namespace $AB_NAMESPACE \
    --userId 'k83lO9MU' \
    --limit '10' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 90 'GetGroupContent' test.out

#- 91 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'Gy1lJ5VP' \
    > test.out 2>&1
eval_tap $? 91 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE