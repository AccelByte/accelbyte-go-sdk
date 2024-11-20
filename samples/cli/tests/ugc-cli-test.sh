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
    --limit '21' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "759rHBnbmgeyXked", "name": "48Xm8iyFwmNRF9ZF"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'TWcaLSEmfJVyLxmn' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "sfVufP4aGYgQBb47"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId '7gYa5gwZVTmVlmIh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'CLHRM9nYNoiMrfvC' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "kDvtKyANThnqBPgz", "customAttributes": {"IEjVs73uhy5xgwS7": {}, "eTxTHFt9z0vlExVM": {}, "PWB3cpCpUMqGe3w2": {}}, "fileExtension": "HL1uRaDpBE5lvxfL", "name": "IJiMxuGuDt0MdcwH", "preview": "gEJUxEPVUFDwY1Zj", "previewMetadata": {"previewContentType": "Wab5BTMseRbarG4g", "previewFileExtension": "t45pjw6Vz3qbAYtm"}, "shareCode": "BbbrmZujKHgZoClH", "subType": "b5jg8IwZXN7iS7QP", "tags": ["VSIL3S7nxMbfqqj0", "aW6HcoarSsaTZVaV", "pM9puZ8oniG20QxH"], "type": "Az2HLOVQFk7DbZLy"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'PdFdB72SWuFnsJle' \
    --contentId 'bHI5r16615VJ3aZv' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "jIF5oIMaqYOdG3hT", "customAttributes": {"ypPkzSA6KPc3svl5": {}, "cyJE5aPrfAaBA7LH": {}, "2BleZ4Np2sYYurj2": {}}, "fileExtension": "LYRdPI4K0bC5copf", "name": "HCRAICFCTuJmleBA", "payload": "UvlZOPKzKI8a9AtQ", "preview": "C1zEyZEUHgZShJUs", "previewMetadata": {"previewContentType": "Nry6CZ21aRQMEu6a", "previewFileExtension": "efK6bAZmBoeJUZoo"}, "shareCode": "NnWFmZpdiiy2hTxz", "subType": "3KjRSQHXW1lsEJew", "tags": ["5V4qJKC5jEySbHK3", "iSv9TbHIY2lfUoTE", "p5Wp1PMnlgZ6CiOq"], "type": "ZFBsF07om1IAQJDA", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'AZGyecsqxyXgcFnS' \
    --namespace $AB_NAMESPACE \
    --creator 'SwGki6IoT0ThEsje' \
    --ishidden '6X9HdkJmebf4qQBz' \
    --isofficial 'pHjfklCvbzsha3SS' \
    --limit '41' \
    --name 'oGEBeT6Nd6b1qQHg' \
    --offset '46' \
    --orderby 'P5NHNg7lkK7if7ty' \
    --sortby 'LNhB2uOh9uuvteYm' \
    --subtype 'S1JRRd3LQt6VeT9w' \
    --tags '["MTaLIb7P33VhPM0W", "Iep7Aqy6k0GHiByP", "zXkBLOtgWpD6Zsb6"]' \
    --type 'PchK50ItlL5NLNuP' \
    --userId 'axB9qxDlFSORLCJA' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '5el4dqSG8gu3f043' \
    --contentId 'ucDH4bxfWQLimcaJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["VuLgM7nFkZOPtg1U", "pG4Wv7KTB2krf2Ms", "AbUzGD3W8Fy9z0se"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'JBHarQw9GhxjAU2W' \
    --ishidden 'HZrPJq8e4uLI8ncs' \
    --isofficial '2uxKeg1n7029KknT' \
    --limit '61' \
    --name 'VGslRVtjCPKGt48R' \
    --offset '31' \
    --orderby 'tZxkOb7x5aOweDcB' \
    --sortby '24gqXx0QS8Hn40fG' \
    --subtype 'WElk0wikd5TeELDU' \
    --tags '["9FcKc8xqanYiSdUG", "3dgA3xR1WaHy6NYV", "ipXLdOBsuMHrHL56"]' \
    --type 'HGJSh5vFWzEC2ybB' \
    --userId 'L8TwNkyTk1UUVqkv' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["p8TAzvfHFtq7yGWp", "uB5rGusKrfUAka4N", "caOiWCPJXCPo06Ur"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'ScB4jvVW2Sdk6cCC' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'o9cOzQQFBtVCOhsR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'ghaSImJpLGUtUzgB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'obZvX3hZk7ENTUKy' \
    --namespace $AB_NAMESPACE \
    --versionId 'YPsFjJWCD52UbXBg' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '8sJabSUbu9TwAgUK' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "6QXqd3fGDsX9n0qP", "screenshotId": "Qcw3qpkGedNowut4"}, {"description": "K6DKWn1DwISl6H6C", "screenshotId": "rGOIo35s41NFElcl"}, {"description": "eBU65IQf0JxQy862", "screenshotId": "J2yxxgXZtkVU3BNM"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'fCHEkkSiYtg9ZGQ1' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "sARrl5XqzTOfiWdZ", "description": "oIp18C4wAQhD3uJX", "fileExtension": "jpg"}, {"contentType": "V11x9tqXbnv12dOg", "description": "cmUEMznW8SBfjwTz", "fileExtension": "pjp"}, {"contentType": "3UQvk4yYoUBdtKl0", "description": "Pes0uR73z9qv96jW", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'FIqp8UifspqkrnxT' \
    --namespace $AB_NAMESPACE \
    --screenshotId '0TH49FrzC9fB4i8n' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'R30jTrPKPnwh3bXf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["fvspOSjC0xQMInWS", "Hyic7UtZWZfmw1JO", "m1AhkEb8eeO4zQFp"], "name": "rQLI8gfPO8gscPhH"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'YOZijmBJCBD6SlQi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'AS6Fg0ukjYjhghsq' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["bfuiiyGHY6lfzXX8", "K3uMbeUlmXN3rOJa", "j3OST85xWoc6oHLS"], "name": "OhYOqHLqWe4Q6hVg"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'zuBMdjpfFUu70rCO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'HAxLdyCf0w5x8oM1' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "eWFCWMBTXW58k4xv"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'sOSjHp7uR254oa7s' \
    --body '{"tag": "f26aZWVIQ3OO6EUv"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'Y4oov5FJI78TxCL6' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["xgpKmRW1It6I4irx", "C6BwMtkgkqSCiIvQ", "m29oV8klXXt2AyOQ"], "type": "qdJREb67b0iZVhBZ"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'w4EcRoShuS35nfQN' \
    --body '{"subtype": ["Bff0kJz0NEEAntHq", "auauJArXvdfYjs3D", "XacoRDz6zhOKdHwG"], "type": "AEKbqQmXpcjfxD5m"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'KD6Qq5bUbaQHiRi9' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'BzazoRCzlzXA1QOG' \
    --limit '53' \
    --name 'MbrKdcNWZt03fjPv' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'jQ8Y1IhxaelgANms' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'n9eDvb5E2qFI3DBE' \
    --namespace $AB_NAMESPACE \
    --userId 'uwTzzsPxESzgEDda' \
    --body '{"name": "CUamfAXDLHWGh9No"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'DGmiEGaY9drUv5tU' \
    --namespace $AB_NAMESPACE \
    --userId 'NxDfzInEQbpyJHkN' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'oV1faHI2CfIkKe4W' \
    --namespace $AB_NAMESPACE \
    --shareCode 'rl6n5TFDq8uZFg79' \
    --userId 'bYyhbFrjyzSISV5s' \
    --body '{"contentType": "uD1BRAtX3sfB8PI4", "customAttributes": {"CX0vzMK1JqQQAqBf": {}, "SaWV6ttOSHShU4IG": {}, "2P6rLbhfBlOwMCPZ": {}}, "fileExtension": "ElMrJvejeJYikb8u", "name": "B6hBAyB5cKTxYvv4", "payload": "LnHUlB1iHs8FFqu3", "preview": "eRTsQTFnQu6f9Um8", "previewMetadata": {"previewContentType": "fk1o4IdpJBaoEIzs", "previewFileExtension": "lN5j58XV3MHHq5vy"}, "shareCode": "srK93r8R9VmBSSLl", "subType": "97azrpqFxaPp2tLZ", "tags": ["CQfauhZkOCjsS71C", "IryHnSYwNT0NVVNB", "3uCOofObglr0y5De"], "type": "QGEpEzR11qILIPMD", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'RQS3qT4dCO4v70eo' \
    --contentId 'uT4F5CD68wocgKed' \
    --namespace $AB_NAMESPACE \
    --userId 'ZvjU7LvFu83RjVxB' \
    --body '{"contentType": "nS7DTB7D9Ubxy0IM", "customAttributes": {"pAFfiUG7fjmuCapN": {}, "osywX6KpKEYopOZR": {}, "61LXGRuplxRlVOpd": {}}, "fileExtension": "rc3Cc3cOyy98SvqX", "name": "fA9JT8WMg3HeVuYu", "payload": "y9HNZmvoDhOtlo37", "preview": "3MSmn6JXz64RWEzs", "previewMetadata": {"previewContentType": "46VKTGqCfq7laOGi", "previewFileExtension": "Kr7SSeSHqe3xwbZw"}, "shareCode": "0ahiSWR0yr5Besp4", "subType": "P3P7GREJ07FFmGyt", "tags": ["RrU8J1Tbnjf78cBx", "NyhiggrXJVwh0u6b", "fkJSGQd4IGHXhrQq"], "type": "9Kq5MrWapv4y6xMF", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'V8W6T3QQUiJDYJfL' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ycymzF31hgfXkJ0a' \
    --userId 'rJDjVVaabKCGYeRK' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'MGie9KsXqpQa2ibs' \
    --contentId 'UZOK12sleCgalIH7' \
    --namespace $AB_NAMESPACE \
    --userId 'LTIwwotbIqIuC32j' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'bk2TfZtNAUVXpJqH' \
    --limit '10' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '72CjDVai97ELWg3P' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'mOCUdAPvqCr5A9eA' \
    --namespace $AB_NAMESPACE \
    --userId 'DClEL5Q8XiXTbNAX' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'sU5zRsoaEkh8Op1T' \
    --limit '30' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'nJXuPPrsgd1nWDev' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'EJyjDJfg8v7so7Tr' \
    --namespace $AB_NAMESPACE \
    --userId 'P4kSe79oBI5sLf1W' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'UnK8tuswLJtvWIS8' \
    --namespace $AB_NAMESPACE \
    --userId 'BUBRxyJv5631lX2z' \
    --body '{"contents": ["jeXIyezKaGXu9NMt", "DHod6U56jSOS3j7O", "FxR0fjVT0vWoBGZz"], "name": "eLAlB2MjUjPBiMXD"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'U0aHz9eEWoMyJ5fO' \
    --namespace $AB_NAMESPACE \
    --userId 'Xc0xnrzfmTMzb5Gm' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'yqQmnAEeZCgutUvk' \
    --namespace $AB_NAMESPACE \
    --userId 'YXFGWPvXmuAv7uJO' \
    --limit '54' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '0ZFxeeNh26b3gNiu' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'vorv703Wq3oJMLh8' \
    --namespace $AB_NAMESPACE \
    --creator 'O6qAGKbCM5KqRXhw' \
    --ishidden '4eFwOhpeJhdz7ZbE' \
    --isofficial '2gs3rCefErIerzEa' \
    --limit '45' \
    --name '0FlYQAe19kTXWJrO' \
    --offset '50' \
    --orderby 'diVq0jExwYzNKrtG' \
    --sortby 'eOJCAg8zZdc845qW' \
    --subtype 'Uo6hOMMJE7ZEdi25' \
    --tags '["brXEtlMuTdwhoZ7n", "I3qBAn7vsHSMcvJr", "SzAzL4n3YaZI2qDV"]' \
    --type 'Z6W8QJ8guIEdH2e3' \
    --userId 'RRXTCNmgn7hFqlVF' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'j7Zc3D7Kxlt0KPV5' \
    --ishidden 'XRW5LHNC3JbUPfzP' \
    --isofficial 'oGW07HP7JytF4jog' \
    --limit '58' \
    --name '6Ngn2i8DTvGBufEk' \
    --offset '7' \
    --orderby 'hN5jrweT4C5K7zow' \
    --sortby 'P9tS9zZQXtMDkxaT' \
    --subtype 'e6Nz4FJ7breGb2na' \
    --tags '["R39HiAegopIUg4v5", "hBo2AOrRka3iV5sm", "IHFZeNKVAmTzxoL9"]' \
    --type 'ReeRexCciEqBMOn5' \
    --userId 'kkX9gzCKLVKHdJCi' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Gb4b5Senh9fp6w6A", "o6Q1krTSVFGcWVck", "oEcxhG6uzG5nmn9R"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '69' \
    --name 'wqa1VbIaCge0Oafy' \
    --offset '27' \
    --orderby 'nFHm6Rrkx72S1zxU' \
    --sortby '9Cs68Bc7h6omKCO5' \
    --subtype 'h0fzNwHMWWcR5B4s' \
    --tags '["hZFjGzRBedLrj5E6", "yUtS0C0cT7TN1DP5", "vPmdxTpJ6MUz1zzT"]' \
    --type 'AEJBbdKuVIsYXrQI' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["FB3yMt9NKDL9UP9i", "ysZR341HRaqIUv4D", "2Fk5ItuaW1memOrE"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'NlW4vVR9PYdgSl73' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'GduNJ6GmvjbtW60P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 's7mSyTjhxmt1GbQ9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'BrbqLKnUn177vjIF' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'H9XaeOsp2TETnGXZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '31' \
    --orderby 'UmbBqQpEcwEPawMK' \
    --sortby 'ZYr0l0TCeTpXNCpR' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '7oTNDzn9z5eknVjq' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'Oxj39NYP0PKvnUJJ' \
    --limit '15' \
    --name 'rym83myW3rG26KVM' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'ztZD5Ptv7h5PYRQh' \
    --body '{"name": "U5OwAZA27ZkynvoN"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'cc2ihZQuZZvQFfuY' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'an8mKlP6U9W9jSZR' \
    --namespace $AB_NAMESPACE \
    --userId 'X5FAKB53KWft5wPv' \
    --body '{"name": "1MxHMvsnrCtfgrsi"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'WW6EqOlzPMGJ0AbW' \
    --namespace $AB_NAMESPACE \
    --userId '1umGbZMC8ePXzkSG' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'SwuQCnrg9OdajUFf' \
    --namespace $AB_NAMESPACE \
    --userId 'e0HJc2Ut2klKzTSh' \
    --body '{"contentType": "d3pKlCvgBxfmRcCq", "customAttributes": {"WeWTiGuo7YNeK5C2": {}, "5iRp6u8gsnmSzLdd": {}, "shW5hW1rcUlR7k67": {}}, "fileExtension": "uiJ1Ub9lgOl9Fdyg", "name": "tFtybyrjMIrNK30K", "preview": "viHZtOTYzCOPoHQo", "previewMetadata": {"previewContentType": "xXbhUTeuwiWJN2bU", "previewFileExtension": "8qJUfhZ5PlQ1nTwX"}, "subType": "eo7Pe54P6IDrVkPF", "tags": ["TAkjrSKnrLCSdaxn", "coTRLkW0e33KT5eB", "pnTACeYu1ThzrAVU"], "type": "EDl1tPsYakVSCM3j"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'F8tALYRuGfgt3WWj' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ENEIKDjRo0f80xPO' \
    --userId 'sT9xx1OHW92x4yTa' \
    --body '{"contentType": "RnhAUVi9zTCM6Urm", "customAttributes": {"k5LtbD0UW9lwW3L2": {}, "0iNkS5gj19AfPI4J": {}, "6FmWTFaqKkOhyJnr": {}}, "fileExtension": "eAyrn3hbGoCagUqU", "name": "gyfRND1v5hEo5aeo", "payload": "Vh1iGjJJ9AYeZjG2", "preview": "JkawNtzQuK6wy0f7", "previewMetadata": {"previewContentType": "tqbfaPa346kj0sEd", "previewFileExtension": "IQmF1pp3qwKXOCqp"}, "subType": "yqnNEqIQDEvOBCFr", "tags": ["PefQYBoiIH7Xyy1i", "SB35H1wZNOx83mHf", "oaNKDn2aL0LoiuDq"], "type": "N30BzZtppWKAk2Vk", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'GIJSouWsRIQx1ZRl' \
    --contentId 'Xw6MRGh3jbKvZe6l' \
    --namespace $AB_NAMESPACE \
    --userId 'Psaz2gO0HPFuUcey' \
    --body '{"contentType": "cVI96odMGPNREoGU", "customAttributes": {"XrOtqJXCyg5B3q6P": {}, "mAZaqA4aqXeSHF1f": {}, "emCFS2YM39pUuixQ": {}}, "fileExtension": "5K9tgAZyXWA8xlIc", "name": "d4Hg4CEDs7tzvOHa", "payload": "rTs57G8CO2VZCq9d", "preview": "9yNqJtBgEC4leI40", "previewMetadata": {"previewContentType": "ljvjRjMZDcabIbYX", "previewFileExtension": "3fLbepH6UNKoBuo8"}, "subType": "fxkQJdaBU32eLJWp", "tags": ["wzRvbzN3NpAmiXuG", "WwrYmix2SIGAPdn1", "8ieVAUMFjLYzDb5K"], "type": "Ly3oKMtik7ndcIdo", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId '2P6EYeG85N8MEo6v' \
    --namespace $AB_NAMESPACE \
    --shareCode 'XEoeM0fDuFnrQQvE' \
    --userId 'CZ8p5gn1kT0FaTlu' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'ZNqQS1BOJGPyjI2E' \
    --contentId '1o6CLQFZzTQygOTO' \
    --namespace $AB_NAMESPACE \
    --userId 'zsWpPA6NvkBPon6K' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'KfoYFlSjCuFv10Qc' \
    --contentId 'tVvyLJL9OkLUt4JV' \
    --namespace $AB_NAMESPACE \
    --userId 'N2udTvmti4MCrAkG' \
    --body '{"shareCode": "Aj2poSeLqPSAZs9t"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'vLSnDT46QWzWIRPh' \
    --limit '80' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'vLyqMhMlIwHmDDeq' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'LoE1fALo19f7SqfA' \
    --namespace $AB_NAMESPACE \
    --userId '1NNOeoPZ638vOps3' \
    --body '{"screenshots": [{"description": "jLmIy8hv6ONUeG4K", "screenshotId": "jww1Dsd7NG0ITTBg"}, {"description": "cf9jTImvcy6eftle", "screenshotId": "RadUN1XSXCG3kYtO"}, {"description": "g1A52AxO23TJtd95", "screenshotId": "kyuzSZe730n1nqTK"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'tPKUDWPENW6wT6HY' \
    --namespace $AB_NAMESPACE \
    --userId 'XokpfMvx1tGWX8cQ' \
    --body '{"screenshots": [{"contentType": "J3uLmMllWOt53dYW", "description": "D2pw2fZZCSPxwqOB", "fileExtension": "bmp"}, {"contentType": "HKpewr2QEpoFfBzs", "description": "FOaIaiuf7p7b5whQ", "fileExtension": "jfif"}, {"contentType": "BxzLJskjVqo38Fnr", "description": "TIta4bYhDkCus2v3", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'VQN98tjHZJ9upg9i' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'VC0Mz2FS6CSGudTM' \
    --userId 'dg1UfQ9PV1R8GWWO' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'OynlJgqEnC9xV50r' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'uP3XNxM0Rxtvx4QN' \
    --limit '71' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'j2HPFpBOkB0Sqf9m' \
    --limit '60' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'auKPoCMs59gXmSs4' \
    --limit '55' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'y1wyZHfkW3ZIFjDS' \
    --body '{"contents": ["TWxqaHFZB0dFo7zv", "rzLmqEZsOcOtZT8B", "ihh5M9NRsUc9HJVU"], "name": "8v5nkA3pA8mQiVwe"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'nBlqUJBUYBVeTGcH' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'kaAGTZt6XNnHcC0u' \
    --namespace $AB_NAMESPACE \
    --userId 'SUCVYRuO934oV6ct' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId '2KJmsQuYMz3L1bdL' \
    --namespace $AB_NAMESPACE \
    --userId 'KkxW4WaqzFcRzEyU' \
    --body '{"contents": ["GTH0seiakRnejLoc", "UYge9hqthd45lFSj", "nuiaEqltQHr4WPCi"], "name": "VucJ6ZVyx5bveii4"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'cPxd49nc3pSfbptq' \
    --namespace $AB_NAMESPACE \
    --userId 'ZPMuXgWklawzXukH' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'X4vqgrwvjIhNINSS' \
    --namespace $AB_NAMESPACE \
    --userId 'RCk9IhWQKRlGLO3u' \
    --limit '86' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'tJUid5VD6E2eWl5W' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'ORSlPzFIT2iv1tRe' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --name 'bbYKa3wGE4aAuPgb' \
    --offset '50' \
    --sortBy 'NjwWPeaQFL5grBsy' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'E7jWKUtStZBoCFkY' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "l2nywJRwPhqzAsxt", "customAttributes": {"80az40f9oHaUho3f": {}, "dTpqRZGAc0BSTB9Y": {}, "kaJgUnffrpxYyVSg": {}}, "fileExtension": "wleCgAbR4elKvjml", "name": "eNKSzAhdLSwFhrKa", "shareCode": "fceWB18wtv2WCETg", "subType": "umFGt8KcW4XD1Z05", "tags": ["73moxMBgZRMvl2U2", "t8cZeRFht7XZ8t0Y", "SKktRSCcACRYuGdX"], "type": "f87fQ6RJwKtBo7wQ"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'l0bCwfrlgzEVc4sQ' \
    --contentId 'abgT1fTrqDC0umiW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'XK0RCQR6MqWL4nuU' \
    --contentId 'ho5yWuHmbgbGxWwS' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"ILskb1RVV5mJufYE": {}, "Q6UEjwwGExSvx3B2": {}, "RuSrlhnxiEHQnV66": {}}, "name": "dSIhx9Ckjm2xtQdl", "shareCode": "7AfRfDnHgNFuqxc4", "subType": "6Yxm5c1PuV2CTGIW", "tags": ["BVJmRgMpd8HTwzt4", "UV63ySxf2HMyDork", "btC8glXzeG6DCjf7"], "type": "36T7Mxshwxmz5hmT"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'j2NO54k2gBTwcuWL' \
    --contentId '2Qe4dDgtgisqkWr9' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"AhfB3DlEuGQBlu4x": {}, "ENwcgI2CjNkbnAm9": {}, "B0DiD9qcFWGjgv7x": {}}, "name": "A9VONA7Uim8i8pOD", "subType": "Oxx6pPnKsuUWPWxC", "tags": ["w3ijlKrmCHbYNXuI", "J2U297jviFZnw8UF", "3Hb5EMT16MweQWwJ"], "targetChannelId": "xKrDQAWugrMd98fN", "type": "bXj3B1MLttKkvkPu"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'sOwgNy9IrNeonkMd' \
    --contentId 'w2q4OLNOzjW5F9XC' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "eHvidiLr9pMVnwSw", "fileLocation": "u9spRs6LDl1QmtJF"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId '4Nk1Xl8LG9CP72F0' \
    --contentId 'kdMphrJ32ajAjWgN' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "91vTfjNwCkV8Z6gI", "fileExtension": "3vwFur1QpRB8Ynnm"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'dpw4nj7b9A8vTo5l' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "mCg7FcgcNkbH7PKw"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '76' \
    --name 'YZOBtpazGehYBnij' \
    --offset '2' \
    --sortBy 'jSOZfSOUGGYAlGPw' \
    --subType '0gkqVx0mq8b25RYX' \
    --tags '["rHHEnO0rqq80g5ZK", "g3hDcEItRQ00KbpU", "oLaEsS4AcXuwgogI"]' \
    --type '1sHOKraJgRbJDS55' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["LktThZ2P26rINWkn", "aD1iNf2EtxK4lZne", "aLCmPsGfFT4j4Ga2"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["CpaJWofnWepesqYG", "hMbjFD6A8BSAl7bb", "XV1qFrtwftpEBWb2"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'kqE4ze2YBSLNvkcA' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId '8iCaEH5DPP5Xf1E0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'UqkNCcQJtmgNcFGu' \
    --namespace $AB_NAMESPACE \
    --versionId 'js2jueDPPfPHh9tv' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'Gv4c4relXW7K2p1E' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "COe4z7XWSHmsRbST", "screenshotId": "6Ymw59emMavbAg2R"}, {"description": "760LuigohfcYdUpi", "screenshotId": "NMopBPKCtXxUl286"}, {"description": "E8WesK0ethWYfYVd", "screenshotId": "Cv3VGA3s5IpUP6vA"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'CW6bD2qE7mOhSEre' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "kxDCXNuqcTXjWAHa", "description": "oP8p0Yy7Nrg0ilrJ", "fileExtension": "pjp"}, {"contentType": "bYcuEz7pDRzFD23Q", "description": "HkEEUqKCWG5SsYtc", "fileExtension": "png"}, {"contentType": "STGOFSNshQtfNCi8", "description": "kzU4bKTcVKXM8tqo", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'VGmAKfDAxijk975K' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'oT76ver49bJGz9s2' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId '1gGGFt2bsYGwEszJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId '8ggkrjRJXZDw0YMo' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '95' \
    --sortBy 'eZUS5ISdre1aiVw6' \
    --status 'jWXeCyIpyBw9DfBR' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'FDASo5ImIIkUEwKr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'HkMeXNJJYTKtNSnP' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "XIbgKhLxivmiDJb6"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId '01vsVPgeKcZuOQwz' \
    --namespace $AB_NAMESPACE \
    --shareCode '9lwQ87L3arto2usa' \
    --userId 'eDbQxSFpQt3lbPsf' \
    --body '{"customAttributes": {"WJqCSz8GRHHOdTnG": {}, "56HoyOCRdnfjm5sT": {}, "THNHTfHIswVihKMM": {}}, "name": "qhFKuvJ3qQtkqwXm", "shareCode": "YbHbO94roFCIxYUA", "subType": "u05opU4QjxvPgiqh", "tags": ["uwgsI9IU2owJFWf3", "xpWZDLvaVWaey1aq", "nVXhpINPZ4XTfmFs"], "type": "txjCsxWGBsnLMVUX"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'stpVCNFxJhG8TzT9' \
    --namespace $AB_NAMESPACE \
    --shareCode 'JvtxPTb17IkDHJsb' \
    --userId 'Zlhzc7Z0R72CTTT0' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId '3am7qLxNrfiePZT8' \
    --contentId 'SbCkte2pVDpNDPxX' \
    --namespace $AB_NAMESPACE \
    --userId 'MKSNacE9QEU0sThR' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'GjB5M02xH8Jveaho' \
    --contentId 'hQ53JQKWuHNONanN' \
    --namespace $AB_NAMESPACE \
    --userId '12Q1kKUCjjofsT6U' \
    --body '{"customAttributes": {"lzZaLW3pzbOfEL6W": {}, "kXpK2gTiA5UrQu2T": {}, "OXgY0ETXMDuZUJcp": {}}, "name": "WSwF92SvoqyFoH9G", "shareCode": "wAwuetcVmrFfoh6R", "subType": "kUa14YJ5qXTMDI2Z", "tags": ["GJHXZkAleP8ooHio", "sJBBsMWNeRudP93e", "HSHPLvvCjRBeTTN6"], "type": "KybdIou4rjWmmRWQ"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'zkfhkpdBvCKBisKK' \
    --contentId 'Ovg4ZGVu4Tgjlwa7' \
    --namespace $AB_NAMESPACE \
    --userId 'wWyVJJkq4HLSEe9W' \
    --body '{"fileExtension": "SGo8mRpXjYzELeJA", "fileLocation": "2VwJkdxlmbgkttCe"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'NtuzVoClOVt4RgSd' \
    --contentId 'Yon3t0A34iULTxTg' \
    --namespace $AB_NAMESPACE \
    --userId 'pc5Eo2SR9nULGXYK' \
    --body '{"contentType": "zRVdFQN3rtSYTDfG", "fileExtension": "DNtEtnxc7J8Oznzp"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'j0CQdkyB0UjDyjkS' \
    --limit '2' \
    --offset '97' \
    --sortBy 'GQE3eyXpG5lWHh0t' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'y1ZkYrYhCvAfgABQ' \
    --namespace $AB_NAMESPACE \
    --userId '7AZI1NhFEFlKJigv' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'Ej44LlbWcGtbpgeB' \
    --namespace $AB_NAMESPACE \
    --userId 'n4qiEkMnDphUsJQv' \
    --limit '17' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'd5FD2KceHsaXHHTZ' \
    --limit '80' \
    --offset '72' \
    --sortBy 'eJmHexaXWuWwwPAi' \
    --status '7UdDq0isirtdYEiR' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'ZuVvTpf6gT5OTR2c' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --name 'YIhIcYZbDBPpNQHp' \
    --offset '58' \
    --sortBy '2dKOd1wYqN2AdPEL' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '66' \
    --name 'azIGDvzNgyHj2TsD' \
    --offset '12' \
    --sortBy 'f8LdJxTVaUTUAlhn' \
    --subType 'hF3FxaeXUOAEYsug' \
    --tags '["MwDIkvceLUJC1glB", "llmiSDdxC91ZwX1e", "oNIC0lIFxxKSmCpl"]' \
    --type 'RtHN0TZ5MlB0IJ6Z' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["O74zKFpHuIEjWjF5", "GXtc9PgE4Ua4CoQh", "7pvpbGaAHeuFlv6m"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["SI8SmUPa5QnkQAfj", "9UsUBuNFvaVB5dYl", "c4mFWNtTFotJpgpk"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'j2agrIqSUiatL9iz' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'HSiasSLjdbyjx5ao' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'd5W9sode9nMWtMJz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'bThmwKuwSEO0UDSf' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '57' \
    --sortBy 'aorAjPRDHyqWRbFb' \
    --userId 'MEstZ6chrv3eyt9n' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'L957kreDTSxRYiZ5' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '86' \
    --sortBy 'wUrfbPvPUCtNh08x' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'HYFfan3mYhwdruLx' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'go2pYr0XA6EPuQyh' \
    --namespace $AB_NAMESPACE \
    --userId 'zyxctB1LG9SbDGPM' \
    --body '{"contentType": "Mrme9MLc7gwhhkGD", "customAttributes": {"EuZAFzxwTSSnExXw": {}, "MCcjIVfmJdGGDRq7": {}, "IqsC7rIHF8747vDD": {}}, "fileExtension": "bCYMdyNPFdUOzWa0", "name": "FHlUkYe6klXh3rZH", "subType": "a8qEl0JqwCC5ayr1", "tags": ["y83wjsZkXNLeOVTZ", "w1D82pWlv7x1APsX", "T44MPjCNJg11Igq7"], "type": "aV2nRiFIvmkmWotq"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'NW5kRcLxZCnIwOZF' \
    --namespace $AB_NAMESPACE \
    --shareCode '1sKFzd04bIbUD6KQ' \
    --userId 'GIffZFGzv8ix6U5G' \
    --body '{"customAttributes": {"A3ERmHGfAa0xuiM6": {}, "jqRVuY3mAWI8u4kh": {}, "fWMyW3B8w273iLF7": {}}, "name": "UI6VoctCeVfbCv1y", "subType": "MScWjcBBD1Ob2mwg", "tags": ["NkPGDvl1ZH0AMcUy", "DQtJtN4TqGyWWYfg", "CZLIff17tknqIMw8"], "type": "iTBKuGHTzTIxm8Nf"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'JQSEtisSOFzhcRig' \
    --namespace $AB_NAMESPACE \
    --shareCode 'yHD6dDSJbANqRuJo' \
    --userId 'zBPL2dffkpbqpjxK' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId '5bxcyyml14kl8TuT' \
    --contentId 'ddf0fRr2NesfN24F' \
    --namespace $AB_NAMESPACE \
    --userId 'NzGxzn32k6cm43s5' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'g9mVwywGfmlLbgkZ' \
    --contentId 'pbD7W8S1BqHVWKG8' \
    --namespace $AB_NAMESPACE \
    --userId 'RSieFt3u3UX00ePn' \
    --body '{"customAttributes": {"nwggD1z7HyuY0pow": {}, "RG5hmYga4hJgzWwy": {}, "ea1klzthOY6vOjPM": {}}, "name": "qJLwtpJwapkMrqEr", "subType": "lfInaAf8y4QbjrfB", "tags": ["Ft4fnN0TNkRFKmUN", "Wpeoz10Yno8VtCNu", "naNns0tONUFdgkan"], "type": "irNaGt7bfVODhDUN"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'M5qjH92kH7v7SAkZ' \
    --contentId 'F6M9eKCqkIzOfVwk' \
    --namespace $AB_NAMESPACE \
    --userId 'hI8EmmPHBSBHFSle' \
    --body '{"fileExtension": "enciIvyEJNxA4sWl", "fileLocation": "rZR9rfVoIN7uhPZf"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'ygoJRxkwo2pzNqYF' \
    --contentId 'Tz2Rhg7RvjdTkLPF' \
    --namespace $AB_NAMESPACE \
    --userId '2Fdrjj7YMLHzAb9m' \
    --body '{"shareCode": "g4ovm6NbRTU2cXID"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'eBozeqPpTIsu5YTV' \
    --contentId '90fx9XDzHrVnEiHF' \
    --namespace $AB_NAMESPACE \
    --userId 'ZXn8LkIlFYUYcQgI' \
    --body '{"contentType": "UyBUflgvXikSfrR2", "fileExtension": "WqO7H0Fj6uu0gbGm"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'sJoRVEPe0Th4EBIr' \
    --limit '100' \
    --offset '39' \
    --sortBy '1zYpaZ4ue2KM13pd' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'Ya3TXs0EaK5FaXuv' \
    --namespace $AB_NAMESPACE \
    --userId 'ydnmHYt95MWxB5tG' \
    --body '{"screenshots": [{"description": "AqicXanER1MmggxY", "screenshotId": "dBF93OVlYSRzGi0y"}, {"description": "7tbvdpdODxTONM8x", "screenshotId": "sR6oTyt2BGTflkQ7"}, {"description": "XDqMd5OJySlN3p9q", "screenshotId": "EmzwYOHvwJR4bzf6"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId '4u3AGWXwCrCidoBJ' \
    --namespace $AB_NAMESPACE \
    --userId '0cxcWEy2NmP4pMGJ' \
    --body '{"screenshots": [{"contentType": "uVGhYkuyaXWSBWrd", "description": "hS2r2ka2ukWflJB2", "fileExtension": "bmp"}, {"contentType": "F0HZ3LURKlLQE9SK", "description": "cRoaYcf2qrlvC7Ms", "fileExtension": "jpeg"}, {"contentType": "bUNgVTSbGam03j6g", "description": "FSXZHSrVZyqWGrYx", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'lcrVt79u6tEaqP64' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'rqhFn46XUJjnnNNr' \
    --userId '6M8LpuZt8j8gF0gl' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'XQOZSu19bCHiQ8qS' \
    --namespace $AB_NAMESPACE \
    --userId 'K4GUC6aC7RM2AhWx' \
    --limit '75' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'G1D2VFN2Assqrg75' \
    --limit '88' \
    --offset '100' \
    --sortBy 'SBzVETpLvdmEpApE' \
    --status 'JRczGoTgEt4FDTAv' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'ff7APMqjRw4GEJVq' \
    --namespace $AB_NAMESPACE \
    --userId 'mZkT7EPQXox6UPIN' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'm0DXRtoJWm1b54gw' \
    --namespace $AB_NAMESPACE \
    --userId 'd7yPwhn9Mm7P6Gyw' \
    --body '{"fileExtension": "SnDbXm1vrZHJ94BO", "fileLocation": "9UExdmM9UeXaxOH2"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'OMsj5NCldN96Yxif' \
    --namespace $AB_NAMESPACE \
    --userId 'zUKKpgZqgF1b4qJe' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE