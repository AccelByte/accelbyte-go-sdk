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
    --limit '70' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "BamQVQAXU6EPttdS", "name": "ABAdCIQ28Z4kPtqf"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'PqpdZyegxHDYbNPR' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "1rcVTlkD4ZplmaEI"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'Sd2NhgMTlgj7A3bX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'WjxmadVQtjNF4ImB' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "dsT0xEofDVydPCZg", "customAttributes": {"16GBP7eKvPdporJJ": {}, "41pQPlwKfnmd3upu": {}, "UNxvtA32hTMmYDx0": {}}, "fileExtension": "Bf6jS14uZTvZIm7h", "name": "cKU5QPC0kVfE2uGV", "preview": "VfouZo63dEB32uJr", "previewMetadata": {"previewContentType": "ZqGtcSUcFdA9EkLm", "previewFileExtension": "FxdsZI59vv3LdY0b"}, "shareCode": "InHgHtGc1xJhvAY2", "subType": "7D2Nh8b6QYQooTux", "tags": ["vyYsQ6DhTIa2d8xl", "VwefSIAN3iOffLE5", "MOm9Sv9UQjPuTkTX"], "type": "HkJ8dri1m5YzxvFn"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'hffqTOgmFDbf1FKl' \
    --contentId 'yuLCYXNgypRFH3cL' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "IOyT5XDqmNgQpo9h", "customAttributes": {"tPQbPjeWqyezI8cJ": {}, "wCwJKcsKxnJeI5zE": {}, "Ra35kQxAL1MVD17Y": {}}, "fileExtension": "cEwWkvLrzeTi217q", "name": "rNn9hmlXsKdLWl7Y", "payload": "r6dKIwLqcr1zQ8gM", "preview": "L3PvhpTSA7OhKXte", "previewMetadata": {"previewContentType": "N7wiC1ag5IDaLw1c", "previewFileExtension": "0DoelgWYLSUHL6LN"}, "shareCode": "Whgc6AweonFtp8av", "subType": "qiRkG2H2vWTVrf86", "tags": ["uW46chnPo3VvdzJW", "CcKwr7BO4cKOXFAS", "zb8ihQz0jXoBHKn1"], "type": "JIfkBCbD8SorCFo4", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '2RGC7IoYHj8Udt2O' \
    --namespace $AB_NAMESPACE \
    --creator 'YB2KgSt7cqBU65v5' \
    --ishidden 'QTxT519kFITSOX3D' \
    --isofficial 'GOjzMZS19uuzVtLW' \
    --limit '69' \
    --name 'ignvD9w7iByqSXrx' \
    --offset '67' \
    --orderby 'HPgZUHMEDBx6sh36' \
    --sortby 'QpOwdngFToFHl82V' \
    --subtype '7LHxpWi1gaNKxaOi' \
    --tags '["fNwmP0qjhcmxk2pT", "oTM6KfydbYPxfZVP", "K0jreaGGfTwcHRWl"]' \
    --type 'at35PgtLzIEyCp2G' \
    --userId 'zCyueJoSYgleA4ru' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'PRSYGfZFtIZYvGra' \
    --contentId '0BLFOr9wBFOgKJkR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["HzS2mbC0QQ3j0jxk", "OIb0vjMojkROTl3p", "UZjcToDlq7zFd3QU"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'YVcDBASWDZvbnAKr' \
    --ishidden 'R6Lvr8JQVWEudQJW' \
    --isofficial 'yEkSYqEAmaCG8uVV' \
    --limit '58' \
    --name 'd8r8PMj813i4UTvl' \
    --offset '69' \
    --orderby 'ZXVLClwfbCRWykwO' \
    --sortby 'C1MuP84fCIKPtbHi' \
    --subtype 'W1d4c7WGOd9VOSZX' \
    --tags '["oC7ZmzRh5h1i3szr", "XtUPDX8PphnlbBae", "g79Hysgcqu3NJRYD"]' \
    --type 'lbFYYANsyyOKYE5Y' \
    --userId 'LfzbGHPXrPi7314K' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["LttCIgPp0LsB8Uq3", "o5gbvxgKjihzoMzM", "vdXCghC82qkDn2Xt"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'xB6zyZkFaW5JqWJW' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'HY908epIMWNBd6iF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'XykRFUE3EttENHKF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId '9ARi8snSzyr2oy0R' \
    --namespace $AB_NAMESPACE \
    --versionId 'kkrqREqJ8Z11lV8H' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'MVA55RL6gyqdAFLC' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "Vai7ASBZgelZ2fQr", "screenshotId": "QVCNa9k75caxASSP"}, {"description": "2wx0RuMvhOIowjM1", "screenshotId": "hAIM5BkSiKFSybXa"}, {"description": "bhq9dJeXnGQ2EQbw", "screenshotId": "CugPWfZw0RZcKsQJ"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'TrTUxD69hKGZA3Li' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "MntQfM0KbLwflc3h", "description": "tMweR8exSXUxlDBI", "fileExtension": "bmp"}, {"contentType": "Dz6cg5tVea43Sg4n", "description": "118FKsNwgbhRc3JD", "fileExtension": "jfif"}, {"contentType": "g0SH3qrgPK11xfLK", "description": "jCilU9c5KlpuNqKP", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'hSwgtT8YliDh9xn0' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'lmcOvNXEcLtEL8m4' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'JLPkyvUe0Nz6oN2f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["mMpEzrGosBnFsPT6", "6XXXKrHp63Tlv686", "DwWkZDCKBwKrNzcW"], "name": "xfbcXEvXpfPbvGWc"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'QG6fuPLSPG77nSC5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'EHI5aks0kdP9dyLq' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["AIs14Ij6sHdTG4nl", "FMchQOZ44HRYUX08", "FvAojzwJXblN8tO2"], "name": "bXCbujAwUL9dPMHy"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'Ah3i8MFijufXxxO6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'iVFyPS2IEcPmK15T' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "2PrVwDOHw91viq3R"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'nBdAusp8pxE3juFN' \
    --body '{"tag": "QEjsk8rM8qn79usL"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'PdAxToZH2ixkaLga' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["8EnfQx0T3h7bFFZi", "KlohCWlz9Viy0uaA", "qBHRFEVlptLVulym"], "type": "GoL5zi3NyOphQ47G"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'cQi271NteyonOQO7' \
    --body '{"subtype": ["OtcCNbJ4bHrjMVNp", "rhHwa31cGR4UNOzR", "o1vLp9hIxGHXUt3T"], "type": "RuLQPVVu1IQ2fKVU"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'qn8jqlHlxw8oqwAz' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'vM6h9iFkT4aDXsUC' \
    --limit '52' \
    --name 'cjd6kyGXr8yUvXGR' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'AKs8Zfri8DoM8eFk' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '6mQhpx8GGaAsnOvP' \
    --namespace $AB_NAMESPACE \
    --userId 'FiQLcUozcvWXWmRk' \
    --body '{"name": "hRFpUmSsryEkXkmF"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'MQTmZDPc51fru7T9' \
    --namespace $AB_NAMESPACE \
    --userId 'zPNkJrK5WY6RPuUi' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId '8AHQsiziixWFEGMA' \
    --namespace $AB_NAMESPACE \
    --shareCode '26ZtOIjLAzqa6Dsr' \
    --userId 'ddWStkUuaUJPeRPo' \
    --body '{"contentType": "6bYfQ7J8F7vIat1h", "customAttributes": {"hMjpLijI8CzaZRYa": {}, "XN3u5lTsYvjKGOOV": {}, "2E9lpIvV2JyCNZyS": {}}, "fileExtension": "V45JGmtAQyOIuRYL", "name": "oV3iOIaGwlfBQnMG", "payload": "9ieJuQOJFcujMdPf", "preview": "rkeK5O1cHkKoynb1", "previewMetadata": {"previewContentType": "yk1DRrrorDxdCd2M", "previewFileExtension": "E9u7fnmXBqMuK1zO"}, "shareCode": "59EJ4nTqZ4NhbXvd", "subType": "kSm20d1s2GBFStxa", "tags": ["bTtlQhNK6TstgrWo", "zWPF79asuDveZPal", "XYfWJSBamz2W4qU6"], "type": "r0caOAbbukzHHjvI", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'Fgmet6nuEdrEiqV7' \
    --contentId 'QmX0u7xfWMHtkyo1' \
    --namespace $AB_NAMESPACE \
    --userId 'd1ttLJNIlRaT73rt' \
    --body '{"contentType": "AhS3OAUbjOOIKWSQ", "customAttributes": {"bYxGCCny2nv4XUZv": {}, "Zm9gree8guqoy3kL": {}, "mSGiAeNrhbgDywNP": {}}, "fileExtension": "37Eu8h7S0fyom4IA", "name": "DHclWYghJu2qWoNO", "payload": "UE73bnHoy4EyVMwY", "preview": "DcMoDQpJfgpUg5bG", "previewMetadata": {"previewContentType": "URnPTI5TlsCLPzDb", "previewFileExtension": "1ZyeyAREYL4TL6Bb"}, "shareCode": "y5gXho7B2ING2qhr", "subType": "SIWKUTzc55iY3Urj", "tags": ["U9SyFql9zhhAaXNm", "9YlcAKCEXlnsKomK", "pC8atrcKx5uHI1X5"], "type": "4FHdFKHSfe3id9QD", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'HSyejCgQnoFCRHLa' \
    --namespace $AB_NAMESPACE \
    --shareCode 'wUjG1raGXhsjT5JC' \
    --userId 'ajpaDB1clUq7fPN5' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'DvCgyq51QhlFdNAE' \
    --contentId 'hhYgzVFhuNyyGs58' \
    --namespace $AB_NAMESPACE \
    --userId '3rKMEdy0d0GKFfjY' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'tmy1XaRGs11S3xl6' \
    --limit '63' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'JbVOwahgJqufcKFr' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'eMKqqeOcxwprBRW5' \
    --namespace $AB_NAMESPACE \
    --userId 'f2mSOb9F9LKWxrXv' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'ATOiNIDKaRZZs5M1' \
    --limit '13' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'AQ0KuqMB7cRcvzxt' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'eGuF1trbDNq0ovJr' \
    --namespace $AB_NAMESPACE \
    --userId 'kt9K1OyJCrlUHpGQ' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'o2Mwb1ezuqxTkvIZ' \
    --namespace $AB_NAMESPACE \
    --userId 'RtkDVMBYrSWUam5g' \
    --body '{"contents": ["JwXS8GUCndP2VED5", "7lzSX7BEDn45lZx4", "CDeGsV4ZjkVC4Ue9"], "name": "22B2iorxvIRSFeXg"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '6PC05VJ95yjamfk4' \
    --namespace $AB_NAMESPACE \
    --userId 'TsezAIy3NZkXLtf0' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'b95W82oFbx020mGr' \
    --namespace $AB_NAMESPACE \
    --userId 'voAa28mtedskhcJe' \
    --limit '67' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'EQNetGpF5825SbeK' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'C8ETiDZpKDeWwfNC' \
    --namespace $AB_NAMESPACE \
    --creator 'YTJqaY2pJUvjWsMo' \
    --ishidden 'ceBn9pO3eEqXZUGk' \
    --isofficial 'bl9ZSF8olxHvdLFb' \
    --limit '23' \
    --name 'ly0D1bywUmEbSA5z' \
    --offset '29' \
    --orderby '04chz0TMCAQknvIH' \
    --sortby 'CcmAauJLxeicLKlo' \
    --subtype 'HpCtjFffG6Ik5Kqf' \
    --tags '["XN6Xto65u6x24VKl", "q87K3C3Qx9img6Ka", "RxoXpoPn3r3EHMvK"]' \
    --type '9tvWj3tijTuzZV12' \
    --userId '5bZnLvYakwd22ECw' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'QG5Nxis6zJo9dTfG' \
    --ishidden 'K4IJvyOYvMj2LWuB' \
    --isofficial 'NmYq3ECbAOxtzqiM' \
    --limit '98' \
    --name 'gS3mr0wMwsYYmptf' \
    --offset '94' \
    --orderby 'AGoUreoBYIfRaiSR' \
    --sortby 'O87wNZfwDGtoL8Vk' \
    --subtype 'ahIgCEpdA011oMl1' \
    --tags '["5XHExD4aM2xFQiDe", "9ltSMvRCwdZMH0Iv", "uA0zcDEYezX1KAGb"]' \
    --type 'AesNqKR3JTM0QzRy' \
    --userId 'x0EQpSsR10KiXuzJ' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Te6pWqd0a4PC7NXn", "ou3cHp55rdGBeQaH", "0hQNTEqli2iQukmA"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '70' \
    --name 'XFMgAviXJMT1xd6U' \
    --offset '21' \
    --orderby 'TtbVrcEFHBWD4dBW' \
    --sortby 'PHyZlfAittSOPrHx' \
    --subtype 'Uq4BZSQ1LCLO3vVe' \
    --tags '["FtXLJscPDUpkJdiR", "TzxxZ6oCoi20amO1", "SatCRVck82kefv49"]' \
    --type '5bW0P6y13aLQKZP7' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["QFuehLf2W5r4YsYt", "H7G7gava5yfudhu3", "0jgrCltBSWt5j36Y"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'YyatUPooo05shFRU' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'WO1e1XhmzLwgcmuf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'bRdhCmFbV50OOQ8d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'AdJuomCe03wfK5XT' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'vZhlkVHQ1MXipcjl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '29' \
    --orderby 'iBc2cH4PvSIceeyO' \
    --sortby 'sXFS2lFYIUTvE3q9' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'xie7KREMChzNtXkH' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'TKWxEeaeLAHTQGQo' \
    --limit '3' \
    --name 'VPQqR7trRS8afD9Q' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'B5yRaUo11zR9af6F' \
    --body '{"name": "0CQDHIntZLGyijnN"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'junzcZgko5wsOB4m' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '4hHu206mfm3aKZQP' \
    --namespace $AB_NAMESPACE \
    --userId 'VtvqkUVplQS4Pf7O' \
    --body '{"name": "wkzqrgFJTVwGdBfC"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'vOTrXyX0I2MkcF3b' \
    --namespace $AB_NAMESPACE \
    --userId 'mf7JzlfiMPH7aFxr' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'nniObzAEHi4uHS3D' \
    --namespace $AB_NAMESPACE \
    --userId 'GGHjpR1QC90VaujZ' \
    --body '{"contentType": "w1K8eZln166ajoOU", "customAttributes": {"IeaWkleS3l3AEZ0y": {}, "2h80vhiUrGPbfZHh": {}, "b0HWhKqVzmDPnoum": {}}, "fileExtension": "9bSWJut75U1z5Mtn", "name": "EjTJkvYqdcFKnhXu", "preview": "SaUhOz1ci6vn0otn", "previewMetadata": {"previewContentType": "qbn4O3tLp1hG3xfH", "previewFileExtension": "nldbdcwabhdLTITA"}, "subType": "zxOZkp6g6ni9eTGW", "tags": ["IpkZFPJTsfG3SkNI", "OAWuq3oxDWiSirU9", "JFuQgOIQj5skxWfK"], "type": "fFfJnLLWXmtYKa8t"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'jCPhJddxydquu5cQ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'GNj68UG6D8afjHLf' \
    --userId 'yPdHWgDAJ4ibiJFZ' \
    --body '{"contentType": "zxL1amhFOGOSKgrY", "customAttributes": {"0LqBYYtqcPUAWadn": {}, "NbZDCBJeVvan1J87": {}, "j9FO93JruYu7XPWY": {}}, "fileExtension": "pXcbkI4WHasmvidM", "name": "d1Q7RoQ3kbrElFx5", "payload": "Mk0g4Mabb9aM4N9s", "preview": "4Cr6UlXJWQoQbsEq", "previewMetadata": {"previewContentType": "Z6AlL1YDIG6WwQGg", "previewFileExtension": "joTQqp3DnGOokxXk"}, "subType": "SQPombh41JUXdi3b", "tags": ["8JkBUW4RWLh5fhpH", "sU71eDKzAVMk19zH", "SadKdetzPAGmuo3W"], "type": "DPryydbABqQboxM0", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'lpLZ24OriUcDPMB8' \
    --contentId 'l11d6W0TjlgWdcxT' \
    --namespace $AB_NAMESPACE \
    --userId 'Z8aNS8FLAuN6wQUv' \
    --body '{"contentType": "gUUCwLCWuaKNX6e5", "customAttributes": {"zAoApp9e859Arvo0": {}, "HnAdAoEKvJXJVdkE": {}, "RTfWZdFsLzP3cDVs": {}}, "fileExtension": "bPe8g1CdafFNox4s", "name": "JYXy1eD365rVukha", "payload": "u6QYkXrSbJwsXhe7", "preview": "3ibikcGL5sTL9BaH", "previewMetadata": {"previewContentType": "FBdwIkmuC8PyLB9E", "previewFileExtension": "QWrXptIvm5G4KtZj"}, "subType": "rjbEfzQPzA2uP83v", "tags": ["k4S8Y745YdTwacb4", "jlomR7CcGaSFril0", "jub3yUbL1DrlIWPT"], "type": "GvWoHnsQvNRRxX7M", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'Al49b7hYpiDtThsq' \
    --namespace $AB_NAMESPACE \
    --shareCode '97nvhUhNLwPHDysj' \
    --userId 'AIwzVn67fYrjbTDa' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'QtLlKV0b6ShlrCMc' \
    --contentId 'bk59bXeefUNOx9GK' \
    --namespace $AB_NAMESPACE \
    --userId 'yZ0NRqQ2Dl7HEoWV' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'NuFAIEmJiOngAm9P' \
    --contentId 'ldJUVLggMKIPjF0K' \
    --namespace $AB_NAMESPACE \
    --userId '2NcQ6iIYHpqTPK2h' \
    --body '{"shareCode": "fprVS08dOXJoGOAr"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'RsF902blHdguK7HY' \
    --limit '57' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'dvcFA7vaeotj2UQ1' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'imG7ZShtt1AwlmF7' \
    --namespace $AB_NAMESPACE \
    --userId 'teDfb6cpBZ2aT8qD' \
    --body '{"screenshots": [{"description": "kuc30WvmFgSQSM05", "screenshotId": "DcdREEUBnd063pHF"}, {"description": "q8CcIL1xDVR5wt2v", "screenshotId": "puGltcTKkjnb2KC4"}, {"description": "vyU47IGPXw8BDhwX", "screenshotId": "ng5ajgyCrjxpVDV2"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '8ffC7DuqabF2y7Io' \
    --namespace $AB_NAMESPACE \
    --userId 'ICWj0NK2lb8dTtdS' \
    --body '{"screenshots": [{"contentType": "Ga33GiTyxWwnXAMW", "description": "0El7uS87ZuhVt1uc", "fileExtension": "jfif"}, {"contentType": "mRklXmcx3A8Nx4X2", "description": "zXSLZyf36RL9wGYn", "fileExtension": "jpg"}, {"contentType": "K9nsigWR2ljy229B", "description": "b4MFCFDZQDiSw2wO", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'MV25NBJEY6PhpFdT' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'Q7VLKFgg7EwIvpno' \
    --userId 'IgzEQ5qlFOU4J1xG' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'PHGpTzNPm1Qsarsx' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'vrML6n6CTXkEvs6d' \
    --limit '72' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'AGNjWYBPIhJ6tO9A' \
    --limit '34' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'O5bNOoi1HKYmtCD8' \
    --limit '28' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'i9ZIjq2ZYCKKhiaB' \
    --body '{"contents": ["az9IFL7u94mkyvjg", "AeMBhJmUyC5k5QJX", "VEONDcAt4Sim482W"], "name": "ma8rJ9683BtYWajZ"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'DJcLbmVxKsdW9rTJ' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'EAUr4Ezx8VwyiBjN' \
    --namespace $AB_NAMESPACE \
    --userId 'o5p9ZQSysKkBiBLo' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'ciLZ21d9xgus5leV' \
    --namespace $AB_NAMESPACE \
    --userId 'wlXJREIQIoiGsh6w' \
    --body '{"contents": ["jqiklZU8VldPkr8b", "RYmvCmeZxX31BJg2", "OeKp5EfESJifFdFS"], "name": "AN2iFAHUPIktNPqJ"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'WMywOxpyMKZ3gUKs' \
    --namespace $AB_NAMESPACE \
    --userId 'WsOVDGrlc8Jkjfrd' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'FeHXP75WtHPLrB1j' \
    --namespace $AB_NAMESPACE \
    --userId 'fdHsjZt8pl9lv4Zp' \
    --limit '29' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'QNmD4esIWnzYnv8y' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'ZboonDftaTJwHW48' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --name '6WE0TsjvBU65nc2k' \
    --offset '76' \
    --sortBy 'e2kwJzZVAveVUOke' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'XXRKj65oAD7eyTYM' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "eyuop6defjcmvVlD", "customAttributes": {"R9OWk4yViiOHSxx1": {}, "HCBMn528Gla5S3QG": {}, "SZiwlVTxl67MOuK4": {}}, "fileExtension": "HVAWGKFyAAOiBHKL", "name": "JwIsHr13xnbsWtT5", "shareCode": "FxCDAPICy0GgLdn3", "subType": "rELUcpsVrtbkknCE", "tags": ["PnVTT8rBjucTeCD5", "jKBwPhA9Kg22J2zN", "qSYZ4tMD7XkVMRBT"], "type": "tR6TRsfD9qRTlUsI"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId '2MVZIeHeNRv5qQcf' \
    --contentId 'aMzAETOtCCRtd48W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId '6loVU1fJm1W2vcSI' \
    --contentId 'hYZhpLxNLQUfKaq0' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"PR56sjCTG0scMMve": {}, "fVMypbUneZNOJRWE": {}, "sq6t12AkX9R7kn7j": {}}, "name": "9bIHhn70GN6BXSPU", "shareCode": "xCJVclD4hCWRzgSR", "subType": "cQYbW7q9bv6Wnmys", "tags": ["pcTPUbd5PJm1TlId", "UEX2aCEOEwCd8kSu", "zdcE3U7nVC3OVAlS"], "type": "K8NabGbVVd4LLpAZ"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'DOHE9LjkpkZSKfmB' \
    --contentId 'fjlvQldunJAoID31' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"Jv53OaetHBgrYO5v": {}, "Jls7M0Mh4KWRZmGK": {}, "rLeyrrwgxFZALmHb": {}}, "name": "fNxiJSfi8eXevUZU", "subType": "FJXggpgI9YqMZQsI", "tags": ["3Kh1LY4gXWoyWlFQ", "zE9A2ZjKLYmZLFqV", "258sxED1GlPyvCVA"], "targetChannelId": "YxqcVF55A9VnbRRr", "type": "yjvsYdMmyg008OLG"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'XqFFU3Pnb3CdgFdY' \
    --contentId 'ZoJPAagSeAoo2lID' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "K1MIxJWQG8xIVDEw", "fileLocation": "40IfVL5wgiA1bWQ8"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'tAUzaHqyJSLiBiH9' \
    --contentId 'U4rjo1iWsAi6waKe' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "42Zbe2zIWGaY34OT", "fileExtension": "51yUXA6QVE9iKeKc"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'eUqZvCXjie67F3cJ' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "K1Q9WYR4ePQ2TdxV"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '10' \
    --name 'DZtG6KvqQQ5LCnHs' \
    --offset '0' \
    --sortBy 'Awbyzo7I99waV5aR' \
    --subType 'AqXQhpYau1e1rGQw' \
    --tags '["HDdbyzc5YOUlMNoJ", "VUfYrAdybKfT5Xgr", "OGP1zjumk7Yh3dWP"]' \
    --type 'bJz6uWUaQBw2ydvk' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["3r2LEsXDbx8RPRiI", "YREUL1LDVRSpFQ6C", "h0sjRiqzN1oKXu0s"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["zrw7sJhwGHFoe2uW", "Gl0l7QhRVnIe1Ph3", "CDedChvxaOaYKSMQ"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '21mSvokI3QEjlssy' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'E1utlj2HtzGQ1VVd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'KpAFaDZjuZmD3R0G' \
    --namespace $AB_NAMESPACE \
    --versionId 'a0GYxL8z3zpNcDbr' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'z21pusLJSOXCg0H6' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "eqApSAbeiwo9BmUc", "screenshotId": "45K7GovxIgbXaiGS"}, {"description": "p09rYdxYjsadsJEC", "screenshotId": "3g0yFU6cBp1szmI8"}, {"description": "HRuNz1hBG9GlDRJF", "screenshotId": "e9VOS2A1EDKRfMLJ"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'k3f5lhVQ1466x38f' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "h8pWpffO2hcSMQvG", "description": "hae00023UqNVVeg0", "fileExtension": "bmp"}, {"contentType": "fkWj0wADOnCpPIUE", "description": "ZfcDHRyKvyy889z8", "fileExtension": "jpg"}, {"contentType": "kEuageaNRktoIWLH", "description": "uVrbsIfQOa5cYMaD", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'B7KCownsMZZU8b0Y' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'boL5gzTMgWxTqNil' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'TT3SFqNqqsoCvgik' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'Fb2VMHg6cHBlLZN3' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '24' \
    --sortBy 'WkeD9HA63ldZ6rhO' \
    --status 'vpDOAYqH7mTYyCpW' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'TGKfHgtitjcid7d2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId '0HHIYjdTbdYvJjLS' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "rRrDkQVjaRHhtvvz"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId '6YsX9TMdSk7zNH7a' \
    --namespace $AB_NAMESPACE \
    --shareCode 'P4UZU6l9uirtBn4V' \
    --userId 'h5m0GNOM1LSXHbVh' \
    --body '{"customAttributes": {"MxXAmdHC8OkXfXF7": {}, "Iwzqdij7AskGhRUS": {}, "rf8ax8EBJBMSkr9g": {}}, "name": "cCUxDaxnyocHFFZg", "shareCode": "oplUbIREDdMflErG", "subType": "JvNv3GEXJwh1hPGQ", "tags": ["xd4xW8mkwjAb8Bme", "pQpwYIcFpRa7d9Bj", "lYfwqPDLqLBmZCFA"], "type": "Dockv8U31VSFiUKu"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'ZkxmlrNs3RiWaLuk' \
    --namespace $AB_NAMESPACE \
    --shareCode 'PrDCzBCApmhzDgVH' \
    --userId 'rr2ql1ess8Enn4nV' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'yDUeFNDcNT44N5Xf' \
    --contentId 'yvRSvJGhogXJ81fF' \
    --namespace $AB_NAMESPACE \
    --userId '42uhOUBKvZ4wSASP' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'bv9JRQvoRXSi8tNm' \
    --contentId 'ZC9JhFbZEG745c5Q' \
    --namespace $AB_NAMESPACE \
    --userId 'llgsixHojjZH6QbM' \
    --body '{"customAttributes": {"5k6LXognrCOhzxol": {}, "rzNAPGLRnwAMExa1": {}, "I758WvFWbA3SqFWJ": {}}, "name": "IPgMSD7Z7MLoAZCQ", "shareCode": "IkMkBxWJjbEZ5V9Z", "subType": "RvvGlOwgrAM6owD6", "tags": ["33OEqpLjOaqBlVQm", "dJHjYskqG1bX11Uh", "34EVqdiR4lcETtMh"], "type": "hhcftXMZ2qn7wNhC"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId '6lXtDe56e34Sl9Ie' \
    --contentId '3ld9trW0kJTJhfCU' \
    --namespace $AB_NAMESPACE \
    --userId 'SwYepKaGwMWCtR6I' \
    --body '{"fileExtension": "eAZBDTb6473Nt273", "fileLocation": "s2gnxuwxNucvmtuh"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'gc0veQjelDkHQQIR' \
    --contentId 'p0OtnLCDyntwQfnT' \
    --namespace $AB_NAMESPACE \
    --userId 'Ccu05bbdP8Mz8QJK' \
    --body '{"contentType": "cM9Ql6fNz0YTizZl", "fileExtension": "KdoWtd0FjLAIznk3"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'RvYs0x6AJClYokuf' \
    --limit '34' \
    --offset '16' \
    --sortBy 'Rt9akDpdNr0FXO6f' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'AWvqv4xgJLRytckO' \
    --namespace $AB_NAMESPACE \
    --userId 'dfGgJIRAHSLnFd9L' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId '5wXVlMYqWHTkTeAx' \
    --namespace $AB_NAMESPACE \
    --userId 'QKwo2OUsqXyuI9uT' \
    --limit '49' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'X6617VgwZp3ErtUV' \
    --limit '27' \
    --offset '91' \
    --sortBy 'sBeJc9tbJXCjyBpu' \
    --status 'v2hp3J6xkIMWodiW' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId '32pvfTXBiwIxebdZ' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --name 'GSJeGgvzFj8DLSbu' \
    --offset '67' \
    --sortBy 'wL5PFNdM02qAEiR7' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '34' \
    --name 'nK4hcZ6h5gOkdoyL' \
    --offset '66' \
    --sortBy 'wpaQljA4puP0hDtF' \
    --subType 'TSvaRYStVJFujOUp' \
    --tags '["PSi8kbGDkY2zmW46", "TnNmEdBoOpFKCy4c", "9lQYdsq9SkPefbCb"]' \
    --type 'namnEJSOuL1lBT7w' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["MXoJKwU6JGEnQK13", "jpF5kYpzugiIXuho", "nIOERyEYOLO2QDbi"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["Kx5yWG5EBTPrXA1q", "u5WsQjBNE93k5SqH", "NVgWqMvNklP9xCsT"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 't1T7sXZ2kI2X5wZJ' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'hSKD9iXl4wShwk2V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId '52jCckKddxIPD9ZN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'wiZSsW10qQF445c5' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '69' \
    --sortBy '2wDjtn9tYL9jHkb9' \
    --userId 'riTlKZp4nkRbXMgE' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'NO1Pd0FGHf0TfVYu' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '28' \
    --sortBy 'vSVBc5R7tNhg6DY5' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'l8OFLENGQJCXPOC3' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId '24FKyUyS27fyEBEU' \
    --namespace $AB_NAMESPACE \
    --userId '6cxUTL2bnEYY7Kll' \
    --body '{"contentType": "maUNVoBEYetQAJ0l", "customAttributes": {"l8ZJ57c6ye6zwgtV": {}, "GvHRux0QXW7djqzz": {}, "aaeASpFbYFVU6YfQ": {}}, "fileExtension": "4xAE8qEGaImqi28d", "name": "lcKUp6nAodYS5PQR", "subType": "IyiDAtmagHG9z3IU", "tags": ["Bb7SauOKi2Nkf263", "DTqiSuL1jLmypHHK", "w27VED5rupQ1muj8"], "type": "fei3yAT7afD7R19b"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'bkpNS8GIosKLJZO2' \
    --namespace $AB_NAMESPACE \
    --shareCode 'WZ38MxcBY7AlBsQf' \
    --userId 'y7nYz71aWzacElmP' \
    --body '{"customAttributes": {"aW5M4NCb8hYb0GXC": {}, "9T44OJ020Ozxwvmz": {}, "Yg6WHmJ5pYIAocpw": {}}, "name": "gYlGHCMkBzfaG8mO", "subType": "tCIdB7ZabyqbLcO3", "tags": ["5sMHcXgUb8REpyUh", "mYFymvDFW3o7cPYs", "CMcdsn05dJB09nyY"], "type": "Pqc264s9h5opINd0"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'y0PqjEXgIXsgZwMR' \
    --namespace $AB_NAMESPACE \
    --shareCode '2JB2LqoPpnXk52tn' \
    --userId 'fFNM14qYSNjWExnr' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'p0IUTgkzXV6JB75y' \
    --contentId 'xqwOIxzWcH9ueq3Z' \
    --namespace $AB_NAMESPACE \
    --userId 'lBoQ4gK1RQ0dZURe' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'FpyANdMGbUgIwEu7' \
    --contentId 'XFSEUAqDpJKKtRpR' \
    --namespace $AB_NAMESPACE \
    --userId 'xtpnfuE368Enzvgq' \
    --body '{"customAttributes": {"mKrXDmVIQxMEYLLb": {}, "6hWKDYnPveQTRJhC": {}, "xd9bIYGXIrzoDYtw": {}}, "name": "mE9wM6UKcjx1z9o5", "subType": "UCa3urL33TxvC8aD", "tags": ["8BJk6LP7Beyek96w", "eeEmR0LaDGtuuWd2", "eSrwuccPqWzGuC9P"], "type": "6Mza0ygOHlnsiv4i"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'hlwhqhwE0reL4dGy' \
    --contentId '0jSqwtk8vYi8DKSz' \
    --namespace $AB_NAMESPACE \
    --userId 'z0pVO2P284PwSwP5' \
    --body '{"fileExtension": "ld04zuqpWbbBCBVE", "fileLocation": "aDBVwA6HmyOGN5L6"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId '0Sv2v0wMTTzpcCqf' \
    --contentId 'PhFdjlIZ7kyQtWRt' \
    --namespace $AB_NAMESPACE \
    --userId 'DUwtUbj7grTDN9YW' \
    --body '{"shareCode": "s9ZkUOu2nq9eojKD"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'SA3JTpLXxULoLL9L' \
    --contentId 'tQ4L6YB2CPX4JyVT' \
    --namespace $AB_NAMESPACE \
    --userId 'BKU1TefKh1jkd1L0' \
    --body '{"contentType": "X58u2mepcmnkfEDS", "fileExtension": "eVC13vCPql6KFV3U"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'eP9e0EAjpIRz8uNq' \
    --limit '74' \
    --offset '56' \
    --sortBy 'mPvNjZr3Pqqf2RFE' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'GPsHmEDo1qqSObUY' \
    --namespace $AB_NAMESPACE \
    --userId '3P3zyFxeA7HoAemt' \
    --body '{"screenshots": [{"description": "qKXWb9UTnkiIZiVP", "screenshotId": "IJxf1tu55vB54IGX"}, {"description": "DfcNVbBXbglWpAhy", "screenshotId": "1kwjmNPn1hlBouJy"}, {"description": "CsyVHtEqpL0nL8HH", "screenshotId": "xtHsLHV21x1gRRB6"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId '1N0C5GjhVYGhCEfM' \
    --namespace $AB_NAMESPACE \
    --userId '3MBq95SDMKc5EkVi' \
    --body '{"screenshots": [{"contentType": "UPwsuY3RGd0zHriF", "description": "c8K2IjqFsaxzkKFr", "fileExtension": "jpeg"}, {"contentType": "xwJFvpWy9IArn6dH", "description": "2F1XaAs8ucsnMbss", "fileExtension": "pjp"}, {"contentType": "hXZ3YVZ22j5reKQ2", "description": "PCTBgSllG94qIgwv", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'RmBTdvbgDwPDtLnb' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'lslQFySdYgFdWot0' \
    --userId 'NbWjNx0FQk67np97' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'DxyMk6JabBFBoeVl' \
    --namespace $AB_NAMESPACE \
    --userId '46PUNDjgsB8cYebC' \
    --limit '8' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'f9yBETM2qe3iNKMs' \
    --limit '61' \
    --offset '40' \
    --sortBy 'vy3Q7qdtLYjgwQqV' \
    --status 'dnWu5geoQvz6cEMN' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'nUvnePaJqBLm4Zq3' \
    --namespace $AB_NAMESPACE \
    --userId 'aGxs2DSlqOQW6Scm' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'PcImJ954oWtT3BnW' \
    --namespace $AB_NAMESPACE \
    --userId 'yamZgQ2OAW4cmGuX' \
    --body '{"fileExtension": "0tpzugDo2Nmac3f3", "fileLocation": "yQeURmKDLuGpO05y"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'TtXwTk8KeP0VMtbd' \
    --namespace $AB_NAMESPACE \
    --userId 'hJPXoZfq9jj3hpi9' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE