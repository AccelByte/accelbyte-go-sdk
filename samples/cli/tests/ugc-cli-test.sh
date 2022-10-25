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
    --limit '98' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "ZDTu1cGL"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'uvA0XMMc' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "vK6bYXqi"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'LyxoOVL7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'SUXbUyIY' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "gU5Cj5ve", "fileExtension": "CAt8zPCu", "name": "oUfroJPq", "preview": "5PuIrGrS", "previewMetadata": {"previewContentType": "0uQbe0WD", "previewFileExtension": "UI7YN4bq"}, "subType": "pgFaJItE", "tags": ["3Bp3l5Fw", "3hRaXJa9", "z8I4INCd"], "type": "390kd1QU"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId '42vSmTfH' \
    --contentId '1pb8YUj8' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "HXHpm2Jv", "fileExtension": "1TThWMhQ", "name": "cI60PCxG", "preview": "QC7Z79wJ", "previewMetadata": {"previewContentType": "VrEr3sdq", "previewFileExtension": "NbyGx4eI"}, "subType": "qED2V28O", "tags": ["lBFrkr0Z", "2HOc4XKc", "ePwmGUeV"], "type": "WBOcDwYI"}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'HSDuR5Sn' \
    --namespace $AB_NAMESPACE \
    --creator 'GWAlI4RN' \
    --isofficial 'tsmrzOGK' \
    --limit '81' \
    --name '56ZgYtc2' \
    --offset '0' \
    --orderby 'BK8Z3mQr' \
    --sortby 'ZPq1uIK9' \
    --subtype '2BbkmnVL' \
    --tags '["Gr0SaVX4", "tq5966Rp", "6cqFQ8nL"]' \
    --type 'g1NlFCby' \
    --userId 'nTVwukfO' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'NzZY2mxV' \
    --contentId 'UEe88JtD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '3eMPxXUO' \
    --isofficial 'HzoZUiRg' \
    --limit '74' \
    --name 'R9YdBFqW' \
    --offset '26' \
    --orderby 'iJtfUNCx' \
    --sortby 'agW8PzUG' \
    --subtype 'PQG3OaPr' \
    --tags '["Se9Oz5KK", "LM8oIC4E", "dl6yd7ru"]' \
    --type 'uH3bvlka' \
    --userId 'FZbLPMLB' \
    > test.out 2>&1
eval_tap $? 13 'AdminSearchContent' test.out

#- 14 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'FlRZgJgC' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserContentByShareCode' test.out

#- 15 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'qgzB9t8f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetSpecificContent' test.out

#- 16 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'PqY0PlXR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDownloadContentPreview' test.out

#- 17 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '6phwk8oS' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "52a2t5UJ", "screenshotId": "BVB6Uk8x"}, {"description": "HO7GWCXv", "screenshotId": "FGiUiimx"}, {"description": "F11GDkjH", "screenshotId": "3ruPo8Yt"}]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateScreenshots' test.out

#- 18 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId '6BUG6aoF' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "yUzroNzK", "description": "xqpe3zoW", "fileExtension": "jpg"}, {"contentType": "M7wlbqY7", "description": "Fv3NYVeC", "fileExtension": "jpeg"}, {"contentType": "C7c1Vtwy", "description": "oLCyQLOH", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUploadContentScreenshot' test.out

#- 19 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'YBbrEjXn' \
    --namespace $AB_NAMESPACE \
    --screenshotId '857mhiUt' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteContentScreenshot' test.out

#- 20 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 20 'SingleAdminGetAllGroups' test.out

#- 21 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["a2pk8hWd", "G3MBcBI0", "8ZXgjTTX"], "name": "pryzRutN"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateGroup' test.out

#- 22 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'b4CsXYYs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetGroup' test.out

#- 23 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'kicMGHPd' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["NAcSOtPN", "Cpvv10RJ", "BlmQEcOD"], "name": "82HJB9LS"}' \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminUpdateGroup' test.out

#- 24 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'Bzk7eKKK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminDeleteGroup' test.out

#- 25 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'Ce2TNO16' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminGetGroupContents' test.out

#- 26 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 26 'AdminGetTag' test.out

#- 27 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "GwkXJXQ0"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateTag' test.out

#- 28 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId '4vclom9N' \
    --body '{"tag": "71F24Mc4"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateTag' test.out

#- 29 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'tq1iU3As' \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteTag' test.out

#- 30 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetType' test.out

#- 31 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["vQI3DSFi", "zzE6lLfz", "NMDjXkl0"], "type": "DMcf59Q3"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateType' test.out

#- 32 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'v32DVBGu' \
    --body '{"subtype": ["54AstwNj", "fT3cYOzW", "63mBTboM"], "type": "vVQWqbZb"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateType' test.out

#- 33 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'u3B4wDgc' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteType' test.out

#- 34 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'FM92A6Cc' \
    --limit '53' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetChannel' test.out

#- 35 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '99bUZCaM' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteAllUserChannels' test.out

#- 36 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'eQyRCFmj' \
    --namespace $AB_NAMESPACE \
    --userId 'vi4l8RoD' \
    --body '{"name": "PhYOZJ6l"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateChannel' test.out

#- 37 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'Uk1mYRZu' \
    --namespace $AB_NAMESPACE \
    --userId 'xbSb2bkl' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteChannel' test.out

#- 38 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId '6APkHElB' \
    --contentId 'cwjjYHNO' \
    --namespace $AB_NAMESPACE \
    --userId '2dNUIYU9' \
    --body '{"contentType": "KQMhYzzr", "fileExtension": "JLXErI3o", "name": "UcDtvKWb", "preview": "IKGiJsbw", "previewMetadata": {"previewContentType": "kvecqFUP", "previewFileExtension": "RPjI0Owm"}, "subType": "BilGFtcx", "tags": ["3PzcwGZi", "dLtYFkQa", "IGsHyUKa"], "type": "19NLtJFE"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateContentS3' test.out

#- 39 AdminUpdateContentDirect
eval_tap 0 39 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 40 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'mT8OMJYm' \
    --contentId 'p1Q3UDyE' \
    --namespace $AB_NAMESPACE \
    --userId 'xQ1GxJKK' \
    > test.out 2>&1
eval_tap $? 40 'AdminDeleteContent' test.out

#- 41 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'ozaoZ0b1' \
    --limit '4' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetContent' test.out

#- 42 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'ECR0kN1k' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAllUserContents' test.out

#- 43 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'sqbmbWti' \
    --namespace $AB_NAMESPACE \
    --userId '2ibUUiMH' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminHideUserContent' test.out

#- 44 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '9WY4yZxa' \
    --limit '30' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetAllGroups' test.out

#- 45 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'YwXbKlBP' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteAllUserGroup' test.out

#- 46 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'lZxNaGgQ' \
    --namespace $AB_NAMESPACE \
    --userId '9fuuOL2W' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetGroup' test.out

#- 47 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'kCi8d7Kg' \
    --namespace $AB_NAMESPACE \
    --userId 'EaHOljpi' \
    --body '{"contents": ["85ssWidg", "UqcVnHIX", "mTpsYYFM"], "name": "JQpmQuWz"}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateGroup' test.out

#- 48 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'P8AmEUmP' \
    --namespace $AB_NAMESPACE \
    --userId 'juUa7n5G' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteGroup' test.out

#- 49 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'JHnmXqmX' \
    --namespace $AB_NAMESPACE \
    --userId 'mj8W3QP7' \
    --limit '69' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetGroupContents' test.out

#- 50 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '7C7xuSRO' \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteAllUserStates' test.out

#- 51 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'zD8OXf8v' \
    --namespace $AB_NAMESPACE \
    --creator 'vMhyms6s' \
    --isofficial 'GoJjhqU5' \
    --limit '22' \
    --name 'lHE6Jgtq' \
    --offset '86' \
    --orderby 'SXYUyyJV' \
    --sortby 'KHX2dS0X' \
    --subtype '5xrbtIom' \
    --tags '["wSlgszqn", "qqfW1dWQ", "1Z5c72GB"]' \
    --type 'w0CO3xCv' \
    --userId '4QhIcg2S' \
    > test.out 2>&1
eval_tap $? 51 'SearchChannelSpecificContent' test.out

#- 52 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '6CfA81Jm' \
    --isofficial '6Y7ZBmbv' \
    --limit '59' \
    --name '5scgWFT9' \
    --offset '99' \
    --orderby 'dMaq5SAV' \
    --sortby 'yLqdjLEb' \
    --subtype 'CcDDUepJ' \
    --tags '["Glg8WX86", "vPuoROhz", "CxhG2Spc"]' \
    --type 'ByxgX2Nl' \
    --userId 'rhSUtBEK' \
    > test.out 2>&1
eval_tap $? 52 'PublicSearchContent' test.out

#- 53 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["zqSrd4ev", "rUiNnA88", "Y5Me0W2X"]}' \
    > test.out 2>&1
eval_tap $? 53 'PublicGetContentBulk' test.out

#- 54 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 54 'GetFollowedContent' test.out

#- 55 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '4' \
    --name 'lMOT4bdG' \
    --offset '18' \
    --orderby 'XIEBY8ch' \
    --sortby 'aBFHVNjX' \
    --subtype 'WRtEa3vQ' \
    --tags '["Q2KBmrDX", "8IwJZ6ut", "gf9BZBmx"]' \
    --type '9o43FlhU' \
    > test.out 2>&1
eval_tap $? 55 'GetLikedContent' test.out

#- 56 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'FM5ReSN8' \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByShareCode' test.out

#- 57 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'm6jv9xQW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByContentID' test.out

#- 58 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'xMd4lSsr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AddDownloadCount' test.out

#- 59 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'EHQ4BGix' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateContentLikeStatus' test.out

#- 60 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'cvJxjYQa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentPreview' test.out

#- 61 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 61 'GetTag' test.out

#- 62 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 62 'GetType' test.out

#- 63 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '28' \
    --orderby 'vlHCJVrU' \
    --sortby 'vcDfiW7T' \
    > test.out 2>&1
eval_tap $? 63 'PublicSearchCreator' test.out

#- 64 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 64 'GetFollowedUsers' test.out

#- 65 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '60GeDXKd' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCreator' test.out

#- 66 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'CU79EJ8h' \
    --limit '85' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 66 'GetChannels' test.out

#- 67 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'nlVH5iKr' \
    --body '{"name": "SmhyspIh"}' \
    > test.out 2>&1
eval_tap $? 67 'CreateChannel' test.out

#- 68 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'dv6amjjp' \
    > test.out 2>&1
eval_tap $? 68 'DeleteAllUserChannel' test.out

#- 69 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'qmywiH7Z' \
    --namespace $AB_NAMESPACE \
    --userId 'y4CEwuVA' \
    --body '{"name": "v5FFmfUn"}' \
    > test.out 2>&1
eval_tap $? 69 'UpdateChannel' test.out

#- 70 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'qGLyLSK3' \
    --namespace $AB_NAMESPACE \
    --userId '15e7cmR1' \
    > test.out 2>&1
eval_tap $? 70 'DeleteChannel' test.out

#- 71 CreateContentDirect
eval_tap 0 71 'CreateContentDirect # SKIP deprecated' test.out

#- 72 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId '7vFU474c' \
    --namespace $AB_NAMESPACE \
    --userId 'mfWaFmlC' \
    --body '{"contentType": "0o4l4ln5", "fileExtension": "wTJIc98C", "name": "74SDv4ri", "preview": "3ae7Pji3", "previewMetadata": {"previewContentType": "zE6eCqDJ", "previewFileExtension": "44LaDsBV"}, "subType": "I3qD1q9a", "tags": ["NSL06aKO", "0SIgaM2O", "tssqolVd"], "type": "kcoDJxB5"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateContentS3' test.out

#- 73 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId '6Rzx6fsR' \
    --contentId 'js5hknXg' \
    --namespace $AB_NAMESPACE \
    --userId 'TJ01KZJm' \
    --body '{"contentType": "CXfYad8M", "fileExtension": "h7RTr0Ij", "name": "am0o3PwL", "preview": "yP80YeYi", "previewMetadata": {"previewContentType": "JIC4wThn", "previewFileExtension": "ElhZ0NCF"}, "subType": "UP1gY23S", "tags": ["PhEbUq0h", "0Gyf4CfU", "pYf3NzC6"], "type": "57jrgOqj"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateContentS3' test.out

#- 74 UpdateContentDirect
eval_tap 0 74 'UpdateContentDirect # SKIP deprecated' test.out

#- 75 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '7ycL19uV' \
    --contentId 'x0qDm8CZ' \
    --namespace $AB_NAMESPACE \
    --userId 'phvRBpwR' \
    > test.out 2>&1
eval_tap $? 75 'DeleteContent' test.out

#- 76 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'L2LhBEEr' \
    --limit '32' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 76 'PublicGetUserContent' test.out

#- 77 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '0k9eOcOT' \
    > test.out 2>&1
eval_tap $? 77 'DeleteAllUserContents' test.out

#- 78 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'L5rnd8HO' \
    --namespace $AB_NAMESPACE \
    --userId 'WyFumHjs' \
    --body '{"screenshots": [{"description": "JZIntpht", "screenshotId": "xdrNiywj"}, {"description": "DZjsmrV5", "screenshotId": "KhdCyF3w"}, {"description": "pAdlNc1l", "screenshotId": "FbjLOsR4"}]}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateScreenshots' test.out

#- 79 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'uZQhiBRp' \
    --namespace $AB_NAMESPACE \
    --userId 'h77YiZaz' \
    --body '{"screenshots": [{"contentType": "IlOdozPn", "description": "hbPR10rV", "fileExtension": "bmp"}, {"contentType": "svFc325w", "description": "nYT13ziC", "fileExtension": "png"}, {"contentType": "T9SL5vWo", "description": "Vuc7NFBl", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UploadContentScreenshot' test.out

#- 80 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId '9X53KZqp' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'fSu9kWTe' \
    --userId 'aL73qdj5' \
    > test.out 2>&1
eval_tap $? 80 'DeleteContentScreenshot' test.out

#- 81 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'FETGamSq' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateUserFollowStatus' test.out

#- 82 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'QQb5fQUT' \
    --limit '12' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowers' test.out

#- 83 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'zepwVgg3' \
    --limit '99' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowing' test.out

#- 84 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'a0CoBGKK' \
    --limit '46' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 84 'GetGroups' test.out

#- 85 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'IKB7WkFI' \
    --body '{"contents": ["xsz58lwd", "29dft91d", "hMG47ITc"], "name": "f2UXZ4Zh"}' \
    > test.out 2>&1
eval_tap $? 85 'CreateGroup' test.out

#- 86 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'CXynSKaF' \
    > test.out 2>&1
eval_tap $? 86 'DeleteAllUserGroup' test.out

#- 87 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'wWT7LpPA' \
    --namespace $AB_NAMESPACE \
    --userId 'CKzSWl8b' \
    > test.out 2>&1
eval_tap $? 87 'GetGroup' test.out

#- 88 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'jneH7PVe' \
    --namespace $AB_NAMESPACE \
    --userId '6jNhDEV8' \
    --body '{"contents": ["SZCc9AOE", "4873GQas", "gnpHlZJK"], "name": "MzqrXVyf"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateGroup' test.out

#- 89 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'wLOdowi0' \
    --namespace $AB_NAMESPACE \
    --userId '3POqE10B' \
    > test.out 2>&1
eval_tap $? 89 'DeleteGroup' test.out

#- 90 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '2sqyHuSO' \
    --namespace $AB_NAMESPACE \
    --userId '8UCnKEf9' \
    --limit '55' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 90 'GetGroupContent' test.out

#- 91 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'QQGLRMGj' \
    > test.out 2>&1
eval_tap $? 91 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE