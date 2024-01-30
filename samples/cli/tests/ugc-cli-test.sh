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
    --limit '74' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "tB4RH9ACPU5UqzF9", "name": "8f2DHOyCXzGyihaY"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'bkVipdnbg1fmJ1SC' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "f3M8hg7DzFztQ845"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'Wo5sMhbvBbqteYGM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'ue8qDJ851MSEdFmV' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "MRNGsQnjY4JKosSN", "customAttributes": {"GM0ZgyyUXsBNUXeU": {}, "kVSgWwRNmfAp7RqB": {}, "DLzJ1vi68RM2tr7e": {}}, "fileExtension": "TGdVYlLQ2tbEiZNx", "name": "vaEcso2RpKspknGD", "preview": "rnAbNpkje4Cifdix", "previewMetadata": {"previewContentType": "oO8C9FZkKy3JxFDl", "previewFileExtension": "fd3FaFiRei06QmDy"}, "shareCode": "83DUa0FZCJgOhgfV", "subType": "9KnFJtAtrcii8YnD", "tags": ["UXXCajlc0LIOSdML", "hsviYjjMVUvwMBcQ", "kvRCjJy7hDV9cgbN"], "type": "i3j6OJcOGYTkZKHS"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'Nn6lyJ3vH6ufqwUm' \
    --contentId 'EGCKbFj6sa1DUZns' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "fLnyKhrmyfx01oZb", "customAttributes": {"SnFPyTXoSnpxWo5o": {}, "YrZ6WdTUmfn4LFcW": {}, "BUReVJd7nDlPNzcC": {}}, "fileExtension": "uqXxNlZ6KTsWDUkb", "name": "GWYNHMiEquhAe7K0", "payload": "P2Kbp71LrD5SqBO0", "preview": "Ta7EK0QmViv5cUU6", "previewMetadata": {"previewContentType": "Ydcc5DQUuZCkNH2t", "previewFileExtension": "SFEeDaEI68vRhA45"}, "shareCode": "605TovNz58BEEKAO", "subType": "YxaLr8RX9fDO6jj6", "tags": ["L9C9COVDpl4rN7kv", "NQJFDfPI4X4HuQZE", "NQ77FhLcqNZTju8D"], "type": "YkiWeHItHVnZFhxq", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '16FYcmzJoa8Jn6DN' \
    --namespace $AB_NAMESPACE \
    --creator 'eR9DSjGBwgXJv0FM' \
    --ishidden 'h06mRWE5JLXAv7Ur' \
    --isofficial 'jhV2bw5NCG6GxBHc' \
    --limit '74' \
    --name 'yPDN3kasPoy2UnBj' \
    --offset '21' \
    --orderby 'QiAn05eKTCMU3Upz' \
    --sortby 'oNzlJmtzXxZQzC1i' \
    --subtype 'rmHT7bR4luJW8phG' \
    --tags '["qjkbyejwYZAXyUsp", "3ReXdJ4uHqbRGtw6", "UKtihD95M5jWeN9D"]' \
    --type 'OpBljcviSA7lXdVU' \
    --userId '7l9ZceGI8oxXJSzB' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'vrH5eJgdhAIHpQHi' \
    --contentId 'rfBYoE1vP3eq9z8u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["OW24rh2Bevm1VUut", "JN5s5KTfW6jKnnTK", "XVj5hfl9OiHaZ2yv"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'oY3mwrNu6tyVEAwD' \
    --ishidden 'XJ4jCjqgbTqCAr1E' \
    --isofficial 'tp4U3MtmyS4rtAam' \
    --limit '85' \
    --name 'k4ro6k2NoMSDfJLf' \
    --offset '72' \
    --orderby 'ao0jomYQAvmO2HFD' \
    --sortby 'YFOX03xDoJHacqaZ' \
    --subtype 'DJjNfKDHePdFFA1Y' \
    --tags '["8n0dDr6paIDOeorU", "xfAT99qz44H06tR2", "5KRUVYheJPNtLjzH"]' \
    --type '1O9D0nriHI59mgZz' \
    --userId 'p5RXHXLsyY3aQh4G' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["XznsJ2Lq2qHeCUCu", "QuAbyE596LYbZDBX", "VWvNjdthF4GnBrQK"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '2uwyMLLgrWVVre4s' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'DdKix4gUQ3ZThWvD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '4WoE4Hzvj94H0z7M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'l7ImxNI8PdB3WFfb' \
    --namespace $AB_NAMESPACE \
    --versionId 'pfJdAUlgIBNXS8Rk' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'DEYpjmYplIiv0lsj' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "5FyHE1FNl9e9Vnzy", "screenshotId": "FGhzhUajijTinEvL"}, {"description": "n1fHpMThzPOa5ojO", "screenshotId": "fiAB6bic8w4o0vHo"}, {"description": "nD2mZuh9rGMDzRXg", "screenshotId": "8eNkCICNFmzuRB84"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'mHx9VHwrJIfAyvrb' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "hpAEMARVESpWayZn", "description": "YSvxC5vxuCrvgO6X", "fileExtension": "png"}, {"contentType": "umBKIwkGFogLxlTd", "description": "YhuTAdEykT003eLr", "fileExtension": "png"}, {"contentType": "vuzIVlCm5aENJ7Mn", "description": "oPrbBksEKOvGxBf1", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'dTSAu33vfLzwK7vT' \
    --namespace $AB_NAMESPACE \
    --screenshotId '9eIfIKlpcdgk1kGf' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'kNLyadql5OaaX2Rl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["VG3becMfmQtnggmT", "3MaNMkhj479jWN7o", "66D7nPSuvhOXWM1k"], "name": "uHGTlI9SYVgHmp7G"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '3SunPv7NXdUzAzI3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'jc7cixqzO8AxFzxI' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["jvoa72Pqn9AbLxAn", "DikbYhpBbNoHjkLh", "5FyxFRW7Ya5WnKVJ"], "name": "pgLNMari0CovuGPf"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId '1K5cTvyorUbR4qJi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'RDjFByaUnAWrs6uk' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "xGKA0QjwKEnudTrI"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'UNxuPxJUbTOBMrUv' \
    --body '{"tag": "dOQSMgafq6jgkgCz"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'P91LPIpeItPRCaRG' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["JWahLhUoBlJDSsu3", "XpHbHTrWR1tfgkqK", "rcGe6EPCh4GgDbeL"], "type": "njjnQX8PHLwDjEwi"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'slgtCfX3p0gKfy7O' \
    --body '{"subtype": ["kA6bJEN1DwisWJEZ", "WlREj7thBbcgZ8Lx", "5jWdfcYbAckm3htD"], "type": "hgkHnAaVxAiwHI0b"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '3reR6Gz356oAHJrN' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'DZIE0TK4Whx1xfId' \
    --limit '23' \
    --name 'HmdSXBYaLMT2T3Dj' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'xEdQUSl0Q8TinNwu' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '8hfXGXmaKn9CRfJc' \
    --namespace $AB_NAMESPACE \
    --userId 'W8ig5YbJtoUMQjww' \
    --body '{"name": "6StKdgvupXwE0wAa"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'EJyfaRK6VaLRUjSc' \
    --namespace $AB_NAMESPACE \
    --userId 'KwzLueLYNPfa8Dnh' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'pHTRvM9vrKgxPQl3' \
    --namespace $AB_NAMESPACE \
    --shareCode 'RKAvjkt1BKMzrqyG' \
    --userId 'g92eP2Gin8vchibi' \
    --body '{"contentType": "exoaiMcokfSa99se", "customAttributes": {"0qof8OF0HSntenax": {}, "t22jNdoUFO2YGWUA": {}, "dOaZnmN7fLtsO7sb": {}}, "fileExtension": "zAc8oPkJB0X9cpHv", "name": "1Shz5lgARsGJF6nD", "payload": "KUxLTtsXtlCTBFft", "preview": "wtLR2GjXkiJdEnMm", "previewMetadata": {"previewContentType": "gQesNhIlyPD5MkxT", "previewFileExtension": "9nhxY5dN55HPzsMS"}, "shareCode": "HOtqDiVtEF05oG9l", "subType": "laNcBkxnF48HQceH", "tags": ["pETBI21JuC180sdA", "5KeTcEoYpcCZZmyQ", "xvzCeJ3lhihn2OMe"], "type": "8kmKb9DyIwdi8kVt", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'ZniVeU6HQ5ZPPd02' \
    --contentId 'fiGE0AiV1hlTHBrm' \
    --namespace $AB_NAMESPACE \
    --userId 'WN6Y7SlSmT3dYQQ7' \
    --body '{"contentType": "umhQ8GswHX01ybhF", "customAttributes": {"EMWVlqilfsBG2SC3": {}, "PgxH11LQDktni6Rv": {}, "tLT22pgfWt6U1n81": {}}, "fileExtension": "L8TUJKdoO8LdjbFx", "name": "D9UVI2aAX0uKKib9", "payload": "U5AbyJpVnleYbtPq", "preview": "idDT7mCSBjnPvNCF", "previewMetadata": {"previewContentType": "jGmGu3HgkUGJmX99", "previewFileExtension": "3G0s0ddcECdEAe89"}, "shareCode": "Cdws3QELjwNuSfDj", "subType": "IOGo1j4mOthSghqy", "tags": ["rbwMjXanvoHuhXmB", "4qei3jmuOPLgMocc", "HBAlhVYgh9s27X6g"], "type": "TTkL0YLvyIqtwLXq", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'yY3A80UGeixotcK6' \
    --namespace $AB_NAMESPACE \
    --shareCode 'PckXPQ9QZHbhlM4v' \
    --userId 'qhoQyACYDzunlAcT' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'A04753oh6PCAraJz' \
    --contentId '3BUOF1pRj77Wmi1Q' \
    --namespace $AB_NAMESPACE \
    --userId 'nYqPf6Sjhk4vpaoh' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId '4qreyLAQbNGGMtEB' \
    --limit '64' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'UOiNlIfAzUc1414t' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'wzpm3wKFf5K34RPi' \
    --namespace $AB_NAMESPACE \
    --userId 'XpbM7pSxDj5kyWLW' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'VvIQ8vOR4iM94C8T' \
    --limit '54' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'CxPJDavI6pysX9rj' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'SYABr8A2xHrgH8zu' \
    --namespace $AB_NAMESPACE \
    --userId 'HMG6Cf0jQLNEQSf6' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'P91GOZJGy7n14ZsM' \
    --namespace $AB_NAMESPACE \
    --userId 'tdZDiAJzK31o1QiD' \
    --body '{"contents": ["mt7kdfVtgPKOuJc8", "Ctc6zwhb9wm35qyh", "0vPqFloWZ8YeWha7"], "name": "aeI2HqDzY8zyMNH5"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'HfUPw7BWeGhs222n' \
    --namespace $AB_NAMESPACE \
    --userId 'cvHSXSv8zsdh7VuS' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'FIWyJc8p2pLUrYZt' \
    --namespace $AB_NAMESPACE \
    --userId 'ADT8sW63vCPQwxm6' \
    --limit '52' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'cdgckIAFTyf3rbs2' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'cRPa5gNszczs012h' \
    --namespace $AB_NAMESPACE \
    --creator 'H3lEYvL2hDtbRLXx' \
    --ishidden 'nJtxR7WPG16CZqaV' \
    --isofficial 'uz6xt5cP2TYVbfoV' \
    --limit '94' \
    --name 'qY6QyREFs4btYW5w' \
    --offset '49' \
    --orderby 'vOjHMfPhRqC3xBRz' \
    --sortby 'ZOsxB7VOeL9ZyPLs' \
    --subtype 'DIg0EGaIo427CbvK' \
    --tags '["LXPEwU27FYfL29Mc", "zNEFeJQOrMOAxEny", "Ckq2tKDdTaaTP0Sp"]' \
    --type 'Tz8uOUh0yXLfBxOG' \
    --userId 'sOJysAQBlu0Npl1P' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '8995qea4wgemsbJN' \
    --ishidden '9Rj308e4czYj2pGa' \
    --isofficial '3jxo8MLHhBsh2fX5' \
    --limit '61' \
    --name 'mlGqC8BxZ4L0KSVA' \
    --offset '42' \
    --orderby 'K2ke129r8nKVlffL' \
    --sortby 'FVcFcOb43lJkiVdT' \
    --subtype 'nEnIyFB3bkB6SKzp' \
    --tags '["Hsp5YBIf88HdGCTG", "qG9zBjkofsdqBmDT", "kaL1IPOoTmF0sfaX"]' \
    --type '8VHXrEXbCVEQLJyD' \
    --userId 'Ti9lcKv2pMexGCC3' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["EacVHbWdCw7CFWSR", "tJco9BkAqqdp13Lc", "kgigLBl0JfoPyRpY"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '62' \
    --name 'SgnX0lhsmub87NHn' \
    --offset '24' \
    --orderby 'Ysmmfay0XCrU5ytp' \
    --sortby 'cKddGxygFfZfmcBH' \
    --subtype '0C9aGCJkl0gwT6LX' \
    --tags '["bVJnEc3aqxd3hfjV", "5JZXFoNUH2SSXlQ6", "lTJ5OPdUnepf2pZ8"]' \
    --type '69ZFcr2D952sFxYh' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["LSrk1x73jhLzrCNG", "kub28ZeQOQsmBFHv", "WtY7ZNF6ITnZqfZi"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'NLXHpJAV6VwNUvVF' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '9qnN1RyVJZSBLCYe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'YGsUiY7Du9cNjXOS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId '58zEuTbEwpdjHz4B' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'm8ol5fOlxjFCeFsp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '84' \
    --orderby 'R8DRjB4mIXMmOPNo' \
    --sortby 'decfdckGeY6xC3IQ' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'g701qfMK4yrgc7d7' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '3cCRjFoo5lwNLmhq' \
    --limit '40' \
    --name 'zlco3eq9c3ZN9A2S' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId '9B0AkoprIuSDRy8O' \
    --body '{"name": "42gvPCkLfiAUXvqR"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'aXUaAtg7sOk9CSab' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'ob4CMGJKfKJfMiGU' \
    --namespace $AB_NAMESPACE \
    --userId 'Tmzi8OMT50SWIumu' \
    --body '{"name": "mv2QhM3oSrDUINi3"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId '67UgZhaIQwJrnbiK' \
    --namespace $AB_NAMESPACE \
    --userId '0bm8l9Thd2ntg051' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'QZUaXiOvQhsY678i' \
    --namespace $AB_NAMESPACE \
    --userId 'sfL5lIkNt3uswMJF' \
    --body '{"contentType": "kgG6GSE2ggewaDO5", "customAttributes": {"fV6qYcg6HN6V17fb": {}, "JXRWu2hfVfOkDuaJ": {}, "dADSh0gXZCVmfZv2": {}}, "fileExtension": "v1HLNOyS5HT8b7hi", "name": "fLdDRILDizCAaY4U", "preview": "o4TU28me6TfU5RQc", "previewMetadata": {"previewContentType": "Y1NwmCd7aGB4g0SB", "previewFileExtension": "AlKcGWUxQhL7Os83"}, "subType": "1wezWeSphDelwx88", "tags": ["UqjpFBN6G7iwNBPp", "5bJ7ghpbPbhaTolF", "zx5hss3AEdTQCct6"], "type": "S70GWyrgXQCdL2JN"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId '6EgSjR0X2XKrPD9y' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ShLUx2FGHq6nSAzL' \
    --userId 'dwROPdJ7TSZZN3ae' \
    --body '{"contentType": "w9uvCkQnPwh2Wu2a", "customAttributes": {"dGreHKaCKZOJ5PCd": {}, "DHCAsap9Ot5jXNus": {}, "3eG8aTwFCyYIaqo5": {}}, "fileExtension": "v6HwmM3wy5VTAu4Z", "name": "47Q2LUVcypTuuF0r", "payload": "PhL4Tr1Mg0RyTXh9", "preview": "jdmEVQUqI15lc7dC", "previewMetadata": {"previewContentType": "K4dxY4yam7UA8P5I", "previewFileExtension": "huKfEjUaaBu58G5A"}, "subType": "21Qv0RlgN1WJJKGR", "tags": ["tnHcrEpdryt0micf", "EAcgjamj6W3fxcDa", "gy6tS65cdgTDzyYc"], "type": "85R1204B4PxzMZzS", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'WI3MPPjcJjLmdzk9' \
    --contentId 'lMaE6qnMP3xKRZ4L' \
    --namespace $AB_NAMESPACE \
    --userId 'tJSK61QTW7Peb4PG' \
    --body '{"contentType": "1yRdzJt0nszCedA7", "customAttributes": {"oSCR6wah7GUMhLlv": {}, "kyhtQqeI5lqXfjij": {}, "731wh6QTJKqAQTtW": {}}, "fileExtension": "Lw9cGwYDXWQGy3GL", "name": "GE3MWVCys0PeoAtb", "payload": "GI2pP4QQ5cgVwqQK", "preview": "MWsKggBf4CiU6NVv", "previewMetadata": {"previewContentType": "VHeBlEdGLszxD3FQ", "previewFileExtension": "0erhdfcvslvec9D5"}, "subType": "hVqy04lyVSeH2EQE", "tags": ["hYo8xYEo3sfvSZtw", "vC47azt52Fmiyrhs", "1nWDrs0YjSNny94X"], "type": "zJjeD3PsrG7ca3K7", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'noUK7kGOgpC6Gcef' \
    --namespace $AB_NAMESPACE \
    --shareCode 'muJ9G7QRzr9vWJir' \
    --userId 'iy5xl5dbmAovdInP' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'Zf6T4meUxoNLZa7o' \
    --contentId 'u3VOR5YKgDBtJxvm' \
    --namespace $AB_NAMESPACE \
    --userId 'OHGzoCXOfQSwyfWx' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId '9hgEF63srCgYoDYP' \
    --contentId 'czne3IC6sZ6GUzm7' \
    --namespace $AB_NAMESPACE \
    --userId 'hXNIQWXVV1Vw5xFD' \
    --body '{"shareCode": "lBfNH9dwdsa0BLMh"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'sqyq7xazvXpNQkHf' \
    --limit '93' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'MAMw2Drjo2s5lsHh' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'kEu1X4OTPN8SaYgi' \
    --namespace $AB_NAMESPACE \
    --userId 'h9TdurEiIs2fBSTx' \
    --body '{"screenshots": [{"description": "KA2kyfr5xoePoPTs", "screenshotId": "P5HKLJm42gnKSXsU"}, {"description": "O0a3RK1WOBRkBm0t", "screenshotId": "FZTH6U7BngS6NbsI"}, {"description": "S8URCmUUaJBaiCb4", "screenshotId": "PdDsYe7AjgaKXZHW"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'GbSKvOW3erZx3SlM' \
    --namespace $AB_NAMESPACE \
    --userId 'XpjZYfTQ2ZPhuere' \
    --body '{"screenshots": [{"contentType": "qtS5m6K9DfHLkCo7", "description": "B6mbtOkyZkE4OtPg", "fileExtension": "jpg"}, {"contentType": "RR0Q30zf7VwuqTNH", "description": "etMhtYc5bOPUeZF2", "fileExtension": "jpeg"}, {"contentType": "RyjDJCWuacUbDWo6", "description": "J9lELrz3956YZobK", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'TQgf2463yoWcYqcx' \
    --namespace $AB_NAMESPACE \
    --screenshotId '0d6EtVgPbpdtYruN' \
    --userId 'jGWG59jR3E85x87r' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'VO8r9t8rua2FI7DC' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'GJAPoYrvmxsi9R4f' \
    --limit '29' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'icDWyyWI8ZY66C8y' \
    --limit '35' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId '0JGl0rbzBIPqw9lu' \
    --limit '58' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'q830RKmIOxMiqHMI' \
    --body '{"contents": ["lXNdbZIQaHXacuH6", "SFb5a0REwbEQyxJb", "YAz8jxX9wYm9CTYk"], "name": "i6Rk2u7RqifJQNOo"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '0rKCHlP2j7PQF0Sg' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'kfaTjGTF7uxbFmwP' \
    --namespace $AB_NAMESPACE \
    --userId 'ixjqsIuGf34V1lrv' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'IbhpjS7B1ZOzC5jS' \
    --namespace $AB_NAMESPACE \
    --userId 'XN0za9PeRT7MqXA5' \
    --body '{"contents": ["xWzx5CDEUqkLTmyE", "DA6BDAPpsoCwwVzX", "JJuJQFqJIUfuUank"], "name": "CahawjSIj6itKtCG"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'Bz9Yqya1mfBeyiEm' \
    --namespace $AB_NAMESPACE \
    --userId 'XeMQlTwINCe70Lp2' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'J8eSrxIjGxgIomb2' \
    --namespace $AB_NAMESPACE \
    --userId 'NyJlQChDYLreH28x' \
    --limit '49' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'SNMnAc0HTgs6HzJF' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'X99P3Ge8nZeKB5Iq' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --name 'ONpO9GxlcEINO7GK' \
    --offset '69' \
    --sortBy 'THsvCyL5R7olsoHX' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'YuCN0utFQGpZpxiw' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "bDcGcwFxJzhI64kB", "customAttributes": {"3CyLHhCzDcFqcqSH": {}, "1jm5mSjABx8XkDUo": {}, "6Sysc4QZKQClSgfW": {}}, "fileExtension": "E2PhBoxPSTUEFz1X", "name": "yd4UN1ln8GiucGDX", "shareCode": "V5MKHPvFrnjDYcWw", "subType": "hGRpHqYDgg2IyWOU", "tags": ["DrDp2RllX99XNybr", "YUXsHoD5Dwy16lIf", "Fqqw9mlISxaN70Yy"], "type": "OwDdyl0bUNssVmn2"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'eyneu4WPWIOr7JNW' \
    --contentId 'EZLGi6W40dbacLMI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'Eo3kAbvbM0qhObKQ' \
    --contentId 'hq6LQYXwTUiyig6T' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"GEGiApBbRufdms7j": {}, "EmyRCWWmsKkliHpq": {}, "lfYfm8y85ZbUDWwd": {}}, "name": "xXVhMWZVZYF8KyEv", "shareCode": "exw9XryzoKnuZjkE", "subType": "b3uqySsKDo86O85d", "tags": ["Y1kn8Cj7k6uw9NPc", "iPvXziT4wbP7s4ZF", "zwwFe68MzOABiHUy"], "type": "lcZQJETT8SmPRGaO"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'Xwo7dx8Jz7ah7BrD' \
    --contentId 'sUf9Y0Ldnn45R6s5' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "PPQm2zVbltGg6kIP", "fileLocation": "js4ipEizHlqhzjG3"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId '4aUz96R4fKhAumyl' \
    --contentId 'MFFg14sbvfdtmVBD' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "qo4dpXLvuvJQ0AwX", "fileExtension": "qxrF0wjN9ocKqaoq"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'lpIxensXzF5kACOa' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "p4U8AtvMEx9XOlWC"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '99' \
    --name '4giHmqyiZ7XM1GST' \
    --offset '39' \
    --sortBy 'Ufvsp3S6JvAZ0Zye' \
    --subType 'IfsoVQALReaUsfIh' \
    --tags '["KK7Rs9qsjhrDacjq", "gU3d1fqyxHsEFnP3", "7WpnO9pMxlYtBODe"]' \
    --type 'K9JW7Kh5WmHNvLCB' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["z2Xl7TGSw4xBqOci", "zU0U57lcYLI7V8o1", "d9eCOvOHUrRGnmlJ"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["iqobv6J0gu0A8OhW", "Q7AuTmZmyV0on0r0", "Rpfm5efNdqNkoKzQ"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '3ktRn3mCUw8kfTIs' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'idbJkjo3ko1KyXy6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'R1G5bJEjc0KnrxGe' \
    --namespace $AB_NAMESPACE \
    --versionId 'jtZMzoaZNx3Keaos' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'ixe6g4grrVNCM8op' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "dyZlzeA8tkjBNal9", "screenshotId": "SCnYUEBHy9ageH76"}, {"description": "pQhMwGzp8P758gdz", "screenshotId": "6MKRMmzBuCUb8TMk"}, {"description": "VvaCZ9W3WM32fMRG", "screenshotId": "ihDSuKPhDy8BP3HR"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'grbpfh0tkY7AHw2M' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "9JBkXnNFPlseDqVv", "description": "ZXWxqvG6tud0dgl4", "fileExtension": "jfif"}, {"contentType": "RHUP4ZfRAtScE8QN", "description": "gC1OsJJBD6V7bM6c", "fileExtension": "jfif"}, {"contentType": "UvvlP0IwkHdMwQUJ", "description": "G0yqtavRLzafm8K9", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'pa7XyqAedSndctjg' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'xH0iDnM9UGoMrrId' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'jh8XwXMcNG2qAefr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'bxcDMeP16flUJMw3' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '36' \
    --sortBy '7Y3aFEftCRdRMomy' \
    --status 'TF3EBMApQyHe55S8' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'OzpuushSuhITUat2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId '3dRKCO2cW20wt4CB' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "QlnHZyvXOpiA24rY"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'Mpb6iBv8gxaDuClI' \
    --namespace $AB_NAMESPACE \
    --shareCode '0nRStYt5BMSU13dF' \
    --userId 'DfjXJA53YfvtLVOF' \
    --body '{"customAttributes": {"tcmEvJUVJz1BywoX": {}, "lwt87oygCROVX31s": {}, "wOWAj4k9dtsXarZh": {}}, "name": "OFgq2jeoErpxa7T1", "shareCode": "1diBesZIFZzBkaFg", "subType": "biBEy7uP3299zTIo", "tags": ["FQfFTg0bj8E5zmns", "XEISfNm4chzsvwQc", "9bfIUekjxNpy2F6N"], "type": "6heKWJTjYsNjMeeE"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'bUS0yctXY20FbDtR' \
    --namespace $AB_NAMESPACE \
    --shareCode 'OWrmvtQtFlD07iGV' \
    --userId 'a0uKCN8VkSJ8fEc1' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'nI48sN0SFrwK9Q7M' \
    --contentId 'sCrcmMCTfKb6Db0n' \
    --namespace $AB_NAMESPACE \
    --userId 'kDLdxxZxa981SQoQ' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'v5WaDlyrto0vvgnc' \
    --contentId 'JQZBTJrws7TLP2JP' \
    --namespace $AB_NAMESPACE \
    --userId 'x90WZ2HCrPZoCNm9' \
    --body '{"customAttributes": {"DOQTDApd0BVT9rrh": {}, "ogPT9PxM7ilK6yaS": {}, "dJBeHVc6jTHpNJ1a": {}}, "name": "E7wg8qHHolsRXVwK", "shareCode": "W85JHEOdW5wHCq2i", "subType": "HMJdCLxbn1iRnijj", "tags": ["Es9hg07rOsbLJ2AF", "BKTiFeU2hOTA64Yj", "5EyeZBenm1r508l0"], "type": "sn599hZE6IlB4aBU"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId '6WNHdaz8lByzOCVu' \
    --contentId 'EqJm8Ppcp8TSPo1H' \
    --namespace $AB_NAMESPACE \
    --userId 'I0LOaQRRbMkQjmEn' \
    --body '{"fileExtension": "dIepX4ecDPD8jooN", "fileLocation": "GvMVdXTlgKJpS3gv"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'HNu0NOtZ2bIBpuie' \
    --contentId '4PKN5UrHR2Xj2PXd' \
    --namespace $AB_NAMESPACE \
    --userId 'fM3oMswUMfoKouVT' \
    --body '{"contentType": "F4pYiO9mrT3K4HiS", "fileExtension": "LVvLnkgQzaxcaXmQ"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'ryWXnABeC9dsZMyT' \
    --limit '94' \
    --offset '89' \
    --sortBy 'JPDScupbdXY2xwiX' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'CpsC1P991rqsBFZW' \
    --namespace $AB_NAMESPACE \
    --userId 'Czn5tKbDtBLXtj5v' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'iAgbYexe7jAiNZcR' \
    --namespace $AB_NAMESPACE \
    --userId '3z6amMjgL8hiUXPa' \
    --limit '11' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'pEUh7L8YpvJWiw3r' \
    --limit '56' \
    --offset '10' \
    --sortBy 'Ggp2GUAUSCVoImVj' \
    --status 'RELTTKoMeAdLILly' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'ifU0xRTzstBHQ7A3' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --name 'f2urnhISwAfOTgET' \
    --offset '73' \
    --sortBy 'mQcuOZyyVHacWWKK' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '41' \
    --name 'BHoAZwOlDxiz5lk1' \
    --offset '85' \
    --sortBy 'P1TBiAgeA14PpYBy' \
    --subType 'Jr3fc7bZ3mVUV7Ef' \
    --tags '["B5fK1Ug609UkPTtZ", "krfTzyPIaJ6PkfxV", "kY4xDrowsOqBvhTi"]' \
    --type '8f0vefAVMQj6TjUn' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["NkZuWEDlEMC9DeSm", "ln558VgKJE4M4LYG", "bC86BaCAuvspWitr"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["Ly8U29cj12y02Nep", "mXRyYy2bYYbofRFy", "N2cIdnTTmDBznjMZ"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'PSSDYXjLf5nDLgCH' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'ad6bR8nWiY5K1rm0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'DgQzuDiFDfTVmr6S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'nt3eHrbyXq1gkM2S' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '63' \
    --sortBy 'DIdxclAgurITwRM2' \
    --userId 'OVVyBuFFd1qw9PBJ' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'hV8OhNXC7tfbMu2a' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '90' \
    --sortBy 'nt8kgqpwIvw7rvHp' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'O7DwBnYMEgKOGj8K' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'D3piFEEpT1Twda55' \
    --namespace $AB_NAMESPACE \
    --userId 'uGvRMTQRQ3Kevhsr' \
    --body '{"contentType": "qiQ3vywMT8PAcbza", "customAttributes": {"DRKb9zKGvaj2wqEW": {}, "1CVDxBMqqW1WeGb6": {}, "N2lp78LCwKeHgDiE": {}}, "fileExtension": "ZPA1bsX7XOwD7ovb", "name": "TybSyZ7Je35gcOn6", "subType": "VOM1zhVhHKEmBJo2", "tags": ["tiLmKE4sbomzpGPn", "NEnP26H6P3qB0X2W", "YVz5Ot353KrvRmvQ"], "type": "Zjq6elx2GkWFhc9H"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'lER6LaWnxIIP4ze9' \
    --namespace $AB_NAMESPACE \
    --shareCode 'fc86JCROylyB9MAB' \
    --userId 'Rrn95epRChVUIDrY' \
    --body '{"customAttributes": {"0iToXTSQqKDQJi6q": {}, "jUcDbMDcgb7YSRcR": {}, "UpuKYdtc2Zb2wQtB": {}}, "name": "ssNLEhwx89tG9T2m", "subType": "HO0Ays3JDGPZEi8Q", "tags": ["3WySiclE8BDLlcbn", "DIu692gNLx11xRoC", "ee3K8vPBxwQBz9c4"], "type": "AHYnwbNPETquONwk"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'moIZrP9wrtzHKOY9' \
    --namespace $AB_NAMESPACE \
    --shareCode 'XqQZQbCEKpntYrxk' \
    --userId '3nyETuCSJ33sOyB6' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'JesmNoWmH9gpWxrD' \
    --contentId '5AjmkhjF3TeH6gwm' \
    --namespace $AB_NAMESPACE \
    --userId 'IgxaGh1IFQUnVHxS' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'U6dsxgLYYYyUfne8' \
    --contentId 'IseEsRrruy90AjMg' \
    --namespace $AB_NAMESPACE \
    --userId 'iwzqdoXWLhBfi6fs' \
    --body '{"customAttributes": {"ZMguVOP7cWKzCcds": {}, "kCLQiz3w3sMqiFcC": {}, "Z2gYh4uboKfJlhML": {}}, "name": "DDJEtAlgfLEZ2w2n", "subType": "XInmquZJvLILsBdZ", "tags": ["ZBir2fVe2zrRXIIx", "KTXyv7HohgtaiIOu", "rWtJHZX7qaW02GsK"], "type": "4IsqPYaRY0pLSmeF"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'PnP36d62vx25wzmp' \
    --contentId 'D1TKZ2iwyqnKFuBd' \
    --namespace $AB_NAMESPACE \
    --userId 'VBd82nPsUmT7Rc4g' \
    --body '{"fileExtension": "o8Nh2alho73wvlVB", "fileLocation": "wH1AfdYAmEgyNbwP"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'tGecugkmtvafs3j9' \
    --contentId 'AKUYgcopUFzCncVb' \
    --namespace $AB_NAMESPACE \
    --userId 'tNKHydaqCG5c9dYq' \
    --body '{"shareCode": "MpngbQwsryyQDGfu"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'pYysuk67mnexdT5G' \
    --contentId 'q75W2BKfwiTpAWqq' \
    --namespace $AB_NAMESPACE \
    --userId 'fVqES1adsDvLC10E' \
    --body '{"contentType": "CJ2CDgI21I4GxEnp", "fileExtension": "YQFA8KoUgeE1hFQx"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'wu86bAxsvLzlBFz3' \
    --limit '79' \
    --offset '5' \
    --sortBy '4RJSBLfdvFZy9kkX' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'InlIAaWmz6xv5fkL' \
    --namespace $AB_NAMESPACE \
    --userId '5BZ4Y3PbsoZZLkZA' \
    --body '{"screenshots": [{"description": "h6RsnVUQXDBTPLmq", "screenshotId": "0SjgIkxJYhjy70vn"}, {"description": "HvcoiLmADezimW14", "screenshotId": "bZYXZeuFMGZpDI2E"}, {"description": "oEPl0iLbTrD1mKl5", "screenshotId": "pAtmaXEDEiTyJ4Qb"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'QbxjmnXwKU4kwrT0' \
    --namespace $AB_NAMESPACE \
    --userId 'p8xDorB0FuRTnk5a' \
    --body '{"screenshots": [{"contentType": "KLra6BuIQ6tvmSoT", "description": "ydc4DVXHcfrnHh48", "fileExtension": "jpg"}, {"contentType": "TMVlG8P2ithjU3a4", "description": "s8YKFf2eqozEjNxP", "fileExtension": "jfif"}, {"contentType": "1JiDIiPX11cl5TJ3", "description": "JVwOWoSYGadaC0CH", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'giyt38CNTiPGwrOI' \
    --namespace $AB_NAMESPACE \
    --screenshotId '4AFaBSoNupoHtWNh' \
    --userId 'BqjKqyNdFEtpA29J' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'EX7CYbZUOxMJtt93' \
    --namespace $AB_NAMESPACE \
    --userId '3GiQfGPq4o2fn91f' \
    --limit '40' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'c1ksM2BD503fGU6D' \
    --limit '15' \
    --offset '77' \
    --sortBy 'tYISatMdg2YBVMKz' \
    --status '2xxEtaDDJPsajiaf' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'M0D2Npub0dXXyTyE' \
    --namespace $AB_NAMESPACE \
    --userId 'GYabHjeJX2rWBZFc' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId '9wyCSkvrO7st96A0' \
    --namespace $AB_NAMESPACE \
    --userId 'dNTNLv4qM9IYQZiM' \
    --body '{"fileExtension": "hCHNzUaFqUc5h0js", "fileLocation": "N9bCflxAu52yXJjn"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'tKCTVE8TQuXLTDPb' \
    --namespace $AB_NAMESPACE \
    --userId 'VYOnrT87GpFUvmpk' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE