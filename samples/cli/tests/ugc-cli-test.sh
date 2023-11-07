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
echo "1..137"

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
    --limit '84' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "5TzYYm83BtnxIjC3", "name": "VNv9tR2uorbfcaPY"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'qrJATGGvTaBv5Cun' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "19Z88lo9nsYrHuwS"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'MoSgLpQMbw4CRb4f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'PB1iljFLX4yYizk6' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "VM3wIEhaZIoy6nyK", "customAttributes": {"C55qBJVIIT6kSJMP": {}, "9B92jZJLMTznPfbU": {}, "OHDle6QZBrvAFEF1": {}}, "fileExtension": "TIHoKb6mjG9tFCnL", "name": "2xizmMK5jOq58GFw", "preview": "sYdPfvuZpCSJxx7C", "previewMetadata": {"previewContentType": "VDLc7iyWgUtZVvbY", "previewFileExtension": "wqexu10opzzWejz4"}, "shareCode": "c2nqNWQnOk2WafuQ", "subType": "NLzn2oPrZSzZ9fjs", "tags": ["OMc3nnplY9sZTEAk", "BUtoOn1iWSsDFoli", "u9voLoBhIXji2iGz"], "type": "5353GUufShIxJ7MB"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'h85nkUvs7KKbA94J' \
    --contentId 'OlJz25WwmKMSSqXn' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "bEE79IHk0F5Ayc5r", "customAttributes": {"JT8f0Hx6W9CUatC2": {}, "5WjUetVlAWA1Xfl7": {}, "oZPxEC72t5DXnOA2": {}}, "fileExtension": "xoJYHEWivC6RNiC1", "name": "dUwjDGafH6abFY8t", "payload": "qXqS7srq7wKIx5KJ", "preview": "9guXQEvOdVQvhnI4", "previewMetadata": {"previewContentType": "Z6CmYrlBP9wFfMrR", "previewFileExtension": "jXeMgTIQGGzjg4bn"}, "shareCode": "TLo0oz6QwnGj8gIQ", "subType": "eNZ5mZt55wKR3Zpv", "tags": ["7hMItes3qbh2qSpQ", "GMnMthS876U2nfPi", "LwQDe2pZWzPqjLHc"], "type": "GNjKdF6BOutkG0VX", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'bt5f8OC9KJCvqICq' \
    --namespace $AB_NAMESPACE \
    --creator 'PEPiNTHcfnHS3iGd' \
    --ishidden 'jw8AqRTPeXvMSdM7' \
    --isofficial 'pUigQX9gNioztd1s' \
    --limit '33' \
    --name 'MSO6v3ZDPhSiPLcS' \
    --offset '49' \
    --orderby 'QjQX4LZuR0cVhEUy' \
    --sortby 'mB528XC2rrR1zGKn' \
    --subtype 'ozeSLhEo2D9Ff267' \
    --tags '["Oo0TnaWpU9Q6aoMy", "MOf5c4nZv6Ln5fkT", "ruvjf85u3phFJSGN"]' \
    --type 'QhF2S65yT6wnVDlz' \
    --userId 'SeEUm1lwdniTcWRg' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'RINuxE95IRU4w6TN' \
    --contentId 'eqTcqrlPrJ0YduG2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["6NgD7hhoOgKNUrLg", "h54RlsfNE5fyGqmh", "9Xim5BgxyD8wij9T"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'RkM9Hf7iuXUjB4LP' \
    --ishidden 'fI8m2x1AJl70kfnx' \
    --isofficial 'f36r5CPjW0MuO92t' \
    --limit '59' \
    --name 'l7jenAygjAkCeBnW' \
    --offset '42' \
    --orderby 'T7Mt5Tpeb9qVakAY' \
    --sortby '2FCeRs0BBYufOUPR' \
    --subtype 'aCuzWLEk408w9f30' \
    --tags '["rbQgsuT1k0rStlb3", "mOnC6RKCBlc1qJJS", "5PHKp1PHWBcJSmfM"]' \
    --type 'JFBtwZUjCT0xU4QR' \
    --userId '1WOy9KuUSdXc7YPA' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["QaXemXkljNw1a7ll", "Vje1Mfb9ajgF47wh", "IQIT7sPfbPsciT20"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'XVKutk2KjhV6GGQC' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '20Fn2IERCMj0hnwQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'pSY71g0VvrRfjrQ3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'ijnjeGGVKzTV5yGm' \
    --namespace $AB_NAMESPACE \
    --versionId '3uvnKl95PuWn8HM4' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'JkEUEy3JWwgntlN4' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "uIbevpUkGr6P4GWg", "screenshotId": "15xfSbTdJUGn1Czx"}, {"description": "yXcj34BYHSsJo8K6", "screenshotId": "bl14V4RvU5tlDMPN"}, {"description": "1tsk9qWkyWVOxVJp", "screenshotId": "JVkzTfmzZCRVr2YA"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'lXa3EYIBbteMlcU8' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "UnYKf9MERY6OspEt", "description": "udQ7yp7QcxuZHGeF", "fileExtension": "bmp"}, {"contentType": "H6FvBy28RKyUsy38", "description": "gM4BzM77vg0sHzJp", "fileExtension": "jpg"}, {"contentType": "Oc8wZn96oXPNSiVg", "description": "RRULZZVjaHAkPlmx", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '6ryYtJ87BTQESkZA' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'A0p8xaxZwkx7CqdL' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'jvJn35tFYjpuwBTE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["AhvM6w9aTLvAb5kS", "ondVTJqO13vUQhA0", "3mmB1zGIocfHpuvL"], "name": "ZPBqRIa0D4Wc2ANP"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'qj9ahQHJnuopM8Mm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'okzOIITn9XUPklRf' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["gUSz0Z7927fHb8kL", "XdipfCtiiEzkdFtq", "ORuVPNgTKnYPp0R6"], "name": "N4Sjc3DTvn97tvqs"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'LwH4r5juW5aGItDT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'K6ARpTv2QcrXOwrp' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "EaDMjPGHznt1FVyB"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'akiVMz4kku9XDyPu' \
    --body '{"tag": "YWGmrQC6rVJjjnrw"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'nhQ0hQqyE2hE3Ap2' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["6brmyd1zhZfco5Ij", "oPaNTxOcLSkHTaKJ", "WRgC6V6pDyVIPDuJ"], "type": "Trkce6nzNbpQSI9P"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'ZPrU9mgeyFu9ndmW' \
    --body '{"subtype": ["xChCgUAcHOmQKL3c", "DWYo6NLVJnE6buwY", "Jde7tPtdXGj510GW"], "type": "Zsqdg0aGeQHKr700"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'i9CAM28zgeTaORa8' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'cGEsgYfv3ZPh6Fws' \
    --limit '64' \
    --name 'lGHBu45xwQCwralG' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'z2szpIHPr9b5mYT2' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'hBAxB47iI4V40JDH' \
    --namespace $AB_NAMESPACE \
    --userId 'U8fCd9BVNBOzkGQi' \
    --body '{"name": "NxzMV8Wm6Vf5RTkH"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'FeDLYgcZbbv72MtF' \
    --namespace $AB_NAMESPACE \
    --userId 'JUA74imfSgf907P7' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'BLKUg9GZPE6EV2VE' \
    --namespace $AB_NAMESPACE \
    --shareCode '9wW7k0wCJbEgLfJ8' \
    --userId 'uvUUt7Pik7ARk3jN' \
    --body '{"contentType": "QQdXF6ObTqtoz2l6", "customAttributes": {"AODFAy8wOggYRwfh": {}, "6fWjVdkMZ7SXFAF3": {}, "v4IICgkJjQ90NZhx": {}}, "fileExtension": "7iWWAu1NCRyhYau5", "name": "VIlfPLcsn9qUzzul", "payload": "BNRgiztV47jgL9vY", "preview": "x1T6yRydgCoNBolD", "previewMetadata": {"previewContentType": "1AvosBHpsKep0Wxu", "previewFileExtension": "YETmNhiPvN1ph2wV"}, "shareCode": "mUSu04iASa4giH9C", "subType": "jHxE6daiUr9L2Sik", "tags": ["5pKAuhER4ctprm7b", "kTJgjI1e3NfdwuGO", "9V3cKPSx4Sq1JKng"], "type": "UfE0wkd9tmj9VcuP", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'goCvQclen1RJmE8K' \
    --contentId 'pKwx2Nno6tU7Hv7S' \
    --namespace $AB_NAMESPACE \
    --userId 'viw9tISPKNq7eLDt' \
    --body '{"contentType": "C1ny2BSc6GohJnYc", "customAttributes": {"6ca4fodf4RMwVpmH": {}, "fyTvtH3PFjYCiKvM": {}, "qvDgolXkrkMNcmaa": {}}, "fileExtension": "Y49WTKxkWj2p84Gj", "name": "tf7mKgYbnswmLjT3", "payload": "QaHZHn1AJqusCpch", "preview": "bue3lKRqxIn9m5Rz", "previewMetadata": {"previewContentType": "BR9Qo0lIVhsbZBoA", "previewFileExtension": "7FytlhrOQPNEWFLv"}, "shareCode": "bS8JLwPrcQmQ0kSh", "subType": "ZgqLDbRFbDAWBxAm", "tags": ["9nlPZHadTgGVTejG", "yw4UEXtVnRMzL1Up", "FkQU2k4EDsfwj1wQ"], "type": "IADg8StEAtmWgNLO", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'fGdpqYGrmzU2HMS0' \
    --namespace $AB_NAMESPACE \
    --shareCode 'NJIouydwpdWqjgCO' \
    --userId 'ntv70a0nVfJ4s3ym' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '3bwJ8hFw7FJoxrYM' \
    --contentId 'uZcAuFIk60iYspFR' \
    --namespace $AB_NAMESPACE \
    --userId 'VaDkabGbQfdWeiP3' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'lhkhq8AK7oNmpT5c' \
    --limit '6' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'gZJOhjabd8cm0dVh' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'jQQ6Bf0UAgBMUOnL' \
    --namespace $AB_NAMESPACE \
    --userId 'bzitO9GPauxh4JJ0' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'dQwpheBxrO78a0eo' \
    --limit '78' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '5f2p60SE64ldp13P' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 't6lPWmAB8gGgiNlE' \
    --namespace $AB_NAMESPACE \
    --userId 'gllPgdYlzNMk4lXP' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'JjxDaw0Tqetf2ZkM' \
    --namespace $AB_NAMESPACE \
    --userId 'S84PblGXDMgamhWJ' \
    --body '{"contents": ["4IhSt5ND74AFoJSp", "J0JpJUlOWdQKEzj4", "8mp66CwUJzj2TPIh"], "name": "MS1UE009KnRuLg0Q"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'X9VhQKyqoKG9yW0q' \
    --namespace $AB_NAMESPACE \
    --userId '2N9DMVXMmDfiaEJy' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '5F9we2SXfUbyJ5xn' \
    --namespace $AB_NAMESPACE \
    --userId '3yTYqQZlgSHbdNQE' \
    --limit '14' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'ZBHk7yRciWn0tRyl' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'e92HhNWIj0dKFdlT' \
    --namespace $AB_NAMESPACE \
    --creator 'vsyqgwbnsZ3LMm34' \
    --ishidden 'fUEhz0mZ6VWeSQfr' \
    --isofficial 'HokpMb1IU332L67u' \
    --limit '30' \
    --name 'UORUa0MFrUaj3cf7' \
    --offset '25' \
    --orderby 'eLI4uVLX7jKds2SX' \
    --sortby 'FymjGs5Q4tPDSjND' \
    --subtype 'OyoobE0xtNIeOI6G' \
    --tags '["p5Az2FDgUpZqPLw1", "mf6IambZqdZZoS3E", "CPlNVYJ5fF81XPmH"]' \
    --type 'KdLMPcPXdLm06cfX' \
    --userId '8xEUNJ4Nct2hdPdr' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'XLtfaGJQfLXlE3VH' \
    --ishidden '8UhMWXn4CMBOr1WF' \
    --isofficial '9mltq0enDnKQDoU5' \
    --limit '68' \
    --name 'L5k7N2x1eW9Z4NdU' \
    --offset '0' \
    --orderby 'VCn7eO91dkzvucaC' \
    --sortby 'm3GYVJexnCHHKmhQ' \
    --subtype 'pfuzonPyGMyHjOcF' \
    --tags '["jXhrRRtOjioovYGX", "KK88rDse1DY7uWCT", "L3IJ6YMRE9TFbgHK"]' \
    --type 'BnTSrE708fxVzEm6' \
    --userId 'X5b8gyiH5RUAPJHm' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ourojUILQw0NkqKB", "43vz5z4LacdVBrwN", "u6cqehnvyi7cEhlm"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '53' \
    --name '1AHSulDTN57rc2wJ' \
    --offset '66' \
    --orderby '8TuvksTrYlj3rtuH' \
    --sortby 'eD5vpOFHxc6x1BH3' \
    --subtype '0VYZB0BOZRCFNxcu' \
    --tags '["C9ftznPvXyAxqFBU", "310wKExGyLqn8NNA", "9i6YpN9n1k82vR2P"]' \
    --type 'rmHbXXLefSk5Ztjn' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'YczEGLFX6L0f9NIZ' \
    > test.out 2>&1
eval_tap $? 62 'PublicDownloadContentByShareCode' test.out

#- 63 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'kyYJr2mKnFHdOKQM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByContentID' test.out

#- 64 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'SWJHOxDlUvPtbXts' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'AddDownloadCount' test.out

#- 65 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'y4lEnJnK8kiANglV' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateContentLikeStatus' test.out

#- 66 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'BLzt7RUdXmbwI7Si' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'PublicDownloadContentPreview' test.out

#- 67 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 67 'GetTag' test.out

#- 68 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 68 'GetType' test.out

#- 69 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '18' \
    --orderby 'qm6vU8rxBn7Nedjo' \
    --sortby 'eBV4OMnxzaNNaspN' \
    > test.out 2>&1
eval_tap $? 69 'PublicSearchCreator' test.out

#- 70 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 70 'GetFollowedUsers' test.out

#- 71 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'mjk7TSbLTu8yBfVo' \
    > test.out 2>&1
eval_tap $? 71 'PublicGetCreator' test.out

#- 72 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'wNvt7fVVk5ycPdFF' \
    --limit '52' \
    --name 'NsvQ7mpBQA2yeCVh' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 72 'GetChannels' test.out

#- 73 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'JgB4XR4ZVvhmtV37' \
    --body '{"name": "HTGY5TviSvo7Ncz8"}' \
    > test.out 2>&1
eval_tap $? 73 'PublicCreateChannel' test.out

#- 74 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'u7MejVqXgadSOuYP' \
    > test.out 2>&1
eval_tap $? 74 'DeleteAllUserChannel' test.out

#- 75 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'JzYAiLvHy7scyOeK' \
    --namespace $AB_NAMESPACE \
    --userId '0NJfUv83dCPIosMQ' \
    --body '{"name": "CmgZdJFclbYIwt5S"}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateChannel' test.out

#- 76 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'kNVbQorEtSTvu5b4' \
    --namespace $AB_NAMESPACE \
    --userId 'ZQgtHJcA6FHMbZha' \
    > test.out 2>&1
eval_tap $? 76 'DeleteChannel' test.out

#- 77 CreateContentDirect
eval_tap 0 77 'CreateContentDirect # SKIP deprecated' test.out

#- 78 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'h0SgjAs0NcX8gtix' \
    --namespace $AB_NAMESPACE \
    --userId '1iVwx6UeLlT5815o' \
    --body '{"contentType": "eFDO2mXDKUeizC3i", "customAttributes": {"naxD8fSaKmNDpeoc": {}, "BAehXzPfZ4qZnJm0": {}, "DQbUiSanvmYoKxuG": {}}, "fileExtension": "c8dlMooSedld4ofN", "name": "foZqNdun9GM8eWUX", "preview": "xPvIPj8RlyEt2Td1", "previewMetadata": {"previewContentType": "0xNXYc5OuLYcKkil", "previewFileExtension": "8CmrNVY5bXENMtcf"}, "subType": "x4FqR9TpnfHiw3F6", "tags": ["rZUjFyCPip5LQIvI", "AeFkkIZEy96U5gNP", "Wjj9rrkYsTzDzpYB"], "type": "x0vHJIxQBVF0AE3i"}' \
    > test.out 2>&1
eval_tap $? 78 'CreateContentS3' test.out

#- 79 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'QCNW4Fv0JDRz8Mek' \
    --contentId 'CmtsjpwePhdnFobT' \
    --namespace $AB_NAMESPACE \
    --userId 'jsbFrUCLfDIvzwV3' \
    --body '{"contentType": "aja9rNmW2fRxk5eS", "customAttributes": {"PMONCX6qlAo7eMBk": {}, "oiaCwzxfyQKrRoII": {}, "3fHJmujv38mwx6uz": {}}, "fileExtension": "eBKCcGpLueeJdQO4", "name": "6fcK0QCpfq9c7w8X", "payload": "mpSpEUJCMgakJam1", "preview": "I90ImwMpFwUHcuH6", "previewMetadata": {"previewContentType": "xFHH6EM712DKy1U6", "previewFileExtension": "jmf4UMMflPFk7F1e"}, "subType": "w5JPmnYfYAUgLcKp", "tags": ["gyTq5FInq2qaa5fO", "AnEPLNrW52cduQ17", "NbF61eIpTIKb0xMY"], "type": "IlVgScHCiqy4znwK", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateContentS3' test.out

#- 80 UpdateContentDirect
eval_tap 0 80 'UpdateContentDirect # SKIP deprecated' test.out

#- 81 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'gWWAFRouWr8l7pgi' \
    --contentId 'rEVDDVOuIjFlsVHE' \
    --namespace $AB_NAMESPACE \
    --userId 'wg4sdILu4oRMA4Iw' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContent' test.out

#- 82 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'xJDjPNFbaxglfwsZ' \
    --limit '0' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 82 'PublicGetUserContent' test.out

#- 83 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'GFMNpOR9SF4nwakL' \
    > test.out 2>&1
eval_tap $? 83 'DeleteAllUserContents' test.out

#- 84 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'HzyeC4egX3fsQNDV' \
    --namespace $AB_NAMESPACE \
    --userId 'wGut0dGEuCDzwMQ1' \
    --body '{"screenshots": [{"description": "lA5xPk6aDP9CJ0rC", "screenshotId": "eQ1zq86FGEb8vNb7"}, {"description": "XDbIZCr2OeF9sr2u", "screenshotId": "7mgpA0ibXfjwljW4"}, {"description": "UuHQSxwvxsFf71yC", "screenshotId": "v4GxlnuH8Zu2HXP0"}]}' \
    > test.out 2>&1
eval_tap $? 84 'UpdateScreenshots' test.out

#- 85 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'fgeLeSkg5SM5r6lb' \
    --namespace $AB_NAMESPACE \
    --userId '5lYiCsfPnuwa8hCF' \
    --body '{"screenshots": [{"contentType": "FFL2HLwqDU08hPdG", "description": "zlWGKiMTr7ySDjiz", "fileExtension": "jfif"}, {"contentType": "FW9CyMHJSJBIfdZy", "description": "0hBk4HVSzDOoJMGG", "fileExtension": "jfif"}, {"contentType": "vkCVIrVMQgly5VLz", "description": "yGu221TXZWNfd2vT", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 85 'UploadContentScreenshot' test.out

#- 86 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId '9OSQoHxlBUcYkxbA' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'vxEwlDk2BGyzL5nL' \
    --userId 'vSHo81xjrDoZDPLq' \
    > test.out 2>&1
eval_tap $? 86 'DeleteContentScreenshot' test.out

#- 87 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'BwHmRGLOZeULpssp' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 87 'UpdateUserFollowStatus' test.out

#- 88 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'N1EU7UqtiCIytxON' \
    --limit '6' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 88 'GetPublicFollowers' test.out

#- 89 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'kYTN4NgTwnlECpHk' \
    --limit '31' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 89 'GetPublicFollowing' test.out

#- 90 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId '7DHsrhaIrKjvl2Ca' \
    --limit '99' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 90 'GetGroups' test.out

#- 91 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'RWaFOtKvwoqawNUT' \
    --body '{"contents": ["fEQKn7MmNqDGDA4o", "YwpuvjjNYE53p4nV", "8DCLbyliJmKHO3sz"], "name": "aUJvHy6JN2N5ZO5g"}' \
    > test.out 2>&1
eval_tap $? 91 'CreateGroup' test.out

#- 92 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '4UILA9S42AYLskMz' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserGroup' test.out

#- 93 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'iMlfkQgDL8KDWFb9' \
    --namespace $AB_NAMESPACE \
    --userId 'la5dmKbCrYiaNgpk' \
    > test.out 2>&1
eval_tap $? 93 'GetGroup' test.out

#- 94 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'vjfVx8QVIf7w0IEa' \
    --namespace $AB_NAMESPACE \
    --userId 'fYyxiRsvxqPT4kCO' \
    --body '{"contents": ["OIDT0ErvSrsDTGX8", "aer4FyWTeHTfAjNU", "FiWlVeoSdkuyzmIG"], "name": "DFM1q2eseRcpb8bD"}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateGroup' test.out

#- 95 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'DwG11HaPsXO3ojjl' \
    --namespace $AB_NAMESPACE \
    --userId 'lDNQeGUQAeUGZ7zP' \
    > test.out 2>&1
eval_tap $? 95 'DeleteGroup' test.out

#- 96 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'e187cnksIvFHjq95' \
    --namespace $AB_NAMESPACE \
    --userId '76wnxsuoJoI5K0SG' \
    --limit '45' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 96 'GetGroupContent' test.out

#- 97 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '282U7nlSIvMXnydA' \
    > test.out 2>&1
eval_tap $? 97 'DeleteAllUserStates' test.out

#- 98 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'BMXXSuXyRkUsOYAR' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '99' \
    --sortBy 'Ux9bStEGFECT7nOn' \
    > test.out 2>&1
eval_tap $? 98 'AdminGetContentByChannelIDV2' test.out

#- 99 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'AORU4vxug8n5RQrR' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "BP8DqReDuh7IwoyM", "customAttributes": {"V9a2MDMAhq9SJQcd": {}, "DeVUyJkCb1REMUbb": {}, "pPaUJuAWSvp6YQ6C": {}}, "fileExtension": "0BfvOuepHc9X48lw", "name": "jmsSTfgvD2EEmXsQ", "shareCode": "JuJImksqReCPekJg", "subType": "0rubbe9pz9XIWVnZ", "tags": ["5zFw5OXcdKwMPuRF", "mn0M16DC2UWRfVN9", "WuZG074cuRVsAdo7"], "type": "2x9Paujhb321VXvX"}' \
    > test.out 2>&1
eval_tap $? 99 'AdminCreateContentV2' test.out

#- 100 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'hu0iHuIERrmWuk2G' \
    --contentId 'IVLzFCM44sWZ5qv7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 100 'AdminDeleteOfficialContentV2' test.out

#- 101 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId '4hsslCbDQVhI7NR1' \
    --contentId 'ygdtNIP1Nc1JM7pD' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"DYRqiMNvlC00Vwmq": {}, "xrfq05DPm0EDy1xm": {}, "msjZK0wCXMVanv8Z": {}}, "name": "sqy5rzw5bAreRDhw", "shareCode": "GHezH1s6G1bRDwnf", "subType": "1hRwMHgqlb7PRPWL", "tags": ["lNxyqxrvhmuzrV07", "QJZG5TCs2m9eCUmk", "pKvOv4U6eIUbKXef"], "type": "6F2M3aPhXePq74aP"}' \
    > test.out 2>&1
eval_tap $? 101 'AdminUpdateOfficialContentV2' test.out

#- 102 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'XB6RKe0IsGmmA3H7' \
    --contentId 'xpeVEvWZ27hURoJR' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "m0SGe8wiHS0e4u8e", "fileLocation": "imktQKEKIxRQJHFB"}' \
    > test.out 2>&1
eval_tap $? 102 'AdminUpdateOfficialContentFileLocation' test.out

#- 103 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'sfVzNSGByxuJeh4F' \
    --contentId 'SaPtXnaDugMe2RiV' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "SZy0nT0NdWIfB6ts", "fileExtension": "8arUL6jvMsK6aRdc"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 104 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --name 'nyXe4aE83QRz6uGz' \
    --offset '23' \
    --sortBy 'hbumllVPBNPnRl6Q' \
    --subType 'wtGWQNEFxx8B6Ibf' \
    --tags '["K8AeDoaj0esoG6jI", "0e5WX1J3Ofqm9Cg0", "9teOOVBZ1S4IzB4d"]' \
    --type 'iVL95IDrypQKFudR' \
    > test.out 2>&1
eval_tap $? 104 'AdminListContentV2' test.out

#- 105 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["YzSCsYouSVNrJg9m", "7WCRyxTw6yY66wMt", "pSrsd7mKEnbJIk3D"]}' \
    > test.out 2>&1
eval_tap $? 105 'AdminBulkGetContentByIDsV2' test.out

#- 106 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'q7IIw3NWpKMKxkHX' \
    > test.out 2>&1
eval_tap $? 106 'AdminGetContentByShareCodeV2' test.out

#- 107 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'tBc47wui2Taj9IkQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 107 'AdminGetContentByContentIDV2' test.out

#- 108 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'mHHcidDOq78fdvkj' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "6LgnRna5bccbV37r", "screenshotId": "kcuNnjoPfuL0fUB5"}, {"description": "E9jOH19LPYMvFec5", "screenshotId": "Iitd5iQ7CDOmcqZy"}, {"description": "JoTjZP9UpnKjvvFM", "screenshotId": "tQuuj0nrJjshfSud"}]}' \
    > test.out 2>&1
eval_tap $? 108 'AdminUpdateScreenshotsV2' test.out

#- 109 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'cqtYRlrq9T71B8QU' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "OVi8JDGkScDodtPp", "description": "R2mu71TuSYXGgbGU", "fileExtension": "bmp"}, {"contentType": "EPfhDGquECgpt6pJ", "description": "xXPIOMidVcS3DD5a", "fileExtension": "jfif"}, {"contentType": "j1BRoR0g5ua5PIrM", "description": "1JKNR4elBye44wdk", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUploadContentScreenshotV2' test.out

#- 110 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'aK9E4FErJdKHSsnz' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'b6URBjUf6jLIzXQl' \
    > test.out 2>&1
eval_tap $? 110 'AdminDeleteContentScreenshotV2' test.out

#- 111 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'OokVToDoHWPtxwWE' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 111 'AdminGetOfficialGroupContentsV2' test.out

#- 112 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'QTT9ub81oQeZJPWU' \
    --contentId 'CgrPuJo2nJvcpPMS' \
    --namespace $AB_NAMESPACE \
    --userId '4mJhNat7S5PskVGi' \
    > test.out 2>&1
eval_tap $? 112 'AdminDeleteUserContentV2' test.out

#- 113 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'EOL757Tma2eLvzMK' \
    --contentId 'fcA5PuprH4tFDc1C' \
    --namespace $AB_NAMESPACE \
    --userId 'tF7J1Zs3eJ8QAZLn' \
    --body '{"customAttributes": {"4Cwv59Ms4uGmaqcK": {}, "CRqULNNtwqXxvaZs": {}, "FDnW0GjqqI5Q1Zjq": {}}, "name": "MQ232D83mZ9n2QyA", "shareCode": "8Ox9gffcOa9mQJ3F", "subType": "tW6NGtGaG0MMEcEV", "tags": ["HzIuqULnJCQUyYyh", "4TWU6agLfpvQ4SGY", "QflKqlcX1xxP6JVH"], "type": "fA3724zPqEvapbaN"}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateUserContentV2' test.out

#- 114 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'mG6OrN0br4t4Qn22' \
    --contentId '5mdKvu8V4ca1hPiu' \
    --namespace $AB_NAMESPACE \
    --userId 'FZO1o3BVqRZ7I39X' \
    --body '{"fileExtension": "HcwkiGc85WoqzIiV", "fileLocation": "Xp5l578jiWyg1VNc"}' \
    > test.out 2>&1
eval_tap $? 114 'AdminUpdateUserContentFileLocation' test.out

#- 115 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'xlm8Uo8BqDXDLYKb' \
    --contentId 'GMUHBWTEquDBqYzc' \
    --namespace $AB_NAMESPACE \
    --userId 'xZB0pFD7zNHA2e4g' \
    --body '{"contentType": "Dg8QINZOrqWiXuki", "fileExtension": "pIAgTMYySOWeHY9M"}' \
    > test.out 2>&1
eval_tap $? 115 'AdminGenerateUserContentUploadURLV2' test.out

#- 116 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'pRmzSF2nvEjoReqq' \
    --limit '50' \
    --offset '16' \
    --sortBy 'YfBqxSUiBuKG4uba' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetContentByUserIDV2' test.out

#- 117 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'MmBzSKm4FDXRQ9cj' \
    --namespace $AB_NAMESPACE \
    --userId 'yXNz1RDZN2pYEfLL' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateContentHideStatusV2' test.out

#- 118 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'maU4yTSIqVtDCBvP' \
    --namespace $AB_NAMESPACE \
    --userId 'ZMpiXtQ6B5dL4vJ7' \
    --limit '15' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 118 'AdminGetUserGroupContentsV2' test.out

#- 119 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'aLt6UWb3IIILwcIi' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '31' \
    --sortBy 'L0GRI8JMKe1wUORq' \
    > test.out 2>&1
eval_tap $? 119 'PublicGetContentByChannelIDV2' test.out

#- 120 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --name 'AVwX7aXqMnQtfBHb' \
    --offset '67' \
    --sortBy 'aHYKLzrA3l2j95Uj' \
    --subType 'nVLuUgdAjoqxdw5V' \
    --tags '["by4Jx0GGsDojVMJD", "AJ3CqkKFJDCnIJaD", "tcWY9uFhnXrFwa86"]' \
    --type 'MjHXnOd8lkOtZkxy' \
    > test.out 2>&1
eval_tap $? 120 'PublicListContentV2' test.out

#- 121 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["5GITF7mQuj1OO3aF", "hJmzeTKKymnBAJ8m", "Ws6jazSGEcKV6N5d"]}' \
    > test.out 2>&1
eval_tap $? 121 'PublicBulkGetContentByIDV2' test.out

#- 122 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '2mfDhrB29ewmcHCW' \
    > test.out 2>&1
eval_tap $? 122 'PublicGetContentByShareCodeV2' test.out

#- 123 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'mfrKwfvJgP54Larz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'PublicGetContentByIDV2' test.out

#- 124 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'c1OKi9rFIMyH2ZVo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 124 'PublicAddDownloadCountV2' test.out

#- 125 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId '0fzGbgDKPukX8QIg' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '93' \
    --sortBy 'q5L5iYCKghsdrzEd' \
    --userId 'hX4GprY1SpAxhdN8' \
    > test.out 2>&1
eval_tap $? 125 'PublicListContentDownloaderV2' test.out

#- 126 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'Fn3IjAlhEEMST2k8' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '68' \
    --sortBy 'h0k5gZzHxQNihYu9' \
    > test.out 2>&1
eval_tap $? 126 'PublicListContentLikeV2' test.out

#- 127 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId '0ae7Plw1Sr1QaAqu' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 127 'UpdateContentLikeStatusV2' test.out

#- 128 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId '30RgedWNFkUS01iT' \
    --namespace $AB_NAMESPACE \
    --userId 'Sn7J4jrqH1d468e1' \
    --body '{"contentType": "K0u9zpz7PC7ymt7v", "customAttributes": {"7FF6CDBlS8EpQG5M": {}, "UF4A4JV1fFzQ1uQN": {}, "8jkfkPG27xMkSSn0": {}}, "fileExtension": "TOktLMsTTwnSq4av", "name": "LB0DjVd9hHPvstBX", "subType": "gGkgAUun1jUjjhjT", "tags": ["2E1Ma9aofYlzKWxH", "uHhctwKjAoKd6djM", "ARsZnAn8FxAzgR88"], "type": "uOX7ErB7wU9Kuvoc"}' \
    > test.out 2>&1
eval_tap $? 128 'PublicCreateContentV2' test.out

#- 129 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'TijxmsB6EIdwzOAH' \
    --contentId 'ExhxP6OZ6sTeKCPT' \
    --namespace $AB_NAMESPACE \
    --userId 'dGcMfmxOLLw4oagT' \
    > test.out 2>&1
eval_tap $? 129 'PublicDeleteContentV2' test.out

#- 130 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'C0YtTQ2yWISp7QWL' \
    --contentId 'QFkYbYrr6fdxgi2u' \
    --namespace $AB_NAMESPACE \
    --userId 'q3NjoogMhS6f0oYI' \
    --body '{"customAttributes": {"Gf3frXPHDRONjJON": {}, "10kXYLlQM262BvTD": {}, "hcaFXVsLIajEsIdT": {}}, "name": "Uvm5qkhIRGOeNoLW", "subType": "zUelqBQtK8DWZ8hj", "tags": ["uGXIUh18PvwHQYKf", "9zDePoZtyNEcS6V6", "0IbnCOMYL04JjCaZ"], "type": "0QQmSig5n7mxRAvN"}' \
    > test.out 2>&1
eval_tap $? 130 'PublicUpdateContentV2' test.out

#- 131 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'xNaP9HWSWHL5O0Jv' \
    --contentId 'lPMxqML8sslsk8wt' \
    --namespace $AB_NAMESPACE \
    --userId 'oq0vWKKUZ0rIopdk' \
    --body '{"fileExtension": "Mt1XxlRnIBpCI3N5", "fileLocation": "bagPUKXZCLlbmbJR"}' \
    > test.out 2>&1
eval_tap $? 131 'PublicUpdateContentFileLocation' test.out

#- 132 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'ygyU3f1Osf7pcQ4T' \
    --contentId 'BsLZc7j3bBluKSDn' \
    --namespace $AB_NAMESPACE \
    --userId 'IF7zBXxqvAZMiEtV' \
    --body '{"contentType": "EgDheOvzzBTlMjke", "fileExtension": "CPrf37szNg7t3AcF"}' \
    > test.out 2>&1
eval_tap $? 132 'PublicGenerateContentUploadURLV2' test.out

#- 133 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'tF8oNtDjZuiIB6Ih' \
    --limit '81' \
    --offset '52' \
    --sortBy 'nyD0HhXSu31gQfNi' \
    > test.out 2>&1
eval_tap $? 133 'PublicGetContentByUserIDV2' test.out

#- 134 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'HoeFu1PviNxZ3KqG' \
    --namespace $AB_NAMESPACE \
    --userId '2HGnzGpMlpexvPL3' \
    --body '{"screenshots": [{"description": "7chBGTzAfhn8xS9y", "screenshotId": "nq4DChjke4ifINOZ"}, {"description": "1BDGSDwIc1cm4XBd", "screenshotId": "Wa4851rw5opHGRHW"}, {"description": "YzhOUE2M61TmMMGW", "screenshotId": "qUORO8BxvFK8N8Hq"}]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateScreenshotsV2' test.out

#- 135 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'A6B8PMZlCpCkMhVb' \
    --namespace $AB_NAMESPACE \
    --userId 'TLxpyUvfKa7dr1xu' \
    --body '{"screenshots": [{"contentType": "y3PCH2f7IZwgqyNL", "description": "18C92bPlhOMouuGC", "fileExtension": "png"}, {"contentType": "sQtJjtF1r038A8AW", "description": "ei70ylLbmwVTTJYr", "fileExtension": "png"}, {"contentType": "uQM26XtvHTisTZ0z", "description": "MMVKQ9twQAjTWZXk", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 135 'UploadContentScreenshotV2' test.out

#- 136 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'w3eelGj2m4XcVs0b' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'qKfCU9GxtpIbyhTY' \
    --userId '0shVF2wfxyYkXLjs' \
    > test.out 2>&1
eval_tap $? 136 'DeleteContentScreenshotV2' test.out

#- 137 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'iE6ADn8jqTldLs3w' \
    --namespace $AB_NAMESPACE \
    --userId 'oXB7Vb2fbtddzr7n' \
    --limit '69' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetGroupContentsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE