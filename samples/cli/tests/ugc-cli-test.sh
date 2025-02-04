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
    --limit '60' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "PFpLQjRYTZyV8Ce6", "name": "3UtDLVN8fFWH81VD"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'JlxLXKqyJPZnvLtC' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "oekmICx0GKVAoQeu"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId '9p0Yepi4CBzqDQcF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'DVQ6Wcd9FjYvz4c4' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "uEek2rWR6CdpOjP1", "customAttributes": {"axcShJwDwWPJUKnC": {}, "asTt533XNlHySinL": {}, "JTOBknmrri0OLvQa": {}}, "fileExtension": "de8Ijw1kcHWJ79vc", "name": "OsnaiZ1iZ09DQIU9", "preview": "urqA3xjSR6fyNQrN", "previewMetadata": {"previewContentType": "bnAolt9NTVj8flhh", "previewFileExtension": "OqDlcTAV2ZmSXqUY"}, "shareCode": "74XgnoZiyzVHkLEj", "subType": "8EQOkgc89iubj1BP", "tags": ["HTErxoLPF9I8DvUW", "rVPIs6tPcn185E87", "JhHy1EP1Bwlj10Yg"], "type": "wMXMD2oE8t5iwtYx"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'Xlu8qoSqVQfbhqyX' \
    --contentId 'zKW3oCzBF9eqabHq' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "Q3M8q6xRPNh0ky51", "customAttributes": {"t7VnnATCT8tbyQAp": {}, "dimm6PCFFbNnUi34": {}, "JFUSiufi2lypkoV9": {}}, "fileExtension": "7bx4yzE4yAB8ocBH", "name": "jzhTrmwLHhlG7NaC", "payload": "ODSkvgVeqg7BPWrX", "preview": "EV9wuRVvLE31mCsZ", "previewMetadata": {"previewContentType": "NrdgN6uCAT4pMpo5", "previewFileExtension": "SwBXyQiBPHtYvQxx"}, "shareCode": "vISVw1gIvVWkcIRl", "subType": "3HuFnNLn1rew7BVC", "tags": ["X3jPQGJABezQgCWB", "g9o5OwLHgSCChURQ", "A2mSZ3xCJQBzXKLo"], "type": "HUT9gFUjapiyNxuQ", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'hooN5bluBSpBSC4N' \
    --namespace $AB_NAMESPACE \
    --creator 'a0ZK1fVqJDUaIckr' \
    --ishidden 'gJVb37Us7hA3fRW9' \
    --isofficial 'iWqYvrN9YywHWvbT' \
    --limit '13' \
    --name 'kVRcKzhQmqOkqS3O' \
    --offset '54' \
    --orderby 'nZ3pDVpQr6qx0WbU' \
    --sortby 'aeH2K8MGEgtBjlZb' \
    --subtype '4rLvjsXu6kBAhGuc' \
    --tags '["TZIzZNnnIUgeqcIb", "J0YRNa8N7qKvJMNQ", "DNAlgulkBDvdmWZN"]' \
    --type 'MYWUETLAAWqHjT7d' \
    --userId 'zEPlqHNSdkKAoBAY' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'FH2HQkVs60OgyxDP' \
    --contentId 'ipdeT5d2TVjtA3An' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["e1GI5yxkjYKAOBoo", "2YFxyvGlgBuV1xmF", "Nunm58N138nAvYto"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'wx95gbLlRDjvdOPj' \
    --ishidden 'Kq1cs0EUqypLnMao' \
    --isofficial '76WvrrZXYgDk64fr' \
    --limit '38' \
    --name 'ns2l7a3ECT6SFYJ0' \
    --offset '21' \
    --orderby 'HmYIzjxC2vxB8xgK' \
    --sortby '5taPuN9sWZpOX7FS' \
    --subtype '7wyj7lfvV479j57K' \
    --tags '["Sh5ecb8e7FUC41QU", "OvvHBSXwLWBkuEdO", "LyaiIUEPuPOGrU9d"]' \
    --type 'N3ZvnK5ZYkJiUBRD' \
    --userId 'DjMQaegxIUvZ1kiT' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["vJng0nt2stMaOlD0", "PPtKW6lvnxUH6b6M", "6pJPNLX5KvZ7YGKf"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'BNg3pATfYQW7gNis' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '4yo7DsJZGHi0QB9e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'bKmKPrT4p2xecc31' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'Vu3t6jsZogddJTxn' \
    --namespace $AB_NAMESPACE \
    --versionId 'b8eh1AahF7nOIpHv' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'g62kIrXEGBlKBONx' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "1RpjOLbh6KWxfmI4", "screenshotId": "eMfwugUKBjz2g8pn"}, {"description": "LIz6vMJsijHMAwFl", "screenshotId": "6LRsZubg2xnFJpcq"}, {"description": "b2PEtvoBX2O4xK0S", "screenshotId": "eN4OcxnyQT9g0Ivn"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'V4iwuwlnVxIQA3YN' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "ZKehz3frbzVK1Kdm", "description": "LsQFqSeAv8qPWJSK", "fileExtension": "pjp"}, {"contentType": "53avPhMQHBcfrSZQ", "description": "KziXoCetJJocz8LN", "fileExtension": "pjp"}, {"contentType": "zjiIvbwguFAuxo8W", "description": "vOShlshkzA9PSdxG", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '3I4xZv8wtrOYB6yY' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'zJqYW8k9mOmisaka' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'UWcK0ufuRrIb7ev5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["S2EBRAX9YsXdV7IL", "mcfvBVnYGpeofBoC", "URufIHGe9UNDjnni"], "name": "yUBbj0lWlLGA16a8"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'wtcevlDtueZWEyIh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'bkYSb9nyEBG8Qjvk' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["xoQxA4BVHCyNSWOj", "jY2nRx98Cs7Tx8tF", "NBtH5YZOpy0vIqEm"], "name": "DKkFm1QmvBqCT73c"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId '0xQlfypJSbgzV9rG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '1HqKudDtqxVq6auo' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "yTlySRDLPjBV6WpA"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId '9yqx51VJhhUFV6mx' \
    --body '{"tag": "HTytno2ZF7Q6X8SJ"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'TxUJ7HpHMEoqRUXM' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["UjjpUmYDOgDdn8Gv", "M6IdHDLxw2fhjhg1", "DJxoLyWDbJO5ln3O"], "type": "Wb6jUVRJl1DyqxI1"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'kOgDXlcyUz1fdzFh' \
    --body '{"subtype": ["Eoy9IchvYu9E4tWJ", "YgCTWI5t2s5lnS2x", "WOwNuJF9bMROQx3l"], "type": "JAr4nBzuHYaU0YbU"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '5JDpQF0Dy6IzsqIW' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'PZtqjxiQE86UIveu' \
    --limit '98' \
    --name 'UtdXpAHiLhhKUcss' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '9mMkCmJqxHfhvEDN' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'FHbRAR1wNNbtsS4P' \
    --namespace $AB_NAMESPACE \
    --userId 'nn9Rmcj4Bn4wP2AC' \
    --body '{"name": "KJZY344mWj5Rpa8m"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'zqkFsSaETTMHonDF' \
    --namespace $AB_NAMESPACE \
    --userId 'lxeAKiLyfnO3FsU7' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'jPM4A4bY2rBYjnsO' \
    --namespace $AB_NAMESPACE \
    --shareCode 'BMf2nN5srMRoirdv' \
    --userId '7M7DMjpawKmO3PHR' \
    --body '{"contentType": "T6V4SHeOKprvA1BM", "customAttributes": {"AQ52HN6nXRwrcAZP": {}, "opi15QKXaCHMuHId": {}, "NgvNAN6mQ8SPj1H2": {}}, "fileExtension": "9jf2qWnx6HsSiiYD", "name": "6agvCcIqUyfhwsSj", "payload": "qaL2nFIxPeAim6xO", "preview": "c1UGzLifmP7g5CGw", "previewMetadata": {"previewContentType": "4DbGW18l6Km4mTdF", "previewFileExtension": "BbhyxMWqVUBw2jpI"}, "shareCode": "RhBVq8VlibeODLS1", "subType": "SCTnhYWoDf41ltib", "tags": ["NSBOk6ms23b9Jp6w", "IJtMQ6U78urceZkt", "pf5Wwz3gx5jGF6eu"], "type": "hUMiHbRDdpvQiWQD", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'bpV6g987zWmc18hs' \
    --contentId 'kAov8nKvbKMjdWPY' \
    --namespace $AB_NAMESPACE \
    --userId 'g0YyRR8ia1g0kE4D' \
    --body '{"contentType": "z9n79LMeDG5tv6ja", "customAttributes": {"p0PomFXKCnWpbAZa": {}, "CFvdEIajf1volfDu": {}, "3o4pWM8F7BP3kcvT": {}}, "fileExtension": "RQz73bHTuRSZdA5v", "name": "jQ42RL3K08rxo6WV", "payload": "Oswp9drihOqEdVpT", "preview": "iwVE3KqeKMAwI6g4", "previewMetadata": {"previewContentType": "J4s9hdyTGRxEKJKu", "previewFileExtension": "RO59QetKt1tGhtYl"}, "shareCode": "F4n2AAyBKYEn29zl", "subType": "xuGiPNfs2ErqnMiQ", "tags": ["hTNuV6ykWPoT5R8Z", "EZTiYFPiRixhM13V", "idcjW96VhP5hPvHX"], "type": "KzmjSIEQanIHm7Te", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'LIlosFT8YNX9WplJ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'h0MkrzIYkHeG8Yk2' \
    --userId 'd5mlDnYzeCPmH4Xe' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'tNqGjzpY1Gku8JO2' \
    --contentId 'jtehHxOZpMXa59ZW' \
    --namespace $AB_NAMESPACE \
    --userId 'rfLvhZmsajzrixAv' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'WVTZYnYDdgHctDmT' \
    --limit '21' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'JU3JpNzgWwiNEwAq' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'mZqJw5mYM6EY8Rp0' \
    --namespace $AB_NAMESPACE \
    --userId '42GgZrqN9cN1BkM8' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'iaYI3fkB8s0YPdRw' \
    --limit '32' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'buiO10XXpgEeT1hL' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'vnUMYBlKpqZbj7De' \
    --namespace $AB_NAMESPACE \
    --userId 'qpxvXyYztbezuMi3' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'ggldUWsf5RrrGjSo' \
    --namespace $AB_NAMESPACE \
    --userId 'XZ1xzFXHQWFqg2jd' \
    --body '{"contents": ["rvbxXsJdoO9Isi5E", "God6wnWymTxN7qPS", "qmBdMNLePRsWZ0an"], "name": "7DvpqYRVQGpu3xyP"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'NzDoHIfvlM5ReBRx' \
    --namespace $AB_NAMESPACE \
    --userId '401rgrgAYOsyUCkW' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'dpJiROEor0wyaMGC' \
    --namespace $AB_NAMESPACE \
    --userId 'GASfiyI7iqkTJ1KA' \
    --limit '61' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'PWoQwSYrwNMjgrJ0' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'FvGlly3QixUOxmUR' \
    --namespace $AB_NAMESPACE \
    --creator 'Tf0hWlqLCWabzdi4' \
    --ishidden '4hkZX5EYFu5PlPre' \
    --isofficial '2RzVBkvb4VYWHxU4' \
    --limit '11' \
    --name 'paCkZZmJJQQVauHA' \
    --offset '32' \
    --orderby 'ZBJcid4EoyvAKB0J' \
    --sortby 'Xk4z6AT18PBVx6dC' \
    --subtype 't0dZzejjozggh2jt' \
    --tags '["5vsEKMcINy0tyYlF", "3sQvlagMDYZ3ViGO", "qESGsqwBuaEoErcm"]' \
    --type 'zekVuKUvINpohvxJ' \
    --userId 'lnG0qyqOnYJiw5V8' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'kZ56iBIRkKOt8Z1R' \
    --ishidden 'tXULWaSOGUpN6Kll' \
    --isofficial 'sKnLrGhIARPBhLKb' \
    --limit '9' \
    --name 'vainprWKPdTxTQPt' \
    --offset '53' \
    --orderby 'Sh048n8EYjgqLKg5' \
    --sortby 'i6eZx9oR9B710yMN' \
    --subtype 'RbbW6bk9lvXQYM4Y' \
    --tags '["bVpjGSEzCQRgFmdK", "9gE9UKahJstLFloB", "1Re1tDzOmr3yp2C1"]' \
    --type '51mrbjxHd4hkFkwM' \
    --userId 'UgVxfjqkvLltFkZ1' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["r0oaUoZXzcO5gNuo", "J8uxX4H4cyf9Yz52", "To0mSABbZlY3N3cX"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '25' \
    --name 'xdt6ki3Ne9n9WBG1' \
    --offset '41' \
    --orderby 'cRD2xKtLj9ZV39eh' \
    --sortby '4BnpdifRmgfIquhh' \
    --subtype 'fq7BwRYt0WkX9APr' \
    --tags '["j6wKNKey7Sm2Umzh", "znG1Qe6iucy3FiOM", "ye781eZNBRx3p9qf"]' \
    --type 'iOhgbKkT9CrJMKxC' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["G4kZtRmV0zlyiSC5", "1k02bwn7MgoSNe0F", "CRcSGL5yTldlMLpl"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'iiW1E8jYcI89WrAr' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'jnpjiijQJMHtGCpK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'zIEwpRFvA2Z1FvUx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'U8GPpVAoNO65RG4k' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId '2CAUJC5UuMVOmOhI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '68' \
    --orderby '96yHia42wcyegWRZ' \
    --sortby 'QcOpgxkUKuf9hUDo' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '5hcFVi5UEpq9nSSJ' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'LlCOMfzvD3GOjbYp' \
    --limit '41' \
    --name '48m5pLKq5y3k5hTw' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'Rfzr68FEEzb4i3Eu' \
    --body '{"name": "GEO8B27VKQJXOOTg"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'mbcOBVUTUzZsFBmH' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'cPHqgDxDpGz5zR4v' \
    --namespace $AB_NAMESPACE \
    --userId 'ErNN8n9uVrrprR29' \
    --body '{"name": "E5YVRe2Jr92rJC46"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'Qfs4XjpM4q4WLIdR' \
    --namespace $AB_NAMESPACE \
    --userId 'NMY1DlVzojNoEBOK' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId '7c4H3JTVuBCczbbU' \
    --namespace $AB_NAMESPACE \
    --userId 'vMYIofsOgkG2VIUY' \
    --body '{"contentType": "gTDyCRtV1qHQfRvb", "customAttributes": {"ACAjeJ8ANYLog8UV": {}, "NyOIlfuKczAeu5mq": {}, "PB5DH5SYTKRmYLE2": {}}, "fileExtension": "7xNpyNkEu7qCNUmF", "name": "KRyNUW0HtwLxxWtP", "preview": "KpzOJR9ZC5Mnyyvx", "previewMetadata": {"previewContentType": "N2U5sBXMbAoqXNan", "previewFileExtension": "kkEraW9EKuaBcr39"}, "subType": "hXdIwiIl9J6S84Yg", "tags": ["opzWnxQHkslMQYra", "T7E11GCWw2VsuBeD", "6SCEQVNg1Vl7zACq"], "type": "mvUWULWiRlnfBVg3"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'GBJVZUboxE9IsYcq' \
    --namespace $AB_NAMESPACE \
    --shareCode 'RB8F7m9iFWRSYtMN' \
    --userId 'rLO7Q3erhEaEuoJd' \
    --body '{"contentType": "o6yAnSksmPwMG1Ey", "customAttributes": {"Si0nUF616trZiLOg": {}, "lqAXxSnvWZVBgGNm": {}, "Q9dNOSoWI5Z3Cpod": {}}, "fileExtension": "zHVWXPzbuUK9SPG6", "name": "r60FSxDhmIA9Ly8m", "payload": "93mI5ICk7tymZ9AB", "preview": "CW0TTTrs6UlDgkQF", "previewMetadata": {"previewContentType": "hN4ftkCmFNYM3ibd", "previewFileExtension": "WTm3VS20eFZME15Y"}, "subType": "nthSFhbemI41AKv3", "tags": ["cjCXc4ZQ4QeqtB9x", "gWQBGCT46kkqO0gZ", "NyxeaAzhvM3yKIAm"], "type": "OBjQjKUwjtzgESf9", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'UjZKyof2a6QExKgM' \
    --contentId 'YSXCYfQzDa5Imi4O' \
    --namespace $AB_NAMESPACE \
    --userId 'LrY8S6RSuHxZx9wE' \
    --body '{"contentType": "Xxa8hrFP02t2crES", "customAttributes": {"8kpSwsO4aR26Nr4k": {}, "MFJkBXtdefXmJ8YD": {}, "SGOVqfOpO2TO1ite": {}}, "fileExtension": "tTsZzFFY2xofCVo0", "name": "L72PWvd5XR6Gzmqm", "payload": "DDHLjzK5DeB0NyD8", "preview": "5nbP5uORV9gCQllQ", "previewMetadata": {"previewContentType": "s9DeGU3NEmvtGk6p", "previewFileExtension": "ctoRsGRNv2wAA26p"}, "subType": "KSzNc9dBEV5rtf0H", "tags": ["QCvDT7F1tKvtRkcB", "BEpE7egK88CExJjP", "4Je6gO7g31v8vP68"], "type": "Vs45ULfJ6NbemGth", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId '3gjQulmZIHYlEvPr' \
    --namespace $AB_NAMESPACE \
    --shareCode 'wwIJaK4w1YvSucL7' \
    --userId 'yoRvpPfYUIrGGF4o' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '3wlVNRHl4VZ4iIfL' \
    --contentId 'VPX9Y3H61F8QWaRR' \
    --namespace $AB_NAMESPACE \
    --userId 'RRNI0CfrwKuc5Dda' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'W8kX6GHU9yLhYany' \
    --contentId 'If8eS79sRq5EZcnq' \
    --namespace $AB_NAMESPACE \
    --userId 'qgBShMOqOGa0Jw3Z' \
    --body '{"shareCode": "P69l1hQWCrvbZPlX"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'Y3T1hDHxV2oRe4G6' \
    --limit '96' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'DjzmoqCD9s6B8ELV' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'ZsT8aF8x24FT7rwC' \
    --namespace $AB_NAMESPACE \
    --userId 'XWwpaa27CSKQFTDL' \
    --body '{"screenshots": [{"description": "3ctliQvUlzZsTkL4", "screenshotId": "PjqUiE4u6IjL2oD4"}, {"description": "lPqQbl3ryZwrpy9z", "screenshotId": "qNZNS9S9HzbI6CDV"}, {"description": "aKU880n9tfeWenMp", "screenshotId": "aE9Bsnh6GQ0fGCHP"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'RpujKaJv63F576cC' \
    --namespace $AB_NAMESPACE \
    --userId 'jHZTaLWCxgPTMSMA' \
    --body '{"screenshots": [{"contentType": "RejGwscdN3sPWyEe", "description": "O6T9hpnYjwuMpjUx", "fileExtension": "png"}, {"contentType": "77SVlzDW97Y4AHuB", "description": "9h0dtI5bUF0hudJG", "fileExtension": "jpeg"}, {"contentType": "POnmmppEQ8abSDyS", "description": "o9ieG8yv9cIYfVgm", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'uRNuiORN7IFGm6AZ' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'H98fahv6sTaURWfn' \
    --userId '3XF41AFNc6wAm9BH' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'ylg94Z6f9Hq8R4MY' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'Dvi9t9UDTkqkVmHh' \
    --limit '50' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'QIcYEG4tN1D4czIr' \
    --limit '31' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId '0hF0slNzeBvZ2Vk2' \
    --limit '34' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Sl98a0Kn98BkQt87' \
    --body '{"contents": ["QQiqr8FSfJIfBmNk", "I57Emf3VjuSx3V6E", "9RrLDzFQNtuKOp7V"], "name": "WuyfpBJgqFL3Ku8N"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '9pzog4tTVHxNT1sq' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '4l0ppBZkvtkCgfrO' \
    --namespace $AB_NAMESPACE \
    --userId 'FeqmEd76B4K5BcAF' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'nQIeBvlKO3AlxEpH' \
    --namespace $AB_NAMESPACE \
    --userId 'CP6xzwqAzGueyFdW' \
    --body '{"contents": ["eXNvXV0oBctXmSl9", "7UYni9sNbvO9jnwR", "hWreSEqVMQry9Iqz"], "name": "I6296TdN79E4Satt"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'MtI0ihi57v4UzuYG' \
    --namespace $AB_NAMESPACE \
    --userId 'Bfh8CCP8XIHoVgUY' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'jVLi0itq6bBFS6yp' \
    --namespace $AB_NAMESPACE \
    --userId '7U36o2KVKlh9gP0B' \
    --limit '40' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'bbZcvZp1mxkgoEWJ' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'Z8IdU3FRr42dX3ym' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --name 'NFUgyXn1fiqeD5B5' \
    --offset '64' \
    --sortBy 'IOUK5V9tFvDlXLK3' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'AB5Il7Gsko5Oq76Q' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "HYUmEzQiP6rGu5oU", "customAttributes": {"b2kIYvpJ3UNFbFTL": {}, "ynOTR7mWldwAmt9t": {}, "UC4YetZLLMFR9Njt": {}}, "fileExtension": "dhRGAImKnYN8Ugsx", "name": "OZHPIolFgzMzdoNe", "shareCode": "v12nG0TsYDGHAmS4", "subType": "m9DN9XXvS9j4gL4J", "tags": ["HhTZlYhId2RBfY5A", "MfBhnst0lExoOrMu", "9A05e8ZSnDD0X0DQ"], "type": "z06IjcYGiThtWkkP"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'jsFkKL02oT6v2ewE' \
    --contentId 'rI3OySwnG2qeWRSC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'K9rXDZsUXH8AE4R4' \
    --contentId 'WnNPT2kRB8zfWSA5' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"RK2I0OQfKM2C4LZR": {}, "7L76EtIzR1WUdjCe": {}, "YF2ibRxCTDyHDBou": {}}, "name": "s8NmBre2GqwtZlYT", "shareCode": "GKnrJhtW0ybGTlMR", "subType": "yjoiZb2viil1LmpN", "tags": ["WfQGQIZyidUmcqfF", "kLBovm5h5sxlf5Eo", "BE9JiCKSzBY8tLkp"], "type": "mmCgDhD95RhsuBJH"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'JzTLKMeSVqd40gcf' \
    --contentId 'iEudRpr84foGjoxR' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"Z4tcbVdCF39Ayrwp": {}, "VzSHOSgv2D28rBNF": {}, "DFnQh6C0BoqGvWLF": {}}, "name": "UuEsDJFStAo4OsXM", "subType": "NNkPtDWMy52UKF4E", "tags": ["WYul5ty42s7qwR4j", "6KG7GI0QBmRpbYuY", "ss0zDXUhBqanzOxi"], "targetChannelId": "RT0ml23210qc8aBy", "type": "Ed5c8vacH4uPKsOW"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'id7r7CTyT6GjSxDr' \
    --contentId 'EuwEqmOXeEMVQzIM' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "Tu8FAB94t6JYuAt4", "fileLocation": "Pd2pLRfsbIHWDhgY"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'K3V1tnf5y1ef5gdJ' \
    --contentId 'snqbnpHrikTEjvEo' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "BKQ7YY4W9VKcsldb", "fileExtension": "vY4Cowe9bog73QCm"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'q3yT9j4Fh9DGFTCp' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "XQHyaRL2gcqrP6ot"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '20' \
    --name 'nD6jtTPC0S99mZn3' \
    --offset '11' \
    --sortBy 'dCjw52TzAe6uRoGJ' \
    --subType 'Anv3JOYPWTw3BZKd' \
    --tags '["75AqspMm7RNH5EAP", "K5M35xoNoJ91OcSC", "F3cU2bjnXqloYWYt"]' \
    --type 'DoeSNC5KwAWYJTi9' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["cAKD1HLvooE6KmgA", "dQoXEsoi0017krAl", "uZrijuKxKGjRMiwe"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["wBB04LvJv51bN0Os", "hPvH2t0pyfEfk5ib", "GkN9xUIwj9Tigwdw"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'PoKj2DPA2bUjAjYa' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'mdZPmGXAal0gqTEY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId '3KtdE0IKC2MJBjif' \
    --namespace $AB_NAMESPACE \
    --versionId 'vszCXMHcLeZP0Qmp' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'trqBx53FMoGHOxdC' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "hlQkm66fJgsE8TWo", "screenshotId": "j9O5zirM9UQmRSSv"}, {"description": "6j7PTK5hTNnMgcP1", "screenshotId": "hS43pfC0SzuwvF3D"}, {"description": "bqN5MBmNquzz7oSq", "screenshotId": "SZENoAUxAKlJKAYB"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'QsX2HAUeLJBDPWGx' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "SIwkNwGvLskGADuF", "description": "mNUcmFyubW4ySLkF", "fileExtension": "jfif"}, {"contentType": "X60UCMfPyZhTNl13", "description": "r2y3TDEc2HqwViX4", "fileExtension": "png"}, {"contentType": "a4dr1pZJDULxqI3Z", "description": "1x27GTcEOjQ6HWvy", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'CTGTz1MyTrztplMb' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'GDNCkata9vk3NUmS' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId '8aJOQ7o5NB2s1Hzh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'N7mE437q0jAnELQH' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '37' \
    --sortBy 'io3HuYfyawkTAzAO' \
    --status '6qsZxIKzQs0k9hgE' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'k3dVe3WFWru2BLo1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'qdgiW2f8k3DtpH1i' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "QHWVzmgSGemMf9tu"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'UrIawmCiInvojFlx' \
    --namespace $AB_NAMESPACE \
    --shareCode 'JyGxZRevkiACjJgy' \
    --userId '27j4TBZw5rB0BeVt' \
    --body '{"customAttributes": {"yIthaaOrSEYbKCtu": {}, "P8yJxCQaiBYgCPUd": {}, "svvbM03L7e7uskzi": {}}, "name": "90qPDBMFubyaURYM", "shareCode": "o3XtPkOArkqYntTp", "subType": "wXc5z8YCmZBdfkAG", "tags": ["57DoinVtpAxqKFfV", "0Nq85ywYbIIvJ9e6", "TVxQwAiiO5OxUMdZ"], "type": "TfLG3OPmcqAoiaso"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'toM9cguqlazTcVLh' \
    --namespace $AB_NAMESPACE \
    --shareCode 'BjOc6JxTMRaf9Mt7' \
    --userId '50YlGkmF8e66FuTc' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'ywFkS4FU6nGCdv1d' \
    --contentId 'xAyCSdUvcq1tiqZ7' \
    --namespace $AB_NAMESPACE \
    --userId 'bRzRgO4h4WL1oEsD' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId '13jesxLznjc2MtZd' \
    --contentId 'XhN3fE4eLahOTt4y' \
    --namespace $AB_NAMESPACE \
    --userId 'itFKVEF5rI5uH8m4' \
    --body '{"customAttributes": {"DtkWMa1wWmG87XeU": {}, "YUmQF1rRz9s3UfbH": {}, "ilD93YN7LwLRswj0": {}}, "name": "4rLcCXrzB47CFC68", "shareCode": "WG77CgQj51ooKaOx", "subType": "SpiKvbr5xzDg8jAX", "tags": ["FznReDaQd04YhtD5", "66jvEelhEwbudIPl", "UMDox823qrNFl3F0"], "type": "Q1qSU5pEvs7RJ8CY"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'zEzHeYyNRdxaTcs5' \
    --contentId 'z6Hwzvib3jXtvcCl' \
    --namespace $AB_NAMESPACE \
    --userId 'Ns5vyQ3un4YjDpLc' \
    --body '{"fileExtension": "NQG9RKLTpdjZM3J6", "fileLocation": "Mym020eohUKHnYUV"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'eALdxK0Q5F6PYlxu' \
    --contentId '1Ui9YqXBFGirNuGd' \
    --namespace $AB_NAMESPACE \
    --userId 'ImtFklMKvUb9alFo' \
    --body '{"contentType": "bjwk4bbdLN8QTERD", "fileExtension": "4VgmauLhim9Gk6P2"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'hfJlyP7oE0BqXrLD' \
    --limit '67' \
    --offset '77' \
    --sortBy 'yyRtP3ops93RmF4K' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'D4ESR1TzOOCtaqo0' \
    --namespace $AB_NAMESPACE \
    --userId 'v3lQdUndVi0eHpqT' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'JLbv5OEVHOYvHaUC' \
    --namespace $AB_NAMESPACE \
    --userId 'XJ53BD5zCMcTUgBr' \
    --limit '97' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'Y8yqk9ggU59avkdb' \
    --limit '61' \
    --offset '93' \
    --sortBy '6Tm87dbWGhPC5IdZ' \
    --status 'L91ZbJBHTmlK3vX9' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'WhfieVkxTlBmTxFt' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --name 'pCdxU6cI6CwwWZMI' \
    --offset '31' \
    --sortBy 'mpqePQhapxbu48eY' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '65' \
    --name 'IgI1MXouzRCg7kPX' \
    --offset '54' \
    --sortBy 'w2NxCJYsEsMBwlEb' \
    --subType 'rqLChLwsPczI8rPN' \
    --tags '["xUgGNoUvnJmdBvde", "chOS2foTECDWtYil", "Tw8kBXaWHGqsAq4P"]' \
    --type '9I19a643DbC95yBs' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["UzeGE1zrMDB3vgQ1", "CxNwAbY5Vv44XR3k", "atw5ny47ImVRDcfL"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["lKDo3giIVZJmmZXp", "L0toJvqA0kXk12fw", "Lgp2aVJf9xnCteF4"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'MslEuzmYvCyGTQPY' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'ljR6ZYq0rIku0gpV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'w68bn9nInYph26Yt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'KdqldcEEzf6h3GU2' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '83' \
    --sortBy 'hcqw0UCO6GUlCb1X' \
    --userId 'FbtI1kigwjCOj5z1' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'AcO4DKZBglmA2wBO' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '51' \
    --sortBy 'ui6RRzFPUunGJQv8' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'rnLuTgagWEmb0tz7' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'r7UX8UqTsiQC30oL' \
    --namespace $AB_NAMESPACE \
    --userId 'GXzhkBZMHtxsjCmH' \
    --body '{"contentType": "9DigBbiInX6FWAj2", "customAttributes": {"NGKjriWm6Q88nqEn": {}, "BhDBjMUOhIJfNbLO": {}, "JkI125YvYzbT7pjF": {}}, "fileExtension": "gWKTEFdTpYhqQDGo", "name": "ue0vdImCHU7SWFMs", "subType": "fLd8Ad0TsDsJCgV4", "tags": ["72gmuWzaF33kxGJP", "bfq89U8EkCEFQ88g", "7uyXDrtfDO7ZwX7e"], "type": "239ddQYCSj6j5iL4"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId '95fiaoUojJuWz5bA' \
    --namespace $AB_NAMESPACE \
    --shareCode 'QWcDf3mLcSlUGSSc' \
    --userId 'sjGDNqpRT7Axyd9F' \
    --body '{"customAttributes": {"0Ne20ZH6A69u9i56": {}, "sf7FszlQKUP8OSUT": {}, "JA5lSX2WKzvuJysB": {}}, "name": "y6tAIxB3y5Fn6iEj", "subType": "VO6ag01PAFhfjBYU", "tags": ["h25aMiaIFUfY3A1h", "ssXcZBMb8gT44exC", "lu3ogmOxyaEHCVkq"], "type": "P6a1KTio4b5N057J"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'OJu5sImarr3zfg7k' \
    --namespace $AB_NAMESPACE \
    --shareCode '2BuWwEDogyKi4yBh' \
    --userId 'QPta2tt63f6Dnrup' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'wb8cHoGdrBIFjx6I' \
    --contentId 'SrvVoRuYdc1H9Dsb' \
    --namespace $AB_NAMESPACE \
    --userId 'YCNMG9vlzzvp8AYy' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'ThHsUiUWYF5AnzbN' \
    --contentId 'VPlubyErLs6FweJE' \
    --namespace $AB_NAMESPACE \
    --userId 'RAE94V4ULyhtWfV4' \
    --body '{"customAttributes": {"Cn6DUlEyQuhJ9HtX": {}, "HsAkSDlubEO0H14Y": {}, "8w93Oja0AUF1B1dF": {}}, "name": "WjFQVN9g4HklqHK7", "subType": "UsMBc814aoHjsiAk", "tags": ["QInusrKMM88d6hgG", "COlpS7vmEqBHK5SX", "zPNexQXFZOFFTUEp"], "type": "4LXdtw41UVes4lHU"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'NKohcuEbZN1vVccY' \
    --contentId 'ce1uAxGIZjDga6Rf' \
    --namespace $AB_NAMESPACE \
    --userId 'WaDMKmKpekj8HVA0' \
    --body '{"fileExtension": "w12EBjjo0VSFbWFM", "fileLocation": "LqxWdNMlRdN4BwTm"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId '2QWMQEiEagsOxDxB' \
    --contentId 'ZWC0fMnpYu7cK3Wz' \
    --namespace $AB_NAMESPACE \
    --userId 'IfZHx8pCXflI2y1E' \
    --body '{"shareCode": "3tG46weZfF0RUsSe"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'xp7YGh1yD7adrd7X' \
    --contentId 'QlCaSeJPXtbgB0t5' \
    --namespace $AB_NAMESPACE \
    --userId 'tddAzIXqHwCdI26R' \
    --body '{"contentType": "xV7T35chCrY6z7kJ", "fileExtension": "4KdnBtpmVgvHt6Lo"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'PlxhebSQ0JV8spa5' \
    --limit '37' \
    --offset '8' \
    --sortBy 'Oz1tyiuDwnqyCxPe' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'ukdirWyu5FlHPKFM' \
    --namespace $AB_NAMESPACE \
    --userId 'KLrjpJlOPCiYna8Z' \
    --body '{"screenshots": [{"description": "e9xkYlvW3bw9tM4Y", "screenshotId": "XWSjPKL4xVvRDmxm"}, {"description": "KbMgVIt7MsC7B35E", "screenshotId": "6rzB7tUSf7uTIWOe"}, {"description": "bZyRPOZJnyJRPaCe", "screenshotId": "DElWfhY9LGev9q9e"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId '7AF10Du4082YUwoT' \
    --namespace $AB_NAMESPACE \
    --userId 'VzZhyggBr9ZsjaKX' \
    --body '{"screenshots": [{"contentType": "0SoqUwNteKn9Bfu2", "description": "QhhIpGQJFEDPyEhC", "fileExtension": "jfif"}, {"contentType": "zAKouIC0Xie81Wqj", "description": "qpVRB0bWCnGGi259", "fileExtension": "jpg"}, {"contentType": "qzW0Es8T4xes3A9M", "description": "xeV9FVm7zmaYKucv", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'nT4LPP7T4W65zmC5' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'ofAxi5X9m1dfNgXc' \
    --userId 'rS3gXC0lYptMtCEl' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'Hr1Df4DhWECWaqvO' \
    --namespace $AB_NAMESPACE \
    --userId 'ZM3xhS8VtaHOVCUU' \
    --limit '41' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'rK37e8vxNe9d1tnz' \
    --limit '100' \
    --offset '69' \
    --sortBy 'whGxNQ10BncWnyzI' \
    --status 'bB6eFlMHphd6besK' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'xqCAtGqgOVu5Kj78' \
    --namespace $AB_NAMESPACE \
    --userId 'W2mOg8srSdhBoBEn' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'Rbf514xqocfGOdNh' \
    --namespace $AB_NAMESPACE \
    --userId 'qBTWIZ2AiU9cBa8p' \
    --body '{"fileExtension": "aetbdPNqL3EOsYpn", "fileLocation": "q97zZF7XTNLm6zn3"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'Mzqm5cgZ29LC2B8l' \
    --namespace $AB_NAMESPACE \
    --userId 'dmanbbfpoCrsYjLa' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE