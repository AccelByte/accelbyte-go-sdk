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
echo "1..161"

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
    --offset '7' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "APX4l3eVWv0L7SYc", "name": "mlRcrKBlbqqYLKgo"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'PT0soR44iU3z8OEt' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "QCh4egEqRmw9S3AY"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'PhCpZ25RW7cSjPPG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'cHIWdyc3KgXQbx49' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "zHO2sPUwR00JSXIn", "customAttributes": {"ck2vnkZRfWl9jUgd": {}, "0oswHGYOdK9vErAX": {}, "0Kml1PWqlhELacft": {}}, "fileExtension": "gvxDrdybBwEYsuMH", "name": "HptX8BaAR56RTuzU", "preview": "ncruSvlMJdlnPnkE", "previewMetadata": {"previewContentType": "eK1a0LSUKwbd0hYa", "previewFileExtension": "LMiCMlS3KQYTpe1o"}, "shareCode": "q02cH510xCz9QDrQ", "subType": "64UVr80YczJqaPln", "tags": ["ovaMC0WlA8e6OB9R", "2MJ2cN5hBli0cZo9", "WAnDPLtTKwhYuJ9C"], "type": "FxwhdMSsyz3MIf1g"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'uKVAq6cAfDbQLpU8' \
    --contentId '0eVg5INwXNaGXKWy' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "bUjYnrKdx04GsnwV", "customAttributes": {"NJ2xtOcOLmfvD6Jz": {}, "zgQU89mMbVx7BUZE": {}, "Yyd26C9Cwl7kwHqE": {}}, "fileExtension": "HjuIWDnGRAG4YevW", "name": "BKAW1UOgnmNsjuYe", "payload": "hGK3XZqAq3xKjbWv", "preview": "Eid8RGlJhVKHO2Se", "previewMetadata": {"previewContentType": "2wTSjqOvUiHXcjmZ", "previewFileExtension": "7hFkNQK7KTTbHycj"}, "shareCode": "IwUQ198yzXfy4Dwz", "subType": "h6IlvxF5odtQYAyV", "tags": ["q5xbnT6RqveRhmUf", "9Wu5BLvzoS2IQqB3", "Fb3POswQT4CttSVC"], "type": "6msvAvV1an5dPisA", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'Q92aVu0QOwBwO2zr' \
    --namespace $AB_NAMESPACE \
    --creator '2OsVBZWQD0q5lqKS' \
    --ishidden 'lQ5nA71pRNyStzQn' \
    --isofficial 'L9FiqCcov5GBWOsM' \
    --limit '16' \
    --name 'cs3ID6dPic8kU0Uk' \
    --offset '81' \
    --orderby '9fpRqpFy8uyup4LS' \
    --sortby 'fxokhlVBVjieQ1jW' \
    --subtype 'NidaYW5qJVG4jX9I' \
    --tags '["QqWqWIy64GcjwNuK", "PyxEHO9t5LUjd0aV", "vqU9bdcBuFj9HXdu"]' \
    --type 'ODjcEzqoV6RAH728' \
    --userId 'dGemfctrk1GJulwp' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '2G7cBSUmkyyOeXOK' \
    --contentId 'm1VD0IOLdc9oWN1A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["6fBPPd9SsxVVZMli", "LgH6nrcttU4kbfpx", "obsL4QpakKH5e2Az"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'uyP309o4rDfLLwIT' \
    --ishidden 'v2ljoK0CDNcAenAq' \
    --isofficial 'Gdx5aHXtFjO6r4qQ' \
    --limit '5' \
    --name 'mVryYdVb649SB9c8' \
    --offset '71' \
    --orderby 'KW1V6iLwDVKicWGu' \
    --sortby 'o0efMqWnm5HdXYkZ' \
    --subtype 'q6E1sQ5lTrL3qQX0' \
    --tags '["C4TYOFBytx6NW8h2", "RxBtGoQjrOsls13t", "HyCjeSgAkrCUMGXd"]' \
    --type 'cqYEn46smhQcL9x9' \
    --userId 'GMdbKZ1XdYqMUIBN' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["wfpXxstVl65abuLQ", "MpIlQSe8YPrNcprG", "FENQ6CYDRhJwopmC"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'q88XP43c93RHbDDO' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '1iRQKxWbx1qXdwiu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'EfHnrHrTmL9pmpgc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'hZfWj1GKJmLZf0tM' \
    --namespace $AB_NAMESPACE \
    --versionId 'V1GNj08CWiFkT94p' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'lRyP7GXWhrwnd1xx' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "Bh85u2JfLDO7Dsqz", "screenshotId": "PwxgO1Bg7DZCACcM"}, {"description": "5qOVFvY5I3651JYF", "screenshotId": "kWUTjfDvDaROfOqd"}, {"description": "9Bb3zLpZrGYOcb3F", "screenshotId": "KwNuJfNDTfWBpvpw"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId '8kN6UKkyXdlitjmU' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "JjjMvstxodmC8Kki", "description": "S9WaDFct4ORCUsZN", "fileExtension": "jfif"}, {"contentType": "ioIIY63yCy1v3iAp", "description": "N5Vc5nbsrsXJEICp", "fileExtension": "bmp"}, {"contentType": "xTRxhHF2rC1wwppK", "description": "4NEov6HQs8vqTPcA", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'unLhQTb4SOheNjbL' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'jOERmUEtDbBLfYyz' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'teunQQWnmYO4qXVq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["z6Qr1IUvncxokO46", "wR6Vs3IGzni9oOpc", "UO1odvvzd0bMIq9F"], "name": "Jhg1zk3daUDPBcb2"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '4f3RBJtEz11XOXWq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'D0h0Aq2DwTAmiF2z' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Kjxmh1DCgtXwX3Jo", "JRNIsJ36XSndtFNJ", "xeCBXLVLs92A3OfY"], "name": "cUi1EOG6mDTr3ZcF"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'WeUJeL0SwRPQ4ElS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'sNhVPdqsDcnkbIZj' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "JaxWhl3jpixU4idP"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'fZ9Jcdbhc0UUz9Ue' \
    --body '{"tag": "9DaWkdNEeHJOhlHR"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'eBDbyAZENsxeA6Il' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["12kNkDGRRjrebvUY", "MwGqfZDVJkGeSEoL", "c7PulRCLFfeV8BLj"], "type": "pTyhjMWVy0326jpp"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'LaaFDxYAfUX9CjJp' \
    --body '{"subtype": ["h8dfSJuqdg87yAQi", "wkBK9jCZmsNfem6L", "NopwhMOlJruNaVOo"], "type": "TsoD5zVCMMAt4LFd"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '7ykmf43dUZDWVHOW' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId '3VaAQavoESQnUvRB' \
    --limit '79' \
    --name 'lNlcxA6BSlZeo3IV' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'mIgz6X9B4O5GLCL1' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'n5aQbPzWcHUCnRY2' \
    --namespace $AB_NAMESPACE \
    --userId 'syIZigbkTmQCCTGi' \
    --body '{"name": "wRMebB6P9NXG4Gmq"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'xc6YgDVJnwoNJXrN' \
    --namespace $AB_NAMESPACE \
    --userId 'TpBJdTThNY7xZDkl' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'JcR7EpITy85FERgV' \
    --namespace $AB_NAMESPACE \
    --shareCode 'XXiI6GIccUI3A73C' \
    --userId '5jqPW2IlFn0u75BH' \
    --body '{"contentType": "kfnyhKLIAbHeohC2", "customAttributes": {"3l7mnzn32peeT5J9": {}, "pQsvaWPDTPkqMG1q": {}, "BS0x2hzyRO2621jA": {}}, "fileExtension": "kmDx3HqdXSQrqoGj", "name": "2Tp1Yq1CvcbdgL7L", "payload": "Ah8pyG1Fn55pWcOO", "preview": "jitD81UrXfeF7lUF", "previewMetadata": {"previewContentType": "R3dqrDoeD294FXSZ", "previewFileExtension": "BVCWCejrBRsarWl0"}, "shareCode": "gM4iPTWpD0NxOMvb", "subType": "LbShYzVPDWfELhcP", "tags": ["s7wgDPPN9JTlgDTw", "PXoHDVKeeYupE140", "iyjonOuijDubl4TH"], "type": "WCRdkQUcVNbcEkHe", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'aL7hll3cmEmIgwgc' \
    --contentId 'IXt6VO5K8M6z3RNd' \
    --namespace $AB_NAMESPACE \
    --userId 'UMOVWGBrLZVRr9Vr' \
    --body '{"contentType": "FvsVCHVryc3uXrdf", "customAttributes": {"3lQ2qaeodTtPiXNP": {}, "uXkz4g1jEdPMTNX3": {}, "QhYX8meqZ5RFUCBg": {}}, "fileExtension": "5GamvwdxMgY7qiHk", "name": "JBmm3xVqIZwNbZLT", "payload": "hFGoO4o6kvKjkJNs", "preview": "C4VCHQ2XvkG8TWyn", "previewMetadata": {"previewContentType": "jwht1mylj2mvVMhN", "previewFileExtension": "AJWXlXhUU0HMo4Ww"}, "shareCode": "z3atzL3k6pKuVccz", "subType": "61Zo53IRwM75ZamZ", "tags": ["Z4venNaoXsmsKGH3", "4UoVSWc97s8kQ5TU", "B8bxLx2LAEBptJnt"], "type": "ybYBb3c2eTF8TxzD", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'J3mRInpaM44rjUqO' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ZpBjDpcsKHVfjZAn' \
    --userId 'f90Rjq25WBwzCBKV' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'ymmdseXTudCTx17Q' \
    --contentId 'Hcl8Csh80tgIJbOd' \
    --namespace $AB_NAMESPACE \
    --userId 'wzvs1iiUeyXtXZ4O' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'xBjzw0xzPMmct9So' \
    --limit '97' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'f7H15te3T8LjvGia' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'U4ePGysSEaQVGMd1' \
    --namespace $AB_NAMESPACE \
    --userId '8BzYrr60oUwT9GC4' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'brnrTttZPl8hyDCw' \
    --limit '60' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '5zCQ3HWlhPoe0QXo' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'dAYiWunSaKOg2YQW' \
    --namespace $AB_NAMESPACE \
    --userId 'MV72LUIixUQlJEPQ' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'ofqKQCzBUcWuKAzc' \
    --namespace $AB_NAMESPACE \
    --userId 'nnQ6dAhhxqf164vv' \
    --body '{"contents": ["IMPr8wdxhwY3ouo1", "HUAvYu16b5q7OTdz", "SdSdaf54IpNBiaMf"], "name": "VLCAvbJsZxuOw6YI"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'T2fQq3H085FXErrG' \
    --namespace $AB_NAMESPACE \
    --userId 'dRtmiMci4qdxUNle' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'GjpD2R3tRgQvkNlJ' \
    --namespace $AB_NAMESPACE \
    --userId 'sZKy6HxP5CsccWJA' \
    --limit '81' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'KfjK1Hc3hRATlnR0' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '3m5GL5fdZMiQaUhv' \
    --namespace $AB_NAMESPACE \
    --creator 'WdDQGtqxW6EpNOh7' \
    --ishidden 'QrEyUKDNiQEQwSdK' \
    --isofficial 'PYvqNHjH6TSn6jWa' \
    --limit '11' \
    --name 'HkIYLHN9mD1wifA6' \
    --offset '14' \
    --orderby 'wU0PSpREa0s7VWSW' \
    --sortby 'gDwwdeDVmqB2urRZ' \
    --subtype '1lq005NOnUlw6sQ1' \
    --tags '["tazdxiT0yGL1H2sl", "YOyjBnKE4Qjzggxi", "g9yLD3cPWurcVFIR"]' \
    --type 'g0wq849eTssjBT8m' \
    --userId 'mht9ZQkMITqSJPPS' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 't0a6aglOvTU9Epdx' \
    --ishidden 'cYzNQGnN4F0Og7DZ' \
    --isofficial 'ae9fEbsVyG7ToDD4' \
    --limit '21' \
    --name 'UbcTicWhPwgEYh19' \
    --offset '34' \
    --orderby 'Zy5SAa2457qFBWj8' \
    --sortby 'OVemlmO7KQQap6E4' \
    --subtype 'z0GL5aMRuvy32Kk8' \
    --tags '["IKxhbtdGWZ8XUwtj", "vSeNKfYCD2eJEPfm", "CbUbkeLyEsqUVOJO"]' \
    --type 'btPjFEBhbc70KiRX' \
    --userId 'pBPoMpZRxkfTsSzT' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["GRROYCZ8cJeDBEb5", "Ff9Unlf0SMHl0ast", "IZkkZQs0tiuqS76i"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '45' \
    --name 'i3hN48zlvzDrgIrU' \
    --offset '41' \
    --orderby 'mUrOWV0C6AOdFiMp' \
    --sortby 'vHA1r2TpuXKQ2LgI' \
    --subtype 'taj8CT7C2w86A9aG' \
    --tags '["W79KWvnDBGrznnlz", "KgUt3nFHrscXuK2B", "dVEefk1UmD5J8j7P"]' \
    --type 'EicadLcL3C6R2Kne' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["htilDzx8CF2T2Quf", "FgSPe14acC1GjRKz", "jPhmBV2cVOtp0wdi"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'Akw2CFnAlLWZaSGh' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'n4NuhUDGpKt6YzuM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'SiDn8hw6x1zJ9YRX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId '2Ca1jHm0kxvaM1px' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'JHvutAQrhECAK3gZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '71' \
    --orderby '2ZJJ7x0cbTHk7xUy' \
    --sortby 'K7gCMIGwDN1Cyxih' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'NKu6h7sXnd29AL2q' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'QP7r5LsxeVRZTsPP' \
    --limit '2' \
    --name 'W3mBOPFbxW4gWXxH' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId '7EwkLB6ZG7mBWTZN' \
    --body '{"name": "I5hzNzm6pzjD0VJe"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'Uz5HldmtOzHd7bii' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'rjMpOvzOuyoFvx1g' \
    --namespace $AB_NAMESPACE \
    --userId 'M5a2cKXcVlARSXFE' \
    --body '{"name": "98paxRiH1CJspxLU"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'Lh2xJDZ85dTWNUC6' \
    --namespace $AB_NAMESPACE \
    --userId 'vhhmXWJhbsEZxL8w' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'fICdWLbxCsNDfSxN' \
    --namespace $AB_NAMESPACE \
    --userId 'QCVXI8WeeNjopFLq' \
    --body '{"contentType": "giYmU7kMRsY9Jz8w", "customAttributes": {"G85bqObCcni5aqA9": {}, "hY0VnRD5Fmm1fpiA": {}, "20MO4iqHwTvqgHys": {}}, "fileExtension": "p3ZD14FW7BrfzM7v", "name": "h3vXBNnmFWlhRg2S", "preview": "cy7qffgRTSmr6Rsf", "previewMetadata": {"previewContentType": "FaNUEPjohyGvj7Gl", "previewFileExtension": "U2tCrL5bECaJOnN4"}, "subType": "ftbtRHGImFo9SYOT", "tags": ["uSWKZchcSQabSLR5", "2nR2yTdsbqHDJ0Nc", "GcbLGOgAcnLJaNee"], "type": "IrASOmbUENwgvFXX"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'l1EQ4H9EW3r9GG1X' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Ml9UrDxzCc0IoyyA' \
    --userId 'wf3T0dYbnlxbKcAj' \
    --body '{"contentType": "ZzbqeCbDEOAmy1Mk", "customAttributes": {"l1rYZzL8gW8iR6IB": {}, "EdkgKZZjEVF7Wz4U": {}, "CDefvLieKpdhyI0C": {}}, "fileExtension": "bnrX1nuqpQ3IC3cb", "name": "eQMAq64dv3clNbR7", "payload": "duhwCRWt7XOHzZxF", "preview": "tmc6lSb6T3eKeANK", "previewMetadata": {"previewContentType": "9URZ5JGcXrixACzp", "previewFileExtension": "CWsZ8U2cf5FGUSoU"}, "subType": "lCIGyX7kwiFz9wea", "tags": ["Rvxy1PwhlUbCtfff", "dEOx2FjYploZ6sAF", "YwRp7fF1nBJwfYG3"], "type": "TYG59SbfXOoJGEti", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'E7ZPB1wJDyhbmmtO' \
    --contentId '88RFTUvGY9bYFuSs' \
    --namespace $AB_NAMESPACE \
    --userId 'szDs8u5mNnJDC5e5' \
    --body '{"contentType": "UNIeSLvdissfBwQ8", "customAttributes": {"A8er7eGTBoFnmppp": {}, "xzVpMaoy48BOQX0i": {}, "EdL8fNCB5q9GH5IB": {}}, "fileExtension": "3vwOvj67e8RSB91m", "name": "O1q0cHA9QxKqfzWx", "payload": "0JqMXgirqQ7QnALT", "preview": "R6whAEohOJZc4PpT", "previewMetadata": {"previewContentType": "8DLMpTkMOgigrW3g", "previewFileExtension": "AuwLdkYKxlEj7mbP"}, "subType": "xrQTx9AhZS1sLJun", "tags": ["TEvpMRryvQ5ovsPv", "A9GwLVOhACNHPwmM", "Gd7Cf09Glj9U8qd7"], "type": "bHOYLRZfexPO9fVN", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId '2KDmaMyCIiazfUQw' \
    --namespace $AB_NAMESPACE \
    --shareCode 'CLvJIWSRME88Devo' \
    --userId 'YyD9VOgrwXLBWLgM' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'uxFi57UoDOyp7xF8' \
    --contentId 'ehr3JQYwpxgiL05X' \
    --namespace $AB_NAMESPACE \
    --userId 'BOVnHUrVznoc2J8n' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'PHjGw1eJWH1DCkid' \
    --contentId 'ssEkAwigbqi8kQv7' \
    --namespace $AB_NAMESPACE \
    --userId '23QAUYLYHLbPp2KU' \
    --body '{"shareCode": "ea4YFXYtRDQ8SI7u"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'k4RhCiUffj6HXwtL' \
    --limit '43' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'W1ETZJMBIzelfe8E' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'igu0MwjdAim7xKZB' \
    --namespace $AB_NAMESPACE \
    --userId 'f4ytQIXN1gYeZFuE' \
    --body '{"screenshots": [{"description": "OXiVXJH3yZ5Rj2x3", "screenshotId": "Gf2QUsv9iHZFj2aM"}, {"description": "0hu9i8G7638MQihk", "screenshotId": "CuBTQqGyGfhFPmY4"}, {"description": "I8db4rd0LDF6c1Xk", "screenshotId": "xV630QPxefbOU83t"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'RHeJGTB1gvb1Wd4x' \
    --namespace $AB_NAMESPACE \
    --userId '4p2Hoz2Hoiidc9YM' \
    --body '{"screenshots": [{"contentType": "ybcoNURcQJcJYBZe", "description": "BaQcoJqsDXKZgHYM", "fileExtension": "pjp"}, {"contentType": "ZaVxaM4CooRTBs13", "description": "mZSG0spA2rGWBY3W", "fileExtension": "pjp"}, {"contentType": "83wNK0lzK5nHo9Qv", "description": "FBjTjEOeZQ1ekmLs", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'kC6dZ9vhp2qk5z9A' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'yOToRrnBxOdn0qYo' \
    --userId 'Ugy27cW3cglLGf2e' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'RRbpnRFxA3Z0QyZV' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'sjfTzAKSjWiHnZGi' \
    --limit '99' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId '8qeZ3wMqrHUCD2p2' \
    --limit '6' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'TSPMcW6S4jrcsZrt' \
    --limit '90' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'ZIQZY63SdjbR4F6q' \
    --body '{"contents": ["UW7dn9pWDxxFprnV", "HkoO6qOehuUxkqoB", "FGs1kwVocvQrLJyL"], "name": "QBhb9mNmmlDY9f3X"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'K4nHEjwGltqO1EOW' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'OVjKXcTmJWmcw34i' \
    --namespace $AB_NAMESPACE \
    --userId 'fQmX9gGO8l1RGX02' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'Ig77V3feTstkme18' \
    --namespace $AB_NAMESPACE \
    --userId 'oz6BX4KPMGxdzKDg' \
    --body '{"contents": ["XXUkQcxhjPghU9LX", "rw4fdxYxEZQLzncR", "lOEYjsbIhqkm6QCy"], "name": "yjW9S58Q47JVp0eF"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'OgSnrBRpYFuteWGu' \
    --namespace $AB_NAMESPACE \
    --userId 'MvPlz1UUiIXyyDOR' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'wFj92EHVvJGg11UA' \
    --namespace $AB_NAMESPACE \
    --userId 'h96HLT7chMlkrjey' \
    --limit '42' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'x5SnMSh0DG4S72Pi' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'vbQueBVpw7wacoU3' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --name 'bp5fbojq5DB84OgP' \
    --offset '48' \
    --sortBy 'UaphYvOXUnKnv5GN' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'RCs8FRiz2GeoiZ5n' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "9PAWcDauWb1zSjpP", "customAttributes": {"w47Y1eATc9lTa0Ps": {}, "cJ7yokkTQ8FHNDwC": {}, "o2N7T16JxqbwRcsr": {}}, "fileExtension": "ltfz9HNFkH8ohBzb", "name": "KiWe7V2LUn2Z2Gtm", "shareCode": "LP1TCuId3QiuEymz", "subType": "KTnw6XJKeZ5SgAO2", "tags": ["htPTFnIgE8LamS5v", "80BoQ9VLWxloyagV", "E66qaFTUY0hOJk59"], "type": "LMWryg6dT0fmmwzM"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'DtNd3MzPqM7uFnoC' \
    --contentId 'IyUIjWVQRpdyfnfT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'QlUderJlr2uZvpnx' \
    --contentId 'BQPyt74qM2jGVUNu' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"aBOgScTKUa2VMnoz": {}, "GdtUfswxoS7u5stK": {}, "9vjZSGfG2091zJGX": {}}, "name": "0CzuDZaHAGX3b75O", "shareCode": "oQaEffn91rZK4EU2", "subType": "JMTaPHhLMmQSJ6Oj", "tags": ["ixl5YPdgFlKcxzh5", "oWT8iFdmKkLXJfzG", "rzKy622puNOJKryA"], "type": "8zjycHWlsyzz7O7U"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'R31vSXxtCxI6d8sj' \
    --contentId 'KzJKZFXbMGpVog3A' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"hSRf2i4xfWItg0fJ": {}, "Lz23NyGwSOOWsdfu": {}, "U0jzi7dgrVOisqes": {}}, "name": "m2cdtCTg3Ho2s8GK", "subType": "SAQHE2XrzgobyUKq", "tags": ["sJV6DNepmFDJ1Q2l", "KlLSMCeWfXrFSi6x", "QiTz6C1d3kRRNOuT"], "targetChannelId": "Vv1s2cvYgbAbf7Za", "type": "KWXVQpKiAxteOlxU"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'MugeUxydV1omJI9R' \
    --contentId 'n924IqTaoYWFTKZ3' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "e99FiR4pQmeIThdF", "fileLocation": "GyBUKie90Is6SdXs"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'JTBDqQPI75CuMDJw' \
    --contentId 'a2UrBjBbkIDPlBXv' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "BcnOfkddFb3ODYuf", "fileExtension": "mbCbqeaVUOjLsus3"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'OXgsLJoHwaCH0jRV' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "gCVaVj1FRYreP5uu"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '96' \
    --name 'nIITNFjet3cDRb8q' \
    --offset '91' \
    --sortBy 'EL0poMU63uuciokG' \
    --subType 'o744tsunIni7jJeg' \
    --tags '["r2mU9O1MBTs3FNFD", "V8pH4DDui0JEeAUK", "lowkUlnauCMUStg0"]' \
    --type 'oyxL0yym2Ga1mMOC' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["pBLNrPK0oOtmuXem", "AWqy7z6TDry4plAc", "08ZhMWwy2PqbKhsq"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["NceoXJaHn4zF6xW6", "YTfsPA0MvxAUUy13", "rOFw4WoB1V1R0Xgj"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '2pWPOgR7GOQl0a4i' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'CaReQ5cJ977cHR4q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'aN45dpicv9ouDwuB' \
    --namespace $AB_NAMESPACE \
    --versionId 'AnUbqyvYPKW341Sv' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId '5Ehc2PXpXFkl5EAR' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "3Dlb6N6EmZfhHANv", "screenshotId": "nhT0D76WnWU6RkL2"}, {"description": "t2FEoJ0yEW5BaSZV", "screenshotId": "fFpysCvB8PIngi2w"}, {"description": "8TnN173e3GJUQdMR", "screenshotId": "fHOuINnDWjurkeZX"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'HzXAM99aMqLBMnZ3' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "Ju2IXoFuTgflvWrj", "description": "E6ZeJBOU7MMAm9YE", "fileExtension": "pjp"}, {"contentType": "Kkf9YHbkbkfRUuUc", "description": "udn84ZfXR89bQYKL", "fileExtension": "pjp"}, {"contentType": "4X0UinTimlYa2jsG", "description": "vcLFsS3TJyeePeBe", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'ExEk9XR0YbltvRgH' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'kVbl700s6Mw2p3iC' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'ULBdw6YlOVDqJxa1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'UiKYoHzDKa0GTSpk' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '63' \
    --sortBy 'j4gLmU6ngnGDSHop' \
    --status 'fIvfmqPuraJkXmfY' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'vdVP3esNALqWkakU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'Gq4JrffGKwt03goF' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "TH3XzAEbDVUguKMQ"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'YXxG3zUj6RUOLaXr' \
    --namespace $AB_NAMESPACE \
    --shareCode 'dDAlurlx6CCdLou7' \
    --userId 'N8GhUXDezWa0SIIe' \
    --body '{"customAttributes": {"kDtV7bzlrNEDf47U": {}, "BkVzlFxaczxHc2bw": {}, "Pl2XlUbI5XC1GJ7V": {}}, "name": "LylCwIg0tYdod4vb", "shareCode": "BBIgBmPoO9qPYrS6", "subType": "aCzGf7K3xlq3Ljko", "tags": ["qgbH1rMfSsGR4oxh", "CkE1qL6TEhrybIrD", "4M42fWs6bqM5ugJN"], "type": "08Z831KD10xy9IUO"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'iSSArkkTWvRI2F6U' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Yna7xSda1b9wEAad' \
    --userId 'WAV3wpRMhEiZGFp9' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'KaIoCmcRwkLNEFdv' \
    --contentId 'HLaPhTFg9XsA0qlk' \
    --namespace $AB_NAMESPACE \
    --userId 'ff0OFSxhpKhg9drU' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'TyO6b2BZ4JuwOrLx' \
    --contentId 'KpjGEnTLsA60Tb3i' \
    --namespace $AB_NAMESPACE \
    --userId 'U12knFUxJZ0WlGB4' \
    --body '{"customAttributes": {"UvwnjCuvD6numbea": {}, "4f03CJkSdnxzq3RN": {}, "aV8ahg6fWXWAWiUP": {}}, "name": "0pgWwvEDRDFjE82w", "shareCode": "0m7SDeLQcW0yg2yN", "subType": "zMOvKWuZ6qlo1RuX", "tags": ["OpBtQHxgIKroJsx1", "L8moJRyXICwljXG2", "v62dV5IVh2gz2Pgg"], "type": "6Grq4C0hT4eF2ZUO"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId '2hLfUCMUwybPD3sa' \
    --contentId '2Gvee4vaAcucxHC3' \
    --namespace $AB_NAMESPACE \
    --userId 'y8bZdzohnACHot6r' \
    --body '{"fileExtension": "2QJtnFz9OP6X4ddS", "fileLocation": "ONxmIMbqItsbI5Ua"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'XJPpNH80ZsnrngPP' \
    --contentId 'KVcRRMdgTUE3jfSm' \
    --namespace $AB_NAMESPACE \
    --userId 'geh0qma4gGyMLGYP' \
    --body '{"contentType": "Wsi9uf7zmKww2UIu", "fileExtension": "GhTGkou2Z9n3HCzE"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'DhrwRO7lbXzQLEvG' \
    --limit '25' \
    --offset '19' \
    --sortBy 'WISLxXgxQn8IrNXH' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'kYCVwcYBxA0lO2gh' \
    --namespace $AB_NAMESPACE \
    --userId 'ifCPZjv1cZ5JnsQZ' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'PWSVTssEoHnADgkD' \
    --namespace $AB_NAMESPACE \
    --userId 'obxGg0scRE9YjWuX' \
    --limit '71' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'ieYu5NrF38ectxN8' \
    --limit '69' \
    --offset '51' \
    --sortBy 'e6oS4FG6cMEuw2oQ' \
    --status 'aaji8lyMCEJtyXiT' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'YQMPN9aYa3JSpflx' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --name '0iOu6Ju1oIQ44iuB' \
    --offset '38' \
    --sortBy 'k19NGtaCVkxKuDqA' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '83' \
    --name 'MMLgPy3Dy6LkHXBO' \
    --offset '100' \
    --sortBy '2qtgjEtZEVwToncr' \
    --subType 'eP92dfSoR9y0vet3' \
    --tags '["QJHEbZ1vBKHgENV7", "862geD6Y4m38j2lG", "Dg5EY1P4v80AtxXD"]' \
    --type '1oOzjKqGH13UffrM' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ZijXwYzIHKPIyUyX", "J36vcZXPAiwaBDWZ", "RmYsBNoXAxmi3Fzo"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["ZqoJuaRGVA3mkQd7", "535fPbvRRIdP2CNe", "CrHUr31uOmCobh3C"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'l9m9XcRg1M6jJhl0' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'kQO2iV3Zem1EsNFd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'FAHzESkfMMmwEMeH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'mB3oxHPAKzxQ4lFo' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '59' \
    --sortBy 't9eDthpmcEdpEgMT' \
    --userId 'mKOVugGKaFQq6jFW' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'PZADfWenUgbr2KCj' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '85' \
    --sortBy 'blyOG3BqWoFmaz58' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'zLVBovN7ltPcOCEI' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'ZAdR2t88ylNHxQaW' \
    --namespace $AB_NAMESPACE \
    --userId '1Ypz3KPFgMzQupCH' \
    --body '{"contentType": "EITwizRGWmxM1tho", "customAttributes": {"ZGbyGiqyzLDnU0lz": {}, "pa06qKAgKnX9xhz8": {}, "ATTemJtm6RwBV4ED": {}}, "fileExtension": "mOYVSkNbs9Icdjr7", "name": "1jtCYZ9eQ3P7qdCZ", "subType": "9BpGmb8fGlyQ3aSv", "tags": ["Savt02bBVbxX4wDj", "qNwBURPTLykfLzO6", "Di7IVAGoeH6N6sgT"], "type": "CJm6bG0WNEPLdMEZ"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'akFQW9Xr8OuKnq5J' \
    --namespace $AB_NAMESPACE \
    --shareCode '9nVbE2UV4tfMuGmY' \
    --userId 'DOJAXfQFpkseSaYd' \
    --body '{"customAttributes": {"BAI0bOQW0p92gYIv": {}, "D39pGdWJAXmZ1Wo8": {}, "C9QvfQ1cXfYnzsFU": {}}, "name": "DcRspxebp1TZ4X06", "subType": "5Hn5xAzqKkK4ZPRl", "tags": ["VuaHPmG6yyHSXU5t", "f5XjpwZrs55J2P0s", "060yjHetmqGKZzhp"], "type": "Vjc0UJMESRWaZZHT"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'VRJt8OdeROVdGpxS' \
    --namespace $AB_NAMESPACE \
    --shareCode '1o5jEmlA3TOWRU9Q' \
    --userId 'FlKmVKfDvy6PYWat' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId '0PAL4ytUfZAkneE3' \
    --contentId 'YVpI5OJNoNNWwLuZ' \
    --namespace $AB_NAMESPACE \
    --userId 'GnkIBcGxNzXIRfNr' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId '8pB5uqPvJltHDgQu' \
    --contentId 'mgHNdBxTlfRk5LQ1' \
    --namespace $AB_NAMESPACE \
    --userId 'shQd3HhlTCNck83F' \
    --body '{"customAttributes": {"zyUui0UKkpmoT5nQ": {}, "U3jqttPr4MnXO65C": {}, "DGIZlBQo8wcr9uHX": {}}, "name": "wjBXkIf6dQ3hK2kk", "subType": "qwbZwm0IDKgjDqrH", "tags": ["6wlMfSzK6bNVtDiE", "8nnPewCfHaS9oFrl", "aLjgoiVPY5Y6FATa"], "type": "6iE4aLhoW6xNZDus"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'i8Sry4wbr6QTYR1I' \
    --contentId 'KBvhprd5RATXzZQz' \
    --namespace $AB_NAMESPACE \
    --userId 'ZzatHfaMZKhNoPSV' \
    --body '{"fileExtension": "Z7NnkoInO6cf5euG", "fileLocation": "GyRBLQ4oDIvTkazD"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'xxi4xRRC7dtRAlA6' \
    --contentId 'ZA8jAo7RuzwLMMji' \
    --namespace $AB_NAMESPACE \
    --userId 'tkBwVo2Ubvj2eUpu' \
    --body '{"shareCode": "yAVDNq4br0fHw0m5"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'nLXgU6vC5yxOAUTJ' \
    --contentId 'ldH2m99uuypSf9hA' \
    --namespace $AB_NAMESPACE \
    --userId '4u16cpx5ItxOVaKf' \
    --body '{"contentType": "riLMUGfSTV21PrCc", "fileExtension": "mjC4JmxvaDvtcV1A"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'mdrrjPbEC0UxlwJt' \
    --limit '99' \
    --offset '72' \
    --sortBy 'KxWtj3tDVztIzUyE' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId '5zRqWKb8dbm1h0KZ' \
    --namespace $AB_NAMESPACE \
    --userId '5HeRcFinMH8Yg2IF' \
    --body '{"screenshots": [{"description": "Y7mlvh5PKi8x2fI3", "screenshotId": "OA0GV8ihkz1enMvR"}, {"description": "v3LKZduMx2zBRpRl", "screenshotId": "SAROxNjq8LBlrzs5"}, {"description": "LaRU7KRZbtIWyiVd", "screenshotId": "qYBLxxjL98GOfbLT"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'reXARPMn0IECdzsL' \
    --namespace $AB_NAMESPACE \
    --userId 'ly7k42pGMwwuTQV3' \
    --body '{"screenshots": [{"contentType": "MKDXpEBYsjjLsDs5", "description": "09ALhtYY2jwBplrS", "fileExtension": "pjp"}, {"contentType": "9p5KmrSEAWQDxMIt", "description": "8505jBiNbuU3tpk5", "fileExtension": "pjp"}, {"contentType": "1eBuCjGdmjs8G7zA", "description": "O5c5IkhFcJwi2MJs", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'jMkaXV2dJdFrKgJ0' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'RmhPHpRpTxacyTXB' \
    --userId 'dvI79YhoAEVS3WKx' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'NJ8pwFZuXsf8fxdR' \
    --namespace $AB_NAMESPACE \
    --userId 'LocmlMxzT3fQeYmX' \
    --limit '70' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'eVzliuuQ0dFaYgOx' \
    --limit '64' \
    --offset '29' \
    --sortBy '0Ixvnh7Xj1IbmW9s' \
    --status 'WCf9q52vzG2fFzpL' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'QEVdDHga9Ntljbot' \
    --namespace $AB_NAMESPACE \
    --userId 'Cna7ulNEimpj6s2I' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'fEYSAHlf6Ty0RLhh' \
    --namespace $AB_NAMESPACE \
    --userId 'r5l3Mpdf6bqT1eoW' \
    --body '{"fileExtension": "fwU7KfpA74A4RigJ", "fileLocation": "E2lcDh9mZ4FPKb4E"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'JvIU5IZtXWUI24ct' \
    --namespace $AB_NAMESPACE \
    --userId 'eDcm7oq4dwdsk4DL' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE