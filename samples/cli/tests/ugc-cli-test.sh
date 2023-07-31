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
    --limit '13' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "BjqQsw8IocIHJw09", "name": "mP8jQ9vepkIddNng"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'BddeQP1cDDVO853c' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "bfvUgFeLvlTts59m"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId '5TJVAQXTP3R1ZEaP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'QglT6gyS8o65do4J' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "XKdEjtLC0wRI5xMo", "customAttributes": {"yTTgDGZI13p59LV8": {}, "YvR3S5zghfByaYmi": {}, "RCkkX5JOL2pBC005": {}}, "fileExtension": "FxyOEAJ8n35PMxqW", "name": "nzi8L49Fo0Q8d9J7", "preview": "U14W92mM6HxLafN4", "previewMetadata": {"previewContentType": "hGkW146aj32byRq1", "previewFileExtension": "nX2ZpdhyvjfVCOcP"}, "shareCode": "PyXoAVlHp5kmoQWY", "subType": "9abw8PEQYfJzjMjh", "tags": ["AlEetWMX7WZoilpc", "mjw3lh3gTezsJH05", "jo2j3ESIlZTz4AHb"], "type": "wimWUodcEaVKXZOh"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'KcF4eOp9J44X6TKV' \
    --contentId 'WKxeRrV9zm1D8nBw' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "I2LANnXeWooZHKQI", "customAttributes": {"CaDid38e7wM5dfFy": {}, "ocDUGR3WG5ug6Xa8": {}, "MStnc4yOEbGS8yr8": {}}, "fileExtension": "5L6egBdEao9EIvvU", "name": "nHstf2iVPHptAeyk", "payload": "eHbd8IUynzocL1Um", "preview": "nQUCGWFaUDSvcI0X", "previewMetadata": {"previewContentType": "6ZYaqcisitOaJDvg", "previewFileExtension": "cMzVYSsJAcXmsp8W"}, "shareCode": "Juqbb145A7THVKW7", "subType": "Mg48YDoMu7d82pFn", "tags": ["pzHg9jr4BtqEr9GT", "FcIlTkKgBQAhn13y", "HIjX9NjNtkcoKRRu"], "type": "VB5jOfgz1tWfYMPH", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'CGqjw2h5essDt4cO' \
    --namespace $AB_NAMESPACE \
    --creator 'xgeAxxjGKzLVetdK' \
    --isofficial '11budT3sUfeughal' \
    --limit '6' \
    --name 'KWhrMBoa7iRVYha4' \
    --offset '65' \
    --orderby 'FIFaWFdCWKDTG6O5' \
    --sortby 'UdZi1v1GxRrrb6d3' \
    --subtype 'P1cNqNHZkTZUlMiG' \
    --tags '["wiF4MKxPSAHVRbho", "CEC59BBd9LNOTYJy", "T7TuYcKzUMHv08B4"]' \
    --type 'GZxXUJ7zZHGeu7Ss' \
    --userId 'h0wVwpqEjdlmyX1O' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'ijLDPnjEt0sgyT9j' \
    --contentId 'O4dtB1gxX4BlC8uU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["7s6tce1H0mf9brza", "NKtwD1YaSRp7kPSw", "XW1cR3W3Z9bNntDB"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'n7ulQFtJNUCwiaF5' \
    --isofficial 'aPVI8z0OB7xdcCh1' \
    --limit '6' \
    --name '630AZzWGU2ZaalOF' \
    --offset '2' \
    --orderby 'hZv6Kxs2RDImZRo1' \
    --sortby 'DjjPgcUxeldGnMIA' \
    --subtype '9uWZYi4S8HXUR1Fe' \
    --tags '["4fTmEMnxvwZo8zIa", "6rMBXdLms76jM8rQ", "ahgGD3TOOFyIQtmz"]' \
    --type 'RGPDiMbjO7elBSGM' \
    --userId 'lQA90ks3QLUz3LsS' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'WH7A2UNjjcniHwHc' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'zSwzUptwJqDeYeEb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'WDOR2uoQRBOavj1v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'tbittZuBThS5uFpX' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "z7I5SuyfnlX3azOl", "screenshotId": "FAZMnFyFBtHYY9m2"}, {"description": "kO3SxnLSogiGEPQi", "screenshotId": "5iFjMWuCBtDQ3GSN"}, {"description": "rFFFjLuOt74HSeT2", "screenshotId": "2kWI85BvawdkV6JK"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'xmyw0YABHntA1lOK' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "VODkDD1B1SyaqbZe", "description": "gR7MN0ZpmTWRzhwB", "fileExtension": "jpg"}, {"contentType": "MaUqtxTAD0LUzVyt", "description": "BSCE7STlmNQqFEL1", "fileExtension": "png"}, {"contentType": "j5c9fpOoe1bE7pbo", "description": "xUwrVEFlFr9O2b8f", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'VA9BkC5ke9AqXv78' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'dOUdXaeH2jZ0PyHi' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["sEuJiUTs5Ofv5EA9", "iQU94RYdFmlhfwx1", "25zc768vTHZ1d9zV"], "name": "vmEGUAziarLPZBwq"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'nDIhDlmBfolHeHYr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '4bj21YEdxtkAlAXN' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["wBWt7EW1oQUqwXHU", "Iff1UFGA42HTPSod", "Ky8kGdiYI0WqsRXB"], "name": "VDQ0pigJCzHcLgjw"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'NHJqngKqzac1KjPE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '474NXrVh4TyMxaj4' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "gtLXXLfH80pV6PmN"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'KqhhF0paWCQ89NtN' \
    --body '{"tag": "41DimYI2Xo3F140s"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'G7LRQ2v8RFH4dX3H' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["y6USAYIMXYI6eLWJ", "0OEZ8o2vtYBQ8Rfy", "27piqGbor1KpbKCl"], "type": "USVuwdhvRIYJPzbc"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'LMi2f5WqsHj0yo1Y' \
    --body '{"subtype": ["gvsXtCnpDOXMPMdi", "ZuhzyMFZHTRe1vwQ", "2IaxnH5qrgQvIAwn"], "type": "aUehOQoclrZKxVEW"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'exrmTzxdotjGW4Ih' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'XNEQjarQzYtZcpGQ' \
    --limit '75' \
    --name 'AjnsmOM4LksNljZx' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'nI5WA7VhER8siodd' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'GiqRQuZ1gCR0dsxu' \
    --namespace $AB_NAMESPACE \
    --userId 'W1kuK6e1XKVf5ZcZ' \
    --body '{"name": "Q4k7PQDxQbgZVolx"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'ChMmwzKZEZVuyEKM' \
    --namespace $AB_NAMESPACE \
    --userId 'm6FScZe8wdZwnSb5' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'RBhgVyUlf4Kx5P9s' \
    --contentId 'HYVwWqxrB5TtaYUC' \
    --namespace $AB_NAMESPACE \
    --userId 'FSODb6G8oATMY4Wo' \
    --body '{"contentType": "UcMDKUuFDMRR8q3j", "customAttributes": {"vcldhwEod4N2Ez1d": {}, "zADDv6pbZFChNMIG": {}, "YTBFHHDncT7I6JiE": {}}, "fileExtension": "Sr7EHrTONBSWKVve", "name": "8Jp3w3CCaVe9QMBk", "payload": "bqYNhXe6aT8tkA7b", "preview": "cOFwkUmaJ69vIAMR", "previewMetadata": {"previewContentType": "qLQ4Bc3ptTa1PiC1", "previewFileExtension": "xjs6VsGSNsdzYvB9"}, "shareCode": "YCB2KkkD6GEaK6Ou", "subType": "TRs12OVsZG5RjCDo", "tags": ["uIutHc1pJXOLybMW", "wVMdeAlq58q0mXw6", "tdmKgm48ahLQQjN8"], "type": "W1DyKrxA5STHWOcR", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'YaWkHfW2FzZJhRYF' \
    --contentId 'a21tDWxWB0w2K6Lk' \
    --namespace $AB_NAMESPACE \
    --userId 'q7zLn8rMdpZugUnM' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'kSjlWjS0daN6sYi8' \
    --limit '18' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'qdWyRyxFEGGt25as' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'M4noqCkjtIV1aOwv' \
    --namespace $AB_NAMESPACE \
    --userId 'lSwSKFqY0ELRsWcC' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'YF2ZaXvePmxZE1Uz' \
    --limit '9' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'iaorp6vlvNKFaAZf' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'nFI7xjlI1AkokCah' \
    --namespace $AB_NAMESPACE \
    --userId '4wEW5HbQQroLkkYy' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'lD2GVNLW32r85s04' \
    --namespace $AB_NAMESPACE \
    --userId 'BDfkuGbyU27saNGK' \
    --body '{"contents": ["ZW35Vj0MIzV372jY", "JjlpSydGoRs4TVY5", "Eem7AI7K4Rx7cj8h"], "name": "rZyGOnsXvo0WxR13"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'J68AlU8cPW74Zg4Z' \
    --namespace $AB_NAMESPACE \
    --userId 'VjIjpItTeqEi54rs' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'cxz336BCJkVlSRKi' \
    --namespace $AB_NAMESPACE \
    --userId 'ynzg5MLer44yMJ6V' \
    --limit '61' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'ExwWzqy8CTQPj18q' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'B76RWtV8Bcu3ZXTb' \
    --namespace $AB_NAMESPACE \
    --creator 'bZRu2VVdfqQcvINk' \
    --isofficial '9uewXyF8R8MJXJJ8' \
    --limit '91' \
    --name 'TVIAIwOLqUJyICki' \
    --offset '7' \
    --orderby 'YNzXZty90J3IUM7z' \
    --sortby 'whA6QXRngD5HSMX6' \
    --subtype 'YEYiz4cBwJdtKbRB' \
    --tags '["aJtGtk4BPOXRpLnx", "p8jjZcxQKpxTPCED", "4J1j2V1B3vfWfblO"]' \
    --type 'KGlorzYZKE9oVqLR' \
    --userId 'WjjAh6uYr5wk4auF' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'eIu3HosisjGhkxji' \
    --isofficial 'cjA0wxeVwjGkRbB6' \
    --limit '34' \
    --name '5tIro7rLVdyTWXBp' \
    --offset '11' \
    --orderby 'nKNXzZp9u1VjY5Xp' \
    --sortby 'tmLlQqEno8qJkk12' \
    --subtype 'a4Wnfx4GkmieKslk' \
    --tags '["JLqac7HYH456BvgV", "W6P2BlfPKhHEKTJz", "M1Thq9gW8gpFjGzA"]' \
    --type 'fxxgC5W6xhYoSqKB' \
    --userId 'BjiRnuGBBCglw15Q' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["vDhHWr4x4TiDh7DG", "9DsRvqnSEdpA15Dh", "ueSlLDZDHOJwfeMT"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '78' \
    --name 'jHoB23HwYuccblUn' \
    --offset '0' \
    --orderby 'Hq4JjiqThKQ5vCRN' \
    --sortby '2oU5z9FtxYGzAxc7' \
    --subtype 'ak52lD2M5asbEep8' \
    --tags '["0HzevuGcwNbKMP9Q", "qCbIBPM6yC1BXvPL", "Wbm0fWMzsmyfNkT9"]' \
    --type 'WZXiPKFRsgn0uouC' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'YkKYI7Gqz70BV1cZ' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '2YmcXGALoKicDETb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'JoEnrA2SPhanWbxP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'dkj8KHXban9xmWdz' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'cIc5Q7vjRKJ5JzQh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '90' \
    --orderby 'wel79amlqY7Z1i1j' \
    --sortby 'NU2rFLB7XzNhcRoX' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '9xymMTgIgJWYIbRj' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'T6eTLYjyH32BNnVp' \
    --limit '29' \
    --name 'q1G2cAb0rGovDpaH' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'vkuoASpHd8jfEmZt' \
    --body '{"name": "TpHYMhN0uh6wUnce"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '0kVfIetg7QAQsbLj' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'oSkaq6MJLyGgVskC' \
    --namespace $AB_NAMESPACE \
    --userId 'cJO4BRWIkkcVJ8oo' \
    --body '{"name": "2jsWU0YmyIkaPy54"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'RV96MuJUWgxzgz9d' \
    --namespace $AB_NAMESPACE \
    --userId 'IETURxctg9Coa9Ei' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'KVHHk0usrTfuFCZf' \
    --namespace $AB_NAMESPACE \
    --userId 'Su2C3TxxHIZZg0sn' \
    --body '{"contentType": "L8Q4m6h7U5J0Shcu", "customAttributes": {"qxpw9l841ezty2k0": {}, "Klu0432YXbTgmvZY": {}, "rDeoPdJfFaWJoyGD": {}}, "fileExtension": "vQwZndrVivL3PPDz", "name": "XEWIXUh9mE31XOis", "preview": "agsuEUsuvTNd22qR", "previewMetadata": {"previewContentType": "F5ryGTYLfAU6CgyK", "previewFileExtension": "zXaNZ5fm5M5h4g6v"}, "subType": "tIekGtZhCgZvByK3", "tags": ["mbdQr93n97bWAzWb", "OSSX9ePIAJD9LaH9", "JdyA1G8tfUMe5Iho"], "type": "UmSfYubgxnnt8PDd"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'sU3RVsXvpt5lTJwo' \
    --contentId 'pKMLBqAATrFOlfCu' \
    --namespace $AB_NAMESPACE \
    --userId 'ZP6kbJaFlzpsm3jq' \
    --body '{"contentType": "I99ynoQITdLj33mj", "customAttributes": {"qMHXARZaDNnEmKb6": {}, "aWA2tvyajdeEd9up": {}, "tSuKGy5MdjXIcwP9": {}}, "fileExtension": "Rc8YoYytgcmCQ3Uk", "name": "HYmbp7wMjsxMFvmC", "payload": "L2VkVZQJNCBtK5dk", "preview": "kMpv5mlLqF3rpTil", "previewMetadata": {"previewContentType": "KFOGCyySNJ9FXqAf", "previewFileExtension": "ukTLtxcuchfOwR4C"}, "subType": "crKGX8YAYIFygzvu", "tags": ["re59RrSnRdF6Hfmq", "zNrmbavLCzRVptO8", "ls2aWgRlojww9Lj2"], "type": "FMqg4M5lfqJ2s3NW", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'xgclOCuHwPBU4997' \
    --contentId 'o7XKDVEs56SeNwJx' \
    --namespace $AB_NAMESPACE \
    --userId 'MWI7noiaO3m1zh0L' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'K0w0l7nwyG0B3T8c' \
    --limit '51' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '36o7W5etuF8qhT6I' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'rH1gJuBAUroVSJv4' \
    --namespace $AB_NAMESPACE \
    --userId 'BoUSTBAL8wYKGVE3' \
    --body '{"screenshots": [{"description": "BFEUCB9sH6dNqUXv", "screenshotId": "4vYDcZqx82LDlXWt"}, {"description": "2H54kVlzDJV6cw6d", "screenshotId": "Fc3eZKxoseNWFGdV"}, {"description": "iabGPcidt4mwn3HG", "screenshotId": "SGnnMwSty1hP0yfj"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'hQPuqENHBlkpkrw6' \
    --namespace $AB_NAMESPACE \
    --userId 'ZKWja9YqqmnkSQuK' \
    --body '{"screenshots": [{"contentType": "dC6Biro3tlKrEmyP", "description": "XfDFJ13hdpSLc4bN", "fileExtension": "pjp"}, {"contentType": "xqVcb6aL24BXZReU", "description": "pxQEiLeUrWYlNjm2", "fileExtension": "jpeg"}, {"contentType": "XwDTME8JgvQ0OfWR", "description": "6LTtlozb0LMNsHhu", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'APlI4hgtwdpawfYi' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'iXU5MG7x75YiNI9c' \
    --userId '0bikdtQSMO4IyApE' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'oV2Od51M92gsZeAm' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'JvoAj3529TpSLnNM' \
    --limit '80' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'DTUCxLU2v4m2J7OO' \
    --limit '81' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'qJRmk8ZOYt4kU0ba' \
    --limit '14' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'uCeRUm3wuqm5BuFy' \
    --body '{"contents": ["S2xRBd9VGETNYfvd", "3Aayb4aEVChRrLy4", "AzL0x1BCCBuQQiin"], "name": "RBp4elRfdEdzzLV1"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'zQ2LBPEZcR4J3OFa' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'W0rB61lUnWO3YJw0' \
    --namespace $AB_NAMESPACE \
    --userId '2lnXvc7CXhfWLUJE' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'oJ5KfRRVSejK4xWq' \
    --namespace $AB_NAMESPACE \
    --userId 'QfJEG3waOcLUfiCw' \
    --body '{"contents": ["8OPdb98tDJi7Kxoc", "2aH1oCtqhvqr02P6", "TekP9kWi0d19ztGz"], "name": "3SiJAu7oAETJjnMI"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId '6Wez8gNJA0MTWFU4' \
    --namespace $AB_NAMESPACE \
    --userId 'H30TVOdHQosDsBW2' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'cVkzoPOTQz6kpFoN' \
    --namespace $AB_NAMESPACE \
    --userId '5gIyNqfuhGPAm4L5' \
    --limit '0' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'tYQ5eeLLZSIcxmtL' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE