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
    --limit '17' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "CxUoRSJ6nZE3O0M4", "name": "W21eAQDH9tg6bT2w"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId '51WJMIwRWkT2mMa6' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "07qoubhZSYEZMY6a"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'bW11dIHPW8l8yeD0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 's11wWQYUZZojqxe8' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "vinPUQBLTwGo1M6b", "customAttributes": {"Dv2dZ9fnE72YP8Yr": {}, "ilSg3614lV3NqlgZ": {}, "PMW7XoS5OpNKI26j": {}}, "fileExtension": "QvJn42GURHgawQeF", "name": "GHWlChRaonsj1Yur", "preview": "2igbsySflhp1RvzW", "previewMetadata": {"previewContentType": "PMFJV2eGkqLNxZxU", "previewFileExtension": "zxgIoBYZ2Sd3dJUt"}, "shareCode": "KD1hlaHnvp9tIVNF", "subType": "KAVH70Lu0bah9LK4", "tags": ["2RrkLPFnOaQvvuI0", "xj81hceelK4a9hm8", "IbrpZivjGL1D4pv3"], "type": "DV8APFvuj8lFTYxc"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 's9MLiVTQKj7kTJVq' \
    --contentId '1KlnsfTFj9GjCYm4' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "uK5patsqoBVvviPq", "customAttributes": {"dKbqRWSrDojWj2Bn": {}, "l1r9VzMUvOlySkuM": {}, "IEl6JoVVPf46VAyp": {}}, "fileExtension": "c58H9q9BnPXBWUnq", "name": "zfogkwvm0eXO4QY5", "payload": "iq11XmsRVRsrDBYd", "preview": "55z04IMU77PDIO56", "previewMetadata": {"previewContentType": "3vyqciO6Tyo4WslE", "previewFileExtension": "KDgaJR10ivsBB0FB"}, "shareCode": "sFCYJAxDmjcAD5S2", "subType": "Z9tkaa5JOaRNY3GR", "tags": ["pukMZP5HcgHy7SKE", "QYthjhsh8MRmofMf", "evR0myP0QujkhAq6"], "type": "3x8hVALTmVmdilF1", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'AyOeLTMyVlxU0Nmx' \
    --namespace $AB_NAMESPACE \
    --creator 'ko7pkYYDvXMOknOU' \
    --ishidden 'YKqGtm8ROrAjbWlL' \
    --isofficial 'wdvwYxVz7SweUa4O' \
    --limit '25' \
    --name '6Jvm0DBzCOmpGJUC' \
    --offset '65' \
    --orderby 'aj5mJoEiT6rAP5X2' \
    --sortby 'k5SI4xlhVwiAHsye' \
    --subtype '1n2ZgtA4wsuLYMBB' \
    --tags '["IDjJgjo5GX3ZneOx", "hxlwOBZMVhfNveuK", "k5zhqw2YoHG5ZbGO"]' \
    --type 'TZ9ywTsD8t5TBPDI' \
    --userId 'mIZTmvQqi9HDAllR' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'PaIV1ex3xUZWIXsk' \
    --contentId 'XLfS3s1kiUvgadOP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Fv1QIDMrrpb04YcO", "NOvB3prjpswUdjCD", "n9kLmcDeO2CQT6OH"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'xwq0Z0HqaVI1kYoD' \
    --ishidden 'cKe8sqirKrqTvw0V' \
    --isofficial '6XxKbjFzhjVXP8UT' \
    --limit '22' \
    --name 'rcBfYe2IPMY8Tax6' \
    --offset '33' \
    --orderby 'HmDtHLq2sFr3tjCF' \
    --sortby 'Vrnz5fpYz1TujsGM' \
    --subtype 'ybrYLopH4cOLV7Fd' \
    --tags '["Gn2Vw9GdUWEyZin3", "ZYXulH0flBRyptCs", "dlb3Ydy0O6wX1P7D"]' \
    --type 'QZMTQ38RXzrG5GBb' \
    --userId 'IL0r0HOk0NuPxsoL' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["zKAubxaIYpQcfvNO", "IkqtwWa6YRTvOocs", "GtAT3vafYabN42ho"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'pnsHrhlwcybHDFzn' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'fFqkTTJmxoxg7Qyi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'u9eqoPt2WAeAdZ8b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'rmEGLZP1zfosLIJV' \
    --namespace $AB_NAMESPACE \
    --versionId 'dxUqxy7iNA0kioOs' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'w5SsI2AtaBAEPrEX' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "D99Am60caQ2e5g18", "screenshotId": "bKAzhbSfbFKvOP6p"}, {"description": "9e0LL1lSyv5rtUbx", "screenshotId": "GjWYNMtmU0QQ9NGs"}, {"description": "BFvdvyC4WWKXpDcN", "screenshotId": "PeJwIG6e1LIJpA1a"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'uE0p1T65V4GaU6gi' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "Hdjk3AUqONzCbDIn", "description": "L051PoU3q0FwRJVb", "fileExtension": "jpg"}, {"contentType": "A380RlQ6hT4bBTOr", "description": "qXL0W7JWXFji0VQY", "fileExtension": "jpeg"}, {"contentType": "4nZlKPs5jFP4OFo7", "description": "1v6luFArewUzPGMq", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'nW2o3ocLzgSWZPMu' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'w03J9NW54TWSAWgR' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'oS0irw7LDSU9Jffu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["8OgTDyZ84pwmoDij", "3HDenCVOtg0zaoiM", "vlgjYNriS4CXW9Tp"], "name": "dFb2n5vs7B1huzDb"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '1NPLO613LqbpvFBG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'Fpny4AXyaXqb7RK6' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["s5zvqTi30CeKHgwF", "8WufFqOUE4GFjHoC", "aKdq09UgSi5Lw4zS"], "name": "8u5JAI5pVVe4XKB7"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId '2a3izyr9wbGI2EGA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'JeHjRTrivcH0k71f' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "2bgeSeqsKGROJdMC"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'e2yIhpUqVfzjpOc9' \
    --body '{"tag": "JtkJ2FacoPbZyMrN"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '2W2HOwIkTGSWzLtm' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["6BX1o8OGHxB1MkqZ", "Y5b5kW1u5opMOjdr", "uja4woYyrK4xUheF"], "type": "hDW87VysqkYtzaoc"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'o9XDBUHTsxmpBy4o' \
    --body '{"subtype": ["z6zZccphRdYnk28K", "wtQgQMxVF7AT50fg", "6V9QUA9k8mzy4LPj"], "type": "nDUQKtsTaaBQVG9a"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'Ta40mSWNkCaZWjSG' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'uPtnSxPwqV8i0SSh' \
    --limit '89' \
    --name 'Vvxzy9UKy3J7agb2' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'BZDRQB6MA7ltilH9' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'mE4l1rJ2E3Z2Qerk' \
    --namespace $AB_NAMESPACE \
    --userId '1VymMpirWjUaYtfb' \
    --body '{"name": "Qm8SFuTJoUiOGAzW"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'jBN5qfYcj0AiS3em' \
    --namespace $AB_NAMESPACE \
    --userId 'G5UgOTKPkRworUPQ' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId '4zzsIcw9Xn8DedSr' \
    --namespace $AB_NAMESPACE \
    --shareCode '3gLcdWpLCYZeOFKf' \
    --userId 'yS6rZRldBve4WpXx' \
    --body '{"contentType": "1IuxFPLyR83BPlVb", "customAttributes": {"RR1kJSi958g2dHQd": {}, "4ZhJ0DlAYy7rg8eW": {}, "ITtY8Dvi6kiiZjdR": {}}, "fileExtension": "OvpKdNX2ICIQcGeZ", "name": "kupZYWKDcAvlceg4", "payload": "heEKrxB10YLRJsbu", "preview": "Ilm7UtKnbH3NFODK", "previewMetadata": {"previewContentType": "gXXckMcWvq0a2DQ4", "previewFileExtension": "scDmFDHQVtxL9lQz"}, "shareCode": "a0T5HAsEVq5SHxzN", "subType": "5WQWcmapM0NBcjLu", "tags": ["8hmYUaNgPTeGmt09", "GKdthLL7Jka8bdiY", "aeVbEiOrhyM7c8AN"], "type": "NbUA9Ez2rtKRdse8", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'POLOUsKDiDQwVBUI' \
    --contentId 'pxkGVupLBrIOfVeS' \
    --namespace $AB_NAMESPACE \
    --userId 'IyqcgQp8RXi9vIKI' \
    --body '{"contentType": "WGFpjpNgF9Shxjel", "customAttributes": {"6cAKi64RWH0vAnT2": {}, "Wwea0sn1ZBNXcAPx": {}, "AbIr68XeW5k63oO6": {}}, "fileExtension": "v5jJrVFiCL3GSA1t", "name": "trY3Axgs7j4yvIg9", "payload": "mEsnmgT3oc1rMDag", "preview": "g2eogi49bARU5luy", "previewMetadata": {"previewContentType": "nplK9a4v1mxA9ud6", "previewFileExtension": "eRrBdZDugl1kZw0S"}, "shareCode": "BGVueuEo89IVDM4G", "subType": "VsHSx21qcxmhshyS", "tags": ["5cm5tZrjNrERBGHr", "cZWgQMVnW8OvA4Y1", "BLEmPHy1fthgoePv"], "type": "EOjBJAfAporQ2G3X", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'HYlLrPRs5ZtvAycJ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'xzDAHbCZGhZfsZgO' \
    --userId 'sy4aFRKcqqYWPyMC' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'ViUYU53GBjDRD0sb' \
    --contentId 'DPRBJP7hKajdrW0y' \
    --namespace $AB_NAMESPACE \
    --userId 't92wq15uADnYFhU3' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'xbpbAFnaYPYTsWus' \
    --limit '50' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'heoob6kRTdRct8OW' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId '4AZL10JwdEzxQ5jC' \
    --namespace $AB_NAMESPACE \
    --userId '1ufkqzvzN7Vq3GUG' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'HzOPxl6y4ne02reW' \
    --limit '52' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'LFCiyAtoGefgPD54' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'YHz9VXwuIJwxW2nx' \
    --namespace $AB_NAMESPACE \
    --userId 'JtbcB0zTyVU0LJlk' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'fskWG0vW3hE5lOPM' \
    --namespace $AB_NAMESPACE \
    --userId 'ujPogEI0REBeJt2q' \
    --body '{"contents": ["x57pzp5QvcNHkb3A", "DfZAJtz7peh9gPwK", "r7NYpze4yYanLckB"], "name": "EWW4w8Ptl25vkmK3"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'eMRtM1pGGyay3ccZ' \
    --namespace $AB_NAMESPACE \
    --userId 'uJaIKpbA9j4NvZQT' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'foKi2V8tkHHycInD' \
    --namespace $AB_NAMESPACE \
    --userId '0L7vdg4eI4oEkOs2' \
    --limit '20' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '7Rw8hmC5DCp6UaWq' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '7SqWhGbaXlw6Ntsu' \
    --namespace $AB_NAMESPACE \
    --creator 'DZnebijVWxDJ2V77' \
    --ishidden 'VPPj7LyBoQW6CE01' \
    --isofficial 'rzdq70cOzPIrfAtX' \
    --limit '5' \
    --name '2HcEhXysJ4TZvucj' \
    --offset '18' \
    --orderby 'SFok2zMhvqGQkF99' \
    --sortby 'tvIRS74jMyD7xYAZ' \
    --subtype 'VfsO8A3F9uKA1Fw0' \
    --tags '["Hodrz7baouedvT5t", "PijKyRjRC8vPa31r", "MMOeExwsbqEHCEB7"]' \
    --type 'nKsfh3nQZzauYguT' \
    --userId 'lkCg8UAQwK9b5vcH' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'X0z7zP6EruY7DdYY' \
    --ishidden '7QJpfgr52Bn6RALl' \
    --isofficial 'Qsok5q6yFXBBKjFD' \
    --limit '12' \
    --name 'MppOfT763bV7BfFk' \
    --offset '91' \
    --orderby 'qCpIhmLMOTd46qC8' \
    --sortby 'dGZVgFZpnYRfwgR4' \
    --subtype 'XBdpd2G6z6CX0GSR' \
    --tags '["8UjOaZxF5g6ENVFA", "y7NBg1xeIrCtzLnL", "w5gkoc8rvZ9bxkzf"]' \
    --type 'OPPt1JFmXRBgLyEb' \
    --userId 'vf7D2VMHa3O2H134' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["XyLh8wbr6jD17uGY", "hqRjuhrMM90dFYdJ", "nQTtBtEcZQqOj02a"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '77' \
    --name 'lYfTVM9pbAp3tbvi' \
    --offset '31' \
    --orderby 'nnjOGIioM2Z6rHqn' \
    --sortby 'aOZCnIsZfEiIkuyh' \
    --subtype 'miWYYjms4vxaCCKI' \
    --tags '["QbBe7XzXPo0i0eKG", "1BeHBvM1oUpmv4up", "vaPhEWWGbTR98Roy"]' \
    --type 'spZO5E3tsgGTdA8w' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["Gduqn62ZaOnU0QQh", "quLhMFtgmWz3kxC8", "u71FLnXzPxmJ7pji"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'NURfaD8wwmTgcQnv' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'wKib6GmlFdyGnKV0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'ReBINsExQ1nti1Za' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'kOe9sJIkw3Nv5S1t' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'c4vYF8SvLgEOpqB2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '31' \
    --orderby 'bJb6SLVQO76gVC1V' \
    --sortby 'O9MVXL7E5C1sOsNd' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'YvwNczcCkXODrZQs' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'zRydxHQbH060mGZ7' \
    --limit '49' \
    --name 'ppsxCX2FGl5DSUu2' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'pR1s6xKJXugveQo7' \
    --body '{"name": "oseWDA94JLqPLcjl"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'sSZNQRzLDMewV0My' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'DeH3AoWQhtMJgJ8n' \
    --namespace $AB_NAMESPACE \
    --userId 'KlwnmHvqv0gCPzwA' \
    --body '{"name": "bZFaH7imLQedYe2a"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'UPKgTfGyExr60jL1' \
    --namespace $AB_NAMESPACE \
    --userId 'UvQssoTWn8BZdK6d' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId '1NNkQ9vqvefY5BGW' \
    --namespace $AB_NAMESPACE \
    --userId 'IzFGGrkv8cAh9R6z' \
    --body '{"contentType": "9MYTqXY7DcU0uYpK", "customAttributes": {"jbdQdpzeyKynI6TJ": {}, "IIXHWPfZGOnG2yoe": {}, "WJtYZKgOTv9PgYuB": {}}, "fileExtension": "oxy8reqDowY5fpzI", "name": "HkjfFayq5ceJnNzn", "preview": "xJS64HZXiXDOlzfi", "previewMetadata": {"previewContentType": "GQMo5UvJigzhKwFw", "previewFileExtension": "KsFVBJ62iRUpmq4M"}, "subType": "zHefWWGESJC0JRHU", "tags": ["v7CbfMvpxfRVdXPh", "JVKm3u1JStJ9waIC", "SGbSxae0fcUdj7GV"], "type": "YnAyn8sXJsCkOuFD"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'GVi5yUV1JZnxgPC7' \
    --namespace $AB_NAMESPACE \
    --shareCode 'xagWWLKqtJyVgkAe' \
    --userId '7Qo52dwlSAz9RAAG' \
    --body '{"contentType": "OPUK7CksoXF8hest", "customAttributes": {"gctxlvpa5ewo59mD": {}, "38iiUZhfiCn3eRMc": {}, "VnlD4gzGcFXZrIjY": {}}, "fileExtension": "BOHuoPRP441YNpgE", "name": "qoxr7ALAf0tBTfh0", "payload": "icCLlQ6b4DAnlvic", "preview": "K70UbtFJUI9AJGtQ", "previewMetadata": {"previewContentType": "sdsPGLqWZ2Rtcesx", "previewFileExtension": "xDPIDYnA5BpGvZJE"}, "subType": "8eizM4Pq0673s4fW", "tags": ["Z2sJSxiQWiG8QnTm", "t303OG7WqnjyoiuD", "89JHYBzzSp8jtC1Q"], "type": "2da3wBclbyg1gbMt", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'uggXRkKm5K3xGCdJ' \
    --contentId '6as96XdGqwKv8mMH' \
    --namespace $AB_NAMESPACE \
    --userId '6s4BKZnXriV0YHLC' \
    --body '{"contentType": "i44FPnfJ9VPpqeyJ", "customAttributes": {"WMXLT7s9Xq0Venyb": {}, "19MXIe5GUlPTbZ0N": {}, "qQOPkN9ZobEI42f7": {}}, "fileExtension": "ND6w5KKuH6K9YiM0", "name": "WOMcI9dVTVjLpTAQ", "payload": "wMtLpCpS55dJepX2", "preview": "61MOS6ngICdKkHrR", "previewMetadata": {"previewContentType": "6aNIyNnVfs2uQF3X", "previewFileExtension": "OYz4WxH0G4yQ0gTC"}, "subType": "0hHA7N7bG9pu5RTK", "tags": ["OfAu6kdJQaekihd9", "OWyHC4RPb1IZGyJ5", "IdjOIjIGUFF30XGG"], "type": "jD0reXgs8kDGni8H", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'twe6tVKdie9H3xjh' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Z38gSirZ9QXsREDB' \
    --userId '3GUScmQcxpEER18q' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '747iAbOoj6MWXCbG' \
    --contentId 'NfICrFwb4UEzrtmM' \
    --namespace $AB_NAMESPACE \
    --userId 'GaEOIP7oRnaUI3xK' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'F9RkVCED8NG6f5Tv' \
    --contentId 'ChrMYn0URFWLyCbC' \
    --namespace $AB_NAMESPACE \
    --userId 'yLh6HBPwH646spvi' \
    --body '{"shareCode": "1e6zolqE9IIkHWjM"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'io8zT61soyaBg1O0' \
    --limit '61' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'zQECRso09IG7gJw3' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'zcAjcJFHoPzBDlpR' \
    --namespace $AB_NAMESPACE \
    --userId 'N4lzHiYGo7TCNuXU' \
    --body '{"screenshots": [{"description": "ilFkdq2elopfeoji", "screenshotId": "uJ8JC5BUTGthzrtv"}, {"description": "Y4L9bWgTRFnj9Qn1", "screenshotId": "rOrdUiqC42OrBekl"}, {"description": "khY925k7XIfGvLNG", "screenshotId": "Z2zCAxbB7W492KU5"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'kpz1pWTnBjNOW4uq' \
    --namespace $AB_NAMESPACE \
    --userId '2kxd0UReRDZYYeoA' \
    --body '{"screenshots": [{"contentType": "IAmogzqZBsMTRIiA", "description": "wvFOPatj42fnb2cV", "fileExtension": "png"}, {"contentType": "xML2liqaboVYpSM9", "description": "MdCvfDYT4zxgXWIo", "fileExtension": "png"}, {"contentType": "JS1OBoRWXOO1QGfi", "description": "A0KcaDihiJzhSArz", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'NkIkDyxtGqySUc6L' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'DJAOwuIWOgoiMQ94' \
    --userId 'hCgzBGDgEC4s8LN3' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'jPkUW7jZAUeHQSuG' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'PwU9BmfFx6AYqItx' \
    --limit '94' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'OgVXzV2DRfeyxdFL' \
    --limit '3' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'b1LCc7En8XrGCnK6' \
    --limit '26' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'bFfKhnKdPczFyBl7' \
    --body '{"contents": ["cBIMbLVlwZDxjzCt", "e0Q46oQ4GecxavEy", "r55nfZF4pWksSEoE"], "name": "b3NgH4gSBBUMp7zJ"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'EqXKYOhzi8IIqGSQ' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'GXlf1owHS6t0DXu7' \
    --namespace $AB_NAMESPACE \
    --userId 'b3LMFnR7OQFXXKqE' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'ygiJdUJwqF0cUPdz' \
    --namespace $AB_NAMESPACE \
    --userId 'lyTT69WowdyKY2pl' \
    --body '{"contents": ["aEg0LvS4O5gBZ3k1", "8V8Q7Hn0qzWelNjL", "MSA048Fo1mffdpDU"], "name": "H5lFSFEeaQbYeGyg"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'VrqriGwntPziMm1D' \
    --namespace $AB_NAMESPACE \
    --userId 'RCpRY83EEBKYiQzx' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'HoCxeR3aj63pyQnB' \
    --namespace $AB_NAMESPACE \
    --userId 'aB5T3QYgmXtzYQIS' \
    --limit '99' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'oFz2nzG4MAO0yqmU' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'DOdmyeGay4gAv2La' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --name 'oOvEEAgd91kPASew' \
    --offset '51' \
    --sortBy '6O9BEMOuUuOCpmnb' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'J3tW2CoOU90cfCEB' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "bJH7Gm4g0RUhU8c7", "customAttributes": {"D90Z0w06NsEwnaF8": {}, "95I3YOCCuloFUUCZ": {}, "Cc4LMag0a6V451GQ": {}}, "fileExtension": "hEhwjHogeOqKgzi1", "name": "Z8mH1uF1W4slNDEf", "shareCode": "dX5BWSrhJkIxWzf6", "subType": "fzuAi7gp5sp95itM", "tags": ["dg8vD5gIzqfKEeBW", "hIplfzTU8JhqYI0a", "KZGibdmRDyKG8OY5"], "type": "nociymTv3d5hvZBO"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'kngJqKwyytPTH3MA' \
    --contentId 'bJe5hCnplVcOXcHh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'I9cyCzq3Hs4GCJCS' \
    --contentId 'LLrfJAV0yQaYYOPP' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"VVEWbVMswnG3AY27": {}, "fZeNZP3aLlrCu23s": {}, "gKdjyHpfGa9xS68Z": {}}, "name": "MR8bWjoQicLZaolf", "shareCode": "a3FCJVC87djxKCzG", "subType": "kABgMAcCxobkmEHh", "tags": ["J1txnKG1AbsgnYIX", "l47SbQFiVXz3njp5", "iIIWehjeR4EdkpOE"], "type": "epCrQ2c3NIkL0gep"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'jkIVFifUTNdWMjtF' \
    --contentId 'AWrqYOqQovM2AUcp' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"RIHMG6WzeUbVd3b0": {}, "5H0MFd8hK8avLf1Y": {}, "H7MxlLzeliPpd5mh": {}}, "name": "fg9Jmf9jtmEV74ks", "subType": "5HqXAB8NYufEHKrz", "tags": ["wzybzUVhXfeVoV4q", "xdBflJdn2jXWeZ3W", "1IpXscDMfbkuq3dh"], "targetChannelId": "s01CwwR0pyXghG5W", "type": "Z1HVsjcCH82QrFza"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'rPFzRHHFJqfmQebZ' \
    --contentId 'jOfxA54PB8XEeQ2q' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "aY0kSFm6Lai1SwwA", "fileLocation": "eyMO73whXkGkToY8"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'YuDmzmhMOBAglyDD' \
    --contentId 'SUpkZkhGgU0snZ6Z' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "IlUmtCpfRpBQAFk8", "fileExtension": "Pkm3znwO7T8KLi8Q"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'zLjQCVVugjN9NSt6' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "BD0aQJgZVH8Pnx92"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '63' \
    --name 'S7g66p0l1uC70YpB' \
    --offset '54' \
    --sortBy 'QIIpUVJ98Q8V6qAS' \
    --subType 'jtmfZbFStIfUtQGA' \
    --tags '["8XHpJapPIiBiog4A", "kDnbFaJGZMnXzycI", "kgfUrbecoz45jR9F"]' \
    --type 'JlWSCFsOGAOEGluX' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ychyIkHor4q09GH0", "uJUMoVlm8KmxbYKt", "irZB145Vd0jPnpB8"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["pnuf3dgn1cjsNUBE", "JvRDvoo757chogxz", "q3oO37zTrFA3DfJr"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'pwxyQOoc4pqmrfgQ' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'xzeg3naG955sbytI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'BOXHy12BY9NoPXXs' \
    --namespace $AB_NAMESPACE \
    --versionId '1CPW812pcxYpt5wg' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'K9DuxcJ78vlBGYg2' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "lNigfoZpv6b778tp", "screenshotId": "j92aBDyYP4db4LNv"}, {"description": "77OKqLtIgjnfZZxu", "screenshotId": "JzVyR0t0979B85Dm"}, {"description": "mcTg5POAWoJ2esYs", "screenshotId": "wfxcWdyNvXX8ZDZf"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'ezLPQru7vFgq4GmY' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "2X6nRcuZPFJ8k4PP", "description": "5qVBtElPGTVh1DB5", "fileExtension": "bmp"}, {"contentType": "pxawcwD0ylt8Slp3", "description": "7XApGNYdtgFteOJB", "fileExtension": "jpeg"}, {"contentType": "4uDXAD8c6PfmwHzL", "description": "hc1wcDJ7ilELWN95", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId '7vqrQk59BwvzX8LH' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'S93gkrsmfElsGt67' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'z8TqEupr9ACj99Ey' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'iJZXlci2Sx1BoPP2' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '48' \
    --sortBy 'YVWgZYOYObEqmOI8' \
    --status '8W22lkTa0kHjj1px' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'wdqlNpKyuTaavNIE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'JsV5WvpTZ02VcPjl' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "hXvhXXgeTkaKCTjJ"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'Hk1n9QoxS5aoNNvf' \
    --namespace $AB_NAMESPACE \
    --shareCode 'erhVneq0Aryxcwv2' \
    --userId 'B8e351LS230NxovH' \
    --body '{"customAttributes": {"SL9lSTh0sVp45dKm": {}, "cvTTA5KL85kHezjT": {}, "ykAgdxLhHMX8G7nS": {}}, "name": "qqvgkJoGEqUobdHf", "shareCode": "FNhdE2LOaLBGGbzn", "subType": "K6vhjDqZjUN80CD4", "tags": ["DSagKRGkSOUvfhtC", "SbxwjoXFtgivXUTI", "PUJqmOxNYNXjrTbN"], "type": "KeZY4HOiCjcKBHO1"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'JXcql833UntntSUO' \
    --namespace $AB_NAMESPACE \
    --shareCode 'NM3xoGmNEhRAnDzp' \
    --userId '6xzjPAPd7RiUcKlj' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId '6SrvJFlG6WHwdBpX' \
    --contentId '3gJNpDYuVi7mdGFn' \
    --namespace $AB_NAMESPACE \
    --userId 'p6vNEMcHA9L3KNu9' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'hGVOHHIDznmDEV5F' \
    --contentId 'mKKWTiuwlqIXJjWh' \
    --namespace $AB_NAMESPACE \
    --userId 'HrRzvIcufV9FbMGc' \
    --body '{"customAttributes": {"crrOR0WVjm2CrKti": {}, "zTjTFvd3Xd0DrBJc": {}, "FQwokTB3ECVhVfqo": {}}, "name": "CPxE4Y1zFsMxR0cn", "shareCode": "toQFVBDGLjxtVufs", "subType": "GQoczpHn0n7t2mel", "tags": ["V4nnNaUYe4P6G6UB", "USA2wSyX1AwdIH6W", "aoj2Uljf7Cqskabj"], "type": "iAl7PvWn8WoumQqb"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId '9BcFGQ8gIcFU5vq0' \
    --contentId '2CR85ejXbKuY0laZ' \
    --namespace $AB_NAMESPACE \
    --userId 'LTg2GzccVA5ewQuq' \
    --body '{"fileExtension": "opUYqdI2PQXmqJAL", "fileLocation": "zXRXmXni1krdXkIh"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'elNhwXxSDmiPjtXc' \
    --contentId 'A672OGxtykFI3qyi' \
    --namespace $AB_NAMESPACE \
    --userId 'DI6Ch6wNZcP1sNxt' \
    --body '{"contentType": "0pb5ASGfl2bbOt3O", "fileExtension": "1RtrUbeT6IEwG4mc"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'TxQhEGukYWD7pXqX' \
    --limit '98' \
    --offset '81' \
    --sortBy 'oXjc5CC2yR54PLJh' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId '6lERXKdOnBam6Lx1' \
    --namespace $AB_NAMESPACE \
    --userId 'sD0pPUz91k1dCqZ6' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'oFnxpujQ8xhTBDiT' \
    --namespace $AB_NAMESPACE \
    --userId 'LSbYLVQpYLnomwA8' \
    --limit '6' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'UGDUFePbH0opVwql' \
    --limit '12' \
    --offset '82' \
    --sortBy 'S25se99rOXX1EtTS' \
    --status 'kQlCHnuaWKfwXvri' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'yn9srV9UYuMmJ8iB' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --name '70UNSMn62ZxHlmhY' \
    --offset '14' \
    --sortBy 'kvvQRRGKFY83G1QF' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '78' \
    --name 'xPdLm2T3VKFwFA9f' \
    --offset '15' \
    --sortBy 'LISez6xhhElRJZ5F' \
    --subType 'gWlnB2IcUw29vzbh' \
    --tags '["iJBBqYKR0qxKjFcB", "DjbWmWfe26ZpIu7q", "ueryCcXVPxcNRoXS"]' \
    --type 'eycv9JEa1iDPc4ay' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ZJ3bDosFmV1j4PUX", "cQTLFnbekZsKBVnu", "usMQDlBXDBCJhEyp"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["pOs9Nht1bRFkTsDs", "FDmnyS8PjKCzJQ3y", "hacXznBPs1HME62d"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'MKgI8YE6pJsKgU2a' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'TAXSsxPrhqME0Bnb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'rHc0ULt7NTRI1tfB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'sDR0oxorn3x7eLOZ' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '15' \
    --sortBy 'YHp606heEzYq78R9' \
    --userId 'NbuXEWZbs4w2osKx' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'k8QLBOQgBcFHF8gF' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '21' \
    --sortBy 'ufgYWOl32AOIQWX2' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'qGJEaDV4xSHf4Zp9' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'seN8QrR6HvEPv4wT' \
    --namespace $AB_NAMESPACE \
    --userId 'AofEHOLcyAU8Hah6' \
    --body '{"contentType": "raCZ0867pTyKlTny", "customAttributes": {"h5Mtn4rLRKHfh9yn": {}, "V1FX0hqf4tXKZWbO": {}, "BvMn8eAvbGV3i3iQ": {}}, "fileExtension": "hYuLknZ33fZxhP1d", "name": "QLZdGB4JFjP9mNiz", "subType": "9NC8UuFZboqo0fBE", "tags": ["ygqzz5Zxp7tGhoev", "YoeO05TB3rpWAWIn", "ImfcmlqyQo13XahJ"], "type": "4K6sxoS1Xk2aOZgi"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'J88BCyg54xTDtbBp' \
    --namespace $AB_NAMESPACE \
    --shareCode '9algVQ14X6SpG3mm' \
    --userId '0z8i8YC1HVZ6JKTW' \
    --body '{"customAttributes": {"J62mxnceIvfManW8": {}, "UofnA2Vwi4GbdDkP": {}, "2JHcxQG2taF4sZPj": {}}, "name": "eaTVZA2Nb7NgZJZW", "subType": "rgCx0Rv2b9JoZv7x", "tags": ["YbpnWJee6nAZlrRQ", "NxufuvHcJhDPDFrt", "06JCugwENhQR0Mzn"], "type": "w7CxZdnRQD9TeFoa"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'JuFNCWrptNcyIUWz' \
    --namespace $AB_NAMESPACE \
    --shareCode '9trVCBpHEH2ObGUF' \
    --userId 'HCWNOl8zgX3na55X' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'lIKlIacdBaiEBIBX' \
    --contentId 'QFHQEcCcZ2bnBaCH' \
    --namespace $AB_NAMESPACE \
    --userId 'cVtuM1ZdFr2N9P18' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'Vip7DZqwwhoYDv6q' \
    --contentId 'vngI4uFo34X1clZY' \
    --namespace $AB_NAMESPACE \
    --userId 'AXcXSUSBoeXZ0AP5' \
    --body '{"customAttributes": {"0QqEKFy3AmKLnoeo": {}, "nF70LC4btFP8OuSO": {}, "acMPbFZU741eaafo": {}}, "name": "EAni8lIthElutHmb", "subType": "mgyJBZeYo2Lm32Yj", "tags": ["SMZTTz4wQf89dcEl", "b07H6Xwlzs1h34ek", "J3d1TcOtE8I9cTwU"], "type": "Eu6EjX37429wO81W"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId '9efao27LTaXxDWDx' \
    --contentId 'EF7KUqEEb0tFHZxs' \
    --namespace $AB_NAMESPACE \
    --userId 'KNkH38s4IIHvmloQ' \
    --body '{"fileExtension": "2tpZ5rVzUqFlIJiT", "fileLocation": "5P0mywFlXCymr4NS"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'CTmPRDjtTkEaOh9J' \
    --contentId 'SQ6OYoCF3unLK8t8' \
    --namespace $AB_NAMESPACE \
    --userId 'dqZLYDKsdghYvzeu' \
    --body '{"shareCode": "vb8bFivrc0MajcIv"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'lqMFW7iRcSvnjFAH' \
    --contentId '0N1Zt9S5q5tS3lTN' \
    --namespace $AB_NAMESPACE \
    --userId 'j9cylJihKb1flnzi' \
    --body '{"contentType": "pmMJlVI0942J94UZ", "fileExtension": "9j6tuMF5RXwaNsfK"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'rmw7qSMhJPGGuQQ4' \
    --limit '31' \
    --offset '37' \
    --sortBy 'uyMjUhz0Mu5DqRzd' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId '8ywtqKLiFrd9g0C4' \
    --namespace $AB_NAMESPACE \
    --userId 'Ddu98DKTlenszY4d' \
    --body '{"screenshots": [{"description": "xCf94mACwYVDZ41b", "screenshotId": "VCNI4wvF5Yh9YT7n"}, {"description": "SzhK6UQFdDiJL3Ff", "screenshotId": "8oJaJLfNRede0HUj"}, {"description": "NUFj1GAKEA9llyGP", "screenshotId": "m9XHs6JwHQeryr5e"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'P1fJDuvq6M65BGr4' \
    --namespace $AB_NAMESPACE \
    --userId 'KNKFTF8PfwOIJkzP' \
    --body '{"screenshots": [{"contentType": "FNWJ1OhmJDO5U1fd", "description": "u5bXr9J7f9s6OrlH", "fileExtension": "jpeg"}, {"contentType": "E18cfNRLURQ8kEz8", "description": "AG3mYRYdsRWJisWc", "fileExtension": "jfif"}, {"contentType": "AwtnlxhVIB4Zuqzw", "description": "kvHDl00eRmb9YFDn", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'Xdo7M2PyPoIPmPvM' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'ogWFSJDP1xCyMJrl' \
    --userId '082vJEGlrcsLsjuC' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId '0IHPjYz4FVOttmvM' \
    --namespace $AB_NAMESPACE \
    --userId 'zhNwz6NkYET4X4JY' \
    --limit '83' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'nXpNHJ0f0j8xWx6N' \
    --limit '88' \
    --offset '81' \
    --sortBy 'nTj3W1zQTvW3YksL' \
    --status 'EwZozCu8AziP4ofM' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'gFLROKYDhHCZ2N3W' \
    --namespace $AB_NAMESPACE \
    --userId 'J8OYOsLDZ78xPevF' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'ocpOsQ6CKAgAMfrl' \
    --namespace $AB_NAMESPACE \
    --userId 'PZOJWGcZPEvmmErU' \
    --body '{"fileExtension": "XnmIr7j2rXmpd7NG", "fileLocation": "wS94rKdGSlJ4tpOJ"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'TsIQufKkImqE0Kmk' \
    --namespace $AB_NAMESPACE \
    --userId 'QC9eAJRO1J71D9iX' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE