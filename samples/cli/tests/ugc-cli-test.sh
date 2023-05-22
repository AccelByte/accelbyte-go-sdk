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
    --limit '77' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "SGHCcQ3Sli9XSCuz", "name": "8nInDi1Ds0bQcGTp"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'OdP96vl0s99iZBBc' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "5AOyAlMpNnl3GYia"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'EfrBtoWpgDtIXogh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'Z9B8qGLM7BDPhqlQ' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "vJS2eGuTDEVhFFU7", "customAttributes": {"fPCdXh3hRZ6P3L2o": {}, "3uVkOH0lyup6X2kd": {}, "Xd0PkhSgvTmL6EfL": {}}, "fileExtension": "PwlsmRyoqCmLzmbv", "name": "HK0jWjmtnXWtEssS", "preview": "7u0Y5er3y1q9qDUc", "previewMetadata": {"previewContentType": "GZj1dRtfl6zQERPI", "previewFileExtension": "SV4PGyLaG7qyOMl9"}, "shareCode": "ZiAxvYGzrH5rsUq7", "subType": "o79rW5l71YA7TYHC", "tags": ["YPHVGydu4f9YGpVG", "66Yly5XjfLZWUHcI", "OUk8RnXXBTQaLxga"], "type": "WJsxhG7W0wCwPs68"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'B9bvaN7MwuUiviWH' \
    --contentId 'yZfcODhTOieU5h5c' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "269CBOBSi8L4iVFH", "customAttributes": {"Fu6hvHUvrjO2nP0n": {}, "jUb3DmCCXlfj5ReK": {}, "OAlLRruE6yHedckD": {}}, "fileExtension": "LKZJYbEfvtK2n0SR", "name": "Ru5n9wzEdpcXk2wl", "payload": "ViQJtP51X36LrGA0", "preview": "JrqVsCKWC6nFDR18", "previewMetadata": {"previewContentType": "tzordueJQSKywkOK", "previewFileExtension": "rjqiEYM46y1iCfUk"}, "shareCode": "YpRo9rZO3EhfSwpQ", "subType": "o4QYgST4ytgJpoe1", "tags": ["BVUVfwoGXwLNJRSc", "PSBh1ah1aFuzqtSb", "PWB5gQ2vtzJJDud0"], "type": "tWeAjJj6cS2V5D5F", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'lEYFzeEXFt2Ytqc5' \
    --namespace $AB_NAMESPACE \
    --creator 'iNjj3NsTxNkQLNLP' \
    --isofficial 'TfVwdrqUH4iLqcol' \
    --limit '35' \
    --name 'Xrr7XAvFLpCL4DMO' \
    --offset '97' \
    --orderby 'RTLbAHT9evKzBbVi' \
    --sortby 'fIOv8gKgCvi7NBzO' \
    --subtype 'jSXy4ZnhF1WuuCa4' \
    --tags '["biHb5hLSw39usjox", "eGANHIFqaiQIKG10", "sJ75FfpaPzPXSJ9q"]' \
    --type 'ANbZqdQzpNzxDDHN' \
    --userId '079etIe3UVQWoxi8' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'yYZ7yoyvQ3EAX2Ux' \
    --contentId 'B9fp5BI4jCSGZjMK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["IuHogHplRRRmmXKX", "MTo6kbn5RLK3qo5j", "2VR6QYVhbzG7mhn8"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'dAg3gH3NJXUv0pO3' \
    --isofficial 'T28u1RYsCdhWSvIy' \
    --limit '18' \
    --name 'CyaHcaf4hhlNuWfu' \
    --offset '12' \
    --orderby 'JrLMk0eZg3YIiRJZ' \
    --sortby '70rPGMRczxoxsWrq' \
    --subtype '4Ws6EYNwbx3XlEPM' \
    --tags '["AoP0GwABGVEwHoUz", "3AWYWQWCqrOTKuHm", "j6t1MPkAfxFKGe8t"]' \
    --type 'qSdhAmm40jDmJ2Po' \
    --userId 'jMIcbylF1kfQwJzq' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'XiZ6BlZRWKi07sCy' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'IR4OWWYafZir7934' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'luiQ3xD53Kqrf5i7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'hVwnJZXc4gcwqhvN' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "Oq7eKV8KhVXKBeo4", "screenshotId": "2L78x2wG1IFpyUvT"}, {"description": "bF17gSey0oMi40OC", "screenshotId": "0CtrUolSHZQ8FEUg"}, {"description": "pgpBDiA2lQkroNJh", "screenshotId": "nIExS6IBEon7o4Bu"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'yw47ErLiTv6CbQCZ' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "MISM9jtbaeHfnkAf", "description": "TZS2jQrLWsm9ZzmN", "fileExtension": "png"}, {"contentType": "P2rG4khqqIjKEKSW", "description": "g1bh3AwHCAsWHHd0", "fileExtension": "bmp"}, {"contentType": "1CwWzGT9nBUexyvt", "description": "jjafF1XrScGckfWH", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'kYXW1oF5IVHMR8TS' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'M8Lo1Q0hkW2uURrE' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["4Gw1A0m3Kmhm2TyG", "1alMJNYWSB0UP83r", "nsZCVXtFf5iPw3G7"], "name": "rI2lKwrpJtrqm4d6"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'K2MFFjlXaeMQktjx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'mhrZjFOXlYuhTQxI' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["yr3B31SMgGa8alSu", "ALSGLcUfAxumWiKQ", "DYBbqrDbOMNdRoi0"], "name": "KrOojMhC4jdHvCbg"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'd0PajXuX0rvxHOz6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'V6Tga9pxiCCjTqbb' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "fKqBsrCjOQRLVYb7"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'zdXFamSo8ZAh9lnv' \
    --body '{"tag": "UAgFwzlst8neK7Rh"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'y4thJd4oi5HmfLBy' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["rVK6rZYak9jO7YOf", "Y2StGzwpcqcYxKmZ", "cZMdR8xEcq3iu9wG"], "type": "ssz9JUEtawvnBkCD"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '3VGgJxGsy96yAb75' \
    --body '{"subtype": ["CpDagq5nFpSYHNC5", "kIZByb8le8UtZAVH", "p4Wt3444ePrrrpnz"], "type": "XxezKA7HjHmiX7Eh"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'xbD0f51nisnr71cP' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'BSloeVTgog3Y7gtg' \
    --limit '78' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '0m4BovbUgPMGAVt1' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'ucql3IgC7rZ2HJJW' \
    --namespace $AB_NAMESPACE \
    --userId '3aZqZKJ2mIs2jSV4' \
    --body '{"name": "cWQU4R9mfysCjYVn"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '8pboUrSE9ESWOhcg' \
    --namespace $AB_NAMESPACE \
    --userId 'DPada9ndiQEszoOS' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'xRuzxz58MdoWOess' \
    --contentId '6vGAG1cnKHM0OXla' \
    --namespace $AB_NAMESPACE \
    --userId '7rwHYv7FH0L7qXC1' \
    --body '{"contentType": "Lygcm5ZqGi7yLAHT", "customAttributes": {"hZ6Q35Cx7OUO6dY2": {}, "ExXZ2fAgtTdsWFS3": {}, "J15Z1ONJlTuErfxf": {}}, "fileExtension": "j8PxGfHcUZwcnfUu", "name": "G8UWow8S8kVDMO7h", "payload": "X8lkJte13o9OOCo4", "preview": "4TXjuk1d3W6EMXf2", "previewMetadata": {"previewContentType": "nZCGbMOgZ02JJUfE", "previewFileExtension": "Fa1agSMZUKywHLrB"}, "shareCode": "OfqfB1WYDRxBxHXn", "subType": "yHIvIX0n2gbzCcxg", "tags": ["O6kTKsjf9tFEHgsY", "6FCThtimA1KQtVVT", "odQIkdQscXRe3vK4"], "type": "NqfkW9sXUXDFshl8", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'fIJM8pRbRaeoVsc3' \
    --contentId 'mXazeU80pyO8vmdd' \
    --namespace $AB_NAMESPACE \
    --userId 'QPvVp91Abp6hufVk' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'ZYof0yrKegw0PjIe' \
    --limit '65' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'Mi6fmtiWUy2Gk1A0' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'qU5bUS7gw1L2Iq47' \
    --namespace $AB_NAMESPACE \
    --userId 'vYLD4El5xoqmv6uK' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '8WhEiYEx6pwKcrxJ' \
    --limit '61' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Gf0HCfWYGwQYxpcr' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'yhXWUnbJi9Bok200' \
    --namespace $AB_NAMESPACE \
    --userId 'TxWE2Zfw0go3vVa1' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'mKL5LbJNAA78VB2A' \
    --namespace $AB_NAMESPACE \
    --userId 'Z1tm3Grvd7ycyDtS' \
    --body '{"contents": ["M4PitwPwzars54Uv", "yFiDciH3nHn1ghSn", "C4gbitGts0hHFwOW"], "name": "CdUuOPqGjPHQ6zf4"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'JP7pzPgJZiV5N6Gz' \
    --namespace $AB_NAMESPACE \
    --userId 'aZjSmpzLeSuMbcwH' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'hHGNhrSVLAcDIjFg' \
    --namespace $AB_NAMESPACE \
    --userId '7Jz0kmCzW0SY1pE7' \
    --limit '39' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'jOb1iX1h2MkGJJSM' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'Dd3HYxzHzAZ5EsfM' \
    --namespace $AB_NAMESPACE \
    --creator 'eimS0HPIdB5rLZrt' \
    --isofficial 'bzrMpH87EZ8ewK7L' \
    --limit '44' \
    --name '6EoUrzHw6MAihYqc' \
    --offset '37' \
    --orderby 'ioOBUrBVEcBpWZml' \
    --sortby 'D47ldgyCdZ65mB4t' \
    --subtype '8wtXR9Nb773HX9FY' \
    --tags '["yKCuszQgYWAjZ4Jd", "5RBIefqBNlqlpt3M", "adorhO61qLRMKLXg"]' \
    --type '3UcSXIKshd2vlOSh' \
    --userId 'fMcY7Q9vBp4r67TH' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'VSYJnzbKZDqUufBy' \
    --isofficial 'FJWgcOLOjnJu6JI4' \
    --limit '62' \
    --name 'CE9ua2hCTCARDimN' \
    --offset '85' \
    --orderby 'SJ72oYqUK2Nge3hy' \
    --sortby 'dArADLVyrPaAOU6g' \
    --subtype '0gWTrv11in1Fa3vY' \
    --tags '["tKxY6USao4t6WRP9", "WSR5Gr2RH33Qc4wY", "Z58RpJcbng0iSNLI"]' \
    --type 'bwoPVflQaoBQBZl1' \
    --userId '0Y6DxfZeHw5Pb3pI' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["mm5aN0KrRqVatoGz", "opbeYP8NADtGiMFd", "8MN1Ppge7q07Gxtc"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '93' \
    --name 'tSI9zEpE8NyjhJU1' \
    --offset '19' \
    --orderby 'otAtuEoQ9cfRSGwl' \
    --sortby 'TVTIozOsD5rvO55P' \
    --subtype 'UnE6JYnr35WhIGdM' \
    --tags '["VBnQT4L6DVKCOO2P", "6EKnwtYmfFxCbjAG", "x9ZI5z1S1xZ447Kr"]' \
    --type 'WSQk8uPgpOgTqeZQ' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '18AM99fk696nt0zY' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '48QbgNSIHYtCxin9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'UdcUvxpci57rdvd1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'yFgUaGgJzzXLSEQv' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'mteaPUWnAdyuG4Qh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '56' \
    --orderby '0ZqDWxqR8Ns4eDGH' \
    --sortby 'hj8ZLr7DF0O71w07' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'IQFME8jBID0r1zqR' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'QH3EgzkAXaz8h5tn' \
    --limit '52' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'EpIVEGNU5qRp4gMa' \
    --body '{"name": "5Bsib4r28ffzQBdg"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'SGTtr09vFxJxkGV6' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '418vGHxsLhjAv5vM' \
    --namespace $AB_NAMESPACE \
    --userId '1gA77oF4d5G4RVeG' \
    --body '{"name": "kJe485sQ1k49JqfU"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'ny7Nr1h2LpmQlpq7' \
    --namespace $AB_NAMESPACE \
    --userId 'STPsk4PYfVfInpfg' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'lAUZqHCkCKexnzts' \
    --namespace $AB_NAMESPACE \
    --userId 'cXQVJE084wpfY36j' \
    --body '{"contentType": "oxWZ7NHO2ZZh0nhq", "customAttributes": {"Xt3VuU5UKeYJz6Eh": {}, "Y1CnrpZu4PFggDRZ": {}, "Hsd0SzP81nuGpK7h": {}}, "fileExtension": "OLq6uL00LJRsPQb8", "name": "jST9mhkOxeLt0rxI", "preview": "3QNhIIiYMJ7JDOif", "previewMetadata": {"previewContentType": "4GvQ2t2n4sUWliGC", "previewFileExtension": "3SBXsTqikGZk50Oq"}, "subType": "56SNOybIkpRyRcyg", "tags": ["XQzY0fUqQ8yEltV4", "XeBzaUiQJCeYdWfs", "IN0TObdJB8ZFZ8kf"], "type": "pFVhgOEpJfYRADNi"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'woKVGMQ1ln26bRKj' \
    --contentId 'BoPsJOGlfQxurAyC' \
    --namespace $AB_NAMESPACE \
    --userId 'uHkyWZyxH4cOkAdl' \
    --body '{"contentType": "NxbjKNtsrEi7bZyY", "customAttributes": {"8YlHOXYlQWEd6yxk": {}, "gZSX4ASvPDWhIYXz": {}, "YhP4KBka6orZAsFx": {}}, "fileExtension": "X5ScKJqKliHPByJC", "name": "AOQqNvi34JrfbK6x", "payload": "RizMctFwy4hEwcsd", "preview": "4fJtNbX0YJkb4zHK", "previewMetadata": {"previewContentType": "WAb9EeyRTF2TBKcn", "previewFileExtension": "e2LlCrsRURd0bCwx"}, "subType": "ImPZj5MVCTHi6P4k", "tags": ["fH1oPE7FhLS9i12C", "bnuitQk3Q4auNhBX", "qO9064WRk4q8UWtV"], "type": "HtP1zUFAYoZ7PUo1", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'P3Avrxj5voTMiYU3' \
    --contentId '7ijuL7r46tZGvTYC' \
    --namespace $AB_NAMESPACE \
    --userId 'bvKXiCT01VTYEhN4' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'QBzhgRGLezHucd5W' \
    --limit '64' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '9OlqOPgAmSQhSXjZ' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'Z4QWx4FOl2uOYsVL' \
    --namespace $AB_NAMESPACE \
    --userId 'OsnLEc87zQL2W9ub' \
    --body '{"screenshots": [{"description": "4vjHAh3hWOUgM04f", "screenshotId": "z6alkA0djEaHFUu6"}, {"description": "XbhQayHAAqGA42Yy", "screenshotId": "f1Rna7TwAqC3EdUI"}, {"description": "dyOQl2APJaYXyDjM", "screenshotId": "MwXMsuqiLyr0FztW"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'nQiMQ9NT5KwF8DrQ' \
    --namespace $AB_NAMESPACE \
    --userId 'xQWspZme2dXzxVSK' \
    --body '{"screenshots": [{"contentType": "J90n7TAfMrVctyzO", "description": "5K9XKT0Yi8cd12K5", "fileExtension": "jfif"}, {"contentType": "jtOfuBytDf34qUPQ", "description": "ZgKQscBqp00YBU0l", "fileExtension": "jpeg"}, {"contentType": "ZdQ4CMRKjKLrsL7g", "description": "e87thImO5FKWBW14", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'wjejN3xS50mB91aq' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'K4MV8frrYEDsEeEA' \
    --userId '4EydCbUPQnujPN5P' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'YgUGZIZPYZeDRZjJ' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId '95MVHJp5LLD8Peii' \
    --limit '49' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'LWWQ4cpk1n8Jzg4g' \
    --limit '34' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'xCG5IPLzgpr3fg3Y' \
    --limit '20' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'CgDZUoVDYAe1dqCt' \
    --body '{"contents": ["anG83lHnNnPs4i1t", "hmZ5TR0RigNox9Ay", "xcrtF1gjQuB3Kj5b"], "name": "11dRlZSZ5cMo6DWS"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'yhhkHfOqnKXoc5kM' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '3ppabiSJDOS7chiu' \
    --namespace $AB_NAMESPACE \
    --userId 'nPmnQ1eSN8MUcu6I' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'tYbjG8kOQL1sqVhg' \
    --namespace $AB_NAMESPACE \
    --userId '4rAlJpA05qsnBFej' \
    --body '{"contents": ["aLqiHiYjnRrnpUtk", "irpCSw2vyFPbEI0u", "94rgYYvFZsEmSrcS"], "name": "lvPXmg45UaijS9UT"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'XweqFJd2jez7BUll' \
    --namespace $AB_NAMESPACE \
    --userId 'ePpC7HAJAhlrTCTc' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'ccB4aSe81tuYS1SK' \
    --namespace $AB_NAMESPACE \
    --userId 'drI9F7l3s2Nt5dKW' \
    --limit '33' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '30DFTFjgNdDT5cB3' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE