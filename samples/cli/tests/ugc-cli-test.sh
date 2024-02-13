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
echo "1..160"

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
    --limit '42' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "n0mpM4x1P5rkhtVc", "name": "zLUmZSaQFcds7yLt"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'h96ok4uQGMiSEtMI' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "sQMf2zKycg5lLvpw"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'giRafpP9mKOm9hDW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'QNpvTpzcOlsnfG31' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "2agKPEU1dDwHmJiy", "customAttributes": {"eELgsdd94aoJJ8U8": {}, "4TSk7KkG8BRMKxqC": {}, "CF2tqYMpVvgZjb4H": {}}, "fileExtension": "HLpao4NPupePIc39", "name": "cPia7lR3Gv5j9w2g", "preview": "Fll9pmZWlfGiwN3m", "previewMetadata": {"previewContentType": "YRLe7yCwchSv1no7", "previewFileExtension": "MZTyGM3bEZAcuLSA"}, "shareCode": "8hDJSRuVRGMk2y0f", "subType": "J2AuxqFnXxPNgmF0", "tags": ["Xvk7H7kklAaEi1SV", "JjJBQxXXgMDAGuOD", "4M6QLFMi6Pc4wSL5"], "type": "uM9WMPMkr2d54Frx"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId '9bS5I8SXcH6yyj2j' \
    --contentId 'd0gs7cNygTHgH91X' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "nZDXtlhUCHqYDw7u", "customAttributes": {"THKUH7yvwVJrIVhd": {}, "ghR8cVtRQRwJlhIP": {}, "Ll9HDtUCQp42WO8T": {}}, "fileExtension": "8YmTq9bP91IQwPOq", "name": "iBJzTvj1VlvvS0a2", "payload": "uq2NPE7p3AhDoVwY", "preview": "hjcrUPNrhnRtXGUp", "previewMetadata": {"previewContentType": "y3bw5mNBeHPOhkv3", "previewFileExtension": "t3ZRverJICJVYA7U"}, "shareCode": "ECtHVZlAm8LijrTG", "subType": "wxLNIIqCl8sCHMZH", "tags": ["NWu28cctEXfDUXmz", "prKkHYlRIQXWQCaM", "KVYRWgBxadODyJW3"], "type": "BkXN5fOH3tb2nXxV", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'fHXaEE43OP25suzI' \
    --namespace $AB_NAMESPACE \
    --creator 'dio4KuLS9BVuxpYY' \
    --ishidden 'YlOVsVtoOFwEXXrV' \
    --isofficial 'R0IWry20p7YABsIP' \
    --limit '56' \
    --name 'SIeNTYlQnoWmdXhK' \
    --offset '95' \
    --orderby 'Hq6BQlIf2xS9xlmB' \
    --sortby '4TKt2ZfyxTNVOXDP' \
    --subtype 'YIgjIvbLweuQxGz7' \
    --tags '["yiQqxIfnlnlSnXQ6", "IcTIw0LWWnN9nJri", "jJDHlU2uU6GEBVOv"]' \
    --type '966802ccS4Ajatvg' \
    --userId 'kDxXerqxNTMw5p2K' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'DxkUl9HtRrthzf3j' \
    --contentId 'LsS8gVmLDVsNZl56' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["mPxSoQerJERcHgDm", "eJczpjw2EcIl3iYW", "W7MbqLzxN4DfNMU9"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'R8r3QplRK5fIaSE9' \
    --ishidden 'R0bvUWVEaQWp8J26' \
    --isofficial 'YzuAn5CIr370JYXC' \
    --limit '79' \
    --name 'MHhNYEXqdXlffuC9' \
    --offset '49' \
    --orderby 'Fue0PrwAP03zW8zq' \
    --sortby 'iCGV1HJz0Hjj84Go' \
    --subtype 'Ga5NhLj4ert7ZVFI' \
    --tags '["ILVIeAzf1vdKKYNj", "PVALuHJ4NYMIeJld", "rNNOa2J2bWS4UFqT"]' \
    --type 'eM4oxm0typQObOzQ' \
    --userId 'OzlyymRgh4KyNRhv' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["kG2YdjWihDyUU8wz", "KpZ1owjzkleI93GB", "BgAj0ZRUgPVehvJ8"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'mrqPSACYpN0Pxwer' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'HEXBvIw7ej7zjhUW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'XwJKXvgphB4qLge1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'cTV15UUFJ5KAZNRu' \
    --namespace $AB_NAMESPACE \
    --versionId 'nt8nqp6hIS7PrDUX' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'F1jIomuwM0oZRakl' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "KnO6425z9OpqSpQ2", "screenshotId": "lhs1NUCo7rSPO0O3"}, {"description": "eeUMJDOgM1mXMmxy", "screenshotId": "itRJfAkgbDN5wUHX"}, {"description": "JI8u7aAOV9qWUQGJ", "screenshotId": "hWw57gJec69FczPs"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'W3cHqCU5Trc0Afi2' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "sVPec30rlwBMFHr8", "description": "yeQrov5D1vpfgBnf", "fileExtension": "pjp"}, {"contentType": "bTQwnxZsQEInCuUJ", "description": "OFU7cBHoyqdxrj90", "fileExtension": "jpeg"}, {"contentType": "zjd2M3lXSOjXLjVh", "description": "SJlIAgxO9PLe7ok8", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'JSzbkOjOr9EH2T5t' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'prBz1Dm0CLSmo4dG' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'HpEzvehnMceG4nEm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["EuI0WGSomg5YupN8", "3yrt7Ikr4C6595Jj", "GwD22McYHuhsT41x"], "name": "JApd50SDYR5SsVeG"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '49348AL2ZA0Sw58x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'oYLfUrD5BzbwMO3d' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["9rfeDTuUYlDdXmjc", "fdCT7LGv0xo0PQ7a", "prIuEJzTIB0UAxIQ"], "name": "kzgw3rigrhD7PL7s"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'PRkQI1bdNiSMdR0O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'Pur1HW4E431dFTv6' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "18wdPFrM43wmcyve"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'FiWQiLXV0EkUCR3G' \
    --body '{"tag": "LiIGVzXFMCXxupeC"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'RFHVYWwfo5fXjB8L' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["Bd9sfnvKkeMBxXIn", "bhiVH94acvyDxFsS", "sin7HaXtMMEqVbev"], "type": "ih4LDMW3UX9F8qS0"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'Dvs4QsP8IT3UHZfj' \
    --body '{"subtype": ["GAMiM8SpeN7XSlX1", "yzEJdWHTB8dmV7dR", "7S37huqJDbMzCMGm"], "type": "I7AV3YR43cROIiYq"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'EFTXPKbZXUdC2jvs' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'UQ8mRnFNv1uh6RBL' \
    --limit '50' \
    --name '7QTA2Cq7p751nR0x' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'fANCvBh1JNxkaj5l' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'qh632fLYzo0YYgvj' \
    --namespace $AB_NAMESPACE \
    --userId 'c0KzDjQEtJJbc9zc' \
    --body '{"name": "TQZI2JHnS11xijOg"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'fdPs8Vd4a4OAAsMd' \
    --namespace $AB_NAMESPACE \
    --userId 'oYfcAIoGI7GXGid8' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'XFI638vrPL4Qdtif' \
    --namespace $AB_NAMESPACE \
    --shareCode 'iE4NLJObZpcOmjW2' \
    --userId 'S5w8cUxeHs4dDP7s' \
    --body '{"contentType": "KfJAspx9gk2h4RL9", "customAttributes": {"IAFZ7ZuiQmDXXpm9": {}, "9TR6MpzPCOqEacyN": {}, "5I9DbSQTCUw5V5LJ": {}}, "fileExtension": "P4WeLaYIDVebnyle", "name": "5tkngCMu78Glj5pP", "payload": "959wqPVSSShutnng", "preview": "iYwlryb4SJFm8hlC", "previewMetadata": {"previewContentType": "NkTV5e6Jm8ddyktJ", "previewFileExtension": "RazEUSSjnrb0wxiH"}, "shareCode": "wFjrCY8RDTI96lKN", "subType": "sw0x3rwE1PQmWMId", "tags": ["D8HCgOtk1C9KfO8w", "wwrmaKcbPsjwNexp", "4m1154VqbEvZx8NB"], "type": "hw1FBsPLJRporBmH", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'gxw6c302frhjUD0P' \
    --contentId 'kgwcuRQLCRVks6mQ' \
    --namespace $AB_NAMESPACE \
    --userId 'V6Lrx8vfvO8oLQ4J' \
    --body '{"contentType": "2aeBMVhD5aKYE22R", "customAttributes": {"ODmlWwBVzVlL77x8": {}, "JZ5lLewu2ycQn0CA": {}, "chh3kgmdaTdrvRgd": {}}, "fileExtension": "RVBRJXCKHv3n4ssV", "name": "Huk5lF7RmBLGdq3o", "payload": "N5qZkvYvQMyNjWlb", "preview": "OO8V9K768zuRGCTz", "previewMetadata": {"previewContentType": "1SOyDkvwwiDAY9Nv", "previewFileExtension": "aMyaOrT5pJrlLfLG"}, "shareCode": "1UJQvBZ6bTelS78Z", "subType": "w3vMVpf99KoTJwTT", "tags": ["chf00Pg54v09RI9y", "nBXdIY25XPp9sOHj", "kaDNEphpsZzPgVjA"], "type": "NFhIcMW3L6Brti06", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'xxWHmNqdNIbcTnKr' \
    --namespace $AB_NAMESPACE \
    --shareCode 'QiOVXcMxDm7b8iTn' \
    --userId 'kRDBcyzf0KDJ1H3S' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'ykf23lMZYmzN1ZUu' \
    --contentId 'LUssKZhN949TKv30' \
    --namespace $AB_NAMESPACE \
    --userId 'lE4xRnE3ljNrfuO7' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'oICui6uHucalZtSq' \
    --limit '48' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'ZH5AHnfgixP4ApwN' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'MeDpNnnirIPmz4Lp' \
    --namespace $AB_NAMESPACE \
    --userId 'ngD4pf4FdHHFzLpc' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '1X2scsdtvIuLCf5A' \
    --limit '1' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Z1eh3EZLk9LQb3Kx' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId '64j2NhoKN3z1pAeK' \
    --namespace $AB_NAMESPACE \
    --userId 'Y47adS45DfryPqxZ' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'CDN0wwiQOkbw44MT' \
    --namespace $AB_NAMESPACE \
    --userId '2NU79N07WMjt10um' \
    --body '{"contents": ["qwN2sSYAhtPB2SZI", "ejE0iav6sfNZXYco", "zymApQVNGjbRO347"], "name": "PdokzuHKlVhmfdOi"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'Gs8gbUMicRgHHpm9' \
    --namespace $AB_NAMESPACE \
    --userId 'cDxhvnKxdPnKJGuX' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'm4NRn2Rup4wvBoSJ' \
    --namespace $AB_NAMESPACE \
    --userId 'nDB8FfmbYwGM3ZFb' \
    --limit '56' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'BYY1BZQImu2imc4M' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '5UjQpgPjq6VRheAz' \
    --namespace $AB_NAMESPACE \
    --creator 'ZsEoN73IB5zG7l6L' \
    --ishidden 'e72auj2VF0T5jEh9' \
    --isofficial 'lg7P4fyMVRoKt2QR' \
    --limit '98' \
    --name 'o8tnU4MVldF941ZA' \
    --offset '51' \
    --orderby 'rhGEzwCc5mZhwqrl' \
    --sortby 'yXM4eGPnBm30vHGL' \
    --subtype 'JQYe8fQPCbLLnmao' \
    --tags '["vQWJph8eMSjeb7ls", "vLE5x4enaybeucr6", "OSSEo746uqVlOyWf"]' \
    --type '3Ox6mMz2TLuGCEqO' \
    --userId 'EDtn55opiWkMbuXz' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'lN2g7yaxZiXeZzD2' \
    --ishidden 'WbTBrwrTOW1DAasp' \
    --isofficial '2LgJNWH01AIIQGhX' \
    --limit '42' \
    --name 'oj2ogVXj8qKZcX3l' \
    --offset '80' \
    --orderby 'yMf7e3n9tU0MZnLL' \
    --sortby 'VvIAb5XWHFKRsOWc' \
    --subtype 'OUgHvBq4Eb2daS9h' \
    --tags '["8VInN1idWpXpp28R", "I2b7gvmi17wwt4Ta", "skYjMD6ERjMFVzlM"]' \
    --type 'Ty4pthxzGJNCzg2b' \
    --userId '7Ve4Vh1WOTHTRBPg' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["7t9DxGBcZxdU4LT5", "ycphtGUbsRzisWEM", "C9dyhB9aLN2EZcwL"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '94' \
    --name 'AixJgKO7POXOJOiS' \
    --offset '85' \
    --orderby '2FUysdsftLf1tOMc' \
    --sortby 'dpqmPrNp7o14wUQ0' \
    --subtype 'AoXYxTgSVilwVDa9' \
    --tags '["BMSzOCgXCE9QXTO9", "BmwGKUVpCPr2o9Td", "bMBPzAveyEkxxxtk"]' \
    --type '7wZ5WHEb9nEATIEg' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["MfzGNiLed7rSCgVc", "Vdq76XjCIAYygGH4", "zJWBp2jAGFn0pRGw"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '5WRZS5VKnuJYrcra' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'R5vpKlxsf92LGyz7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'xZPALP0TOIqdx2e0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'YHdMCmo9RSR6qHyo' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'GQKDuzHgTKdoXqoi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '79' \
    --orderby 'HtgxuCFIRT7ges6c' \
    --sortby '5xS1f5iz1eAxY7rh' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '9w7TQiGyv9oIgmBf' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'm0gdzPkGjvM28XST' \
    --limit '42' \
    --name 'fSdbjtojKdkv85Wg' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'NICZ4WKPO9JV8INY' \
    --body '{"name": "OIyqMZNedfIq9bAC"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'uzfFZFDjLpXSWp8f' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'Ro07UzsUu1iVlo2e' \
    --namespace $AB_NAMESPACE \
    --userId 'uCrNRkHJyTXdG6Iq' \
    --body '{"name": "SR7NMi2FJThB49pm"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'wGw2Z5tTE1J6wU4q' \
    --namespace $AB_NAMESPACE \
    --userId 'pLXPf1C1kjpyBSGQ' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'tVsZuoBPltl7yHpQ' \
    --namespace $AB_NAMESPACE \
    --userId 'uU0UvLbFXG3UHCtW' \
    --body '{"contentType": "v8LM8oAmD7UC3Akx", "customAttributes": {"tzbqIiyHLQ070aeT": {}, "CMxXJweQto8m8wjR": {}, "M5lQCgkAFgm4VUaI": {}}, "fileExtension": "9Dg4pw2okFrWZwKo", "name": "Vt8YTE6T7KmcbgNH", "preview": "meOdnqE0Rs9ndrVf", "previewMetadata": {"previewContentType": "jGOsApuEtBxHbC9H", "previewFileExtension": "B0kvu8jHWDkCp55b"}, "subType": "3ytlo123mjH4nEM1", "tags": ["InVDl8IKxsCITAIU", "5wvQsuQzZEURXRF2", "ed1uF9D8wD1PPTKb"], "type": "iJPNCgRd8HnWU0Pt"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'nXSEayAdIN6bd2tp' \
    --namespace $AB_NAMESPACE \
    --shareCode 'C0kcwaCMomu9ZqFZ' \
    --userId 'lmEFZyUVtkunuHnP' \
    --body '{"contentType": "YBfItSe3HHIwHIKA", "customAttributes": {"eRpBP0KfuXyMV6j1": {}, "iS225jFUFuzLrsIC": {}, "oOhTFOEh01tz4Aqn": {}}, "fileExtension": "cgEgtLBZSWeDZ5rR", "name": "p3cR8VdCLRrRLYk1", "payload": "VJLqLYS87tYM3hHT", "preview": "mDZvxtoZFyyaJXUo", "previewMetadata": {"previewContentType": "XlHIMxVAnJzHMgjy", "previewFileExtension": "TcUdEXpOOkDB1TJ6"}, "subType": "BwKUmKRlxHNOEZgK", "tags": ["tVt5GIxPNjUWDKJD", "a1BCEMueXuDTnZWB", "JpvyudDYOdHGavYV"], "type": "g2YGVk07N96HUKFV", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'TIXzKRlfYn5w1Wxe' \
    --contentId 'WEUYJrQYmmcUvMIh' \
    --namespace $AB_NAMESPACE \
    --userId 'bkNwMGJXRVuU0yeN' \
    --body '{"contentType": "3eU5QsLEEfDAowbj", "customAttributes": {"ausCDQ0j5DFGXgi1": {}, "sOjTBHltjrxTlQLd": {}, "tBBqbJySdX7RD0uC": {}}, "fileExtension": "2SuZcivbMaoikWB7", "name": "ao5RcMFrC0XASMRE", "payload": "WR0hSTUA43Ga7HUt", "preview": "OMeQaVnf8g2AbZDE", "previewMetadata": {"previewContentType": "xSxddUfOepzF5c4i", "previewFileExtension": "7sp7D9UXf317xFcj"}, "subType": "NdANA0AZvvIP951G", "tags": ["4rg2TUvAGcrDOuS0", "OYewEpahDiWYMlFC", "SpW4FI5HaeV33jqq"], "type": "ypvHkmvlY5Sggmq5", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'BMLX87JSEEtbENUJ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Viphm3c2jnChVkaK' \
    --userId 'f9sgU14l24cKsrP9' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'Un42EVLN5ORiIgfx' \
    --contentId 'PtMKB87xL6jEqEnq' \
    --namespace $AB_NAMESPACE \
    --userId 'o02RyCLrf1P7Yzaq' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'qwgjwiWxnaRfirAt' \
    --contentId '6JXKPFdyIym0O5Ul' \
    --namespace $AB_NAMESPACE \
    --userId 'F5nLnShSup2VDYGj' \
    --body '{"shareCode": "r7X7mOcz8D0k6seL"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'NGz94dGuM0yfM8YT' \
    --limit '63' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'bZ71fR4R1BHKFLGY' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'BRoiBXwr97KNVLdz' \
    --namespace $AB_NAMESPACE \
    --userId 'OEw8wWUJZpcflY8s' \
    --body '{"screenshots": [{"description": "JA6svBfnIl7LQ50U", "screenshotId": "WwcdXoXqLVRP1uNx"}, {"description": "w8KoInXWNGtSNM6R", "screenshotId": "t1XHxZVPPXJo0L6a"}, {"description": "okNeBQM9n2MAwCsF", "screenshotId": "7s09hjkZn0i03r2n"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'ccSEYRtS64J3ojOZ' \
    --namespace $AB_NAMESPACE \
    --userId 'Fvv8yaQP3nXAgciD' \
    --body '{"screenshots": [{"contentType": "znMGfeUm2q6R31r5", "description": "rj5c4Km4fnyYPEpL", "fileExtension": "pjp"}, {"contentType": "ndi8Hq7sITvcqYwZ", "description": "RGCIOS5gb3rJ4kHh", "fileExtension": "bmp"}, {"contentType": "Sa3NM6Cxcrgcfh9Q", "description": "3eGWwdDeZAEsMkUi", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId '5sslhK5DKWTVhwve' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'AmGp5YPkOXdZVYkY' \
    --userId '3NaeSkGkucSL80jJ' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'o95VimhRnhu2bZUj' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'n291etPuKUDUF5b4' \
    --limit '75' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'Z76mKH5ht3iaQHch' \
    --limit '10' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'F1zr7a0oKTj3aAHh' \
    --limit '33' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'gjhrzvF7G28ckDr7' \
    --body '{"contents": ["1da9mlXsir8VLmtS", "vSwuZ5gAqalS1nVt", "ZjmJP5BQio3Xqh3w"], "name": "t93RFrYN11rTHcbc"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'KAOPLPfzszE09JUi' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'SQ4sfhl9zkazM9cp' \
    --namespace $AB_NAMESPACE \
    --userId 'XOn39HsHPAJRHF8R' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'mJubDi54vnRjChwe' \
    --namespace $AB_NAMESPACE \
    --userId 'UKZvYf3gV0b41SSo' \
    --body '{"contents": ["yqKiQOMPfGEE09h4", "oN0aLDVl7XGSahZx", "I8xApL3lVOhVTjgK"], "name": "u44GbLxyhK8rXgoc"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'GWhDv1RWdL8yHvKn' \
    --namespace $AB_NAMESPACE \
    --userId 'hAsVw4N85helTPz0' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'agosAlqidbpClERr' \
    --namespace $AB_NAMESPACE \
    --userId 'Bng5Xq7riSvBAcw0' \
    --limit '32' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'SdHGdUTugJI1344d' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId '44uKeWqlff5QDsoX' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --name '3UVfg1YLD3YhCkjx' \
    --offset '29' \
    --sortBy 'L6tfuhX9ugsemrzN' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId '6cJ44UErbccIKvgu' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "dQvCCEo4ZR0P1xVu", "customAttributes": {"o60Qo3VPdxqInUuC": {}, "F2RdIzlxizrEBo8G": {}, "4K9AGm29QyDL0Kj6": {}}, "fileExtension": "HfFbPoUDtk3jvXd4", "name": "Z82BhfKEdvqvCcSK", "shareCode": "jhQY9XjFib7mylmk", "subType": "2fuH8ePXj8KL76rl", "tags": ["wnJFVmpOA76iqtvz", "uoYPNFBUCCK4Qgu5", "ZoWgqQVLfHwDcojW"], "type": "8udI5fUM4FCU1v7Z"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'Sg03MKsbp5FcTdbz' \
    --contentId 'cCdXtmSZxiVu9icr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'YjazESjEqrFUTJJi' \
    --contentId 'INNrieIcf9Fi7tg0' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"LZigWaTzqNvhY01c": {}, "pymlJxX8Xc2IaHuX": {}, "Ln2IOZJ6GZSBIKEE": {}}, "name": "kA6dyhdcLhczay5o", "shareCode": "pCG7Ds5OzuiLk68z", "subType": "2FRpm9apiV2cONgH", "tags": ["KJsMCXk5sfVdnY6W", "FH6Gjuv77RE9rVSG", "J57u7vTViHvsb0IJ"], "type": "0LmqHcNXwImJnRH0"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'WovyWB7bti19yksq' \
    --contentId '3FppCD9ZgZUZfF49' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "GkehsUUeesJ9gaFd", "fileLocation": "jROisODONNzc241l"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'XIwB323v6VRIZolA' \
    --contentId 'C09xau3gAnGrt8E9' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "g9BnQ8lgT2Ri22WC", "fileExtension": "suxbIZS7dyPfzWXK"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'ffrbaY0vqkO746XO' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "sJIX90zSX0wY4TPx"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '47' \
    --name '01LfpjQr2FnhKgTJ' \
    --offset '76' \
    --sortBy 'S91D0AceBS90fhuk' \
    --subType 'uNrzHYfBxrTWcze5' \
    --tags '["lB9jFaAMbJAxWmxw", "CbIyrPmBXrjag6mw", "q88AyWXsiXXP2gtf"]' \
    --type 'sVpU9Mc0h5AZiGdT' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["hxrpiMwJ9MsFNuzD", "wAQ4HOcie8IuRhWv", "bkekGsz8IR6Y4jSn"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["kgGHlX5dBaSu2Vsc", "KdzLJ3UAMCkkE2CQ", "LZfvVaEV3rcCu5et"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'CIqeidWnkXKRn6dL' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'S7E1KlHVJs3t9JeH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'cVruqNh8OYskmRUs' \
    --namespace $AB_NAMESPACE \
    --versionId 'LLsPtfhJXJXEdZIC' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'jPdWQeJgELp2ryPp' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "GWawFGBgrHG6BTgV", "screenshotId": "b0DwXHAjOzaoWkPI"}, {"description": "WAKuUfChPT180qsS", "screenshotId": "OVCNofvKTgpJEnLi"}, {"description": "89ekuPMAQAMIbSpk", "screenshotId": "DQfSO0Dpmjr5rT6d"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId '9VtcH8jsHQPDqFVe' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "Dlsi1hTje723FfIO", "description": "iqL2RrWqB2tFlGj9", "fileExtension": "jfif"}, {"contentType": "i2qq1X70j4s2syTM", "description": "i2B7Yu1StnhMnF6c", "fileExtension": "png"}, {"contentType": "L8hiJcZFg2reJfks", "description": "0Gq0dUH9Sp7HcMC4", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'MdSm9t58a89Cw8qy' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'PE0Jrab5p7IUlviN' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'ShWPBgUqKXeln2Mn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'zUK04UpFdW9MSExS' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '8' \
    --sortBy '5P1zZQAJEysPmvgr' \
    --status 'siJI1cOrF4xKFB1y' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'rKGGAhBArtjFE9Vg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'Nx9EooWhnvhfkrYd' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "sFE7gPa6bwcCMXDJ"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'XYTJDXE94ihElne6' \
    --namespace $AB_NAMESPACE \
    --shareCode 'TQW6cDobEhIMsFzJ' \
    --userId 'M6uh0osbJ1Ehu6tj' \
    --body '{"customAttributes": {"ZOHW9b7CR38PSrzL": {}, "LH5Myy0ypMi9iK9N": {}, "jLI5lI7fGLe4o6H8": {}}, "name": "xxeGvn7g2lpngLxp", "shareCode": "ksO6ruY0O01jlDz4", "subType": "hiLHHx0CM6gh9H1m", "tags": ["iZr8H9vxox6fKGXM", "1EdtsspV1CLMSTsn", "vrX8lKfEye1PLxue"], "type": "3QwBileOPSVfLNYK"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'jPiUuKw2aLNxTNdK' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ZzpTIaTIMLb9pJ5F' \
    --userId 'hiPonie2m8YLyo8j' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'pcKlZbJw6JI6f8pY' \
    --contentId 'j6Wi45YekpjdYhvm' \
    --namespace $AB_NAMESPACE \
    --userId 'QsXQh2lp7POTvdvO' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'SiNsyLZD3eHm47zG' \
    --contentId 'o8ro3D9qpp70H10f' \
    --namespace $AB_NAMESPACE \
    --userId '90CYfYRIYprsJjvs' \
    --body '{"customAttributes": {"V7AkhkpPvCQUiHpO": {}, "f2PuoCdAAlwDNFhF": {}, "2pAzSQyoxFQHC3zK": {}}, "name": "OlG8M0ykb2rOPX4q", "shareCode": "zNJW39PNBaRnDRqY", "subType": "18genCsUnMFDeGOp", "tags": ["aQSkBiHCq3VX4KaW", "n2FO1V2umYvj1okV", "WOdfLj5zcVKaEUyw"], "type": "57imppVDlG2nBe4i"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'TVwRx2cCRK7C68CV' \
    --contentId 'LcJIPFpfs7JbeWU4' \
    --namespace $AB_NAMESPACE \
    --userId 'ETjFR1mSmq1mUlVN' \
    --body '{"fileExtension": "AyL9TjneaWsZDsFr", "fileLocation": "9VvrHgOBsSIvGCs0"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'fGYKsc7jQ2s3P75k' \
    --contentId 'AVxty5grXS0e3DWn' \
    --namespace $AB_NAMESPACE \
    --userId 'x0bo4x4vk3g0o8UU' \
    --body '{"contentType": "3EhBawjLPLdbersx", "fileExtension": "grBSIHwcDr3J0W3b"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'rYcqVcP6TsaCj0db' \
    --limit '22' \
    --offset '13' \
    --sortBy 'GZkzDuYNNwHq6Qxq' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'PVVHSbhMUOCpMpjC' \
    --namespace $AB_NAMESPACE \
    --userId 'drodTnrMTvsSirlD' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId '08pVrnOvbNO8Pjg7' \
    --namespace $AB_NAMESPACE \
    --userId 'roUq6jjNiOi2I7Us' \
    --limit '60' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'uiLRASnO4fPXF7A4' \
    --limit '9' \
    --offset '24' \
    --sortBy '3DJWUywaEZwbhLVz' \
    --status 'BNvmSJ6f7CxIB1VP' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'c14LlD8rBOInxRFs' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --name 'xU5Cz7Nl9LmOMDSr' \
    --offset '34' \
    --sortBy 'L6PIFNIDbBggGUYk' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '14' \
    --name '2ecq1TQxK9krKwU7' \
    --offset '5' \
    --sortBy 'I6SXPdusvIp57rME' \
    --subType 'QYQhNDghZR729Bp4' \
    --tags '["j4McbOW8OQz1ErlD", "xrlBXcRokwVqiSP5", "RB2wcNhi99yXAmZW"]' \
    --type '2vdfKbpZgYGV1zaD' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["tPpWlJP5dxEZTEg6", "cb3Iv5koag5Ixpuc", "vIm2yIDIKgAlsH9M"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["lcAB9NXIbvl8m5If", "QGhCEWN6MbqDAii4", "pSIuiCQ9wL67YTnS"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'FdyxN9VOVYQrnd04' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'wck0zAZS7kchUdC5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'MSuA9DquYPno4oRb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'rbpr6XvQnxuQiZWI' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '57' \
    --sortBy 'LeeB87QXQH1O7GzE' \
    --userId 'UvReor8zfhUViZNQ' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'cfQ2LStotFA2x8fG' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '29' \
    --sortBy 'D3d8fyjyEB1H933v' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'afYQoqS0WaxHZQff' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'MCFLmFTDnXgLf1ZZ' \
    --namespace $AB_NAMESPACE \
    --userId '6r1ug1YgJuMd7GUk' \
    --body '{"contentType": "9VftfcAwQSafYXUf", "customAttributes": {"p1HXS3ruwFwg51e2": {}, "pFErAM2pFJXXDC14": {}, "GJzFK3oWRpcI1BWd": {}}, "fileExtension": "sm2P8s19r0vPwHym", "name": "80mpuHHzzixgrfnp", "subType": "kYoTLfgyfb3EBpeO", "tags": ["2Mv74oUAfAc9JAXU", "apZB4pU1lwU6t3tW", "mXveDjMcJqTVlbFb"], "type": "bn0cUtfAjJAcmvST"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'W41nb2yicIVYjVsy' \
    --namespace $AB_NAMESPACE \
    --shareCode 'KnvCP9Dg9AQ6m0sX' \
    --userId 'E9pQNJtfEaPkPuU5' \
    --body '{"customAttributes": {"X5d7fre2WfuWg4oP": {}, "DrunlcAZgFKG9Wzd": {}, "jpL5f7uLTqhGhDnK": {}}, "name": "YOyXh961ZB1uHVQ3", "subType": "PV7uk6l2UruZPoiE", "tags": ["SsQxOMejyoguAial", "9e63LMCIh3aWhTWB", "pKUQXeTqx0FURi0y"], "type": "F0FxGR7hVc16avt4"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'WEfqeJdx8AWQj2Nt' \
    --namespace $AB_NAMESPACE \
    --shareCode 'I07tofkUrarlNgJB' \
    --userId 'uodTKYXuRgQBac7w' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'YtryRPOnkrgjIOzF' \
    --contentId 'mZOPai2ZSwJPywXK' \
    --namespace $AB_NAMESPACE \
    --userId 'HtCRwstAlKMfVx9z' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'nzRpwfRcXVoUBnH9' \
    --contentId 'WclxbN9t20jlifc8' \
    --namespace $AB_NAMESPACE \
    --userId 'Zu6m2EbTnMoJSa5u' \
    --body '{"customAttributes": {"AHZcz998P7446ZJU": {}, "IoUYwkcfr9p6W5lA": {}, "Ztkd2mGQ61P2GIFG": {}}, "name": "REhIMa1JZRC8RvgC", "subType": "YDXb6ayz7mkynk45", "tags": ["8025j0HwwpeldTCv", "5pXUEAnU7RBnzHzE", "D6zsye4VnxazWyxW"], "type": "Lh7bYGkNfow98Q8o"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'opwIG0q487VFkdcC' \
    --contentId 'EBal5M8ZaU4IVjYd' \
    --namespace $AB_NAMESPACE \
    --userId 'OUvtdj49PlZz4Y6n' \
    --body '{"fileExtension": "QNKTxML0Y2TyfMP6", "fileLocation": "gWw2BWxMkcQMY4HF"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'F7KznS4k4rGLnNls' \
    --contentId 'WR4ryoJiENmeyyTP' \
    --namespace $AB_NAMESPACE \
    --userId 'kcc53swTmjHTWkLQ' \
    --body '{"shareCode": "MLBVLgIozhdxJ23n"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'fH4D0MfoC9kd24DR' \
    --contentId 'oa2lsQPcb1ezfpDe' \
    --namespace $AB_NAMESPACE \
    --userId 'N7npgIYgM8rBcCgv' \
    --body '{"contentType": "OHH4H3ClYhkImFB0", "fileExtension": "czyYiV1MQSaEPI4O"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'gC8JAqW5MrVicAEB' \
    --limit '91' \
    --offset '99' \
    --sortBy 'nHjXJX0Tf7syjyjf' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'bbVP3hAgVK0wxZQ4' \
    --namespace $AB_NAMESPACE \
    --userId '4pOcGeHaACHBOWDG' \
    --body '{"screenshots": [{"description": "J8CYLfes9QoH8deS", "screenshotId": "wnO9GLM092CVPjfu"}, {"description": "Ms4kSPNrVFJL6FAn", "screenshotId": "KmemjxMkQuqCdDgc"}, {"description": "zmTTQucaeMPjyOwh", "screenshotId": "udF4zwpG58bBkHsx"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'f5HVUGHK8FM0GZcB' \
    --namespace $AB_NAMESPACE \
    --userId 'erbLhnOgcFByUbon' \
    --body '{"screenshots": [{"contentType": "s4NPuJ0MOu6VOUlO", "description": "Td4mkaIbRY2f4Rv3", "fileExtension": "png"}, {"contentType": "Wgg6LM9mArhmJ23O", "description": "EriXJleAXmosg74l", "fileExtension": "jpeg"}, {"contentType": "6F72Zf9FBnjrgvmo", "description": "hQsWYONKVMZEZvEN", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId '8XefbS9J0ltoEbR3' \
    --namespace $AB_NAMESPACE \
    --screenshotId '5zhxk3539XMREhnk' \
    --userId '4207LsyitFWlhJwS' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'v4MjR9AOEdMv7Aw4' \
    --namespace $AB_NAMESPACE \
    --userId 'vnVgN8hzU6OgTO5I' \
    --limit '19' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'eAtmL7arnVnY2o2R' \
    --limit '31' \
    --offset '16' \
    --sortBy 'yNMvTPkpAleGm2HW' \
    --status 'JxpGPQ4BvKk4eFGJ' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'ZA9VdnC8X7HdGIyD' \
    --namespace $AB_NAMESPACE \
    --userId 'rqwyOJ9nwrtZNHws' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId '2qPKkDPLQwLNyx5a' \
    --namespace $AB_NAMESPACE \
    --userId '9mRcUuK5rzYQRl7S' \
    --body '{"fileExtension": "m7ugDvZC4NlS4jbE", "fileLocation": "U6mDQU8BrqnCwTZ5"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'qnILNa41ANyaWTNI' \
    --namespace $AB_NAMESPACE \
    --userId 'gpZEGY9UoqNquFoR' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE