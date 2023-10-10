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
echo "1..95"

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
    --limit '60' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "NstQUWJsKvAZ8P3q", "name": "BkKUw6IhPFQJKczo"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'Bpy8l5VYJYanxrRC' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "UwsZs0n5PgQQcco0"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'ASgAtRUGdLBbCFM5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'hdx7jKsYCpgg1oD8' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "xa8InW65GjS9I4AZ", "customAttributes": {"U7dbSacwZ1Ro58kk": {}, "yUaO0zVIVHWfZmI0": {}, "B4QtPOvsVQT44Jmo": {}}, "fileExtension": "MHq0a1YpLAXeWxYl", "name": "srouGvHcRgqQRR53", "preview": "1eOFQdjFi2VleXeA", "previewMetadata": {"previewContentType": "NR8sJWKKkYT1fF5k", "previewFileExtension": "UYTUOalV2gURjQ64"}, "shareCode": "6YEaNB7n4oj9dMZG", "subType": "Ui4C36o7bPwEBPUz", "tags": ["OM33jz0ypDBPywk5", "zf3o4u7TzV574Y51", "2WZrWhS2FAahB3sh"], "type": "eEg6vWSBiVpCQxmW"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'ramlBLzB3lZkfKfw' \
    --contentId 'gbMfL2MUP2H8RQmo' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "AgCCX3aTZRRFeKIW", "customAttributes": {"iKT4aitO3rC477W0": {}, "1dWFkudIJ1b2G2qG": {}, "D7jL5S2LUDk0g54M": {}}, "fileExtension": "lC7ae4mU73cCjNty", "name": "zI4mSsnwpfw6ENq5", "payload": "m7P5mr5ACbsOvkNA", "preview": "mZscHu67iKssgezb", "previewMetadata": {"previewContentType": "59s4yTaRLYmoZFBj", "previewFileExtension": "kjxUQ8bbLJLxEWfc"}, "shareCode": "R1H3Sdw4acn9GVfP", "subType": "XYar1I8GSSmqoOBp", "tags": ["TwnSPsN8hMJR7nl6", "VQzHoDAOQlDiTbbL", "IiuP3EHnD4myEajs"], "type": "P0Y58heBJSjP4K5G", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'pVY4sUuXLXjkgQo4' \
    --namespace $AB_NAMESPACE \
    --creator 'HPdD3dLbhlnR9haT' \
    --isofficial 'hLe3yT5YjGCNK9Ir' \
    --limit '41' \
    --name '3fzDeF6pjITkg8nV' \
    --offset '85' \
    --orderby 'SzFl0jCNUXYoOECB' \
    --sortby 'bDx0y92oCPt7Olfr' \
    --subtype '0gEPR9k8f91TXg0i' \
    --tags '["v4v2YlINUmaonED1", "a5GDWktsolBrRWLl", "Q5F6LVlvmZ8r9qWk"]' \
    --type '4iFnxxUTYSlowNpf' \
    --userId 'SfYXxdHsGgi3cSQm' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'gO0r9K2ZmGK1DskS' \
    --contentId 'Az95daxCurYCO13T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["JDGi5bFfIkCkBfD2", "dcpiuWL3tNDIcXtz", "yP8hOpXE0PQWb69B"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'IXBLTIvJ5hLXZOOB' \
    --isofficial 'y5fwhoBhp34bKVah' \
    --limit '73' \
    --name '4SFhLnGVS3MOb18t' \
    --offset '63' \
    --orderby 'hDldZRzyos35SJEj' \
    --sortby 'MIZI6e6rx7RzE7hh' \
    --subtype 'kJ1S7SWN5SYb54wY' \
    --tags '["9MnmmYZxT5pJj2Zr", "u2JTSrVsuPBAcczH", "s09y6VGtuqbXWIhZ"]' \
    --type 'lXcOR8CLwAMS2U1z' \
    --userId '8t5fcuqgSEYCGYMN' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["50uTmjMHSeXCKlTI", "4Xm8DUUb6SL2Eri4", "Db7pxDWAFi1zSv7G"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'mtP63nJFMHqKO7GM' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'qbvtso030aVBfgZT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'X1x0uUcMv4g7esOn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'iDrw8WSRnEJF5bxd' \
    --namespace $AB_NAMESPACE \
    --versionId 'B8B63xE9dGtoRmoH' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '5RgFe1RAlRcSVQFO' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "CRpHCbU0SokAgtXF", "screenshotId": "7lANkqH2yVm7J4Ac"}, {"description": "b19w3B9e4R5UXs8m", "screenshotId": "8iJfzWaQ7pEwpq9G"}, {"description": "VeoLjk0wTINqcUjo", "screenshotId": "8onAyglvdovWQ9QG"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId '6T042Lf1yS4JhhiG' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "B0hERyFaVEyYobfe", "description": "i5CLHqi6M7Qap9Kw", "fileExtension": "jpg"}, {"contentType": "BYgaXxAOJy75QLOy", "description": "a84SRgHzxk51K1E0", "fileExtension": "jpeg"}, {"contentType": "6y8uaFjOJdEirhRP", "description": "0asePom8Qm7qUZbW", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '4YAyOqO1MRQxYzx4' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'iu5VpkeD53PZx6Wl' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'EHob7p288zn2XqlB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["OQhdQPNM9uSTgtOz", "PGi5m9xMSJUXfBNW", "Qf1iyrGriAGUrL7a"], "name": "6EVYEMLeStdj8HD5"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'M3ZMiXMrrNCfHNCj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'AfolKfE4lMZglBMK' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["AVj7Dx52HqMp3ldb", "JZqxp001y8fBBJjH", "oTmCCScIFnJEVsLV"], "name": "qylRR9CqED0oFhSp"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'WbWPHjyfZNH8rVTI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'PcLEumamzRKQlOzC' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "3w0PTEWDmYue05rw"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'EbW4eBVlUJID0G0o' \
    --body '{"tag": "qo160bF5jg4egJ8d"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'q65jPzsXk29RlRix' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["QgD0C9UxLsv5faY2", "BK5ROI09Nj062qdV", "G8Innl4gI5xd0ylp"], "type": "RTIA1BBLqeJBhSTD"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'fFXAAQesiNfaltkt' \
    --body '{"subtype": ["nu1mlFH0mJ0kVcvY", "eb9Ac9opP248lMMK", "sScXCEDMJbOvYNvb"], "type": "sKLYF29ODwWPfDhL"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'TO5KK42JYIqeiwlj' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'g7U6TXuY1p7BLVx5' \
    --limit '83' \
    --name 'AGhmW4qvFjL8EoAD' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'xbuXGB3zxqHWMKKG' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '4Isf6KVKTG8C5okc' \
    --namespace $AB_NAMESPACE \
    --userId 'cqhQBv1nIveGpIJi' \
    --body '{"name": "wuDcuxPJwJyQQqcg"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '1wkgu3LMWImUTzlx' \
    --namespace $AB_NAMESPACE \
    --userId 'kiLY0XYHRARwUQWt' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'K1oC0Xa4WINRT0MG' \
    --contentId 'NL7mplB5k3XxnTop' \
    --namespace $AB_NAMESPACE \
    --userId 'Q9D4GPA4EycF7L2m' \
    --body '{"contentType": "9FA54CAUOADJqSda", "customAttributes": {"st0CWtKVKU09kjfP": {}, "mmeBCVTY4oiIm3xt": {}, "j1cCpnTPxPGST0CN": {}}, "fileExtension": "4ylSUrhXMu8xAygd", "name": "BSDJV7CL3iULgkQi", "payload": "2CEbDvKsEHEUd3Q1", "preview": "20hit6XWDsze7BUU", "previewMetadata": {"previewContentType": "3yKWkli7qkmF0cDy", "previewFileExtension": "2ZlQnG4k2DllklWc"}, "shareCode": "YI84Xckf2xKnZAl3", "subType": "qz7hXm67uRJ9bVnA", "tags": ["LscOli5tV06T4iYA", "QteRhJCheiwknrkp", "JbMgswQ4B82TYgj2"], "type": "wxp6DbmyxaF8L07g", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3' test.out

#- 43 AdminUpdateContentDirect
eval_tap 0 43 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 44 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'Yq0ENav124Oh9QX9' \
    --contentId 'HsucgqdTkHzl8AM1' \
    --namespace $AB_NAMESPACE \
    --userId 'FuAiYfxL1qza7jKn' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteContent' test.out

#- 45 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId '2FQoJDLa1eRNiNIE' \
    --limit '97' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetContent' test.out

#- 46 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'gMxmv0RznSKL5jny' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserContents' test.out

#- 47 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'EXHaThzJrInATzhQ' \
    --namespace $AB_NAMESPACE \
    --userId 'LmpG83qfiCLWJGH6' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 47 'AdminHideUserContent' test.out

#- 48 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'ETEnsWZxOam7LE3x' \
    --limit '39' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetAllGroups' test.out

#- 49 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'YRFxOU5IZH6LwNz3' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteAllUserGroup' test.out

#- 50 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'axjyUKJuQuUFzP8M' \
    --namespace $AB_NAMESPACE \
    --userId 'cLtqXQvyQJOda0Gj' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroup' test.out

#- 51 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'lJ98Oej2FqhG5i68' \
    --namespace $AB_NAMESPACE \
    --userId 'ap07sgfHywZlrIln' \
    --body '{"contents": ["5aiXyPX4WpG4E6Ni", "skfUBlDdVKzkda5R", "4zOanL5CMEQerZqK"], "name": "LOLXQixNrO144HuB"}' \
    > test.out 2>&1
eval_tap $? 51 'AdminUpdateGroup' test.out

#- 52 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '1BGsYPb4M8DDq0SI' \
    --namespace $AB_NAMESPACE \
    --userId '74tqWBQlvZV63UTW' \
    > test.out 2>&1
eval_tap $? 52 'AdminDeleteGroup' test.out

#- 53 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'jWqrdauuNNi6YzgC' \
    --namespace $AB_NAMESPACE \
    --userId 'ziKcMGqRqqV3V71S' \
    --limit '25' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetGroupContents' test.out

#- 54 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'Xqs6DMtjPMk17TKr' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteAllUserStates' test.out

#- 55 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'JRnA0d2W2C2v48Gq' \
    --namespace $AB_NAMESPACE \
    --creator 'skMXDDAuLIUZBDTN' \
    --isofficial 'Ci019KYb0FnXie8a' \
    --limit '72' \
    --name 'EcNawhU6HvGCAx4g' \
    --offset '86' \
    --orderby 'B3AJVUmZpYREU50Q' \
    --sortby '13sVJVdYHtStuHMS' \
    --subtype 'Dkhj13Zz1pxC49dT' \
    --tags '["1qGwnGW6tWEL8NdZ", "WL2rybl8DE6K5gLc", "psPdha5YQWPN2Ksc"]' \
    --type 'J9fTVYORoF8BcZlq' \
    --userId '65TewyPK12Z5mdOG' \
    > test.out 2>&1
eval_tap $? 55 'SearchChannelSpecificContent' test.out

#- 56 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'V7HPWMEI8OkgdIyY' \
    --isofficial 'xHSfe3nJCl7O2QO4' \
    --limit '4' \
    --name 'NCq4PXFSZMg63jJR' \
    --offset '5' \
    --orderby 'kpdsEk35WJbYpNAM' \
    --sortby 'erMuQkx9rai4zHhJ' \
    --subtype 'vsExA6JoF47DJjp4' \
    --tags '["AvOSakdzRa6rIXxj", "cXNmbME4Ysol7JTf", "TIl0F1YRTzEvbKou"]' \
    --type '2XPPEgBuSqbEGzt2' \
    --userId 'BgmYqghKTcfXGp7s' \
    > test.out 2>&1
eval_tap $? 56 'PublicSearchContent' test.out

#- 57 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["icAlosCER4lDoo74", "uwPIGq0uxASNZR5f", "92nK1udsV36ZP7ej"]}' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetContentBulk' test.out

#- 58 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 58 'GetFollowedContent' test.out

#- 59 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '6' \
    --name 'tUd02WA7BZVvKGqZ' \
    --offset '69' \
    --orderby 'W70BcFKyXtpFA1DX' \
    --sortby 'fGXQFl4vfQ8r6rxU' \
    --subtype '1DNJPHWnT77yLzrP' \
    --tags '["z36dkQDp7o1knaqt", "PwBytaSPl8mS81Ex", "F9KukpZNkWjY3ccH"]' \
    --type 'QYtRJ7WesjZ9hSTu' \
    > test.out 2>&1
eval_tap $? 59 'GetLikedContent' test.out

#- 60 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'Vfb6qmeixZZZcRTu' \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentByShareCode' test.out

#- 61 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'CRla8YSawpO6X5hz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentByContentID' test.out

#- 62 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'ZiDj91wWiqCDrg7x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'AddDownloadCount' test.out

#- 63 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'rBBKhZVImJkDBrSL' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 63 'UpdateContentLikeStatus' test.out

#- 64 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'sUncKXOutfLo7HDv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentPreview' test.out

#- 65 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 65 'GetTag' test.out

#- 66 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 66 'GetType' test.out

#- 67 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '17' \
    --orderby 'QYCuLG399XksHBkK' \
    --sortby 'OvPcN1aXymeDTQZK' \
    > test.out 2>&1
eval_tap $? 67 'PublicSearchCreator' test.out

#- 68 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 68 'GetFollowedUsers' test.out

#- 69 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'OVoV7UTKk9yCJtME' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetCreator' test.out

#- 70 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'AdzAvppq0TSMyM9S' \
    --limit '67' \
    --name 'oLdjr1FFL64oyuu8' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 70 'GetChannels' test.out

#- 71 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'SJgKg4Fb7xvQbPq1' \
    --body '{"name": "Vd1zmu5xbogwozsI"}' \
    > test.out 2>&1
eval_tap $? 71 'PublicCreateChannel' test.out

#- 72 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'uMGPBEdxtixANQ1p' \
    > test.out 2>&1
eval_tap $? 72 'DeleteAllUserChannel' test.out

#- 73 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'PfpTudSACqpRoIbe' \
    --namespace $AB_NAMESPACE \
    --userId 'YfhIW8ROFRiqyRIW' \
    --body '{"name": "1BsPQg65xKlA42Ug"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateChannel' test.out

#- 74 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'cuf6p3cPjzCuA42c' \
    --namespace $AB_NAMESPACE \
    --userId 'UnpNu1P9DpnudFre' \
    > test.out 2>&1
eval_tap $? 74 'DeleteChannel' test.out

#- 75 CreateContentDirect
eval_tap 0 75 'CreateContentDirect # SKIP deprecated' test.out

#- 76 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId '6a9pPwo9lBVsybm8' \
    --namespace $AB_NAMESPACE \
    --userId 'IWXWjYLHc52JRAkl' \
    --body '{"contentType": "jpGxAdnC5Rw8Jl9o", "customAttributes": {"ekvLab9SOSeVJl8R": {}, "vrXmNAl5PYueyVao": {}, "uEXrRLUliw7rV4eu": {}}, "fileExtension": "3xtyi7E9c0f4QbSK", "name": "8M7RBWYFWyc2LPOO", "preview": "qnMcSS2UDKMfOi4Y", "previewMetadata": {"previewContentType": "63RjYSxCH7mt5apl", "previewFileExtension": "nscgYsc3B9rWfCBm"}, "subType": "C0oqVdtUovlWc1jQ", "tags": ["kGLwMMBGjSIQwdi3", "UYSzfLetJv1QlkTb", "IOaByfO4XuXi7pNU"], "type": "mPGO2aBucpXWtWYw"}' \
    > test.out 2>&1
eval_tap $? 76 'CreateContentS3' test.out

#- 77 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'cl6lD1bMPJYeUeKa' \
    --contentId 'lhHuUHCNL7d2cKtK' \
    --namespace $AB_NAMESPACE \
    --userId '4WE1rEEzkMz9ORx7' \
    --body '{"contentType": "jhOl67rpC3DNeDoQ", "customAttributes": {"JWfvNWEzTjGz5qsg": {}, "ufFlLZ06SeAxOHrS": {}, "kj3TW2BLACtBanZh": {}}, "fileExtension": "KJIWNuc1D7E031CT", "name": "g1xc2tv5Eq3n9CQj", "payload": "Q6d0ZyRI7NwVFf7U", "preview": "87PXra8O3kytSAaX", "previewMetadata": {"previewContentType": "S4F5F4ytcErY2isf", "previewFileExtension": "SPvixXysUch7s9oT"}, "subType": "RQKGvlKOjw3qiZKQ", "tags": ["5xjWIkoj3gmzmgoJ", "7w2eBTPJW0RVW6Jo", "DJz3tFfuQsWKjU0O"], "type": "6zwsO9xkuIlVqsB7", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateContentS3' test.out

#- 78 UpdateContentDirect
eval_tap 0 78 'UpdateContentDirect # SKIP deprecated' test.out

#- 79 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'peSmBtDwYWo0gcon' \
    --contentId 'piVP149ntdmtkUe6' \
    --namespace $AB_NAMESPACE \
    --userId 'mL0aQPCBpkhb1CJU' \
    > test.out 2>&1
eval_tap $? 79 'DeleteContent' test.out

#- 80 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'jDFOz3DAQ2fK5pRd' \
    --limit '88' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 80 'PublicGetUserContent' test.out

#- 81 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '8K46Z7sTohTmuFsq' \
    > test.out 2>&1
eval_tap $? 81 'DeleteAllUserContents' test.out

#- 82 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'QYF8RgymN8OtB7Kk' \
    --namespace $AB_NAMESPACE \
    --userId 'FofZf7XERYSIGxmu' \
    --body '{"screenshots": [{"description": "HYKHpKv6VPdrUrWk", "screenshotId": "QNDMlhcvy3rEf6QV"}, {"description": "QCdaUTKeeqNbmiEB", "screenshotId": "rIM90KAfN6TCyJGn"}, {"description": "o6wMmDsRJqKXx7hW", "screenshotId": "LSTr9xLOePYKooqG"}]}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateScreenshots' test.out

#- 83 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'zQqGZRnwZB6R0XeI' \
    --namespace $AB_NAMESPACE \
    --userId 'XATZGObC6BrUX35Q' \
    --body '{"screenshots": [{"contentType": "gHo12cwDYen7iD3T", "description": "KqomNM5x1n3XyGx7", "fileExtension": "jfif"}, {"contentType": "KjUDkBGxotE1NyUU", "description": "dPj0FS4VzX2emGNB", "fileExtension": "jfif"}, {"contentType": "Yb2y2jzqBWITIWZA", "description": "gdgWcixMxZqqC6ds", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 83 'UploadContentScreenshot' test.out

#- 84 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'GBVlDfGagV77LiXL' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'PYdW3Fdj1rTY1JHA' \
    --userId 'e3LTCVGZmIP9MdG2' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContentScreenshot' test.out

#- 85 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'qW6zmb00I7j3bm1X' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateUserFollowStatus' test.out

#- 86 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'yoN4njcL9X98mV1v' \
    --limit '90' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 86 'GetPublicFollowers' test.out

#- 87 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId '3pXaLTcSoH1Zhsf8' \
    --limit '43' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 87 'GetPublicFollowing' test.out

#- 88 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'qxpDmZdFyTZ8UPHy' \
    --limit '62' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 88 'GetGroups' test.out

#- 89 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'kbEKNWFVeIxfRNqI' \
    --body '{"contents": ["ZLkINGRpRN4DGjkQ", "gXJYp0l2nfdlQTBu", "DtWqHqVl7ihfZqHe"], "name": "Xl96a16SMaQMGyNh"}' \
    > test.out 2>&1
eval_tap $? 89 'CreateGroup' test.out

#- 90 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'thMy6KvUJr1qvDJn' \
    > test.out 2>&1
eval_tap $? 90 'DeleteAllUserGroup' test.out

#- 91 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '4KUImhq8cLxCa4pA' \
    --namespace $AB_NAMESPACE \
    --userId 's9JgdJbGc1OiKShi' \
    > test.out 2>&1
eval_tap $? 91 'GetGroup' test.out

#- 92 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'EwqVUQd1H1x9CN9Q' \
    --namespace $AB_NAMESPACE \
    --userId 'cx9MdCrduo6fJUSk' \
    --body '{"contents": ["B2g9PilBM2SuY5Dl", "m6P3Qv6mMCs9s2ha", "tV09tEQL0IFa3THb"], "name": "UKgAl5hnKcyNz0DP"}' \
    > test.out 2>&1
eval_tap $? 92 'UpdateGroup' test.out

#- 93 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'A9XLnFEAXlJFcbls' \
    --namespace $AB_NAMESPACE \
    --userId 'OWzsft6IoQLoGBoU' \
    > test.out 2>&1
eval_tap $? 93 'DeleteGroup' test.out

#- 94 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'CJjYMxsYXZr7gzfU' \
    --namespace $AB_NAMESPACE \
    --userId '0bxOJgHrmDGe82Ab' \
    --limit '60' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 94 'GetGroupContent' test.out

#- 95 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'YWmTrrEiqF1V6iYg' \
    > test.out 2>&1
eval_tap $? 95 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE