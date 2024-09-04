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
    --limit '91' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "SDmOQkwOiz7h2MJ1", "name": "Z0Vw36MurCvMEaFp"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'GAUfYG2V97ZjtOAp' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "xLvNfxzrPnbEi86i"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'yQp8yuMy7dIrBhaK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'IfBxzZT95gwWBCps' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "r8d8m5wR6IaimCJ6", "customAttributes": {"g9MJQ5oOLDGuR3lL": {}, "1zxaoimUMUNnj6zU": {}, "PdR763rDbR7x8x1i": {}}, "fileExtension": "MxpywhdFntzRxSLj", "name": "QpgzbzlnZ6jjYw7p", "preview": "nLntGnsSgfKS4nzf", "previewMetadata": {"previewContentType": "JxZcr5M4ypIXdSyW", "previewFileExtension": "NMYtsuRkp9OBnHIb"}, "shareCode": "NoThHqYcpXy4oF8T", "subType": "lGQ9RfCQZaaSGOgZ", "tags": ["kcahsJ5jzcCEL0cd", "SI3l51reltpnCepJ", "jl4mQZ2wI5VkUr6V"], "type": "iWAxTbhlRCxr9KmN"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'WExjzT6f9Ww8d312' \
    --contentId 'Cn9lpwCmF1cKp0jD' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "Zvd0vZ4WFaCny6X9", "customAttributes": {"d2veamC25tMn4CdS": {}, "DNViE0rnf37f1UXC": {}, "fwyZv5Um8ARjswYv": {}}, "fileExtension": "WxtmrP5r3bTHjowg", "name": "G7oK9JlrSNvKosv0", "payload": "awPoBIOhdzc9vnKJ", "preview": "ubaaDZUj7Ahz3hsd", "previewMetadata": {"previewContentType": "zU2NrUXBEJ6GkglO", "previewFileExtension": "YJorjBPuEXy6P3jH"}, "shareCode": "3BKKSQEd2UGMparv", "subType": "Q1xETAhR4yi0zi30", "tags": ["8uZmdmu8gZ4M93KJ", "wgO9udPt6GCJ6wH0", "GdbEPYI1iD7vzWnh"], "type": "qfn6KVDloBeZd4fN", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'h9jaPqvdJiTj2E6y' \
    --namespace $AB_NAMESPACE \
    --creator '60xhelBj7CPQf1Ih' \
    --ishidden 'X62gpzfMFOIQLQXS' \
    --isofficial 'BAghlD1qByM1yY8k' \
    --limit '11' \
    --name '5CV9mpvjB1mhyqon' \
    --offset '43' \
    --orderby 'LysuEuNTr3m4rwtl' \
    --sortby 'qx9JOIfBZeNHdnYU' \
    --subtype 'ThvfyHjvot06tQFK' \
    --tags '["VGZps0PZxMXss4c9", "dVxMiyEADbDh67nk", "vC42VckGq3JAIPCd"]' \
    --type 'hULUav5cAmvwNfWw' \
    --userId 'KTvN9vTrgiqjaSx8' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'UuONVq8pNyzUxrM6' \
    --contentId 'yJ6PmRLdPLHUTn13' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Nn0UeqfvLO57slSb", "VAohFnnFGlDEFCBK", "EzI28TfTQo3LRZ2l"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'MMoibSuin7y3ud3R' \
    --ishidden 'rwVSZqkxfV96vEXS' \
    --isofficial 'vv3jQMsGEXwofSGv' \
    --limit '62' \
    --name 'nFmYHkD7ZbRJ3pJ8' \
    --offset '59' \
    --orderby 'o2vZWYEhBwx7DUpi' \
    --sortby 'rw03UFd6dlasL7VC' \
    --subtype 'AVggtoLVw4eqJgwY' \
    --tags '["AnPkdKk1VyywbLYG", "O32f79OaGyzndHKg", "3jTIEdUEVaXV3JEs"]' \
    --type 'PgmmHDDgjZyzZVfB' \
    --userId '0Wx5Z4F8NjhzslCg' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["WPxI5CoYj6W3ySqo", "UzcBMlaMWATWr9Zh", "NwmjpEJpQZsy82rI"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '0NyyPNGcUd1JOPfO' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'XkdMuYj51hKJtyvE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '76fjcOZRmUKHT2QD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'jLQmqGFYyHh7YbLb' \
    --namespace $AB_NAMESPACE \
    --versionId 'NnZuP1nxd8JJq6Nj' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'PxmPUMjIbzTKShO1' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "sp1ZlJm35k2cmUCH", "screenshotId": "GZ2r6EpLhlG53bys"}, {"description": "txlW35fcixAynQdu", "screenshotId": "Ky8f0IpOEc9a4tNr"}, {"description": "DU3kLkptRepfzKAE", "screenshotId": "OAb6cJbtgEfKQRoC"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId '3KuMETMv5HW2DrHy' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "0brpXBFPw7DivRBC", "description": "noOaxh1yycV0m0mX", "fileExtension": "bmp"}, {"contentType": "3ADvh7CEVkRvuW7T", "description": "Nrkmf3T1fsmXwkX3", "fileExtension": "jfif"}, {"contentType": "16RayMj82qyD14kT", "description": "kHC5e2F7G3Eajjj5", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'BxTHNyQTnxEIEeOK' \
    --namespace $AB_NAMESPACE \
    --screenshotId '6Jt538D4Dfkg6cbG' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'BZ0uRyX0slXC8YGR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["MUADcK9PiqoorO9R", "KSr3ugSRMVOmZvTT", "j0nFKfMWnMs7MZFn"], "name": "k8rZAq65j2tN8SU0"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'oc8Ag3qFTLqbA3ln' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'zZKgpuI7jTomAPz2' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["G3cCca7AsgpCKqRS", "cDqGVAZb1t6nJW4e", "OGi2fG0GAMPFWvdr"], "name": "vPeCkxmGehmFyMek"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId '80TSUaSYpqYmd63b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'hjIUpSEdD83jV1qq' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "Juo1cp9qiUiNs6Eu"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'uZQXVmpifqZOQ2Hj' \
    --body '{"tag": "lbBcsC3CArmF2QdH"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'JSUeAMxZHdjlUGvT' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["yAIV4VVHjr0frU2M", "zR8b6QkG4xCgDVbN", "Jxtuf8vt4aEU9gnY"], "type": "V5rrjCw3mquLY9Ve"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'CN0S6pCZ4NSmplU3' \
    --body '{"subtype": ["nYzr9BOUCPla2AuD", "puK6wz8qXsU8DtLd", "CeJ6w5oaWbFBdZrJ"], "type": "p1hGdPYdPdFDQUBX"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'rBl41VD9KOEure1k' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'j17EsfVh6Iq3TkLS' \
    --limit '63' \
    --name 'qijfWPWKJHxt0omN' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '4lJmIoX2WYbt5od9' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'yMLBLZV12Luil3xd' \
    --namespace $AB_NAMESPACE \
    --userId 'oKjWjbUcbO60AbII' \
    --body '{"name": "pwi1IoWmqnUN46GC"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'WPUtvMc0AaC8jONc' \
    --namespace $AB_NAMESPACE \
    --userId 'U94f7B8B9XaXcHoP' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'r1Y0328TzrOeTzel' \
    --namespace $AB_NAMESPACE \
    --shareCode '5OkxcUrYhOIkHupr' \
    --userId 'iAo4TPSo1ijoGEnO' \
    --body '{"contentType": "RIvexeK3FRpA72vD", "customAttributes": {"hNjZgsCLPX9YdAcY": {}, "hOxJLYiEvSTKr5BN": {}, "pFDkKpNskeTB06Ks": {}}, "fileExtension": "z79lo1zb7vpPS04u", "name": "zPUvElyO3IGhZ1jH", "payload": "fJBCxKcUFkQay2Lp", "preview": "3tRQRPYcNMeoO5Eo", "previewMetadata": {"previewContentType": "BozPOOTh68xjna2I", "previewFileExtension": "SCnXUc0dF8nrC2OE"}, "shareCode": "LAZ3aQWT39dcHMRU", "subType": "UlSpo2faO9xMk6sE", "tags": ["oi7ZsFZnFPnOspz4", "Ps7W1ls9ksw8d7pZ", "KJosGx9tWJvErh0h"], "type": "JAmKDq6mDJdNE6z5", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'gDjeHqEh4ykG9DWj' \
    --contentId 'kTuBcghtbsAsi6jD' \
    --namespace $AB_NAMESPACE \
    --userId 'LZ3ArzxFqvmN2D95' \
    --body '{"contentType": "VRjVAvo2ARWkF7Ls", "customAttributes": {"v2l8LMs0TW89a3KP": {}, "PsRrJ07NIi3jnxNe": {}, "5KGuNBrDcagPsndn": {}}, "fileExtension": "c67dawWpFao49zWz", "name": "nzI4r4EigJvcyJn1", "payload": "hBgTw5sY2B4ePSdH", "preview": "mg0Xl9CHGm2YcFYp", "previewMetadata": {"previewContentType": "pfqF4icqRfWqnSS6", "previewFileExtension": "q4mmy64Zj3GtHmDI"}, "shareCode": "TqL6gL1EKKXiTJB5", "subType": "MOut3ttRLIaxhipg", "tags": ["gTM8nFXdr7vRXZyv", "atyFkitafOHMOqj5", "0L0GYdLfjEJXSMId"], "type": "xlPV2S6s3qnLZ0T2", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'Yk6AicyqYIeovyaO' \
    --namespace $AB_NAMESPACE \
    --shareCode 'RBJtUszdNjOHOSh2' \
    --userId 'MGcHA3T3RqY5dEJw' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'Pi2TBecRhXrLQmND' \
    --contentId '74IkwAiPoSqoFt2p' \
    --namespace $AB_NAMESPACE \
    --userId 'hN3HaNoy86r36sR3' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'hNqsPaz5RGiPUCJ8' \
    --limit '51' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'CYMF4IvOWghjskQt' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'qXIZUMJ5cifrajOv' \
    --namespace $AB_NAMESPACE \
    --userId 'UwyECa7XDHEdhBxW' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'vrO7XZ6QyiVxzCxV' \
    --limit '37' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'zn7LI9U2wWMk7usk' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId '4qG7ushdqnth3sDD' \
    --namespace $AB_NAMESPACE \
    --userId 'jfMCn0GBPI7okE9G' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'm3T919AIj9vvddVm' \
    --namespace $AB_NAMESPACE \
    --userId 'KusDQAcKLN22CYEq' \
    --body '{"contents": ["mZksXjl1APytLKS6", "5oZwq38KNQjoZyea", "22uBJD1lXSE8SuXE"], "name": "jcqxOC9OueI4CSKh"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'KKatn33WVDJT3dQ3' \
    --namespace $AB_NAMESPACE \
    --userId 'rZ68cdajDI99y37P' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '1PTwR6SSfIgnxyEX' \
    --namespace $AB_NAMESPACE \
    --userId 'hlwY1t89Z0oyXdej' \
    --limit '46' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '5twAjmSdylULFHGS' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'iqRPRraMRHhaPTpm' \
    --namespace $AB_NAMESPACE \
    --creator '2OiSkmGG400z3tlt' \
    --ishidden 'IWo1dDdYDYP3TP6w' \
    --isofficial '7LpKEMLOhKyjWuLK' \
    --limit '93' \
    --name 'heiYMjje4XQTsWZd' \
    --offset '14' \
    --orderby 'JFdj7UG3RKOiHx3e' \
    --sortby 'nltW3e9V4qaior9v' \
    --subtype 'MQzOqNlk6bfY2LUV' \
    --tags '["GjUA2suhKTsvEzsq", "GNw4qLzFPSUfnB2f", "hf73tr4UMTi2XQja"]' \
    --type 'DpqSUvLVt7yPbBPU' \
    --userId '2cB9YBjMGPOrXFuL' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '8dWpjwmNCpvMvtJg' \
    --ishidden 'xy8D1tuKWzFHrgyE' \
    --isofficial 'wGfn9Pd5r767I39j' \
    --limit '71' \
    --name '7v21LUQb8S1vaf1k' \
    --offset '59' \
    --orderby 'g5941f3J4qw2xEm0' \
    --sortby 'adueDbk0TRX1XC8E' \
    --subtype 'J3qZwW6BOgARZK4d' \
    --tags '["TJHIr3TCPhURmhFm", "i6O7QMGlR1deoZkh", "nO1ncELo8f91VIC3"]' \
    --type '8ql0AUTQ4PEuOGLh' \
    --userId '4LIRfDEUgFJZ8XqU' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ppQ00Q7f4aJpYPdv", "qlmA4279u573SlGs", "1OMtEAZPIBFOBVVq"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '19' \
    --name 'B5f7HwlyCib17RnG' \
    --offset '97' \
    --orderby 'PJl0Z2xEJhNt23E8' \
    --sortby 'dwgA3CyojJfpvN6m' \
    --subtype 'yINZ43bcYKNDEZsf' \
    --tags '["lJuckysttQz9baDR", "NY7h3NLu7orzpDaX", "hVUClRSpv4Vhdtjl"]' \
    --type 'tuaZyQGvWC44PnQE' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["xXNXY14LdYlQ0jXJ", "yW5j3LckluvyzL4W", "kqpabkriRTPpsq3h"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'haW0RgZ32ANZNpTk' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'AqOD57b2d7tvZYaB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'kZOGD6bwJMteUmYU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId '7SakHb41npvPap9v' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'ltV8oE5JKZzgOnRi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '81' \
    --orderby 'pzoiQ7yMu1szbAA6' \
    --sortby 'Wj3ufmP92SfABKBZ' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'xtTEHVT62HLz6AUB' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '1ymOIdEjkXuGc8DB' \
    --limit '29' \
    --name 'xMnETq1NqdjrUhCb' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'qyarvmjTXfxPzQ93' \
    --body '{"name": "dEmHlHTxQ4hH82Yp"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '0fQncxYm7cPQ3u0n' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '2UCk9qbvslDXUiUz' \
    --namespace $AB_NAMESPACE \
    --userId 'ID44tNIXNhvI8tBL' \
    --body '{"name": "W4Pe5S7vgfscCtuB"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'csZPru5plIdHK8bO' \
    --namespace $AB_NAMESPACE \
    --userId '4v3rMEsxiYwuQntm' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId '6SZyT6IAA7djW1Sg' \
    --namespace $AB_NAMESPACE \
    --userId 'qlrCXGbBHtS2XnzD' \
    --body '{"contentType": "FNvMJjlguhAwV1tS", "customAttributes": {"KUr1DhVVxFnwSJlB": {}, "Rb9XrIqku0OxtAWS": {}, "7LiRm27cfZa7NEge": {}}, "fileExtension": "wWgISvUsd2gHWgCg", "name": "INTLPlfhdjIYR8Cj", "preview": "plICCWXSGvnhzUeF", "previewMetadata": {"previewContentType": "kiZjvhSwEA3h6yN3", "previewFileExtension": "K7b8WCi0ObYrIB8h"}, "subType": "8I3DSJTiiAp6o1M7", "tags": ["JOUbzkXB5U5rKC8e", "NPoM0WjD88hcOZvI", "nJ8WkCxNkRODueHk"], "type": "4AOq7GEX39YK5Fn0"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId '9fsycruEbvwbviJy' \
    --namespace $AB_NAMESPACE \
    --shareCode 'nHNJEyRZFs2kbTNq' \
    --userId 'kLbo14IfPtbQYkVX' \
    --body '{"contentType": "XDWKwr3V8APVz1Ln", "customAttributes": {"FVHu0uAw2XHNGXpL": {}, "1GJIKRiIz8JUlUN2": {}, "Cw9OrCkkwjsYobSH": {}}, "fileExtension": "uwx9moTLeiLuKkZJ", "name": "SJYlsGpIFWMLEQrv", "payload": "EFjquYDHvhQLbsSQ", "preview": "PHjw0WF8IzzjdOGN", "previewMetadata": {"previewContentType": "fDvlA4cHin4cRx79", "previewFileExtension": "6mM8PdsrGViS1pKv"}, "subType": "I2B7p9Q8ikyBAKYw", "tags": ["t0gBRfGc4vYymkdn", "9M5jtGojdu7WSmOd", "EeAGVoawe5mzkYD8"], "type": "ogg20OzVgsOCFVwB", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'MlG3ifEt6b2RWLME' \
    --contentId '65aBAat2QNK5t8l6' \
    --namespace $AB_NAMESPACE \
    --userId '90lB77wG8dlfLszW' \
    --body '{"contentType": "D1494hqKkywo8Wpg", "customAttributes": {"1KYeCt5i5V5ztowv": {}, "E5SMlx3bTKDWA6ok": {}, "xga5K1gqbTXFnixf": {}}, "fileExtension": "pd1b047uGTIRLRlW", "name": "lVmuM787o25wqbNC", "payload": "OVJTf3ZhwUiEpvGy", "preview": "uoQYm9IriZ7s2KqC", "previewMetadata": {"previewContentType": "4Fdh1bmaJoIIC9Lu", "previewFileExtension": "jUnteJZmWTCgBurb"}, "subType": "NpiHGOx9iiovgRih", "tags": ["c0eA1nDAf9LmpRv5", "e0Dja732BWKs05lJ", "WAeHCBITGlZttPe2"], "type": "5WfzmeKljOji2Yno", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'vLoEB8EAMCWR9Ih9' \
    --namespace $AB_NAMESPACE \
    --shareCode '7UTEKyPhTNZAyCCB' \
    --userId 'PNu6lDw3g4DzsUi8' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'CTGqJHHK7E5vn6m8' \
    --contentId 'sgkbiMZLJaOaKFMO' \
    --namespace $AB_NAMESPACE \
    --userId 'vPWvq94IRrLATgN0' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId '1javMvskUanEQWpj' \
    --contentId '5EWrE3icDIFBaJhq' \
    --namespace $AB_NAMESPACE \
    --userId 'cLzIMVjye5vk8q6D' \
    --body '{"shareCode": "mVI90uApFKSQonzP"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'dmFfqyNLOJ9WHnvW' \
    --limit '76' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'qqmIms8vcrtNo0us' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'Qv5MR7bYtKuVesKA' \
    --namespace $AB_NAMESPACE \
    --userId 'qQZUs6ZHDnFJESPj' \
    --body '{"screenshots": [{"description": "4VuLWDh7t80FndSU", "screenshotId": "H5rKU6Kln5OMcO7d"}, {"description": "TRIuTN8Ops72RydU", "screenshotId": "NUM3Rib96dPKTNhH"}, {"description": "EfNtSfYpQl6YArZs", "screenshotId": "xjfVurytw5PCkO3R"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '4G9ewWOMVZzS2fA1' \
    --namespace $AB_NAMESPACE \
    --userId '5XpjQP48HaKrIlWn' \
    --body '{"screenshots": [{"contentType": "Lcsf7o4sdlIObqfh", "description": "env8v13cGAsz0Ln1", "fileExtension": "png"}, {"contentType": "ZxHC3bKzpRqLcxuN", "description": "ExGCCcxCTz7ITFch", "fileExtension": "jfif"}, {"contentType": "332z5Vfzs6wwnNQC", "description": "JnUlzeuwkdDzRCNL", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId '4nJHYcmVa0Flpnlt' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'M8G0k3ykvSIo0Jhl' \
    --userId 'u4TqtqbVXFkqeuLj' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'pISiVum2p5TzI5P4' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId '5NNZa0kHND2yUuCn' \
    --limit '98' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'cUhRGwlYTl9gnOLx' \
    --limit '68' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'cS2wttsi61Ug9IRv' \
    --limit '26' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'voh7u0VtkRRcxuBm' \
    --body '{"contents": ["3cudqFBnJSVQA4jA", "mpw7IpvqUq8WDxCV", "Qe1FKV2WtQl56cJy"], "name": "13LRjsCmwC7fKQfF"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Dvkapjqzp85sOz97' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '9Hr1waal8hjT3PZR' \
    --namespace $AB_NAMESPACE \
    --userId 'inDHD8ifnA9XYjsR' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'lEp9dtYq0pq04jxq' \
    --namespace $AB_NAMESPACE \
    --userId 'QD7IOKOZ9ABUHXIb' \
    --body '{"contents": ["dS6TraxnmP3h0b59", "n7Xd9cHQ0jQB5q84", "dyD3xoqpBOAUIAHe"], "name": "QKEt8iQauSbjfQvq"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'bt09cowL51LI9HX6' \
    --namespace $AB_NAMESPACE \
    --userId '7xxcKncl9jAfp8bt' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'spRtZGx6lrQOljsX' \
    --namespace $AB_NAMESPACE \
    --userId 'kg1I2RzFcvjmto8o' \
    --limit '59' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'zoMB7xeYqEICOKLh' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId '2VgVLewxfpCLZ6tt' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --name 'oPtxI5R0fYgw00OU' \
    --offset '48' \
    --sortBy '8nMvUKZ0A9fFkw2K' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'w45sUHPJCqosWexK' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "HPoLdiWBuSgPZ8BA", "customAttributes": {"tHiolvp0GWuYI4sq": {}, "NAbyqg4lcwcy0xQE": {}, "U5EPhBNDKoSyfWoE": {}}, "fileExtension": "fUtwNE1TjkJOyT2O", "name": "4HmhpVPsiwmahxlD", "shareCode": "7dDm9RoUBlIOUxaM", "subType": "DowiHUR92rKha8RG", "tags": ["L6AzRsbN1iQZwTch", "hw009JYeL75yQ3bK", "GtgXL1ZIgVoyZQUs"], "type": "6fXkTklFUPrjYtTu"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'eAG0neC68ZOLnBVa' \
    --contentId 'bRU3oB6unP10BU21' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'OHX0ArmWctZMTkVc' \
    --contentId 'wq9cg6rgw8OIKHsM' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"3Cwrd7LsZMmRF2D0": {}, "RhQgtSHrmcQxXVe0": {}, "PkOLGhogEigW2kqC": {}}, "name": "JjQrRA9Sgtu3XNPg", "shareCode": "b4KUYKcv306a0JN3", "subType": "k2fnUvVSvEi7rz1Z", "tags": ["VA4aCbdj3ZEsxP7q", "D75o1seKVWd9lZ2B", "35zOIKurkeRcKjkO"], "type": "eVInt48v0aa4jXE3"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'uNjxZxEz7OqEAAWM' \
    --contentId 'jRbw2O0u6ihyRjfU' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"tyiDfXtc9NTqbKhX": {}, "xMgJ1u5aPaGdlwzR": {}, "I2DTu4xGqHgwirty": {}}, "name": "GEri0IgRj8YMUThB", "subType": "oovJfZI8FxOILjsU", "tags": ["inahGviCdBRi30tq", "opiAeONmDBzXa0mi", "u86L88KdFT5fzMaf"], "targetChannelId": "6SyyIojocJeUs8qv", "type": "RS3anhub5IcK6lmn"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'f0w00hdTpSzNf0vt' \
    --contentId 'YAB1CjCTleccLHGh' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "UNVadupDRhlg4v0E", "fileLocation": "Lr0vxT8UvmbFqFki"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'khVGs76bYZD6TBuP' \
    --contentId 'FZDqZpO8PYb6uD3P' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "EGICg4PtmZORXKUF", "fileExtension": "hZ0U8FlG4fpQuOWZ"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key '9pQaUtsetgZGIQXv' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "vFN7hO0HtqR3QtCk"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '78' \
    --name 'VrXkkSwoBP1t2ltk' \
    --offset '92' \
    --sortBy 'hbOKQp6rPEm8bWH5' \
    --subType 'VxDIOTV0l2MvYoqj' \
    --tags '["L4UgC3zlwZHHlWrP", "0YHij6nByfnu0RrO", "ABDXaD9JJ3TFvV5V"]' \
    --type 'CJsKjgvEDOv5U45I' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ktIICyWlLGActF9s", "EzWFSs50sVUTMQp7", "MGICjUNgylGZz9Ev"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["8apwnctoBK8KXGQv", "zDlEXvMZXvitxMBB", "liSo9tChBCT2zGt9"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'olWU7yQwSHkIgYRv' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'rEcUx4weAghiTUnz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'sXeeENmMuVcJ3SEw' \
    --namespace $AB_NAMESPACE \
    --versionId 'wto3Ve0RZM6z6nvL' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'ov0kD7gX3JEcqb7j' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "uoLuVQxMzbb2ypX7", "screenshotId": "Bpb3p6q1mXbbsfMU"}, {"description": "uG6r6XIX97ur1TWW", "screenshotId": "QIBNiKfFdhBf3n3F"}, {"description": "kuvPrCkqNjzu8znb", "screenshotId": "hNZr7dj0USpRJCYW"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId '0nl92LYVp5db6cED' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "uNsmpatMzEZ61sTn", "description": "qMUO4YZR6EyrLldi", "fileExtension": "png"}, {"contentType": "y6MONNhYwEIetVp5", "description": "BAAKDTEIHFHkiE41", "fileExtension": "jfif"}, {"contentType": "kjgV44BD8xo4WzG8", "description": "va3qNhkRglmnJf6I", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'nOdVmN48UPi0FPoG' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'MwqfAZvWLXGQOdKA' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'dk3HcsMLCX6OCT7T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'S7IkjQsTNswUlPzH' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '100' \
    --sortBy 'iYYhErb1i2WVxa0a' \
    --status 'Sc5xK6NpOoLGDw0l' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'rsq0MOFhC2jZVtov' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'p166i9XoRLki4UUz' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "W4pMF7r8fnWTgjLp"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId '1NLzOpPpVXa2SvKz' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Ez0rpNIcmCFqZYxn' \
    --userId '9uYkqSIS7Ejp5Rcf' \
    --body '{"customAttributes": {"Esv4Ekcfdfjoh5qJ": {}, "DLL5WxyIWkBVIT9h": {}, "PLNpqSEHg77cTl2C": {}}, "name": "OKl93RUn2nNtPl5b", "shareCode": "A3vdDioqQFF7Yd6w", "subType": "crhZ6IuZGVRoH9GY", "tags": ["tHYwzJRmAQ8uQ2sY", "5wHss8eAZyIKAIvT", "A3Lpaec5MEvwpl4Q"], "type": "pCy4WwAP4qdty0NF"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'mXk6b6Tut4mjd4Kr' \
    --namespace $AB_NAMESPACE \
    --shareCode 'sqDrSozwhFRQ8KSq' \
    --userId 'WGbDH847DRjfgq9F' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'v7dvmmfUH9VkWTes' \
    --contentId '4FRvT1KZ0ZySF7Lt' \
    --namespace $AB_NAMESPACE \
    --userId '3jq0QZlgKtpSM0jl' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'EYbgzvWBIRvGPLcV' \
    --contentId 'MU6EhE4yM2qMFYMW' \
    --namespace $AB_NAMESPACE \
    --userId 'icaxTXAea7fRKDlT' \
    --body '{"customAttributes": {"KXiI9wuWsonumQ3N": {}, "pV4m4Qz61tk1RFLV": {}, "k515RsB46RCnYvVy": {}}, "name": "fS6FsjJd9WNEVAZz", "shareCode": "8iYIn3UsuS8SjnYR", "subType": "QCGD5fKJf5aoTnmf", "tags": ["PcTXc55jwSzumqLF", "aA6ovBVvDqlgcCjm", "uzlMrjfPGE20NqHq"], "type": "1EoFX315zaeUbCR8"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'HOpUCozHvYcuywBU' \
    --contentId 's35s7IfVABt8FYBb' \
    --namespace $AB_NAMESPACE \
    --userId 'TJc73RExtuSCj7xw' \
    --body '{"fileExtension": "Ri1XNtzmktUv6XVd", "fileLocation": "07H3TdLnbbAqfngN"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'lLrRfw64rlsIIZBG' \
    --contentId 'CgjTvoFNKtpA12Ol' \
    --namespace $AB_NAMESPACE \
    --userId 'zqIP6ttJmT9SotZK' \
    --body '{"contentType": "4lIzHg70iiHaUhQj", "fileExtension": "teZh7KVgQo1aCO48"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'SUkE8mQAbxcFlMBf' \
    --limit '97' \
    --offset '47' \
    --sortBy 'f8HeZqiPLTMkihhu' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'le8css3e6TVDvb9r' \
    --namespace $AB_NAMESPACE \
    --userId 'i3J0KwHrCHSjjAlj' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'QVaKEeSddrT9EqrI' \
    --namespace $AB_NAMESPACE \
    --userId 'xASTvtMYt434oO2o' \
    --limit '44' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId '6VRbtnVSLIGPJNiJ' \
    --limit '5' \
    --offset '15' \
    --sortBy 'P499y9lbDrR9Mzm2' \
    --status 'iY6RBOXjC9MOaRUH' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'FhQiUe7LcawvqvvS' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --name 'C7wn1ZSyfZMYcqdh' \
    --offset '63' \
    --sortBy 'bH0b7nsLM04P4SJh' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '5' \
    --name 'xZ74zPgPdG5oXQts' \
    --offset '60' \
    --sortBy '0jipKNukCxjRY5kC' \
    --subType 'f3HE6zqgyItJuJGh' \
    --tags '["TVJWKp4fqt0qcCFu", "N9e9ihoE4wr2bMTR", "iQjHG3mGpWYubnzq"]' \
    --type 'G0xLr5yA2zNUDq3T' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["eWivTrNgi8dAgdNM", "1AT3ihljYjTfruM0", "PKXP56QxXEf49E9c"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["eaVig8114TdKwaoM", "Y4OInmHyG5Ggk6JL", "aLoUluaBLN2pD2Zk"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'HB1Dcm4804uUqfmB' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'cu06I39gLmZLoeyh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'Uf6h4BeUIRNT3T3E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'GpHVikIWAeMoMy0P' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '80' \
    --sortBy 'CNZh5F8bGooNuJyb' \
    --userId '3lMv27ODka4L1F13' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'CBgMD130b4gaSTfR' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '75' \
    --sortBy 'wDGr1n6OQJCP9gJ5' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'NY7qTPRa2ovhqjya' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId '2QrKnnFBkDQczgNz' \
    --namespace $AB_NAMESPACE \
    --userId 'XRCGjV20XIphra7A' \
    --body '{"contentType": "wQ7HIcgn3xGSJPqy", "customAttributes": {"7PilZjDJoZWG6ugV": {}, "fSeu6qS11O3UOnxZ": {}, "mHlAGGQZDCGnDICG": {}}, "fileExtension": "IN7wtHcEqg8bpf50", "name": "Cc4gBKxpSXZJgp5h", "subType": "Mci8DYmURefPJ8Yx", "tags": ["1phcTU3ey8JIWSr9", "Dg4F5U8klrYEzuLw", "fqz5A5CiwV19MOfo"], "type": "1injmAmebCvsxNqG"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'AeWf92oMV9loO0k2' \
    --namespace $AB_NAMESPACE \
    --shareCode 'mvIvK1JXfEh4z3L2' \
    --userId '1kxwW9f2zN5F13Y2' \
    --body '{"customAttributes": {"dF1B6VT98ohBh4U3": {}, "ucjwo3dmFr2ZGvwk": {}, "hGBB76rT8EyTK65H": {}}, "name": "5dtFrs79eBPuXjP3", "subType": "88SsGvEgd5ORx4h6", "tags": ["6uROUZCn9tCq5NIP", "SplIbU2gd4KDG8Td", "r0QJeM0DpDqoKvF2"], "type": "bhFRGyUB25ClPkjA"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'Ppj63mKqYKis4DLP' \
    --namespace $AB_NAMESPACE \
    --shareCode 'CD8sEgo06EaUtTTd' \
    --userId 'HI3z1pu3swlGUczN' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'EwrbH4tn1erNemrc' \
    --contentId '6dqDbCE0xQpSCr69' \
    --namespace $AB_NAMESPACE \
    --userId 'ADYVEfFyJ6V3pad3' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'lrPXxminGrNoilVE' \
    --contentId 'F6IDXiPPbBOmfNaN' \
    --namespace $AB_NAMESPACE \
    --userId 'bS8fcd2ix8oF2bFM' \
    --body '{"customAttributes": {"AkG0WfOf7RH7boCr": {}, "360e0w6vRaBAflD5": {}, "f3ypC3piRaW3V5He": {}}, "name": "L4TShsMMEqacCzbf", "subType": "rSKeOU4pzOAE0yuV", "tags": ["3x8TNvFjF7S4GFOw", "Q8BdDLkPTQi5l2TJ", "0nJ28JqqbvJwPJs4"], "type": "fG715ptywVs8JUtq"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'GJA4cokjBZE8Ml0s' \
    --contentId 'KC9nDoGTTfHRWlb8' \
    --namespace $AB_NAMESPACE \
    --userId 'rUzACUwZ6FM0Hl9e' \
    --body '{"fileExtension": "HJOMluvhZhpJqvDu", "fileLocation": "XvZYr1lygqhr2VR0"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId '4OGJz817JcswJaLK' \
    --contentId 'OQazjdXswqp7i1Kc' \
    --namespace $AB_NAMESPACE \
    --userId 'DEpNgU3z9NFEaFR7' \
    --body '{"shareCode": "EUcIaXTcmo11HlS6"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'LvInq95tLrNXM0xD' \
    --contentId '3wdJcczmQNflD9y7' \
    --namespace $AB_NAMESPACE \
    --userId '7DSHB6MYjEN7rDAw' \
    --body '{"contentType": "KnUUehDiY2AB0hak", "fileExtension": "gUT3y1dkZFOz6YFf"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'n3oCGKTgyxR9uP3c' \
    --limit '82' \
    --offset '56' \
    --sortBy 'IThinTryCfgP7YEJ' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'VFlQOkSPcdJ2KwYA' \
    --namespace $AB_NAMESPACE \
    --userId 'JXf7wpmrX9Z1NYns' \
    --body '{"screenshots": [{"description": "9jlVQmj531BW2i2T", "screenshotId": "P14EmSNgG7y37CS9"}, {"description": "3I4mdakpc4GxHDMG", "screenshotId": "A0snE970GKdkniud"}, {"description": "2zswwVIOdLNrGDmT", "screenshotId": "UxWi7NCs5KIR58Jx"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'GIAuI4QLioZoaLOL' \
    --namespace $AB_NAMESPACE \
    --userId 'NRmh3oNoojL7zvRK' \
    --body '{"screenshots": [{"contentType": "CHUTvmW0VCW32Ax7", "description": "VHBHy74pa266dVhS", "fileExtension": "png"}, {"contentType": "75BTfxCCVjJqOMkK", "description": "fRTb3eCl958b4DhF", "fileExtension": "pjp"}, {"contentType": "8nqHmUARU6mD30JB", "description": "Bi7Z6R07sctKUmWk", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'E82YAeo4PW3MiGxE' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'SewDGLoRkSxlHQXK' \
    --userId 'yAa2xhRc3s0H0y7A' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'KkQyz0xdTUIaExDE' \
    --namespace $AB_NAMESPACE \
    --userId '57QbnljP7lbymS7m' \
    --limit '29' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'tU7323ma9YmfMN6o' \
    --limit '51' \
    --offset '49' \
    --sortBy 'I5YCuNYifQAXkSKy' \
    --status 'nohiSYxYirI85hiW' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'TnA4SshAXr6ShNqk' \
    --namespace $AB_NAMESPACE \
    --userId 'wZlZySjqOA2k3CUb' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'vd6Lbvza4cC5pe8r' \
    --namespace $AB_NAMESPACE \
    --userId 'BUoxjQ6KTq1TMAgP' \
    --body '{"fileExtension": "o8bdKrj2L7jVwI22", "fileLocation": "w8zYswWVuBHm9AbZ"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'LQS3KAezwboc8dPE' \
    --namespace $AB_NAMESPACE \
    --userId 'coFHSW2CqxaeDoJU' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE