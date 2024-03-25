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
    --limit '16' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "XSQCqv5wmTXFFozd", "name": "By70bicBfhk0R1c3"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'nPBNXQyVgCa149o3' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Y4TFTr07QmEYafAi"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'hKeP4jNne3e21t9y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'j9SPHWeLGAOl29Vw' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "XEEZQpnddouC0mkl", "customAttributes": {"c0utCR7z8aIAZ510": {}, "tW6UzUdG2E23lzOx": {}, "3CaCxwqJaYxnyEhR": {}}, "fileExtension": "dkWnulpPCSC3twar", "name": "yjrlGWVb887tQSyK", "preview": "Irxw4KInEJQy4nFq", "previewMetadata": {"previewContentType": "oHpEdvnzPv3inCZw", "previewFileExtension": "APlBg3W5LJyURJfr"}, "shareCode": "d69Hh6UcsxmMfvBN", "subType": "eaHgOLP7ITQ79Yv4", "tags": ["ce5SRwfiGv22Oqfs", "edNKnSe7whOM3mJ4", "NKbiChwjUdNZDni7"], "type": "NeT6cMFaWYQyIJ1A"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'kupAQG2TtKoAQQXO' \
    --contentId 'TCQ03V7hShc3jFAv' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "7PzwOeA4QDwvGe77", "customAttributes": {"TsNI6RuB2wrahD6v": {}, "PD2ZtsO0Syd5KW4B": {}, "QvQxyfdPybwfPA20": {}}, "fileExtension": "ppwA9wrl1hIxZ3hl", "name": "foizLex2F2qMiqNP", "payload": "hE0t6aliA4LVWZ9r", "preview": "MUznv79QMhyvyFHk", "previewMetadata": {"previewContentType": "e4HJm6TV6VmrCSY5", "previewFileExtension": "GtnDvoRxwq29BHH6"}, "shareCode": "6dBFLGzrp0WemR0u", "subType": "iGWxGPCuQ7CJ0Bag", "tags": ["2ydUn5VVHFkyG4K4", "yTflTz4fkKd4eQ8v", "WMhY9KJAVQvccJgq"], "type": "nGir07wfpIWdTh4w", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'Uf6pAn4jRhwJ3GPL' \
    --namespace $AB_NAMESPACE \
    --creator 'vx57btzDzpAKmiTo' \
    --ishidden 'XwvfNMgVHwM7OQSN' \
    --isofficial 'NgATHPrjDaRt8pwE' \
    --limit '64' \
    --name 'B2r0PnJ5u2yjhD9O' \
    --offset '68' \
    --orderby 'BcNw0O3Ee4tZRmw3' \
    --sortby 'mHAT69Wnn4CUK9j1' \
    --subtype '0FvnqeFQZ6OZhFJr' \
    --tags '["q7w3gW9erDZ95hXB", "1EsASZu93ilSTTqY", "b2WMzCfJQ6gKefNE"]' \
    --type 'e6WAdBv4A1PBNI5z' \
    --userId 'itZ1NIU5aOa4OAmI' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '7bsP034ZGlfZVldy' \
    --contentId 'tgqEjlt2oTg71uEY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["I8kqNRBsWQeJ3Wn9", "kwMMgyNONf2WSpGb", "9r1KT4SOdtvLJ1Xw"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'UK7jqCAwItf7PxmV' \
    --ishidden 't9iYUpKj6KUAJl85' \
    --isofficial 'J3K412fX7cCXi7Xn' \
    --limit '87' \
    --name 'SS9Ks0I0OmxXvmEY' \
    --offset '74' \
    --orderby 'OU4XqTLdLT1fJrUw' \
    --sortby 'GivYBVQbFo7DFYMf' \
    --subtype 'K5Xt8leu5kxQKT8i' \
    --tags '["8aw4uR0Wx0cX6O3R", "GGEu4SC7gYIeKcUa", "0eE1Bdkoll07ksao"]' \
    --type 'A6UgQlb7mBwmX9s3' \
    --userId 'zSGc767xSGiESMpH' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["cTGVvtkx5jzDqVxz", "cIUCvJP4PYiFsPwp", "30PmoprS1CJx4Nnz"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'ht0tMnRymabEqHmv' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'ngD9eKGYokDGy0c0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'X4HRrR1cGCo1QvOX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'h7sNfafKVhklNuSM' \
    --namespace $AB_NAMESPACE \
    --versionId 'avDW0g2GyEbsettl' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'VflkA5hNjYt1kDBQ' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "KKTgwouHhUXDJDuV", "screenshotId": "cndbVbeIVOAFfiml"}, {"description": "vlLVFthMOx8c6sds", "screenshotId": "o7wno27h2tPXPAxL"}, {"description": "DLutCD3Tx8kCYri3", "screenshotId": "VnOmPjLx47eOm81s"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'ABOC5eD8oTIlXrsU' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "OmFBrrk1VEFP84Gw", "description": "QNDRl7rFZ6O78TGd", "fileExtension": "jpeg"}, {"contentType": "gA3HfyMnSJpA4i1I", "description": "MzzZzcrPLXzrWUEO", "fileExtension": "jfif"}, {"contentType": "yApTZYet4FVPcYUE", "description": "eBkYx0eeS5zXU8On", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'Tmm2mGhOEB2QWyW9' \
    --namespace $AB_NAMESPACE \
    --screenshotId '87Qi6apVm60Dgivf' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'Re2CSZ19PFIoS2Fm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["YB1efwam5OLJwrW8", "tHAHuD3lEWTL8JMk", "TZfJOnZPZgTfITwI"], "name": "5gRbYlYOJ00cxaCO"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'nvgibxTLw1O8eovX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '2GapZUHhc2l3yWh6' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Z9BRFuesrtXeUefY", "6IC7IrkzhatHadGy", "TrHknEUmyvKC176f"], "name": "9DxEOcV9rWRRbgE7"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId '0dA44zl2pcO31VE3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'dYMjCit4c0SfS4k5' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "bOM18aciCND1Ks7Y"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId '6I2Oy6HFkjOWXoiY' \
    --body '{"tag": "GiWjhU6fKUWxVRvD"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'Q2Jpdjh1lXOuyFzz' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["gtarlymTC35kS6vb", "kw2mkLFOBG6Pjnqj", "fFjizouIxKMe340B"], "type": "BaKiwV36aCcJaByD"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'KFf3c4jIwvH3GqwR' \
    --body '{"subtype": ["8EWVKbOnY1GAyt13", "75q1BVthSRFOLivI", "y0qrxDSDJ6iYHq8l"], "type": "qY2K1SL4eQDlDP7w"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '5CCZmb2dS2FxjVDn' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'DrxeCAVTyMgKYjsI' \
    --limit '8' \
    --name '5azOjpsIDD5OIPlD' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '2HCOqNn1XeEiAj7T' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'mK8qd0rkAPhtgxMd' \
    --namespace $AB_NAMESPACE \
    --userId 'FizBlLOwJI3jXwv2' \
    --body '{"name": "7c0PiwZWBFQKFWrY"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'PTLMRKDIAJCOklf7' \
    --namespace $AB_NAMESPACE \
    --userId '0HByvH9Alv9vF0RO' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'dtvUDxwCe0ZMKiXM' \
    --namespace $AB_NAMESPACE \
    --shareCode 'CkDOW1oPcJVcEFsR' \
    --userId 'DrgjBXiIPVb45Wgq' \
    --body '{"contentType": "MFaaK9k90BXI0rpR", "customAttributes": {"SAIy2gYh4i2ige83": {}, "zHnqPCGSU6wKlt0r": {}, "shjqLyst75j8nyPI": {}}, "fileExtension": "Bo3Xww2A9XJTOzvt", "name": "TlfO3MhX0lm5WTKG", "payload": "qlCtrxxtCD0IEcKZ", "preview": "VkpzADbiQoMpezzA", "previewMetadata": {"previewContentType": "OMHUdweVJrnJnKJm", "previewFileExtension": "M9O4Ft0oXyp1uJ2u"}, "shareCode": "OjfgduR6OKP5NPox", "subType": "FdGY2HbfTzAEEm8P", "tags": ["siJbENcf02xHaS08", "0ySZI1GWMxrHSVzr", "LscZHJRUj0dRmOs5"], "type": "7b8kMA3h73W5ZvSi", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'Icezmj9igMH0olxe' \
    --contentId 'WPZ2F1Tj3ZyZlxaf' \
    --namespace $AB_NAMESPACE \
    --userId 'z9iMwhJqv9Bd1ORk' \
    --body '{"contentType": "8p4i8ssZV01PeUR6", "customAttributes": {"nqed1xUzwv0B0t9j": {}, "q5SF1EHRkSjgBKm6": {}, "irMY8R5FHMr74Bln": {}}, "fileExtension": "YedtoicbC7OKCOik", "name": "MEY1zkxWcitwvaxF", "payload": "Xj47jTG5COoosyIW", "preview": "FDEioOjDoiZZR1hQ", "previewMetadata": {"previewContentType": "VvDuZFvVukTKtamm", "previewFileExtension": "XxhgIrKlptVxrNR4"}, "shareCode": "EUJMth004BqrLwLx", "subType": "Q99jDbjbenQUDDW2", "tags": ["sXeSg5kA10kas4JQ", "PPsPcOT5GQ1agji6", "8fcbxV5COBRdjTj8"], "type": "2LGN81cQnWSF5Ywc", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'KTiRFVGyPTl4awZP' \
    --namespace $AB_NAMESPACE \
    --shareCode '90HCDZX6M5eSWwiG' \
    --userId 'JEmgLB2YvhudCGn1' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'DmT0vnP6gRSqyEme' \
    --contentId '8V3Vd8hUwIfVBQsh' \
    --namespace $AB_NAMESPACE \
    --userId 'h4NvdctavpOUWnTK' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'XnVVe4ZUQw8qnk6A' \
    --limit '0' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'KG8169oPnyjl8sOj' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'WxrC0e3ZlduIoq1S' \
    --namespace $AB_NAMESPACE \
    --userId 'sEZ46rTQ9SXzm1Sb' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'ZBjRkXwA0luCawOH' \
    --limit '69' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'vG02Z4zrrFnXvUNg' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'HY4rzyVJU4XqYH9F' \
    --namespace $AB_NAMESPACE \
    --userId '9UV8waRHQhLmnYvX' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'hYlWnK78AXFHMq18' \
    --namespace $AB_NAMESPACE \
    --userId 'u60vsBlSmrzPbG7A' \
    --body '{"contents": ["vsuHEdhCVPEYOM06", "XCnkjjnyWRMXjBQc", "XQ77T5LYneljjsK7"], "name": "9yZju0ymc8nHxGzT"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'Q2HcVhRHvWavqxFH' \
    --namespace $AB_NAMESPACE \
    --userId 'Syf9AhzrGlezFQxb' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'dQJ3gqqdABdeDCUg' \
    --namespace $AB_NAMESPACE \
    --userId '93LnovfhbcmV7tvE' \
    --limit '36' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'NSlLZNVvJIdLXWVA' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'RKbl3HuB9Me01JT8' \
    --namespace $AB_NAMESPACE \
    --creator 'VhxjBcoGeutm8730' \
    --ishidden 'kupHzFghAaJKibOe' \
    --isofficial 'pyVPDSa4T2qMoGeJ' \
    --limit '0' \
    --name 'K2fcf8uRHRGPZh1s' \
    --offset '44' \
    --orderby 'tV1e0mvvLQj6daKL' \
    --sortby 'gT4QKa6i3CYLmEHB' \
    --subtype 'mTghqGqeIhwbjlPE' \
    --tags '["yHg6d1O3KigSDV3C", "51P4oVqvOrHLxP5R", "ZkC3Aa0erKcV0hDE"]' \
    --type 'uePg50Z9qYUFNNJH' \
    --userId 'epGdeMy1kgFXFf49' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'qyczW3xQLzpDQsk9' \
    --ishidden 'GVS2Oxide95fq99V' \
    --isofficial 'wkgGzDLxm0BKF4eU' \
    --limit '31' \
    --name '7T7e68OsR94K5OzT' \
    --offset '96' \
    --orderby '5LBkc7uydFvHUdW4' \
    --sortby 'TME4ZZjAtzPIwsbO' \
    --subtype '18v9z9GyxIPeKIxR' \
    --tags '["MFalUvrGjVQRdoUO", "LUCskdJOK9fiDKFP", "V1atcSx8PEX7cgRU"]' \
    --type 'Uu9FzpBcqfyUmjZj' \
    --userId 'aEg3CRdKHzsVbE1p' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["NxSMLs3hoOogBy1f", "sz8sT41fl5hSJvBQ", "89GJzfY1wOy4Z9di"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '81' \
    --name 'eEJwzEBpveygFx5Z' \
    --offset '42' \
    --orderby 'bKFHksZFln6GAAGb' \
    --sortby 'k53Rs7JG5AFlIjTF' \
    --subtype 'TSG4UzHS5x5lFL0A' \
    --tags '["ueLViWCM4fXfTLj0", "PNzQJGlBZfC7YbUq", "q2T96g9zs9pHSQx8"]' \
    --type 'mWvGYy1D4nhVYEjz' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["cowk8JhVfoP8jpjt", "r0H8KIeqcpjlUHVc", "ZlY6jNy8nuy3OLKy"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'bJBsTj4Y2ceFPXYr' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'ODQwbvUr6XtdXS4D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'pZayn3n4emA9AcWI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'WXXYXBzbfU3kPNbF' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'xyynqqTS4XO0oUo0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '9' \
    --orderby 'gwPDnvLliDo1yF31' \
    --sortby 'fwP4kfSxM1igy3Xx' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'hc8aVsNmVZcLbYtl' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'jR2ImHPnikniTgIR' \
    --limit '73' \
    --name 'sn3iumODaEaE5sHc' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'zgbJwiOeHgqhqfde' \
    --body '{"name": "EOtNqlIa0MtaWJHo"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'Bl1SMxKvpENfzpST' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'Oz3NKIw7DNmO3vS4' \
    --namespace $AB_NAMESPACE \
    --userId 'Au6lLwL5f4awAhXm' \
    --body '{"name": "FydCNxduXxLi1iAj"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'sbR7b5wugv0FvnOj' \
    --namespace $AB_NAMESPACE \
    --userId 'qMFVnkz5SxhQ4eGV' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'rfKg8YjGAqKVskY3' \
    --namespace $AB_NAMESPACE \
    --userId 'FVFuKN7v2JQFwKo9' \
    --body '{"contentType": "Nf7ILqi58Tr1GjNc", "customAttributes": {"z0F4ebDlqCxbnjnV": {}, "YebKro5UDjzi5LBW": {}, "eUQUqCS5DRWN8uwS": {}}, "fileExtension": "XJo5F4IDMDdpJxca", "name": "e9rpp0EBcvPRLoFg", "preview": "VFfzrfWBh67fVNtz", "previewMetadata": {"previewContentType": "wctHWrSysqV4y23H", "previewFileExtension": "Dqj6831QOJaOhZA7"}, "subType": "FOPP6AnBSWBkwYip", "tags": ["8SZ9RdwNun5nZJNM", "YySVnpVBr3IzxZMB", "pEcIMXvv2wMQIaIL"], "type": "33gCcXN904fZVkcG"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId '2cKzEtJL7v2KbHWa' \
    --namespace $AB_NAMESPACE \
    --shareCode 'bT6BdeTtZmUnP9P8' \
    --userId 'uwJ2CNHW5XVLSJXp' \
    --body '{"contentType": "xll6Uyp9M02r9xSd", "customAttributes": {"9a5UkHvXwCHI6bmd": {}, "tkjcCLnEtZrtwOdf": {}, "zNqUuFPZNaskiNmb": {}}, "fileExtension": "T77S7YgJPAfL8AuA", "name": "zBkfswbms1k6ZP9q", "payload": "x6XsJsNirlqj04Gt", "preview": "r83gC6jMH8pLHdYr", "previewMetadata": {"previewContentType": "Zd40z8989evID4e9", "previewFileExtension": "D5rWnVGovCuNjXZs"}, "subType": "KPj2rEHrl2xwVv2m", "tags": ["Xz0x6KPgSVRC8Vtc", "Oqu0szwjHJPDtsFP", "rDbYgIugRkdqYnTF"], "type": "mBMZFKUo8g8Ppkeh", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'wTvw6MdBUVOs1bWx' \
    --contentId 'fLCqeUGrnaS9Q53h' \
    --namespace $AB_NAMESPACE \
    --userId 'FbmfgHOuTrPkGjWd' \
    --body '{"contentType": "05aXOTxo5O4JloyW", "customAttributes": {"0kRXOxYwtCJOIgKL": {}, "y6lmOjZcn3QeCW1P": {}, "h2mI90KousXu03ID": {}}, "fileExtension": "YECeAT343O3VdoGI", "name": "jnmOx1uYG5CJTP6z", "payload": "vQAZKtj14NNFcond", "preview": "uH06963vc0Uouck0", "previewMetadata": {"previewContentType": "4329rjql2BHUXKLJ", "previewFileExtension": "ZDqmrPkJD4gjDeNE"}, "subType": "ymieAbouRBb8rt0D", "tags": ["aNLFUiyMSX0lBCdy", "riqMWpRz8YCSw8Ds", "2XhkxN34u1EbXXOR"], "type": "UG3oLcLLIlVDFJS4", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'PSSxx3eVr5mCHMAj' \
    --namespace $AB_NAMESPACE \
    --shareCode 'nro9k1EHUKPulYJI' \
    --userId 'tCa8832YirWowWgb' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'uVblcn7qx6MUjxrI' \
    --contentId 'rpGeBSUQGlKq7N7d' \
    --namespace $AB_NAMESPACE \
    --userId 'pCRPRvJuuUR2SPyc' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'cYFHAJSwWo32mCBV' \
    --contentId 'ky3liioefovAuhti' \
    --namespace $AB_NAMESPACE \
    --userId 'lu80fAZh32891SwG' \
    --body '{"shareCode": "AN3kUclvRF3h1luJ"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'OxEJhKvI3lkOqxOI' \
    --limit '6' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'AGJg5Ry4N8XrTFgS' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'Ibm2VstLqGUkb4VT' \
    --namespace $AB_NAMESPACE \
    --userId 'Xd9vbbzJUMJzHNMJ' \
    --body '{"screenshots": [{"description": "sAAY6wrDLGr2tn6K", "screenshotId": "kzn9X7DxTq2joH1f"}, {"description": "QhrKmOnf5RiuAFSn", "screenshotId": "EWDDyZ6jbTE2hLoY"}, {"description": "GXtl7NKPEUch00vO", "screenshotId": "2kZbdpXlI99nRbp8"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'AR0LZvHwigYTdyrR' \
    --namespace $AB_NAMESPACE \
    --userId 'TSiXY4jtdAUed7sz' \
    --body '{"screenshots": [{"contentType": "C4F5OjvRIo4xSlfV", "description": "Vd54yIvchmIZfjab", "fileExtension": "bmp"}, {"contentType": "fJCSPeAdaqC1xY1l", "description": "EgoBPg5sQ04RV9lv", "fileExtension": "pjp"}, {"contentType": "ycuMmTDVWYyBbhvq", "description": "mi1deU9icQ1TOjSa", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'd7rPS4si0myrHDDn' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'h4A4g1DT7JDQcwg6' \
    --userId '9HywaOOBKjpwg66l' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'BHMGC7DYmqbHz4aq' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'mdKSwXtEysUrJex1' \
    --limit '55' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'tSyQZfNn2TKtPDfO' \
    --limit '54' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'zDVm9FHIV8cI9RZm' \
    --limit '96' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'KLmXoPzmKEAWD2GY' \
    --body '{"contents": ["3bMnz8uMl82Dho0v", "B63tIencIzc89tZi", "K8fCFVuWAXv9f1aN"], "name": "vGLdmTGdcEGm2ndL"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'JXzs8EJdzlkywKBP' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'N2e26SGpysI9lZVD' \
    --namespace $AB_NAMESPACE \
    --userId 'WCH3rnKJ4f2K4EVL' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'bWRWK5ch1f6Y66U6' \
    --namespace $AB_NAMESPACE \
    --userId 'DQwzUFEOWfjg9qm2' \
    --body '{"contents": ["d37svjvHGXIlApln", "ixO0eLGWqFYt5VwD", "Eafm27Uc3GQHhjTw"], "name": "odkMcHWjCdkBSze4"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'pPnoIqGFcdJGRhMy' \
    --namespace $AB_NAMESPACE \
    --userId 'IsEa4ahsIHQ7B0Sv' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '5BNF89DGDAnCCNGP' \
    --namespace $AB_NAMESPACE \
    --userId '0mZ7ZlVZ3hZGkMMv' \
    --limit '91' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'riHu4mIwUTglwUnY' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'OUch0yFC6GYJKflB' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --name 'Hf4ORfTT0Fy3ISUM' \
    --offset '61' \
    --sortBy 'mkIwpdSwGAt3GEBJ' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'EJgb7aO2D0FojdjE' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "6KghCLFlVnJACjGj", "customAttributes": {"MfgudjyU69qJCrp4": {}, "vFP5SH0b7BFX86UC": {}, "KEG7gVKPk5oREk8W": {}}, "fileExtension": "I2yJEhppPwOCnMPV", "name": "rCXvqoceCk9y3eIA", "shareCode": "DgRnztKiaThptvPl", "subType": "GqMIzrgY5LQKxBeZ", "tags": ["lgWm2PW1Bf5SLahJ", "9nefxtghMOZaTCQd", "CaaUG1DO18DkpHly"], "type": "9uYMwOkUE5ZwRcPc"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'NDnSSt006JQbYiet' \
    --contentId 'ASGHon5rO5WBRQ5q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'QLsmydGa09gLOt9o' \
    --contentId 'OlH59i06YnytsRiX' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"ajDfBbrG0MoNYmsY": {}, "fxXqnm2bil8wu9xB": {}, "hMFPNZXx7E9lgf7L": {}}, "name": "X4pJREd4XKVjYdq4", "shareCode": "d10Zcf9SJlatjbDJ", "subType": "kcnMzwRsHXEVdYTH", "tags": ["hmN5XoDkybXxK1FU", "1dY7RjTpv8Kp22M8", "fwJo7wkYrdeu92SA"], "type": "kCATWA2isAw4C7jB"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'Px1m40PC9Hx60kM0' \
    --contentId 'uAgZjRNwycFGUNJv' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "V4IYk5fJpnbJC7aI", "fileLocation": "KODMnW4en9toR22Y"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'QfAIAcSbfts6zfM9' \
    --contentId 'CNUBXZaqBe0VON8n' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "az3dfRcJuksiAXsF", "fileExtension": "aWP2xjiYkuQZuswA"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key '0MtpKlELrK70XZ5Z' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "GGD95MjDrsPfd2jY"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '90' \
    --name 'tpxAShmXEo4zCTiF' \
    --offset '19' \
    --sortBy 'd1d8E1lDUe9OeSMG' \
    --subType 'G8eFmAKWMmi0a5nf' \
    --tags '["z76elq2SVyE4KJFt", "2VasBA4PcNJA1FKK", "JNv5DpL1lyqQvWh4"]' \
    --type '5K5dTDP18fm0RGp4' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["DyxvJy3gJza0OeZn", "T8Ta8fH4q5Mtj4Rg", "matsP1ucRrao9tcn"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["EtkzcjCPZD0YRjqg", "DUNia5R8IwuZ3eAJ", "ohSVVmmUQcgckL1a"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'jQbcageNBiYUf8aj' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'z146anyTXEv38smK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'VmalMH3ZZlLyNZhT' \
    --namespace $AB_NAMESPACE \
    --versionId '94qbttZdib9sumIB' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'G87NbiGLI2cVYDYl' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "0AMpAiPjhV493ZyD", "screenshotId": "0PrOvrIol8hodaWz"}, {"description": "Bsulzyo9BgLzC7Tn", "screenshotId": "XdxvdRxuK1oH9FOW"}, {"description": "d2XMJEw7vb0KIv9Z", "screenshotId": "804ABQ7joXTnb5ip"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'fPyHPbAOzqws5ZMQ' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "GYvLpqCrC7KZ8m5b", "description": "3LJ2p61Y13jERk0y", "fileExtension": "jpg"}, {"contentType": "RF6aFcgFNtjd2Gef", "description": "1EZ4jZpg08upBSSx", "fileExtension": "jfif"}, {"contentType": "UYIsy3TgcCkeIClj", "description": "OQadBmAcd3JwjQxT", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'R14Lu5KOkMTIgmn3' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'hjHXErWSBMUjtL7F' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'tirhadAuCnikgX7C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'qBzyNw54NVnmpDoQ' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '92' \
    --sortBy '2CEdcEZRJhmuT2mN' \
    --status 'hqKnPcK2KplOMy77' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId '7dl98LMzuxeBT3FA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'TQlgIYamzYCeHR0d' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "eCjuCIyvxbGSgux3"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'GFZljhMYfmWcDhxW' \
    --namespace $AB_NAMESPACE \
    --shareCode 'qAaxQr3UpgAbzDTl' \
    --userId 'K0uPRQ6sMKr97WTd' \
    --body '{"customAttributes": {"AuUgsyiULkIICWuY": {}, "OqPQphfmAsjBejiA": {}, "DUyjBoXofiqiiilW": {}}, "name": "V5MUmPJF0Va3BCay", "shareCode": "rv9WsxtCs2hhSpDW", "subType": "eQHgx0de15W2SDmy", "tags": ["uXRy6enxzMFxcUvZ", "oyj55ucGuasAf1DK", "XYqKUvHHsfJT1Jfd"], "type": "eDfPRAdRe6fU6Zck"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'Kzn2IFxX1NgLuWvG' \
    --namespace $AB_NAMESPACE \
    --shareCode 'zogq6GFYIAQ63N2n' \
    --userId 'EDg1jcL1DJoHchVP' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'EwzuPVfiaHrSsDKI' \
    --contentId 'cxIku8ogCpMjeG9m' \
    --namespace $AB_NAMESPACE \
    --userId 'mebRbBJ7HE87y3M6' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'GxjY2qVM8DvtU26U' \
    --contentId 'ZDgZBFgHkKe2NzCR' \
    --namespace $AB_NAMESPACE \
    --userId 'mQYnfzSPS6JR7cLD' \
    --body '{"customAttributes": {"TSr6KFW0UNMU5Bik": {}, "r0qWe84pAXIsK66N": {}, "TFcgtAn9fJb7DykM": {}}, "name": "fwemdU9dnpNWmOeU", "shareCode": "bPE6jmqiMdNBC1Q9", "subType": "or3UDYVBz73X4GvK", "tags": ["PzJ5msIylpat4jbo", "dIymRmuQ0m0kBxIb", "AKcnlkByeBNVd9AG"], "type": "MU9TIUEz2cFvRCv3"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'ANh4FUAgTPBV3RRz' \
    --contentId 'KK5jdcIbAoayGcdo' \
    --namespace $AB_NAMESPACE \
    --userId '76ZcOqZao8Poclfg' \
    --body '{"fileExtension": "eBYKdb8OjH62r9rY", "fileLocation": "CgRCbTr15l7BmBfO"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'xP1TujavC6qrpIe7' \
    --contentId '0lLomZCrS0TXfJ6I' \
    --namespace $AB_NAMESPACE \
    --userId 'jIpyHHDNKDhJ0S6z' \
    --body '{"contentType": "eDotohCQarfyTzT9", "fileExtension": "R8Pz0QQjW1wD5QpQ"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'ugMlSOIH7GUCNe89' \
    --limit '54' \
    --offset '57' \
    --sortBy 'umo8BgPapWtKYZy5' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'YyOEkPiVLHWKnTT5' \
    --namespace $AB_NAMESPACE \
    --userId 'xYryErRxDZcExpfX' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId '0ZnjLnBjzEDBn5x0' \
    --namespace $AB_NAMESPACE \
    --userId '2H0Biqv8Byn5fb7k' \
    --limit '78' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'mPIY5GiQHa3vNx3D' \
    --limit '44' \
    --offset '67' \
    --sortBy 'ls4ctISS91I32UfO' \
    --status 'BrHW6ik00ZDxG8zj' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'rOYTZ4M18o4xyypq' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --name 'a5Ql9RL1FunqgXZC' \
    --offset '67' \
    --sortBy 'CXh8lWCPw5XsEpMW' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '64' \
    --name 'lTMIKdHgd5r7KGHd' \
    --offset '22' \
    --sortBy 'oUUBu4QhlsiMY1aZ' \
    --subType '10mpHat7idfZv4X3' \
    --tags '["aDGDQrKyOOOa6CQF", "iMGFpjelWaDWDj7u", "f42ed1reSHShozVD"]' \
    --type 'UUIPenCpVtfL6g4L' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["5ceIATpiTsTqO1EG", "Ezbr4a0qyXh7CsHL", "ykta9m5HjGpafmYG"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["s1uHcqJgnw4Oa1Bq", "0HC4s1HriIDh4AVO", "X06qBJrMFOFSKyEI"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'pcbnZg3taKF8Tx0K' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId '3YnbESCRUeN0dfjC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'pKNtiTwchnr57K9a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'xusPu4gucJDk2e40' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '47' \
    --sortBy 'fHo2Nz5dwmM5DUAH' \
    --userId 'VW91bUpOqsAvIazV' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'G7S2qWKeqxGYgxlq' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '0' \
    --sortBy 'f7DMU4Hqj6RdemAN' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'BTn7rN7f4kHYXd3H' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId '9vYh53vQ2URkDRhJ' \
    --namespace $AB_NAMESPACE \
    --userId '4t28bEpevnobdZyX' \
    --body '{"contentType": "oo9y81X9UsUFw5NM", "customAttributes": {"vYNjxHjWu6uhDuCK": {}, "zSHxCQCB7FsRnYO2": {}, "i7wFgaEDdFp4VcFM": {}}, "fileExtension": "1ASvtKM8IO8z3drn", "name": "WXenTsn8YCQwoBLH", "subType": "ZnWs39pYBNrnaUqX", "tags": ["rGGxIcIkmg6OPfuM", "tt1USBtsuZaC1Jvp", "rsTkYXtFg0GCdmeT"], "type": "DyThb0hiYDK91LpY"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'JdBzp21xEMzcpaJu' \
    --namespace $AB_NAMESPACE \
    --shareCode 'e25ZmqlHMqtXKim6' \
    --userId 'myrhtqHRrDtzenE1' \
    --body '{"customAttributes": {"6VBcGXF2kiuOiX3a": {}, "F7N7jlP833gnuEKc": {}, "xkgKrGByHuL1sBR0": {}}, "name": "HmtYHdTl5fiCgfTn", "subType": "pITOl943DpbycgWA", "tags": ["TdWvYAxtdnLml9v2", "v1iEuc8PTDw4j5ih", "WALDWwnfVhUYFtsF"], "type": "ci53iHe29BIWpX4K"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'xJW0mC8zwxvId1gJ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'V6SW0Szg7CIrsu9l' \
    --userId 'WHbnMXBS8VboTVsh' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId '8Ih0b7cHcSAg5vLq' \
    --contentId 'UIMQ7uqqyVcOz784' \
    --namespace $AB_NAMESPACE \
    --userId 'AmG2tUjI31xLbP0L' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'Fw079HlDFrOLHnzw' \
    --contentId 'ON1Wpr2RcgAA2tjc' \
    --namespace $AB_NAMESPACE \
    --userId 'sGHvLfj5FJWRxz2O' \
    --body '{"customAttributes": {"2OccP0cQBHAFD7oK": {}, "KCgFn3fkuBc3dGVr": {}, "VR06b4SesZ5DawMr": {}}, "name": "uYnUs5snHsJ82kjn", "subType": "L5eotSOoTCe2RUKD", "tags": ["3mnJCv6NiQHRabDE", "wdSJMweuwpkjYrRE", "j3PJEryCUVkm5ru5"], "type": "WleBHgvy64sp971t"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'd440Hbsxkt8lVhQo' \
    --contentId 'SjLmy7WPdVjYyVJQ' \
    --namespace $AB_NAMESPACE \
    --userId 'BXqHM3RwmxbWE6oc' \
    --body '{"fileExtension": "Zm1q3dS8V0L3skWr", "fileLocation": "NO6U72Z4sgGioCzF"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'U3UB3R4hxjrbgUKc' \
    --contentId 'bEYrothfXQsWEemL' \
    --namespace $AB_NAMESPACE \
    --userId 'UUVwnlyq4RrR03ow' \
    --body '{"shareCode": "Cirf7Cu07FC2UGL7"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'H5G8kppXuW3i3VVb' \
    --contentId 'QEW7Jg00vglMVXMb' \
    --namespace $AB_NAMESPACE \
    --userId '6z7mzDeR3tBB7arb' \
    --body '{"contentType": "JiOinLSMOgM3J8UU", "fileExtension": "EKlOTk5uy7YCTQQB"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId '6Ys9xbqKdLiVaQz7' \
    --limit '72' \
    --offset '14' \
    --sortBy 'DkT7TSXr9nGnvRxR' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'FPhlmwEslsCB0ztN' \
    --namespace $AB_NAMESPACE \
    --userId 'fcc07Gw6NSudIoUg' \
    --body '{"screenshots": [{"description": "NJ6Fxttr2NrCNnRm", "screenshotId": "PMlDPHS2Dwi75Wjb"}, {"description": "DJ0cLAJ1RwkuVwlM", "screenshotId": "84pInLC0t9oQUHNL"}, {"description": "zec5bywlTesFZuPR", "screenshotId": "LOvhBYrIyBvS8bBo"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId '89AvDbOyAdHjIM1J' \
    --namespace $AB_NAMESPACE \
    --userId 'rHuOkM86VRQRnQHk' \
    --body '{"screenshots": [{"contentType": "4FhSKq09ScPiGYbC", "description": "D0PFkxXpoBufJQbT", "fileExtension": "jpg"}, {"contentType": "ZmE7WidfkgHezZDp", "description": "8W6xXWYoJOADxBrk", "fileExtension": "jpeg"}, {"contentType": "Dku2cYo6pRPE0ioQ", "description": "rncxGpxadaGhU7Be", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId '0fjJIyRYrUE6XyBn' \
    --namespace $AB_NAMESPACE \
    --screenshotId '5LcdGYVeead3Jjfk' \
    --userId 'UveYtSRBiyrVWYQi' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId '6FasHedlRRsqJWui' \
    --namespace $AB_NAMESPACE \
    --userId 'ohmpnkH5FC8wSHX9' \
    --limit '72' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'g01ykDXATWx4FTWD' \
    --limit '75' \
    --offset '67' \
    --sortBy 'nNrUnVHW6lsEyO53' \
    --status 'k4P3URkpAlvbESPs' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'WK4wUWOAol7BACam' \
    --namespace $AB_NAMESPACE \
    --userId 'Z5tmGQdWol6dAToO' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'ivgPYexfrjWh0dDc' \
    --namespace $AB_NAMESPACE \
    --userId '4YAXgaKr3SLsmqQV' \
    --body '{"fileExtension": "WdLwAcnXimaQGlGt", "fileLocation": "4yMvihtjxVszlBje"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'L1U8VdQW8l9J40yt' \
    --namespace $AB_NAMESPACE \
    --userId 'pMlGBpGBtjBMNoNp' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE