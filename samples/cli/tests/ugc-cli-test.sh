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
    --limit '8' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "bwzV8LnbJ8415iix", "name": "5iggy3bCaGjvLLK2"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'KijgKpIMWOFOej3a' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "PIxTGH9hDE0B5b2R"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId '3pFwFXJhqrwOFdKz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'ZeqOMBFg8z9rLm9C' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "1RYlpt1rXU8Zma64", "customAttributes": {"mCtllBTEncgQf1dt": {}, "tAXLfJ0AeiuHwxHM": {}, "6jtRkrrq4DrZrxS4": {}}, "fileExtension": "EjjKKAPl526YL1h3", "name": "u04ozk7B9pZZRCPI", "preview": "VY3XPgtH391s9UX3", "previewMetadata": {"previewContentType": "cWVBismWMmDHJAPj", "previewFileExtension": "nCnlMt0coMSQGWKw"}, "shareCode": "1tb2sDGUtT3JxZeM", "subType": "oPqmp8xUDjiJ8Tjw", "tags": ["IrvfrbBCv5VJxxhj", "FqctfRhPK8KllsYg", "DlOXEA81xMtReggu"], "type": "RtJZiNNBxUB9eOPG"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'Y6tHQZicyTmBUE28' \
    --contentId 'wpZuibPaFAuOO1TK' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "81jjVZ8O02nbCuH6", "customAttributes": {"7brDU3zLsldmspXs": {}, "DBOpnMtlHyD0pu7N": {}, "8WKfXviCDnBrpVLA": {}}, "fileExtension": "yxswHSrx79pNM1eM", "name": "T8sZIJdsmGzZhxZw", "payload": "mkAgd4AVJeZ0ylcw", "preview": "PQclaAsYAj5Tdh2T", "previewMetadata": {"previewContentType": "QVJxTNmhwIDrOtE3", "previewFileExtension": "U7P7zh2nlmvFGIKq"}, "shareCode": "a2tLpvyXlzTxjLv8", "subType": "U6sOd3hrm4y3yEoM", "tags": ["wDaGPOR4XE25YBRV", "EyGDJ3mQRwO3pSDV", "Ox3jWDYIfYXgpQds"], "type": "tMBCs1Tl7g5dhllo", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'x3buu6omERRUMZkL' \
    --namespace $AB_NAMESPACE \
    --creator 'b1CCGs3U4loEifyl' \
    --isofficial 'JAaqCDApbFFnAYx5' \
    --limit '61' \
    --name 'YidDjWeNJltpfPJX' \
    --offset '51' \
    --orderby 'Fe55pfhtB2FhJCRL' \
    --sortby 'CakudvUClRyeXrfs' \
    --subtype 'EI7DT8cOyiHAB8z7' \
    --tags '["5RaCZVsvLgXcwKre", "XJuYgkTA4frjuJjb", "wW7yBtixF5BEEkN6"]' \
    --type 'rimBd2RtLWhE0Cvg' \
    --userId 'gYJZiNupObJta5ys' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'dWc1eLb8hAa6b2KQ' \
    --contentId 'xYNTnHEtYGQVElaG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["E2hiu68rMWOld4c0", "JAxcklzMC6vUpqC1", "JYa05JpJlJf3SciY"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'NzwaY9XCtOQegJ5V' \
    --isofficial 'pLglo3USoIfOXprX' \
    --limit '61' \
    --name 'jRtNtqgs8hTVrEa2' \
    --offset '91' \
    --orderby 'tRxNcg8jvbRTVX3z' \
    --sortby 'Fjwbl5U62yelFXMB' \
    --subtype 'ea5Lj4mLZ55OIhhs' \
    --tags '["BQQKWri9OH0lvyvm", "b5ctALDjphot1ZIW", "1HFK0QtlEDCuTMTx"]' \
    --type 'GbrqwMhiDeLlNg78' \
    --userId 'Z4AvsEInkTXbmxov' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '0uSWOFm6mVnJgVQQ' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'mYUDQrsN0f9BiWtv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'lqdIIdMNZaP8wxDu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'Fgq9RClOzJc8fOzv' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "DKudPODKGxzq2Gxd", "screenshotId": "fs8beA6fY7L7lfES"}, {"description": "S4Yp2QGMcGKxrWdt", "screenshotId": "3V6bnCXFHdI2kdP2"}, {"description": "aj64BYSbilxDw2WD", "screenshotId": "C5uYa7VZ8VbJX0FQ"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'ZxfkerhV7ggKZISC' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "NkYQ18Oy87EWiNea", "description": "bP3JVlF3RoPAuDHR", "fileExtension": "jpg"}, {"contentType": "fY8aTkjkuI9Rh8WD", "description": "wkEAMO8mj1Frhs6F", "fileExtension": "png"}, {"contentType": "nVFWeuQlhpE4ffiu", "description": "sz0evqGW7CkkzeaR", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'dmg8FYXFrG8LERTo' \
    --namespace $AB_NAMESPACE \
    --screenshotId '2kIqhdqJBLYLuaeV' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["bpT6iTtee9IVIUJ4", "4y5Yx3fUwcDFUfy2", "fqGPEoyfhCEH091I"], "name": "mEqNbLelGq4OTmy0"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'R5Z4bV5aI8zAUJUc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'vKNLj1oaSeuNSFeE' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["8163JkDJEDTy7cyY", "2fbSWKg3Lz2QK737", "R53RjYz0tuotvaHu"], "name": "IrOjxaCmRRU5E0Mj"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId '5LvZVcZca15JhzBa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'Htr8RZU4G0JO3Bbi' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "PyjmWzy0ZhfO9hH1"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId '5FLl4JHN3WlhXSjJ' \
    --body '{"tag": "kkOy3bc0lweFTR80"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'NfLlcDfP0cGs9roO' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["PIbgb65GYdFmKtH3", "sTc3IyX4BC4znn9k", "kv5uDroR1tYjuyuu"], "type": "IpVrMSAJBCoqbdqz"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'JhSGswIA68iGvAlI' \
    --body '{"subtype": ["by7ZKkj5eQhtvhg9", "dAdydR0e4fewcVHc", "dNxeFFopUE3iH48P"], "type": "CDoaGQJDwrQ9pcoD"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '1ollwSG0VVl0adk9' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'GtgAJ53g91ljp3K0' \
    --limit '65' \
    --name 'R5JKme38CNGepaaV' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'e4L4xYCi29W6LoWf' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '6rDcQPlanildn7PQ' \
    --namespace $AB_NAMESPACE \
    --userId 'YKDoHwEpryVPMMXW' \
    --body '{"name": "l4TabB3GNjbuk3F7"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'wzQh8xfl3duvfGc2' \
    --namespace $AB_NAMESPACE \
    --userId 'ykBgzR0HXQtySaTH' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'ccP60sXogNwXgOPW' \
    --contentId 'aUYQ792qpqPHKzJ7' \
    --namespace $AB_NAMESPACE \
    --userId 'a2ysTlung7cHPsWf' \
    --body '{"contentType": "Kv8Qi6R1jupxOPPc", "customAttributes": {"HQFglELbgx8u2Zmn": {}, "MBQEBAaodN9924wj": {}, "rX6EFbtGdoHBhR2I": {}}, "fileExtension": "5ZDls8egRFjbvOEP", "name": "VDNC1XXACrjPhU6X", "payload": "AkzjFAmyJfMKS1LP", "preview": "5cY06jkwRA2vMeu2", "previewMetadata": {"previewContentType": "DwWrmqj3QwGuQ52I", "previewFileExtension": "DS3RgwAg44MTAar9"}, "shareCode": "XcG2Dpu3bIuTlnrJ", "subType": "ViN5gCZakqz7vthO", "tags": ["rLQKw6aFKoeeQiz1", "VBtLodM0w2qNU6P7", "83nBARJlFgJc69gA"], "type": "YUFRbkr8kKWxmsPb", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'fMqdypslt3bHQbmx' \
    --contentId 't2zWHGRn1qR1AOKl' \
    --namespace $AB_NAMESPACE \
    --userId '1zkY9KWIFlIuMPC2' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'hBTX2g9BZhWZ1KCj' \
    --limit '11' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '75us8zY2IF2sKHyq' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'MvPLtY94M8h6jeL4' \
    --namespace $AB_NAMESPACE \
    --userId 'jeYQUEpXEzWkfoxX' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'D62fW4UAr8Odcs25' \
    --limit '87' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'DHjRLiqN6JMb2p0N' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'ow7kr9G2zSdnoGqb' \
    --namespace $AB_NAMESPACE \
    --userId 'uM85oQmrJtBQDLUp' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId '8kloPFe8PJ28mbmg' \
    --namespace $AB_NAMESPACE \
    --userId 'cxgXoakoIgHBadun' \
    --body '{"contents": ["qxwMHm1IlbL390e9", "BAHcuonqCAGFzILS", "UREDorwyS5ZLJZ8y"], "name": "rE9yKftj07VPvVKI"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '2emF7OZ2avboXFCT' \
    --namespace $AB_NAMESPACE \
    --userId 'v0b5B4LxKU12dvDq' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'voPQVoZRjjZJFqV8' \
    --namespace $AB_NAMESPACE \
    --userId 'bqGbUVLJ0uDk4gOX' \
    --limit '80' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'h3JGVWpIbxwU1nOC' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'Ra8Jdpqz3tEshevw' \
    --namespace $AB_NAMESPACE \
    --creator 'YIu7FuiWKZFTWA4u' \
    --isofficial 'Y9C3S7qmKNsqXAX4' \
    --limit '56' \
    --name 'XEwIqjS1mGbffwBx' \
    --offset '73' \
    --orderby 'EEaylS2yLkOZskUz' \
    --sortby 'XDMAyvt5tq0fEW6i' \
    --subtype 'wsIY9Vn3VIHYah5A' \
    --tags '["luMbhaMk3Hoc3fNe", "3Ie09GTDEtSi3y7M", "PSEmOAHZQN74aI39"]' \
    --type '8wmHGrpy3CPVpa8a' \
    --userId '7znKEQ0gH5mAffgP' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'tY9vlhTFJAjeYhPs' \
    --isofficial 'hCH5TnrpP8hUChHA' \
    --limit '3' \
    --name '38BRH9MEVuGFkLvs' \
    --offset '32' \
    --orderby 'YvhVSB467PmUPSEY' \
    --sortby 'ejHcMwQzIkkjeHmH' \
    --subtype 'qxGAhQeShJ5dVIw0' \
    --tags '["ozsExXymoJq2bdJI", "1dQalgRf0Moatqha", "ZQTJd7iOON6gI5r8"]' \
    --type 'nPmHrXw0wLuIfAKf' \
    --userId '435Zr7tI3AonGlEn' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["htrDFCjFUrTiC2NF", "X6E7HY6VJ4ZsAkWb", "wX43wxoW59sjbQCG"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '36' \
    --name 'Y7vyHxpTOW9IZt5s' \
    --offset '31' \
    --orderby 'qqdoMf9m0kMkVaAV' \
    --sortby 'WH2VhWgmgqCWDfgT' \
    --subtype 'UWh7EtBSy2xnjO32' \
    --tags '["mGC71vb1rg6fPR3z", "3lNXOQYScLyQ0Vyu", "A5K67Xq4kdRNIual"]' \
    --type 'AwIzV4UAcUDlJZvv' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'mnOJG5xfybAtJg8a' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'eIjPR8eMAzng70n2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId '0YPgYAS6mIBfDqno' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'hxwZvPGhULcbjMD2' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'cexLa4HidpdK6fPe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '13' \
    --orderby 'kVojyWrCZdVDNP6E' \
    --sortby '74xEWzDP4DsU3iQf' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'iDjgU8vXQO4Rjl32' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '0XyAsHUcIYDCKcCr' \
    --limit '2' \
    --name '6Ic6LLCwwuZbyKCx' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'p6B6Kfk574yzDh63' \
    --body '{"name": "3V1JWMC7DmPfUW1E"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'gjMcfgbO9MxvSgRv' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'jTKKxe99oPhJfd12' \
    --namespace $AB_NAMESPACE \
    --userId 'cWMO9MACM1tz57Ph' \
    --body '{"name": "XYM4bQdMHO5Yc292"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId '6jeixM2sOtcoMKOt' \
    --namespace $AB_NAMESPACE \
    --userId 'aswLNZEfIrVjWfl5' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'YJ7yHX6ngcx9jCGA' \
    --namespace $AB_NAMESPACE \
    --userId 'AzWjOhrr08WT8nYS' \
    --body '{"contentType": "HeVWSxr0leSfqgX7", "customAttributes": {"Xqb375gnFL6HH61i": {}, "T0dRtgBtTxu7OiTz": {}, "HZiGnuGe8zn5yV1p": {}}, "fileExtension": "iTP6f0H9lD54eEB8", "name": "aBgclnR34vL8cosd", "preview": "JMutEeGULa607q6v", "previewMetadata": {"previewContentType": "oL5BzDqtG4M5SJeJ", "previewFileExtension": "fEhnJbxy7N9E1yOj"}, "subType": "g6iyTQEQtwYRxYlZ", "tags": ["XH4MNTEuWEVVrI4a", "yatCVAoDXQrP1DG0", "VmEC7KOwLTZzCybS"], "type": "KUc42q29RYVlBywU"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'QLsdgp97eohSFmFV' \
    --contentId 'uvKHJ46I0IvOSxWg' \
    --namespace $AB_NAMESPACE \
    --userId 'f1UU3qoNYmorSJnO' \
    --body '{"contentType": "PfBuJh7Y4gHv2eIr", "customAttributes": {"iqmuG6AF6xW1w1pD": {}, "bPmmI5zQhXvhHvrs": {}, "UQ3RUe4MbfPGhwl3": {}}, "fileExtension": "7xUnPlnqvszgZ81a", "name": "oyVylEwoeZJo1wnD", "payload": "LMlQYEviepRDHfOH", "preview": "gKJrDivv9kT1Zxvh", "previewMetadata": {"previewContentType": "6CKRK7vwstattZJB", "previewFileExtension": "6nCdu0LXjkvR1oUH"}, "subType": "MlJaGTke8ktdBRr1", "tags": ["e3qGm5aFOrQArGPD", "A1JKMWnYXTLrmoWc", "IF8frLgnpkOTxxfy"], "type": "VrES5xp18Xu5SvPT", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '6fVKTmohLENlXky0' \
    --contentId 'L4b1PnS6QiQP6a05' \
    --namespace $AB_NAMESPACE \
    --userId 'uXGQjlhdzGEPSIiI' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'pDHkbcTuck53GRPP' \
    --limit '36' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'WWnUUhO3c7I6zoNm' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'I9sxUFvCEiUlVGhq' \
    --namespace $AB_NAMESPACE \
    --userId 'Qucx15nnSHJ6Yfs9' \
    --body '{"screenshots": [{"description": "0szk9LFUb69bVa6p", "screenshotId": "AiEmfaoQNyxCgoqW"}, {"description": "zzSS5tN5Hjv50ijV", "screenshotId": "95vH8mOahwA5qsR3"}, {"description": "JAXcrEWEuQwY9OrG", "screenshotId": "JMqe66zNOyx9HrfM"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '2Nlbv7MrWT82UxJr' \
    --namespace $AB_NAMESPACE \
    --userId 'vIKiZANH8p3T3fPO' \
    --body '{"screenshots": [{"contentType": "QuznxvAZx1TBSyUj", "description": "rnb0tzKdwDIV7VJs", "fileExtension": "pjp"}, {"contentType": "T2iPZ6OCceqsQVLt", "description": "IAHeKOvQj49SBWT9", "fileExtension": "pjp"}, {"contentType": "ofX3Eve66OeMPIpF", "description": "QL8c8PrUVHtLYd6n", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'pIOxyrEJknxXEkDs' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'bgzrRfz7bf3XD0XF' \
    --userId 'F4BJcUBr0yfOlNHh' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'KLNyhkvgQIotocl3' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'p96J53gmrynqPMpb' \
    --limit '21' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId '9vIPae7J6qCRW2YD' \
    --limit '97' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'w8pbTQYpVeghyPSA' \
    --limit '54' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'D1NvKKN2RH0ZiIMK' \
    --body '{"contents": ["QEAMzf3ZTKiDgil4", "0WF7a7vKusRbzOSJ", "9TfizfqzEXb1DucB"], "name": "vCpK2LJ775wKfVDd"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'uaChnvpIGLl1RZgG' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'l1tHzGj7WNVrMRLX' \
    --namespace $AB_NAMESPACE \
    --userId 'F1NoGzSlUwLMbdDp' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId '6kbeXmnkIdf5Uy63' \
    --namespace $AB_NAMESPACE \
    --userId '6gcmCXAMnqQRKQwI' \
    --body '{"contents": ["9Bcr4OAv93RXUTUX", "4NRyefXuTFG090h3", "I8bn2D2lF9IE18GU"], "name": "Xz7EjDMZKR68xxNK"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'eKG0nZN7Cyqg18PZ' \
    --namespace $AB_NAMESPACE \
    --userId 'PH30cg8LpPO5hPRr' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'RkTzML5au7gZE7se' \
    --namespace $AB_NAMESPACE \
    --userId 'k7e9UXsVzjigW7CU' \
    --limit '2' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'TFczbCkHwVYvj4js' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE