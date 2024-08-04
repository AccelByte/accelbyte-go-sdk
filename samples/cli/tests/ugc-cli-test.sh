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
    --limit '96' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "ojI1YGNnQCJSUqkd", "name": "0B4vwhrDsJEYxWeT"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'YTJx6AfbdAvFPkRC' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "RS7zT2SHqf1spxZs"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'CJorNnDHa6A3K9Yv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'Xvn8JxoUM573DBSP' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "9krMvwP7yQwZ92Zu", "customAttributes": {"IyIHHimBUfOnGMO1": {}, "Ct9KuzzPVq0HJDOy": {}, "lZFYdLlUvCILo6bQ": {}}, "fileExtension": "wgHU1edQz7ZgUTTy", "name": "H75bD4oq7JgDtZwC", "preview": "GpHOAVuOaIEVgaXP", "previewMetadata": {"previewContentType": "rHepITlIuyMOc4sR", "previewFileExtension": "z4gPh4yagAMojrZq"}, "shareCode": "L0Vm8VKKso1ReY4e", "subType": "6VoMDfqlpmvpNUsy", "tags": ["3XipmIBZgPszNMug", "BxuP78TE8MA9epOi", "0qq4xOtqDvEyugdJ"], "type": "DvnH7cimgWDmaYrm"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'jo9fJnrbqvyGKa5X' \
    --contentId 'tvXHBjtmmyDgSlpz' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "rreD0FZCvKVhCl7F", "customAttributes": {"msGSM0Aw90dfrtWE": {}, "nHABk2yj7oQ5wgVU": {}, "h2KPiZ9doYQiLnx1": {}}, "fileExtension": "VAzzJspAr6yzxQk1", "name": "9a8cS4A94RtlAM1K", "payload": "NaQTefoXvIngsgce", "preview": "nGA6H5On5sXZKMWL", "previewMetadata": {"previewContentType": "rRNYqck850mtzDId", "previewFileExtension": "Y92lQg9Ki6AvHp16"}, "shareCode": "QtDYxCeEFgU8CasV", "subType": "if1lccBUbMCWtULH", "tags": ["6SccVGSDyNP1cWDV", "JsbMbBv53eR352uU", "KiqTTtejGOOn8mIx"], "type": "tUO5x4m53EgmXs2w", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 's46nbkXZ3yQBa4YI' \
    --namespace $AB_NAMESPACE \
    --creator 'vQs7AcwmqmcgdhJ3' \
    --ishidden 'bJXRTELTicOvIZzL' \
    --isofficial 'a1bz7hiXsFOHP8xN' \
    --limit '26' \
    --name 'kwrNS27OM676mVjv' \
    --offset '25' \
    --orderby 'XVeHZscjngj5x00I' \
    --sortby 'anSmMNRzO8AjVkcu' \
    --subtype 'DNFdDVeysUozuq8W' \
    --tags '["ExJUF4A9nDA6SmLg", "ZRaHludsj7UYoQI6", "aTaynd2QHuf4IkQ4"]' \
    --type 'jpSWtqysquMqL4MP' \
    --userId 'NoaueLD8KhTkBu3C' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'vdCNtdtaZxKlXwIn' \
    --contentId 'WJJhvWvjveea6aud' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["PT0vTdtXzNBdTxO6", "JviaxuqIW7LioAmE", "eFPaQHvk4PNPw37D"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'J7QjbnrWSIpNJ1t1' \
    --ishidden 'rV9i2ACOnFateDCw' \
    --isofficial 'pRwQ9LwUBxOaWv1x' \
    --limit '76' \
    --name 'kie4Qpo9IXJKxdwH' \
    --offset '0' \
    --orderby 'IEULvfP82BRfVydW' \
    --sortby 'gzBsT1gliUEDmdUZ' \
    --subtype 'VzFSgfMteJ4xxPry' \
    --tags '["otHcKoiKs0enukqD", "5adYH69AmVwk7SpD", "rDSwuGglv3SeVv2n"]' \
    --type 'EcMPP2hjwiUpHG4I' \
    --userId 'IHH3ZqmDEAfGeFVv' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["hfebYFuXgLZKbB7p", "yYicZEtd91toV5S8", "OPBqHBPMsJcHOvnd"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'WkmnbPbTkLVaflte' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'pDiiKKtt9HCfvxNn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '2qZserGJczCCOvkg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'cS2wYCJwVdyoiUge' \
    --namespace $AB_NAMESPACE \
    --versionId '7u4n1ePxqrKtK3V7' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'B6IVJtrBzdQg7jwK' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "3T67T6UiYRoXcSxx", "screenshotId": "NoWvIvaFN2GBz4Z0"}, {"description": "eqbDgYFYjCh9B0Pt", "screenshotId": "qRGCtJl18IC5ozBE"}, {"description": "5X7bbXF2f2gHk0Rc", "screenshotId": "2CkEs2dkqRvPiq0v"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'YnNA0z5CVh8lcvWh' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "ZyOj4InUstn8VgsE", "description": "nI1ZXYRpBDNcyjEm", "fileExtension": "pjp"}, {"contentType": "NbbYUv8nXcukLghW", "description": "PfUqkgXyO9nzdxhW", "fileExtension": "jpeg"}, {"contentType": "azpKOGe1Di0ctL0S", "description": "XclwcopfWfNhiz82", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'nhkQuVZlxFqnskOM' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'WZ3otN139VVHNkbe' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'ASbZ63kPm0CyRf1g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["c5qMcsvmWmO2k5ZX", "wnafhShD3jLabeUb", "7DhAHWpdgacouhLu"], "name": "Wo0Ow2DMxbElDnWl"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '9FybnWBPYF7ADec6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '9AGMXKA0VlEnjAtE' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["boRUsARcMftW16ti", "L8xKrppdUPx2q779", "6ihJPJgU8KdRNhqB"], "name": "0oFVFDuZvEuszWoa"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'R1mze9ty5a5RYTzW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'MZNNgy68Fn8oaiNA' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "0pPbw4ekHiRgTVQi"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'L4A3GsulhXnqI40z' \
    --body '{"tag": "M2WNyBSPUfwZjKpD"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'cr17zGygAkaUJIln' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["x4GIwScuPlG3Iup4", "zYdinnRKsUq6nK58", "x2KWt4DK4uxh6EDC"], "type": "SluCPAHYAPbR8lyo"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'eVVU8tgp00VZnLmF' \
    --body '{"subtype": ["OTCKUGqvAvTFrI2y", "PG6AMVdMRk9Kl3fP", "BA6vzZ9ETaffjVXx"], "type": "hWovRJXvcl1mh2fF"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'GAme1eLsKBX3zbmw' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'iJTjUuTILuFQLYQb' \
    --limit '98' \
    --name 'xHBK4GAx1njctQOT' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'Zshbmd4BVlCwbMJM' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '4gUfnbAZHNFtHE9C' \
    --namespace $AB_NAMESPACE \
    --userId 'Tm2lpF8F4SDwIeHJ' \
    --body '{"name": "vwWAN8DfgaddcFt7"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '79a7HNLrCdZzfGgH' \
    --namespace $AB_NAMESPACE \
    --userId 'PpZljhhDyfieEONw' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'tCqao3i5EwspRuul' \
    --namespace $AB_NAMESPACE \
    --shareCode 'dpdFktqj29eU2m0M' \
    --userId 'ZqWWTK2T074OTe8c' \
    --body '{"contentType": "G5F0Fx9cM5xqZAvt", "customAttributes": {"Za3InvSW0TOFFvOW": {}, "cRnEaYKgE0TzYb1q": {}, "FBtGJon2XL9qGyIt": {}}, "fileExtension": "23EYaDLO2truHJW6", "name": "Scr46WeOH5CAt96x", "payload": "xdzsa4IUb5W5Q0Qn", "preview": "qZeyOAyCi7B3jgPk", "previewMetadata": {"previewContentType": "VM58YZq5Nu5iSNiY", "previewFileExtension": "Ezfyu2pZjA6pWb3J"}, "shareCode": "ck89Bn2kRlxCqXhK", "subType": "wCv9AGa4Qa5b5vma", "tags": ["qSkibfmZul1noP3X", "elbzbd1sMhFZtj7l", "5ARzjaq8yRTNjVRt"], "type": "d6CuGbGYvvZ1gwzl", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'P5os8QsuqBYyfFFn' \
    --contentId 'B4Hs7eqoJnqxCVRH' \
    --namespace $AB_NAMESPACE \
    --userId 'Uq9PQIx3gdv7Puch' \
    --body '{"contentType": "3aUuZb7V0heRitvi", "customAttributes": {"KgbMV9FadMMr2KXK": {}, "DJzYbi0hXmDrbr9X": {}, "Zr7zUfQrB0VkeQyK": {}}, "fileExtension": "HLHm3xNcNiuK1D99", "name": "QJtIx74zcOMuOygx", "payload": "iKbSKYYWfqqkGPzX", "preview": "MqEiw2Sw6r3IHdNH", "previewMetadata": {"previewContentType": "RzEfhbmA53oz3Ity", "previewFileExtension": "JUAaMSaS6HtX42Au"}, "shareCode": "xy6JrwKt8enjl9Cq", "subType": "UBrgwxPRdeg1rhyR", "tags": ["e8frC14lX7sN0XRd", "Rg3Bv0mNvirnFDiH", "huBr7FwDG9itX6dN"], "type": "VrNAvXiK3PbDg73j", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'bwJp4hLyNVU5A7S2' \
    --namespace $AB_NAMESPACE \
    --shareCode 'C7qedQiAy70DgpfI' \
    --userId 'R7lHmaDyFIVct7Ik' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '3yi5M7rVElTklTr4' \
    --contentId 'aLaVvOMeJ3HMP49T' \
    --namespace $AB_NAMESPACE \
    --userId 'xm6BJ1w6xbOX0Tzf' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'dQRZXmlILQ4mCyyU' \
    --limit '42' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'cvjEKsPCvWY9T9aO' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'LklUWhCZ7xSsexZA' \
    --namespace $AB_NAMESPACE \
    --userId 'XrEa4nXofWpbQ2sL' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'HnlSuntVNYeZtWdt' \
    --limit '28' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Hay8qwvzspQtGIEy' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'NqffPdkvIB3KioqK' \
    --namespace $AB_NAMESPACE \
    --userId 'BmjcraUtRwqzLdXu' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'fzT2FJATYUJ6uZhj' \
    --namespace $AB_NAMESPACE \
    --userId 'gLTn7bZQPrUAGgZY' \
    --body '{"contents": ["fllWps59VC26j0v9", "ryuOoFEmMb2Ab8SV", "axjpyoCOxM856UbO"], "name": "3aLYzJHjtDPUNtOw"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'm0yrIL3M3p7b1IXK' \
    --namespace $AB_NAMESPACE \
    --userId 'LwdFnpSFkwxbJk8J' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '8VA0ZXyKDJ934MvA' \
    --namespace $AB_NAMESPACE \
    --userId 'm7LuFxeB2U4FFZiI' \
    --limit '96' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'AZfmfCwMkQAYNyEd' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'WH6UX5rYr8Mh1EFP' \
    --namespace $AB_NAMESPACE \
    --creator 'fYuM4DRlHpB4cwTH' \
    --ishidden '6fmQzPzNynpk1tTm' \
    --isofficial 'hp0IGGcPeinfXlov' \
    --limit '43' \
    --name 'kfcicM4AMpRGeqXD' \
    --offset '7' \
    --orderby 'wnqKeP1y474jzJs1' \
    --sortby 'tDgKfxhp1Ansdj3f' \
    --subtype 'pEvMOgabLB1PbO6a' \
    --tags '["hIIT9FSIrDLXHveR", "tbTA3gKROuANI9y5", "moSMqhz8y54eyEgZ"]' \
    --type 'RpXxn8q0CrudenPz' \
    --userId 'wBv4BswxXaAkydxs' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'ycpcX15wnV84Q8sQ' \
    --ishidden 'maJO8fT0iM1fnDnP' \
    --isofficial 'efVpgD7bXlfg2oM3' \
    --limit '63' \
    --name '6IWUDcpIgF6shurq' \
    --offset '74' \
    --orderby 'cf6NEeXl3F1zYJdJ' \
    --sortby 'D3JZnvlFtmqMMStA' \
    --subtype 'dnoHKYLcvQ7PGZMu' \
    --tags '["ebSZze9USSE3NNq4", "GROtg0P5jg0CKeti", "DnqgzIX09963hn83"]' \
    --type 'hrYJmHc8HtAySMWG' \
    --userId 'GTai3iYQcXTT7O1K' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["tJ9oCQA8aEZLOes0", "vnKNhmKt6nS3GtsW", "Xw17zT6YWNjjVRa4"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '37' \
    --name 'QTe5Yjl7L2m18YVN' \
    --offset '21' \
    --orderby 'v8KG9CWiwOSMk5Jx' \
    --sortby 'x3EKFnQM9jcrZW3f' \
    --subtype 'TyU6fgoe0ujDq3To' \
    --tags '["GnCMqpZfi8bex2QS", "VMekM4jpVdvpyTyn", "2mna3p0mDzr8rGEB"]' \
    --type '9rHq9rDOU4C6H9Nr' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["I6f1xEEQ28HKEC0k", "Vr19kj8X5UlJiPsa", "ZEyN5kq9ZUnloYOD"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'TXWA5bJnAkrejPf5' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'ERKTSH7lnsQZh36i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'wlBUam5TN05rzk5y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'xMTgAHtDfNBO8ZFJ' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId '1cQlBBpS0swhdRlE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '44' \
    --orderby '5YqUw9u3YkzLLMGr' \
    --sortby 'n5eNwWRQrLmA67yH' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'VJxbFc2uqbCdNNPS' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'hd0c91yEn2FL9d9X' \
    --limit '6' \
    --name 'EU7Z7DNsKxsKRgoK' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'Rza9kaCVSYbeMrWM' \
    --body '{"name": "jnGLLNW0NVejfHKW"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'w0QZ2j8rY2dNVxMC' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'ovC47XS96hZPwgmy' \
    --namespace $AB_NAMESPACE \
    --userId 'EVUcqcva3smKAs3Z' \
    --body '{"name": "tmNRhxr5B1F00qw0"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'w0GSTxqzIF7k9CmH' \
    --namespace $AB_NAMESPACE \
    --userId 'qc3l6MxtS1xpcX14' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'nAVN6i1gFtnklm8P' \
    --namespace $AB_NAMESPACE \
    --userId 'IlTAWgBqpMjMbEvv' \
    --body '{"contentType": "QOwivgIORPzTvX2N", "customAttributes": {"FhEprcE6JLImIxvf": {}, "S8u0JPDsBiokSnhD": {}, "8fkU6deY7CQrLlW0": {}}, "fileExtension": "OOkEbl9DLadJDqu3", "name": "QCQLNNfl0tLW03ZH", "preview": "IQlrH7mlHmDKV7zn", "previewMetadata": {"previewContentType": "QYqIrAGhcnhrey0W", "previewFileExtension": "dflsIaacY8tel4Lc"}, "subType": "VUuYFoGJAT9Lnidv", "tags": ["iXiH1dDgE4eWaRDz", "MQQ4BHJdVjJ0r9sn", "deyR4nfa9QYPoN36"], "type": "l3mgJfiObk7vKTNV"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'Gre9jetvhJzUA2Zu' \
    --namespace $AB_NAMESPACE \
    --shareCode 'RC8A2f0I8g1SgoRj' \
    --userId 'cv9wEpZNiAuybNaM' \
    --body '{"contentType": "5oK5mEOC8pCe3yrI", "customAttributes": {"DG47ogO3tZUC2J4N": {}, "mbfNzZNDoSK29KhF": {}, "LcDufB43QJAaeKLN": {}}, "fileExtension": "0hxoyJXdBNn9AHDM", "name": "EHWz8iRQ55b6oS3t", "payload": "pvlPoQ0hHtb6q3JD", "preview": "CzMyBcBgb8z4tgnN", "previewMetadata": {"previewContentType": "9TLXBuuKz7elkwgq", "previewFileExtension": "p3uRZOaJWVEIxRoD"}, "subType": "JNtqPTGBPhhUcUm5", "tags": ["K6O3lJ33Hajuc61a", "dqnmTENYeLDOGEtu", "mNIewSAJFAuM7l8j"], "type": "3VjKnD089ZXz5PuO", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'YB7hOG0hEPi8aDpG' \
    --contentId 'F2hXxzRYCwmnjLpX' \
    --namespace $AB_NAMESPACE \
    --userId 'JZzovia9GHZJovN3' \
    --body '{"contentType": "4Zfx4QUiOuEJM9qi", "customAttributes": {"NXK7by27FZtbjyXO": {}, "3vt1C429RMMC5HZQ": {}, "M9zRTGJVIUzoS7iB": {}}, "fileExtension": "kFKb4kfCRxMfn7LS", "name": "qn6pjTZSOFdYTzxv", "payload": "B02Z05ngQHCKjTWt", "preview": "sogH38pWSqXL0c7D", "previewMetadata": {"previewContentType": "NkwA7UPgRaK0L7S0", "previewFileExtension": "JzNHeJmHnNIMPOB4"}, "subType": "deTXIEd2HAWGkdOu", "tags": ["XYdu178Qe0iJn4A7", "X07mVfsvnIwSKPDd", "jyLBoQcr7OglTePD"], "type": "ZZHuYE2NT8FDfWK3", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId '9PNxnMmW5vAWGKfl' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Ox3Z5TX1TLDBR9Rw' \
    --userId 'WrYO8mcUUaT7CIlR' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'CHvNuXnfjj1GexF7' \
    --contentId '6jSK1cRI5khWP60R' \
    --namespace $AB_NAMESPACE \
    --userId 'HbWwLlqK53MfNJBE' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'sXPaUtG0iWdNl05A' \
    --contentId 'NNC12hFxXi1DYYLe' \
    --namespace $AB_NAMESPACE \
    --userId 'ylzvcUsgcBnF8e6M' \
    --body '{"shareCode": "g4u7LLwdmBKVbpJ4"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'CstxJZFOIkBks8Ni' \
    --limit '12' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'xG2Zz15vCcW7i5fh' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId '6irVCB9zSjC8aGcS' \
    --namespace $AB_NAMESPACE \
    --userId 'OzLfY01DAtgltQks' \
    --body '{"screenshots": [{"description": "lCFLdIskw7rwXMEQ", "screenshotId": "7Lv7VzUqnNhrSQfl"}, {"description": "99RvWq3mhFpS5TcQ", "screenshotId": "WvTAFOzMbRtphZZx"}, {"description": "aBGU0OqAUggNd60v", "screenshotId": "OumUAAqYL8dQqew1"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'msCgSUuHf6nWbYcv' \
    --namespace $AB_NAMESPACE \
    --userId 'YuFArNK7xiEONdBd' \
    --body '{"screenshots": [{"contentType": "4fUYOshP4xWH8Evx", "description": "OvfjJd4ddMb0GDzr", "fileExtension": "png"}, {"contentType": "auHXhW67jAZ2qOVn", "description": "Lo6xnU6yV1t7fW7d", "fileExtension": "bmp"}, {"contentType": "q2wUaQQFOLKTLSnL", "description": "lRgzLbxdvdQVYEKJ", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId '9nzRvCjxQBPSkfPa' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'S5fqFs7Ox4JwuIca' \
    --userId 'UXeOFsO3StV0evL0' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'xNoyDKj5mItJI2kp' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId '6dKbgjzTxsuTWTbB' \
    --limit '3' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'aZc2haUIOmrhC6Xx' \
    --limit '30' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'jNbcjharejUYd3bC' \
    --limit '30' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'UEO35jHhhNLzHTIa' \
    --body '{"contents": ["KMAMLPAonzDtrU1R", "6eQbJBe7wCgievS4", "v4qmM0jXXvvrbVgo"], "name": "8ftWZSeKjq165zrx"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'MdifxW5vyhjIolWt' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'KuQJsoNVgPuG47kJ' \
    --namespace $AB_NAMESPACE \
    --userId 'G5fA0QSvxi9lIX81' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId '1Ebf1EhhgCJsg2lv' \
    --namespace $AB_NAMESPACE \
    --userId 'DrulyT96z0Ul67Dh' \
    --body '{"contents": ["SLiOVItHx4kg5IO3", "Ux9YxgpT7w8W3nQc", "SP1EfttQrHwCwYrc"], "name": "QzJjxxvw92TTvplF"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'RL6ZUqPldMNc7Meb' \
    --namespace $AB_NAMESPACE \
    --userId 'g8UfvNbrWbf7olgk' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '3ij3u5KJR3qZjBlB' \
    --namespace $AB_NAMESPACE \
    --userId 'yjx2gMvPynxzWtgr' \
    --limit '28' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'I4YnpM4CpK6HSN71' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId '7Xr77HROhj7GW1PW' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --name 'RJKyqyx1LuLDWI75' \
    --offset '11' \
    --sortBy '05nZ97yWLQqiHEa6' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'XyB76WyBsYXq2DVt' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "27Svxo113JbvdTdP", "customAttributes": {"Ep2jAItOkDwZd5O5": {}, "Jan0tHCnWFilJXKI": {}, "SUFPhEwvxzWMbOMM": {}}, "fileExtension": "WwEtIY5CWloBUqBp", "name": "XDMIFe1xYATbdRC5", "shareCode": "tJ8dvJAjOxRfxcZl", "subType": "OaYldta5MYMmEEAK", "tags": ["dMFhosEM394rZUDT", "Zzl6Pj7qJDQ4PKpS", "QTJ3v81TDXP53fyc"], "type": "KHiko5xN1kCGDfwv"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'OieuNTBTpG1Y7FkZ' \
    --contentId 'X7kV6r1no9Ft6kVa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'ZSq7Dr4RNbycE7We' \
    --contentId 'mo2OXfKiWrGxEGTI' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"gIX0LViKMlGgWBZd": {}, "n40sManpnzbOlXcz": {}, "UcSkGEgfSEOXBGJH": {}}, "name": "hI5x6lymqJ7m1nxt", "shareCode": "eBgUT2BzXkJSVQE0", "subType": "I1dMpWS85G5bmUXw", "tags": ["zhCiylMqy2iW6HFY", "NOqEWt31Dp4PVwEZ", "WGabnWtvieu9TSkr"], "type": "4MOxLgUeWlERyVzQ"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'xdp3qgVVYtahCgrO' \
    --contentId 'PkpcqHSiKB428MO2' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "7pZczdaBgkPgIvyi", "fileLocation": "4ocSKnSUyE1NZqg9"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'd13zTvMZyYX7of5g' \
    --contentId 'wuBR2uBiITSpy8mk' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "dUp6Zl9Y6RafyHc2", "fileExtension": "dkcGS1cDmfN3sGQh"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key '0GLsG4wxtrBUnFd8' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "uWJmqVXYP8XkSbRU"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '63' \
    --name 'RAbVKyJ34zfOZlJy' \
    --offset '61' \
    --sortBy 'ncYItLfAP4WQUUgE' \
    --subType 'jRdVbx4Fc4OW34F1' \
    --tags '["haQIswbLZG8KDx5C", "q0BC7RlsUjrTskcF", "0nImJZvOy87QFYl0"]' \
    --type 'zdjLYsy6NyFHSnRk' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["uCoZURYhvuVIEZia", "5tQpmI3Lg9V5fTST", "ucspBsIecnEQQgr4"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["apoxwpeRcDzPUk4V", "BRnfJ2FOwQkfEqbF", "7w6b2J6L1XfGeISA"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '4gizAC4PEZJpyh83' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'KMXoiR4HkFq3qpH9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'WPtYAbSDErgs2FVx' \
    --namespace $AB_NAMESPACE \
    --versionId 'zI7EPcbGHMxJgaVU' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'SZUjUCjG0O2nOF96' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "PHoorXk4A16ADkTJ", "screenshotId": "seL4afNxHEaFE59L"}, {"description": "QCrVNrgVu1ok6gl0", "screenshotId": "DMlPrjBmgWUeRXov"}, {"description": "OyZA1oiYUAx7fOe4", "screenshotId": "KHxIEF72vzRnBjjS"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'nxZw5WWBIIVCB1V2' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "cNVjTy8t2kaRvGEV", "description": "pAKh3pBFxCkPpSnG", "fileExtension": "bmp"}, {"contentType": "MHeo2IUw0T9GwAQ1", "description": "W04ZXjpJk1PH8TNN", "fileExtension": "png"}, {"contentType": "zEYkmfKeVYiUXKmd", "description": "zWWO0ZHsvLVcvvCA", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'zZApmRRBUiKjBsy4' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'i0AW03mMylgZJX7B' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'i3NbdhAn20jR1mJr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'FM0v6TEUgb8DZhDm' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '59' \
    --sortBy 'z5a89xQD0mReBvFD' \
    --status 'ZFLYaHP0ZU3W9Uyn' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'nedcu8upirSWJ3qQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'URhsmoATnzNN9C9u' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "DW0yK6mlcHqJ4GIy"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'PE5Jg93oN7n9x2pk' \
    --namespace $AB_NAMESPACE \
    --shareCode 'SuCvU29bWv12VvNl' \
    --userId '5Sb6ogzVxEHcvAzt' \
    --body '{"customAttributes": {"wIO3aam2qwIciPqO": {}, "oWFkaHecfkh4wVfM": {}, "V4R45FMIsvqzm9LS": {}}, "name": "ZBcsMLcv9tn94I7C", "shareCode": "0x2Vc4b9Gf2i2olP", "subType": "qcPIwHh2732BmsgP", "tags": ["pHiyRYQDYLu3Ahbg", "fiXLA23mSc21GXEO", "WrVa16tGPX6lL2BG"], "type": "naNK3w9OnNmvKrsT"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'OqDJk90E09l7RiA7' \
    --namespace $AB_NAMESPACE \
    --shareCode 'rPTiLwN93UtFGy9p' \
    --userId 'U7YbXH2WtOJhBYNY' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'EegGP1v7jeQ1CdO4' \
    --contentId 'lvuJGwH93q4aya66' \
    --namespace $AB_NAMESPACE \
    --userId 'LwBuvxm2DUgVcyjf' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'P55EI0CQY1uKgHSN' \
    --contentId 'B9igpryyxrlmWtEf' \
    --namespace $AB_NAMESPACE \
    --userId 'dIw6Ps6jyb9SX3eI' \
    --body '{"customAttributes": {"moW3wRLyuogLo4Mf": {}, "Gatz2uvCzq9Gp8KG": {}, "v5Gz6KwmuL7J1e77": {}}, "name": "R70tj4Jggnh1qmnI", "shareCode": "M1g9SYEog915bGHf", "subType": "sgBazAjVYyG8bfXI", "tags": ["Vkft9LXYTvX7ifgA", "DjSdyJkhDmNR0Vgr", "MxYY2t30ZIXBs0ka"], "type": "QI6pd4W5PfeeqEeB"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'IPAOV0lz9Rp54mnD' \
    --contentId 'AGcy49JTS8FDHg3m' \
    --namespace $AB_NAMESPACE \
    --userId 'v8tQa9yGHvnU1K6E' \
    --body '{"fileExtension": "TUcqGIKP6jvpGJhC", "fileLocation": "IBtBmPwnM83sgbsX"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'sASvzgKPHFdIR47p' \
    --contentId 'cjOvntKXoaZAl2Zh' \
    --namespace $AB_NAMESPACE \
    --userId 'y4kGB0pyfamg0NFL' \
    --body '{"contentType": "kdefmjHJQNEZlmXA", "fileExtension": "gXCHThzomMyk5D5B"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId '59u0ErjmcqSKVoTs' \
    --limit '98' \
    --offset '72' \
    --sortBy 'gav9dip8R37fSt3a' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId '1Vzi27mnLu1FW91A' \
    --namespace $AB_NAMESPACE \
    --userId 'gISRMwyZoRsBZxNR' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'de0Jli2lcnolploF' \
    --namespace $AB_NAMESPACE \
    --userId 'od2040lnLJ9zKihD' \
    --limit '30' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'emHR9WUnHT2ZX5c1' \
    --limit '26' \
    --offset '61' \
    --sortBy 'PCHcfKEGu3AOTNfr' \
    --status 'TmqeCE4q6rQcM4Ue' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'CNYISFGFu5pR4TSh' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --name 'kHXVC9a3NPibSQe1' \
    --offset '22' \
    --sortBy 'xnuE65edQ6XhPz90' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '11' \
    --name 'hobdsy6JcgInrcNy' \
    --offset '17' \
    --sortBy 'nQqnGxal8bQYGffE' \
    --subType 'IxrNNs0Zf0bX9yvP' \
    --tags '["4Z2rSTlxQ4blwQf7", "n46DjcmB9zGfqJif", "6QTr2HBfqZ9JEsGA"]' \
    --type 'x03HTkDztGbYFJbd' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["UBh8lxBI8y2e3Iji", "7ynLyzV4SSR4Kpvi", "4jDtnqodu0JYpAPA"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["spdjVV6UkrnFDXBr", "KkA6WdTBoSyZPy5b", "m5jmYtKHkEI6sPpo"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'YTZybngKS4b9rziX' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'Pv5XIliOYXJhrJpc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'fRyLswTaQv2sigvt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'vhdWy1TUxMcWwRAs' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '17' \
    --sortBy 'Uye4qKWFPcBPKX4r' \
    --userId 'CY7LOroS5hioUDE8' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'wm1EbHJAm7i3jZrW' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '75' \
    --sortBy 'Dfhckov0oRJEQ5Sj' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId '6MSGjy3O2KHGfmQV' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId '4F0U9Fq4Zhrkaq0g' \
    --namespace $AB_NAMESPACE \
    --userId 'Ngg2q5gxReOhGF92' \
    --body '{"contentType": "O7HaFocfkHs8vXMZ", "customAttributes": {"GUDHNQFIlwJWPmxc": {}, "JYEzGGcEwprzOwob": {}, "f0W90zS3q4CiO2YZ": {}}, "fileExtension": "Anxg2AfdTpRfi364", "name": "K3RQNnBwXD2b067W", "subType": "YSJZ5ZGC1t6a90BX", "tags": ["I6x296LKDI2HnLod", "izmL34Eyk2LYKFBE", "dBcyjRDyqvIoCY5v"], "type": "o1BXz74id8LipwC6"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'HLxKtAcZRrKMWs2W' \
    --namespace $AB_NAMESPACE \
    --shareCode 'M6aW07QL1VeQ2d8K' \
    --userId 'P25Bh3frEVQ6IRqL' \
    --body '{"customAttributes": {"TcQGULO3mRI8Vhov": {}, "Na95gboHoR6z5LTP": {}, "6viSYqZDuutVWMVR": {}}, "name": "70MTrzHBFgPzSsli", "subType": "luvT6YjH5Kw6bQYw", "tags": ["F6JchQC4S3tiwKYr", "czrkyFfdpcgJgbfu", "swgByKnxqhyJyVht"], "type": "b3zTP4jHZvnxvGRs"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'aj1RC7L1HHOQirsw' \
    --namespace $AB_NAMESPACE \
    --shareCode 'CfYcMTzQqXhHzPoT' \
    --userId 'Nyck5lXuq4c0RinD' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'QTGH18xI6QbrXJ1S' \
    --contentId 'I1yCQXwVGTYHc50U' \
    --namespace $AB_NAMESPACE \
    --userId 'nmUTBlu4iVN4Q3ci' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'UWxmfMCnAMfDtim9' \
    --contentId 'n3fYD3ZzVYesSSlX' \
    --namespace $AB_NAMESPACE \
    --userId 'SOTpuPPxLv3HjgaI' \
    --body '{"customAttributes": {"U63azcbk46ezqkWh": {}, "3ewZcGeoo6MqgvZm": {}, "TfhkfziYQIvLTRHC": {}}, "name": "ta2ww9LSwuAHv1OH", "subType": "O2RS5GvzMRs6oYyv", "tags": ["Bl0hqULcVAQpLKe6", "aZCddFVQCASEYHkW", "yqP0fCazSiAixUmn"], "type": "Pe3r4K8Za1tD1qCm"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'icPS9LnlvIsB2pHM' \
    --contentId 'ODIxQF1qSJNDzHH1' \
    --namespace $AB_NAMESPACE \
    --userId 'NlsAAuSZPnwethoj' \
    --body '{"fileExtension": "ASZRY6yFZS3DQRde", "fileLocation": "W9eHTx3K2rYtmTje"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'hUjTUpc02Tc39jpY' \
    --contentId 'WCLnodQjaa2l4OF4' \
    --namespace $AB_NAMESPACE \
    --userId 'qydRV9CHc3eqAqYr' \
    --body '{"shareCode": "Vt19H3vbDHkyGt8j"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'ulmL9Gw83XHKxSbD' \
    --contentId 'wLRyuIVYmKy4qNAZ' \
    --namespace $AB_NAMESPACE \
    --userId '1BWXdOkzC9uApUaw' \
    --body '{"contentType": "6kWnTVVopb12r1uh", "fileExtension": "k3y2brMu02UcsjCb"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'rhY0ZvH1DMUlRcxT' \
    --limit '24' \
    --offset '91' \
    --sortBy 'QdWxsrHcoGAcdbfe' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'bC9E9GPL2NJJM6vF' \
    --namespace $AB_NAMESPACE \
    --userId '88KrA7WoffhX2sBk' \
    --body '{"screenshots": [{"description": "H8Snm3uct4TO1Kqk", "screenshotId": "N4Qrceo77L21yx3A"}, {"description": "DFnjKLUQDF75pmBl", "screenshotId": "h00h7mH5W7sb2EoP"}, {"description": "xfXBfbCjPO3c6XAN", "screenshotId": "QYDjjl6aF147fbir"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'Cduze1paOEe1D2Dj' \
    --namespace $AB_NAMESPACE \
    --userId 'a5sWqd5Xj13s0fPr' \
    --body '{"screenshots": [{"contentType": "AXNpB48OQA5s0FZH", "description": "XX39PdpE2GNjDrlw", "fileExtension": "bmp"}, {"contentType": "LOjgrPAILAPwzPip", "description": "UDmgb3Zs62z0FwMJ", "fileExtension": "pjp"}, {"contentType": "NpsxSDy2UlhFQ587", "description": "kqaZA9hUVfkj0xQC", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'pmiZQKNGbCfWpqYR' \
    --namespace $AB_NAMESPACE \
    --screenshotId '4OnbYIjFM25Zz7Vr' \
    --userId 'xwBj1LP8jQO1iuVa' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'Xz17ghRJ2qPUIxRh' \
    --namespace $AB_NAMESPACE \
    --userId 'w5NseeHH9jMhIBy2' \
    --limit '81' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId '9CjWYu7ww4GXGKyp' \
    --limit '26' \
    --offset '54' \
    --sortBy '5QkFVrzjwJR0Gfub' \
    --status '1BoJkE4EWfw0psKK' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'KZbaSkncgZr570gY' \
    --namespace $AB_NAMESPACE \
    --userId '4ZmqLlCzJsH5wF3T' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId '0bkm32FuWtvaLPkS' \
    --namespace $AB_NAMESPACE \
    --userId 'IRIBxtDllRazk30j' \
    --body '{"fileExtension": "iAK6gvcc6K8rlPn3", "fileLocation": "pb6j30ihD7Dm9MjG"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'JszPtJwuU3eAbghA' \
    --namespace $AB_NAMESPACE \
    --userId 'XCjkeeqI8ot4Z9LF' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE