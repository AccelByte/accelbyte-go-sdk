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
    --limit '10' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "SrvvgPcbfCPxQVbn", "name": "YkUYDMVHvhOUOc5J"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'F4JNMfGWR2t0X6fn' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "kKVoogg3Xwap3ARR"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'EFJLNwRC9bpSuwtG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'bklsqtL3LsWGj1I8' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "mCzpNQgspv8r9wCJ", "customAttributes": {"ZuCkAVwuAdoYgoEm": {}, "VYd9DvM8FOuqUX6g": {}, "cCxPDreVwlO4Buef": {}}, "fileExtension": "hEIAifMqU3ZOchlu", "name": "7eTr4SCNODrF0mgk", "preview": "mVM5Fcv0yXXHWYz2", "previewMetadata": {"previewContentType": "rh46Lo5XooNXhVf0", "previewFileExtension": "YetWy3Wj7lTCi2Ra"}, "shareCode": "TB4LLtwteG9YVchE", "subType": "JyvKNLZB9jXf58cR", "tags": ["FAUNIZ5uWMMUy76f", "FVgZfbfo2SPJC7dn", "gNvVxYfkjCwC4kKO"], "type": "43K7PBcrV0E3EuUm"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'pwHKj9nrsGE9CF0I' \
    --contentId 'xra0eillpZFDqank' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "8OVM8PmB22Z1Berk", "customAttributes": {"d6Rn7wQX9vzLOcO2": {}, "s4CexJAFItBKWe3W": {}, "wrargTKsbxssgYeB": {}}, "fileExtension": "YigwNMp0QXMWoSM1", "name": "5AKJ4lkGbx5fzjeu", "payload": "WPrp3YLIzZqRLRJI", "preview": "Wfg6KGcJcp3XSg2E", "previewMetadata": {"previewContentType": "GHIJ9jabYyBb52uG", "previewFileExtension": "TahNeqC8WxXMptKn"}, "shareCode": "sziKzxmkAhQlf9Zm", "subType": "KgggBncq1EVrUXHS", "tags": ["O3ZJtxHQ0cduw84a", "7Ntriu0dpgXrpAhc", "w98TJv6WyItLV2Yo"], "type": "HtbwEGX6dwoYu3JH", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'F7uSndzWDgmCAIAK' \
    --namespace $AB_NAMESPACE \
    --creator 'OXZegbsEDmEaqdp9' \
    --ishidden 'V23zm646pd6r7Rn6' \
    --isofficial '7y3Vd6dneeYR1Rix' \
    --limit '87' \
    --name 'W5w722ProhZSu8X2' \
    --offset '10' \
    --orderby 'gwgKjy7f2LSg97hB' \
    --sortby 'dZEmNEEHnpuyPWUf' \
    --subtype 'hCta4ckQN39W8khq' \
    --tags '["AIThhCXNyQsJ4OTR", "6VHKwb3TcP0UIMWX", "H40wEirWKdb4cnJ2"]' \
    --type 'r3ItcBxVGsJ3kNwv' \
    --userId 'TbypBEAdokAX3TXZ' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '9f8SUen9udZtSEwC' \
    --contentId 'l3Uc8Czsgfcn121l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["GWTz2Y5Td9keZxNN", "Csow11ATILd119lc", "MoBhOsgARq63CF03"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'EcipUAerQ3D5mbRR' \
    --ishidden 'WvaBPWGbPdrTmBbe' \
    --isofficial 'aIoTQpFV6PpnmCgB' \
    --limit '76' \
    --name '2tg6ymYdYWSPV9oi' \
    --offset '63' \
    --orderby 'POiWFetI2v737GhF' \
    --sortby '9fVSwrUKYxKBLopf' \
    --subtype '8WE0f9pWSeHlUYyr' \
    --tags '["vyo5zclCVApE2SLL", "nlQPOtJRvh8Fkdl8", "1RXDdvaXALN4c5UO"]' \
    --type '0iwsymYHEBxQbp3P' \
    --userId 'v5wUn5hdQDUv8p1p' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["tCutNZbGNqJrAH3M", "el6Ic62fdHApkDN0", "NexQvMkNGKJlUxb8"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'FQwSPBIee2GgyP1X' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'q9LiFnpWfUvzfyzf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'auL4VbMET5olYhQ5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'vnCVhMiTpY12IcIs' \
    --namespace $AB_NAMESPACE \
    --versionId 'z3SRQ8Ln54JvcmON' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'vgHroDdUHIIyrsQn' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "7wbYuBNL0rT2Stei", "screenshotId": "uUKCKlzoKFxwIT5p"}, {"description": "KYBg3nN9Xjo8qQoD", "screenshotId": "AYcRn7q2TMz8Bpim"}, {"description": "7oBfBBxF8H5PvhI3", "screenshotId": "PvK97UzA4xIUbIaa"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId '75cg3wrApYW0yIV6' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "Ds1q3XenjlxfTlqD", "description": "8KsX1jZxT5CVV0eP", "fileExtension": "pjp"}, {"contentType": "JVviMMMQ6J6VXPCs", "description": "WPepFfJuM0C5G5Jp", "fileExtension": "jpeg"}, {"contentType": "STfo39poUMVAClzR", "description": "bZHrpVO22dCCqd5d", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'VFqqeiyUWrlifNXk' \
    --namespace $AB_NAMESPACE \
    --screenshotId 't36Je7YTn1X9t5jr' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'tCU5Qn9JmHzlS5nq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["NjqxYkVYIZRiExdT", "tKCKzasxuNxjf6LN", "h3y0OGQ275kdP5Uc"], "name": "3UxNUVdwbHQt98Sx"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'RqRXRzc9RoqH4o0M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'CHgYtiKSvaVG0mLL' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["r84vspJ9ecuN277r", "enXjny0iKA8fRzHo", "AVxqrWISNCytyRcd"], "name": "OrWVzL2Hyrzj6T7x"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'zyvyjH4swflYj4fa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '8QQ2ph8AB1cWb9Jx' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "bTbb2J4PAIaKs6xM"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'pGCj2VLP6OeLRQHX' \
    --body '{"tag": "neOSVAD3jvOdeZ2L"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'SNsXttKptNurdvcL' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["VvhkhQzVaMtRJxPB", "052jPk4ASjcNwCHy", "PM4ZAfwoFVQOgP3v"], "type": "kDwHA3FWNvP9Sddi"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '4I1C0aDYNyhEoVJ3' \
    --body '{"subtype": ["zHPr4glVNxmaCHZI", "qz1RJzZ1OvdApG0t", "340ci2pyTjNFzqJD"], "type": "67nZPkzlntGwPsYz"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '48obTXl7dZKrXgZK' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'EHvVYgNmE2dYQGXF' \
    --limit '90' \
    --name 'Uf3aq7tkFXvXxIvV' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'utCM63pYwnidWSoL' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '1iyFfhe6Zq6Drvnn' \
    --namespace $AB_NAMESPACE \
    --userId 'joOnwHaD5I8Ji5u0' \
    --body '{"name": "CrzaYsYtYa4BDx6W"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'LSdyjNXIL2ThXUqi' \
    --namespace $AB_NAMESPACE \
    --userId 'VQYuiTkzEgQVFmDn' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'OKe7xddTc4ZNmF6O' \
    --namespace $AB_NAMESPACE \
    --shareCode 'FFjSZA1LnupXnsTC' \
    --userId 'ynGpv2BwRKqIi9b1' \
    --body '{"contentType": "WscgpHDlSpYUUz9l", "customAttributes": {"PdsndUmoI3C81d94": {}, "qniCREH86js80a1g": {}, "n6WmAOts6vvIsNuU": {}}, "fileExtension": "Y0rTWoB1gnUy6TYQ", "name": "WDQbNrNKYNgwc7v5", "payload": "txDSMJ2G8Jb1a8pq", "preview": "LjdbJ80PciT7rHC2", "previewMetadata": {"previewContentType": "AzlTSOoR6pvtOhkU", "previewFileExtension": "V7nc6wxiLycIHdWa"}, "shareCode": "ViFVLtnZP55sb0fZ", "subType": "0E8HabKwP6samLSz", "tags": ["hB4pNxnA0yFj21lg", "AQbUVZwUVPr7MAgz", "vTmIzb0OJHFHCxj5"], "type": "n2WJK3OmzyjsAyXF", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'Ge8drD4G57mj2Qcm' \
    --contentId '7ZDw3W3dUB1b7eAJ' \
    --namespace $AB_NAMESPACE \
    --userId 'qxQTLySdlmLCpldJ' \
    --body '{"contentType": "fgSxVspCkHe5aBMK", "customAttributes": {"Wdjs22tAysGnyz3k": {}, "bnoxwwmatbCIjgxb": {}, "Nj1ypTcrze6gFNnS": {}}, "fileExtension": "ugNvd5IkhVGp30z6", "name": "tEs7u5G0LZITT0hd", "payload": "xu0C5LMlKufldqWh", "preview": "uA2zACfRkLaCDEVF", "previewMetadata": {"previewContentType": "o8Djix5UBmhgFCb2", "previewFileExtension": "4SBvbnXFumsxct7g"}, "shareCode": "LHL9enMTQkj1o9BE", "subType": "XwTHxz19K1WZrFM5", "tags": ["18hQAaGfRWvLA7q6", "V2Xbldf02dHKXmcT", "dsoCoJ0Tnid8BNrE"], "type": "qLxpTeJ9xdHj7FCU", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'kiH8yGXoGQvYaQuC' \
    --namespace $AB_NAMESPACE \
    --shareCode 'g4KldjEnSVY9XlQk' \
    --userId 'lCDzcfLBvX8oqmB6' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'FhFAJniG10Ofvgw3' \
    --contentId 'NpEdGKYgbpqrI6Kk' \
    --namespace $AB_NAMESPACE \
    --userId '7VxcHF1S0riT5Tus' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'xLhwLJ1fMtvtHLgv' \
    --limit '25' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'egyilqEFFapORxMj' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'YXAAyvC4yywmugdJ' \
    --namespace $AB_NAMESPACE \
    --userId 'Mx8I09hEx3KKZrBr' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'bOa1URnb1hOeSfeb' \
    --limit '45' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'PyY6ThF9isO99nJs' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'NpPow50SqTBQRVzA' \
    --namespace $AB_NAMESPACE \
    --userId 'YbZqCfMXYWri4H86' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'AIytycj08RsBVvus' \
    --namespace $AB_NAMESPACE \
    --userId 'KNDBQK53UpEMXIGH' \
    --body '{"contents": ["WATYM7dUhbHpPnWC", "AJn9A3fvyy7ymRkv", "7yjMrpLcWMvdwYkY"], "name": "qzeXfCvarxTmBSTX"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '4hPwrX3jJMTjJMXw' \
    --namespace $AB_NAMESPACE \
    --userId 'ZIv3H2LGDHv1CFNc' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'TuDMC2E4xpzrplIL' \
    --namespace $AB_NAMESPACE \
    --userId '923Bt1yxUDBcnN5n' \
    --limit '27' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'kKZHjD8U5LBxwmFl' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'Rclajp0pvvOKTDkV' \
    --namespace $AB_NAMESPACE \
    --creator 'zcoXnmNzU8HxFqM3' \
    --ishidden '7giyvpoEY5OWjR1R' \
    --isofficial '5TdXd6fr17LVjmrd' \
    --limit '4' \
    --name 'S422qhjJ5Y8fjbQO' \
    --offset '38' \
    --orderby '9adDZugOE3pIBRHA' \
    --sortby 'zmhtaMLIJNzxlBiG' \
    --subtype 'nehXKw2OP1yulK0f' \
    --tags '["0HWQZij9O64alfDX", "bL3373sMveznvUzW", "SuCBYCZoz77XcmxN"]' \
    --type 'IONBsg5JcYwZMWba' \
    --userId 'anzn3fSCJ58kIUy7' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'Bh2Htu3l7NZkOB4s' \
    --ishidden '4HDdGDz08JAfWwdt' \
    --isofficial 'XSx1eL2oVNfKmbz5' \
    --limit '85' \
    --name 'fYtiUGvkcCIULB6S' \
    --offset '21' \
    --orderby 'BiOPYkGbwCTNQSFP' \
    --sortby 'xITd2zykCCfX5sfJ' \
    --subtype 'lDG3fKDqfoOPRlo6' \
    --tags '["BtVf6WNAzX6mgj3z", "QEKjkGDj7YB80ZdO", "2QsOYtcghzE8RMie"]' \
    --type 'xg3uZt8hgw1qOm7r' \
    --userId 'L0YNAQwz0AzvwFtF' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["vIkxlHKmJT2vbqgF", "1PZEwjoSHog7o5NO", "2qK6yJAAZ6Sakal3"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '37' \
    --name 'j5LuiewVK3gP4sVW' \
    --offset '71' \
    --orderby 'nb0R4l9OuO17ZBXD' \
    --sortby 'uiQSjv2kLiTC8DSD' \
    --subtype 'XLr0itgRUWHgsABX' \
    --tags '["TDSEE1dCNqmUZO8J", "u5naiucRjOgULV98", "eVjsbgP3dG8sCU5M"]' \
    --type 'weTdgqRoicINTyrf' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["4vNkt5ZImm9e1jan", "kQMQLXwIfH4vMYv7", "IeE2SdwaVn5NwOv3"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'Q5VjmHpuJ6d1oB1i' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '5g7XPYwZF6LIkJHu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'IgAND9IhLTWaDdQe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'COtt5K8IoaFufELE' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'vwaVYmpc969cOKtw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '25' \
    --orderby '5VwGnoSULp9IFBVV' \
    --sortby 'p22KMZFRksrftxWa' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'DKSX1F89ne9QaeEJ' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'Fox8SrSXDA5DKtcV' \
    --limit '33' \
    --name 'ZLWNLCcVAK5Y2pDZ' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'y3mr7hd8AiVO2mov' \
    --body '{"name": "b4YX45l5H9rrUVd3"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'lz8DQsr1DdRXcdHM' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'FMaydk30XcJ6vT91' \
    --namespace $AB_NAMESPACE \
    --userId 'tFHLZTmXj0mApV3H' \
    --body '{"name": "m7vJUgKixu7Pz8yA"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'nNFTR2lbWr8dFF0K' \
    --namespace $AB_NAMESPACE \
    --userId 'dDc6c30GgfpLT6PD' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'dAmIYBMIybd7Liw6' \
    --namespace $AB_NAMESPACE \
    --userId '7EsvKaEt7ZEsls5g' \
    --body '{"contentType": "aZuvxR65wsDsFsd4", "customAttributes": {"8oUT7HU7MaYKydpz": {}, "0QAS4Ng3ZXgPA44S": {}, "nPtsoNmDKoOtkWdm": {}}, "fileExtension": "WvOqb9xMxlKZULFz", "name": "AFGc0QQ0vJ25kI58", "preview": "0j0K0kAScgSd4vhL", "previewMetadata": {"previewContentType": "Ll3u9OpvO8SZNx3u", "previewFileExtension": "OcnzmwNZFMZV2w2g"}, "subType": "RYUxsJh6Y7X1gvH2", "tags": ["Qi7t1GiuM6kI9a5G", "1PEsDN1eznt8WZ0w", "7sA5lAfSy9hvKoS6"], "type": "KEIULrso8lunJtfz"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'kix8nMzwgqxLABo8' \
    --namespace $AB_NAMESPACE \
    --shareCode 'fJ22f6U46XNsUlMX' \
    --userId 'TI4EaOP2W5p09lqG' \
    --body '{"contentType": "qLabmF3KN4Gb76JK", "customAttributes": {"uii6GJoYn3uSnQ7x": {}, "JNReBOiSiWvhyyiE": {}, "OCOebVMeRug8WS1j": {}}, "fileExtension": "Miceb05qKNcN1tmj", "name": "cr8WIxCHcTcIKOiC", "payload": "KYJZHNH7WxlG7dsN", "preview": "U67Mg7Z8s5Vr57dL", "previewMetadata": {"previewContentType": "MOrLYT4ZRoXiS6yh", "previewFileExtension": "Rd8OMlgV5n4zeYCL"}, "subType": "se1SpG9UQZzM8Uaa", "tags": ["sTQ8nNcG4YS6CFoj", "Kkx7ELHLqiAMowa3", "O0Sv5EUF1xHGDzbU"], "type": "3oTOr7UTXDCf0ESG", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'FA4GKBV3nYt9RbdB' \
    --contentId 'yjbmDK4ZMmLzrQ2p' \
    --namespace $AB_NAMESPACE \
    --userId 'FDCR6DVStUf2Tii5' \
    --body '{"contentType": "ZDXg5IDW6nOswERO", "customAttributes": {"KFusrwydWJGsGevZ": {}, "8yDeLIMFQeNEwlnY": {}, "CkB7mj0BtjcVFQ4m": {}}, "fileExtension": "JhTvN17pPRKDRiT2", "name": "JUDIuXxABmcoxDfh", "payload": "5xnFPhjBiU5HXcII", "preview": "MsmtnxjM2NMYb57t", "previewMetadata": {"previewContentType": "kHWSISBrCl9p2IFj", "previewFileExtension": "wBiayGFO46VcsH9D"}, "subType": "CvV17QdU9nafUUgQ", "tags": ["tJKOs3kxI7F3NZ4B", "NtnSeyov6VlaiMvV", "71N7sHIyKtG3xfFY"], "type": "polrzcOLZynFbDK9", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'nEK7Uz2dTvLI4Hvi' \
    --namespace $AB_NAMESPACE \
    --shareCode 'dU3WepbEebzzCfBp' \
    --userId 'XaJ0ajlgDRPwpG4r' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '4Y04MrNfhxZhm8Jb' \
    --contentId 'TeTKYGA5ZDv0evKw' \
    --namespace $AB_NAMESPACE \
    --userId 'HxWxW29xHXl3VrjP' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId '1pQArhgj7alyImmf' \
    --contentId 'ZpFbYYHZasTciSW3' \
    --namespace $AB_NAMESPACE \
    --userId 'sk54tUz0hYFesa34' \
    --body '{"shareCode": "HdQpXvRHtkqq7dCn"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'G1OpGI23RdYMrd8P' \
    --limit '55' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'eGA1Zp7xTPZq40KS' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'xyKr5dLI0CfnpEZO' \
    --namespace $AB_NAMESPACE \
    --userId '2gimpiRKRtpDCIip' \
    --body '{"screenshots": [{"description": "gUl9PRVptvMEBGLn", "screenshotId": "gf4LObkSNl16Af8H"}, {"description": "bH6vzDHtYw5tv8h3", "screenshotId": "UOY7UqQ3Ijc7OEA4"}, {"description": "MJ6DC0SgpNlazhU9", "screenshotId": "6wCU8U3koMTqTgdP"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'NywDu6gkOuY49ScU' \
    --namespace $AB_NAMESPACE \
    --userId 'KV7WCa0s2j2X66XK' \
    --body '{"screenshots": [{"contentType": "cQ4WcMPf94cXXkXW", "description": "MFSxVqao0W9Mc31i", "fileExtension": "bmp"}, {"contentType": "lAYyKwq7I0F8FTzP", "description": "xu34JhpKDQDpfUHq", "fileExtension": "png"}, {"contentType": "JIeOATOwxdWZKaLu", "description": "k2laaX3iIlCvna7D", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'XPvUJ0zHVckCVoR0' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'F983NuspxOsRKAfO' \
    --userId 'OMxF5SOdV235A3hn' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'lsKlVdnWHv7nhDOm' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'r5w19k97HEc3Lofp' \
    --limit '86' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'Jip4Q4SzuKnNKc91' \
    --limit '92' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 't7MZPqd80G1ckd3I' \
    --limit '100' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'sm1RGi5AUiFdOoea' \
    --body '{"contents": ["Z72jN8bkz8VtB1Q3", "F1UG63u5FPYwy7os", "eH7JzciLeMD8xXuS"], "name": "rwUVDwWQGN0aYuwt"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Z1LSEOl2XcMIMP6a' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'xOlZrerhIWp0PBgR' \
    --namespace $AB_NAMESPACE \
    --userId '37OvGkfcIJsXORa5' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'F79bXcSezZV8nBMp' \
    --namespace $AB_NAMESPACE \
    --userId 'QoFb9cQOfkneK6Jn' \
    --body '{"contents": ["rU5qJhTGZqbHWWlS", "QpsooZ8lhsO4CuSK", "XXr2einxGwy4XHjG"], "name": "gWQxJl8G25pBDhMP"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'OQ7BCC5lwSpTtWHg' \
    --namespace $AB_NAMESPACE \
    --userId 'J6IKTeXzyHLRfZZE' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '32STMhOZYVK8enAt' \
    --namespace $AB_NAMESPACE \
    --userId 'kjegHA2cVzk6OeIV' \
    --limit '24' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'fOncLgYTtFLAXop2' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'QyVuosM2VojC75AO' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --name 'j9iz4AwQOQXL4Eut' \
    --offset '96' \
    --sortBy 'lO23rHcEnH00qM8P' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'NnRESIJrBYG9DQ89' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "SHYq5A3yiYJ3VTRb", "customAttributes": {"xWp2Hs3TQqZy67sL": {}, "FojGNeo4M80eVs23": {}, "ZdSobrDvcPk02dln": {}}, "fileExtension": "ElLXuxeIxbxLOiBs", "name": "EJScArrCKXE9TZ7x", "shareCode": "s4qKspYd0JfvNMj5", "subType": "bWB7CAPJxPoXjMPL", "tags": ["IGPogYyaFIvr9Tj7", "6NobBgesm4tqy9QK", "YcWbUOPSr7jjho0N"], "type": "yJ7YL5JbStHHj0cu"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'EhOYNsNQ28HzS0u1' \
    --contentId 'eOov9r8u1u9K6xpo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId '61B7TAXsYCMnnhQq' \
    --contentId 'XNQOe8FJ9NKAZw0E' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"hcCqvSlyVG5wi3kK": {}, "r6fT1ZDd6oxJOOiv": {}, "MOeWdgiEEWD40wfj": {}}, "name": "3gvZzSRkPabTlkRg", "shareCode": "40IEgKJcYcaNJwWU", "subType": "bZwHfKLSPyFXj25q", "tags": ["216w6fRezK5yioe0", "LrYjHu8wDjIlaMAf", "0kOGzLMoCKsdTzry"], "type": "s1I08c3aRxVLLb7c"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId '8bel9TyCVxVhxI3A' \
    --contentId 'F1M69xNJ9QzlZ5to' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "jNbjDifGI8wuIEKg", "fileLocation": "ija6LC62VtY1aoXJ"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'PQKDm8wIsIBLh7E4' \
    --contentId 'A0Cj1APDbWQBMjf6' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "uLOYFQwRc1CzPFJU", "fileExtension": "UbEWFeGy7uJGOvcq"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key '5Duyi6rRUDK3NJmf' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "mAHxldUqgojwslkC"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '100' \
    --name '5fFsfiWtY7O8hxTB' \
    --offset '17' \
    --sortBy 'Yn0z8aYjopg55hyn' \
    --subType 'JuXC8OHtCycwcouD' \
    --tags '["r4VWuNDMP7M6FdmP", "dEns8pNNqFYJtHi9", "CN4DtvimaD1ts8Zs"]' \
    --type 'UtwCOL2cAL6eJd0F' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["g6hgTLG77hFnQZIo", "VFMM7piABVRISuJa", "kv5iev8wKIoCNZA1"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["XPusZp5O1n3g36hF", "3W9Ckfohlagfmd21", "dZAOkHQqBYy2hadV"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'wWuMcHlFT8FIaiYE' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'Oh7cDS0QQghFybsT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'MoXtJWZgjuYPEAf8' \
    --namespace $AB_NAMESPACE \
    --versionId 'YcF8ye948etsWl1c' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId '7XrU8Dx8sZVBYJS0' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "EWLmWYFhobS35hOA", "screenshotId": "5SO5n9YkU4N4Eo3U"}, {"description": "yszHKv8tv7dJgyDV", "screenshotId": "nXNXwnE62CwnXgKW"}, {"description": "lhvEDXY3qNBLNNMd", "screenshotId": "fhuKyTh77rklXkY4"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'LbNx7IsukUpwPN3g' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "PR1l24JqB2W9GQvI", "description": "2ZnEApvo65LP5g7A", "fileExtension": "jfif"}, {"contentType": "9c3s7TeOEZFDfYGN", "description": "0rFU1LclmRsizZ5o", "fileExtension": "jpeg"}, {"contentType": "cVwsDKhj5Dirlewe", "description": "grECFjjXleybGmqK", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'mkMe5OLLGCCrsaan' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'ymYAdL62azLuyjAy' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'sHrCpSZAV0lv3usT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'vQYUw2QiNQ97IlHd' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '64' \
    --sortBy 'EG6nX0AzhW47HzI5' \
    --status 'KJUytbQIfofWx4X7' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'xfybeIFEMtzbqWWO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'uv5WShFsSGsU9UUZ' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "Ll62HSaVQi5jIDqe"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'emWA4ThGWdfgskRu' \
    --namespace $AB_NAMESPACE \
    --shareCode 'jLzicLA4o0TILib7' \
    --userId 'rw1GrGVY91oXvJTI' \
    --body '{"customAttributes": {"rGqegmAHWLLJZ3TE": {}, "p4ksZqm4DOH5FAsO": {}, "1Q3RjplzNpyVcuHn": {}}, "name": "vi0BkLLu4IkzN1om", "shareCode": "wOw9G0r4DcPoiaK0", "subType": "dJEQ1ZioNAkTn47s", "tags": ["4rHaueB5peXfJIOu", "OAqsuKz5zT4YIdcA", "qZgwVOF0YWJlxeHM"], "type": "LQu5smULHTnbXKYY"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'D94pPjIeFAbhnCLm' \
    --namespace $AB_NAMESPACE \
    --shareCode 'do7PZm3Xvdas16Hr' \
    --userId 'tIjlPqpwh3iWmuaI' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'g8YNYVsQAeMQy0tm' \
    --contentId 'K9YgkBO8Sav6R0YJ' \
    --namespace $AB_NAMESPACE \
    --userId 't0tWvzkdzHSkfO72' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'vZUxIjAVJYL8gVT9' \
    --contentId 'tBC8jVW47uDNKaIk' \
    --namespace $AB_NAMESPACE \
    --userId 'ls88Pz2vdNJ1NA7h' \
    --body '{"customAttributes": {"qaA35YaaI9jJ7Amn": {}, "mYJfdSlHT7mJaw7C": {}, "StjUcA3BbacwI0jO": {}}, "name": "g3rhOmPAfXm2X4Wy", "shareCode": "NlNZmFnBtBDx3feb", "subType": "QYPhy6DjAwEvR7fj", "tags": ["fzkIUuaPHVl9naaP", "4sCrruA7ykXwJmvg", "t1sptdAQceKjq4JB"], "type": "XR0jRxkNSjV5YWJG"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'MYM7KYx90u5vMBmC' \
    --contentId 'QA4jCEYP7kkipf4a' \
    --namespace $AB_NAMESPACE \
    --userId 'KVmo3zKnOaqIy9m3' \
    --body '{"fileExtension": "inY9JLqwvLVv6HGd", "fileLocation": "Tay6ck0DSLnaocmz"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId '2tcDTrYwN7DTAaUQ' \
    --contentId 'mNDGDIunecXF4cyj' \
    --namespace $AB_NAMESPACE \
    --userId 'A0fN8TWbI03Uaw8V' \
    --body '{"contentType": "WCYsNqQkSjTkRa1d", "fileExtension": "E58NEPzwtOxWD0i1"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'jofOEpRuwhpsALA9' \
    --limit '64' \
    --offset '54' \
    --sortBy 'KZqAC7douneXgf4E' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'Ss17e1G2pENYp44L' \
    --namespace $AB_NAMESPACE \
    --userId 'fGb5qryksOnyQwoL' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId '9LCnRc4d1iHfPB6H' \
    --namespace $AB_NAMESPACE \
    --userId 'T2QmLu9pITeBH8dn' \
    --limit '83' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'LKScTmfsYNu2UovD' \
    --limit '2' \
    --offset '68' \
    --sortBy '1kgedinfwIWpbZIX' \
    --status 'OKkJDAg8DOFTziXQ' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId '9dSnNWxlgGzsG0s6' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --name 'FyUfVqutqA7kbULP' \
    --offset '13' \
    --sortBy 'YwpNNRlE8RByP3pA' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '87' \
    --name 'xpxZBLorhI98zHXm' \
    --offset '6' \
    --sortBy 'V3fYS5xOztsz8zjl' \
    --subType 'jpFTZ4N3JmfkYYQ9' \
    --tags '["7co8DBLkBIsAqceL", "e2wFlqghHvePKjzX", "jwKUHY8S1HiLmoOt"]' \
    --type 'rNNtCaMo6dkmVcTc' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["pwNOtJqJvcJEbOyn", "D4MuCdeY5oI0kUGR", "JJ2LFK3eCPyxLy5l"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["4wwZWL59QBjLYK7c", "d9Gk7SZ6JkPMW6l6", "nDI8QSragMD9f5ny"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'DXuLkhgs8qZbi86W' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'PfJ8MOHiVp1y3KpI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'JujscMJhtOXiX1f5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'tRFAewowZAyG58bN' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '93' \
    --sortBy 'BcjTxHmK0A5pSA0s' \
    --userId '65P00fOjgOuFx3tr' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'NZ5n1yjiKpkmSB7T' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '57' \
    --sortBy 'pxt4aJd6Gymvbz0i' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'd3GDag5SC2Sb1sy8' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'J4ReAB9yOkjNUHxf' \
    --namespace $AB_NAMESPACE \
    --userId 'E17pgth0p5QWvuoi' \
    --body '{"contentType": "skK0FCtroTmfSK81", "customAttributes": {"0N8Z5SSKO5jisnmb": {}, "5YVC78p5EMoUH4E5": {}, "uEvcMgDoxC2hT7HV": {}}, "fileExtension": "8ooZ6zuPW5jt2yXy", "name": "7i0SCkolT03HaS85", "subType": "hixZmVIMVj3Gpjol", "tags": ["Fl628bD5zDACRz5j", "2oYejGfvXe2pHZKz", "4oOGf93lNWFD2SR7"], "type": "bGSJiqeIkxRBNREC"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'kqstO3lscUwzjfkb' \
    --namespace $AB_NAMESPACE \
    --shareCode '9tKTEqJ6cXrKWynq' \
    --userId '777pAciPNcF80MRV' \
    --body '{"customAttributes": {"b5exXNZdR06iy5qO": {}, "4nmtgyoPU54mLxYT": {}, "HHHwoLmQXYCgIZTd": {}}, "name": "AUWoiptyiAyiyKan", "subType": "2vdkF8NE15eXE0Nb", "tags": ["x78C8M8fUAlpeEQD", "66DKiM2xRezd41ff", "CJZa4ngYZo59x7V1"], "type": "JHsxvlTvAq4TLu6Q"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'TPldg8aXkQwUiiBJ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'tLlU2jOwhkpMNPdk' \
    --userId '95pBxnleeL9vtLNj' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId '8BtIrAbfObJMtASQ' \
    --contentId 'nI7rhGYQsFFIDWvJ' \
    --namespace $AB_NAMESPACE \
    --userId 'R5j6YJK2juxHX5P0' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'DKWSwXEy5FN3jSvP' \
    --contentId 'eNuQSj15iC1TkSbY' \
    --namespace $AB_NAMESPACE \
    --userId 'sFqVlBcXcezUjyJV' \
    --body '{"customAttributes": {"JPDE0w7rR58P988F": {}, "cRyoaIaMgbGGoybn": {}, "cgz4a8078fHtTz8i": {}}, "name": "2SjP4plnaYOyvdu7", "subType": "ogeVK8WWeacny5Q5", "tags": ["hQfaiAsWNhxSTEPY", "dJ3DrOxkzeuAEQZu", "0okDSSCJWJx9lzit"], "type": "ZLGnzRKwYBOkN4tD"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'fTJ446ewqj6dehEe' \
    --contentId 'DEgCY1mXCZ50AMqp' \
    --namespace $AB_NAMESPACE \
    --userId 'L3CCga1f52vvsDno' \
    --body '{"fileExtension": "L4gIFPX9crjWFUim", "fileLocation": "J1lIXtA1FMn0RG37"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'ET62zXhyL9pmr8y1' \
    --contentId 'WG83H6pgq7rO4ETM' \
    --namespace $AB_NAMESPACE \
    --userId 'MOQiGo9zUH5fB5Ls' \
    --body '{"shareCode": "PJZw6LA1W3oBA0a3"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'zIm7oA4GbdK4Zgi7' \
    --contentId '5IKlWPRqVNCBhpMv' \
    --namespace $AB_NAMESPACE \
    --userId 'teSpeNgATcULOVTg' \
    --body '{"contentType": "TUQI3yAeqPprVv5u", "fileExtension": "UjWf1A5tc0uxftt0"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'W4qkvfHO0kXTrX1q' \
    --limit '67' \
    --offset '3' \
    --sortBy 'KC83XklRf2tN0EOn' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'CLHfngDudqrM1TVK' \
    --namespace $AB_NAMESPACE \
    --userId 'RYrVrxqCpgxNAO9H' \
    --body '{"screenshots": [{"description": "YqwIsEQINEbx1yuS", "screenshotId": "N6hndUmwrRAFZbgj"}, {"description": "4eP3sm9VGWzSWipi", "screenshotId": "CboRGV2dAY7ZbATM"}, {"description": "w8g0IktwpLI3W4ZM", "screenshotId": "Ggqy8dZSM5PHtAHB"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId '6ujp8urVJW0q28gM' \
    --namespace $AB_NAMESPACE \
    --userId 'Pdpk2aHEYInUBxPa' \
    --body '{"screenshots": [{"contentType": "eUrzdguSbTjJKsJh", "description": "sYp1TCoQNQLLk6FL", "fileExtension": "png"}, {"contentType": "sTV2Gc0zwbOIOeUr", "description": "lcPCLthnEE790LZF", "fileExtension": "png"}, {"contentType": "5sJzsids6Gz4sTR3", "description": "6B6Bo0267Xg9BHFY", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'ac4lbqxWAN9tXTWI' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'QxQBZByNJsBcatyJ' \
    --userId '8dQ8je3dOHNfRxSx' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'IGMbzK7E1EDNJn65' \
    --namespace $AB_NAMESPACE \
    --userId 'ROboNCtZwxF3tWBj' \
    --limit '69' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId '0cFKgrLtqnUUvTB0' \
    --limit '3' \
    --offset '87' \
    --sortBy 'YftNz9aPSpLA5aRY' \
    --status 'epMMfwzMeRty6E00' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId '6jBhIUctp8udZ5uH' \
    --namespace $AB_NAMESPACE \
    --userId 'ce9bNGzZlH8rN1A5' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'qhtIddzAAVhUI04T' \
    --namespace $AB_NAMESPACE \
    --userId '8E6CmNLcmQTFfT9G' \
    --body '{"fileExtension": "eM58aO0RJfIWcxPi", "fileLocation": "bZuLI1SxqAIOzuJw"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'Ld9OZbvlZ9dq0Vq1' \
    --namespace $AB_NAMESPACE \
    --userId '3X881rKEeHYCi1LH' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE