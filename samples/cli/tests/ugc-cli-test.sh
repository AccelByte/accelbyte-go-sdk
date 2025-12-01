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
    --limit '90' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "fimowf8BCvT6rEjY", "name": "QIK8pDpue0gFkl7H"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'eI5RIthW2jdpjIoD' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "TiOfWU9SkcYITYGU"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'IFCNOV7VTT9I4Za5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'ZZmz8RJieub9W5m8' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "u0SFGD8892Xf5xzX", "customAttributes": {"VDFy6t8gWwfhi5jR": {}, "YxXDKpTN2br5TBZd": {}, "GdIZi2Z2PGEBOvHN": {}}, "fileExtension": "EnaTgyqH7VDcehd3", "name": "PUCVxzg0fWrhbN5U", "preview": "aKz6mCz8RupQOT9L", "previewMetadata": {"previewContentType": "pPzU047NrCgETbnd", "previewFileExtension": "O1TfGiMWvhOKn8Zk"}, "shareCode": "coGDt4L5LTtfhnQw", "subType": "jWwUQXVWtjvJoiH5", "tags": ["arAfvYuOVC2TbCdD", "E3yk8V6acxpip1or", "QhyNZygbT0aUwMnS"], "type": "GDGEFPGxrCOAAenV"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId '4lpT6lVB6zoQ5qY8' \
    --contentId 'ltVJQLBd2UAwKFEo' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "NJGm7LxB4oAe13nH", "customAttributes": {"vjI7LiAB7Rvz2LUu": {}, "aVNBqnEpXYpFVCKm": {}, "OXbLU20gI8OaABrM": {}}, "fileExtension": "9r2iOTFmE9gyPdnb", "name": "e9WIHqpNBFODPE1w", "payload": "f1WXIkGu7T8RwVUo", "preview": "1bGKAT6gzLRwafOq", "previewMetadata": {"previewContentType": "1VgobYaQNtSIxqJ1", "previewFileExtension": "TXFtJbRAS7sm7jWc"}, "shareCode": "HutVdUhked9896VH", "subType": "26DKsge2eIvhcSG9", "tags": ["RvKv7guhtrwl0ZV5", "kRstgEnUhYmZaL5O", "4RuPt4qSkNHUHfSt"], "type": "WCuSYlOJRB9UYBcM", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'q4a2eg2i591esRBM' \
    --namespace $AB_NAMESPACE \
    --creator 'eh6kM37r4seLmWuP' \
    --ishidden 'aIe9xoKODg2NRkOr' \
    --isofficial 'jB5gzMV4Jt0lzAOH' \
    --limit '47' \
    --name 'JlwrHi24Fb0NaYzK' \
    --offset '79' \
    --orderby '7uLfdd79PM2dKYla' \
    --sortby 'yLf5uqoQI5iQwq1b' \
    --subtype 'LitGNERWTUiZ1ihX' \
    --tags '["m6MNrM4hExzAVQpF", "nV28sPCmPW0Fq3SJ", "v3T7NSsTqFKf7oeZ"]' \
    --type 'XgYgSgHjeWrC2tPh' \
    --userId 'cqUVGRlpJmtHgaO4' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'AY2yqd1vrW1y2O30' \
    --contentId 'wor6tA8MNOjjl5xa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["MBnWM0dOTqSDtuhL", "qNriYg0bsLxpgStI", "vBkN9vLtlnCYZ1Ll"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'vnCkQyMbimDBA68r' \
    --ishidden 'bKwiIfvC4Qgp3HeU' \
    --isofficial 'AW8Mv8ZzB54DpeFS' \
    --limit '16' \
    --name 'DP2PSk4TZHjMmDtR' \
    --offset '48' \
    --orderby 'oMpoyAPaiDrTieH8' \
    --sortby '0uX4MfKXgZwhEQuC' \
    --subtype 'rYLS8mnpQCW485Rw' \
    --tags '["EplRwSB6s2hmPLev", "v5EXPeXm3IvnfLk2", "8HSdkfGmkgC6NQj4"]' \
    --type 'BWL0Pik5usHxPqMq' \
    --userId 'FyvMgDysmEpTjJeq' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["LHifegP59r9B2rz8", "oE7cZHisZYsQQSGw", "fedz2AJ1cBPfiCLs"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'TokzgBCKHbK5fe1w' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'Kdg0oGo4dtG0HzOn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'YyKP7p7IcqhWvbCq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId '1sbRBhBY8Hzs9Qoy' \
    --namespace $AB_NAMESPACE \
    --versionId 'eBeJM50HIAEOTZsQ' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'mSoJz3SC1oQfnZYN' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "mvV7dP2JoLXhN9pP", "screenshotId": "75FYO0HthYYjZbe3"}, {"description": "MQoY1SK5MfhKZQZX", "screenshotId": "gMecyiQyQYadI5NM"}, {"description": "n3V8KSZBSu2nG4p9", "screenshotId": "8rt6TwxKo6tTkm55"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'XOpilrEA9X4z94Bw' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "Aq4njZWKbyrDOWDI", "description": "2CMIeelPKppcP1KF", "fileExtension": "jpeg"}, {"contentType": "8vzARprI7zfHEDAW", "description": "48JhRN4KVtQb7490", "fileExtension": "bmp"}, {"contentType": "IJEsfXw79JqChtIa", "description": "K9gzBo5tMpcaYb6r", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'rFNftvusipjM711m' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'f8GXyMOK1X9Ao3O5' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'aW44tx4zIKliqahm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["MAnbphdRcq3WKwen", "sGeS35CsU4gR1P5j", "a9hTki7rw3R1B1ik"], "name": "5roxBfP6YxgSPG4J"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'zhOuHGmjYVtgJ2MW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '4GkCyn25EHsOOYUP' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["n4mWQOCS5FZTKzxt", "vW4Xkb5QiNv2hPzt", "junoyYksfuo39eAA"], "name": "ncZegoIHnu1pB6RP"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'omPLcZFBkGieY6uJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '0Nly5nOgAJegl8jq' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "wOMGuljBeIT50NTb"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'DGIioxzFoaSmfmcs' \
    --body '{"tag": "wgQxyyxST2SZWQZk"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'i8844AK8GMdNDG0B' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["TZgZblgD48oifb73", "tSy0OzPbqRonpRtW", "lBCOJsgtB4nBczTt"], "type": "kyeSDIMixJ2oErif"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '72Njj8qCzKhiMVEp' \
    --body '{"subtype": ["Ob4uUqaIfP24lpcn", "mnYUm95ygtLsb8zh", "8rnMFSJ8JUK2xsCJ"], "type": "CvPKvI1TianWT96T"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'KqkwiF443hDuQdX2' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'adZxiKpmAu8Riv2y' \
    --limit '17' \
    --name 'N8Y3bGn4gl1r9huC' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'dlCGekcDIiWsqXO0' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'yBmxDTK9rviHvr5Y' \
    --namespace $AB_NAMESPACE \
    --userId '69iYRSZMs5rmK2lU' \
    --body '{"name": "Biq01Gb0N6Qs0vhn"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'e6xBFnN8IF2smNSj' \
    --namespace $AB_NAMESPACE \
    --userId 'h20tUs8nlN8px30q' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'y5LIk9IPLmmkVjZt' \
    --namespace $AB_NAMESPACE \
    --shareCode 'rMvreiEuiEv8xWnV' \
    --userId 'oXD69WooC6ejgVpW' \
    --body '{"contentType": "kIh9GZW11H1PDQek", "customAttributes": {"mfgjmsf2hoWyOAzy": {}, "5VbcHQL3RSo9gctd": {}, "ina8EpyxLC8PbbyH": {}}, "fileExtension": "jL4E3cPszAR53KiS", "name": "tJpxg6P8dOU7juhl", "payload": "Q5b8y5e03P4PCFAk", "preview": "2BzG5RHfZFC50Qzt", "previewMetadata": {"previewContentType": "ynvR3kCUYi0qPhAq", "previewFileExtension": "mveGe25fLbh6utZv"}, "shareCode": "ZChVySugnFlGHvJD", "subType": "0EHVMmkGejV6QSs5", "tags": ["tD9t0tuU98NHYdO5", "Z3wPfDWjLSch6cY9", "UBTqVG0PSamzJNSs"], "type": "iRrmKPiFmXrvEnTy", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'bCO0QUm7oGmhukYj' \
    --contentId 'ai3VD5rXi8rqmmM9' \
    --namespace $AB_NAMESPACE \
    --userId 'mN9KzFfPtyql8RoZ' \
    --body '{"contentType": "0MJENoLt026G3FSp", "customAttributes": {"S9hOvQNoTOcRdRs5": {}, "8hhVaGpwrThtzDwj": {}, "KKuplU2TwtXiHj2I": {}}, "fileExtension": "rByzcqYPZdRmcpno", "name": "FeUCsEPkjYt6kDde", "payload": "a69BOiOSjECREpbL", "preview": "AnixpaKiFaRi9m1i", "previewMetadata": {"previewContentType": "ncXu2RAfpkVrald4", "previewFileExtension": "OYgbePHer1lq15gD"}, "shareCode": "AaUYiyoPvxWaMqiG", "subType": "wO6UzpvwOqFfj8BI", "tags": ["SePBgj9qPOCvpmYN", "glIor6P1LcMnZggi", "uo9HkTxDuZRqBxXf"], "type": "r2qSN8hq9O6rr1bw", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'WXrmDXib5igS6O2g' \
    --namespace $AB_NAMESPACE \
    --shareCode 'EHrZwiWzNgcTtI7K' \
    --userId 'ZiRsRjYNfxKC9uaD' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'eFPwQXAQHMAIGOU3' \
    --contentId 'xERdEhBJug5YsAjo' \
    --namespace $AB_NAMESPACE \
    --userId 'LbKlCigKKPWpwGQm' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'lLNcv4IGpZkf2qAx' \
    --limit '67' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'CNSXLTyrQfkg6tpl' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'teM6hFoNACqTGyuS' \
    --namespace $AB_NAMESPACE \
    --userId 'SGTqqTNM6Yf6vGP8' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'DbpcTjxXvDvQMo0z' \
    --limit '28' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'guM0tZ6WW4f5SSmY' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'kcX1OylbD4gK1Kgq' \
    --namespace $AB_NAMESPACE \
    --userId 'WfyAubXanUW5rKvf' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'Mf50FiRJyewdefBw' \
    --namespace $AB_NAMESPACE \
    --userId 'w6JF0G9TfzEj6tmn' \
    --body '{"contents": ["Oz8aFvbtAXOP0nXd", "IWh9hzo8RfkuYSM5", "vDd8V45Jiuh5oKez"], "name": "ANfwLRljZ3Fo2rrc"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '6rFnwF0RfBfFSEym' \
    --namespace $AB_NAMESPACE \
    --userId 'FYOD9eVhSe8j8ikQ' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'yDZRruymltUAeYUf' \
    --namespace $AB_NAMESPACE \
    --userId 'WNv4jmDUPv2DjigZ' \
    --limit '88' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'ELmNrL5WbrCInKqY' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '98ql126d5KIkpuQL' \
    --namespace $AB_NAMESPACE \
    --creator '8sv5JIV7IVibygxp' \
    --ishidden 'A4lLi535QbcQ8vbC' \
    --isofficial 'UZVOItuTm7aSWPYD' \
    --limit '37' \
    --name 'fbu4zyKA18S6x89X' \
    --offset '39' \
    --orderby 'MfYDIgz6htPjB5Ct' \
    --sortby 'WF0dO8ttKViE6uJF' \
    --subtype 'pkx5bIhASp0445f1' \
    --tags '["ek2nHSnhyTyKn88n", "YDFmhs5Q0T6rUeBG", "66WlbrD5C15Ooe3x"]' \
    --type 'hGdfLmAy5Hfa7nta' \
    --userId 'aKKmYbyeOQZ3li9O' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'syFmarTdyTJxXZkt' \
    --ishidden 'P7ItrXVyeb0FE0Pp' \
    --isofficial '9Mtb4xOr7d8JLSV2' \
    --limit '49' \
    --name '3gAvayoS7QpvYkrc' \
    --offset '2' \
    --orderby 'XR44ecs0Fcl7VRnv' \
    --sortby '5NuWXoVbZPrggDbC' \
    --subtype '6aIOCDvgOXxLjuiO' \
    --tags '["d2pOhuxWAWWMfOmH", "QOHIU94boIu8evvN", "AxM5LJERiXELDmcm"]' \
    --type '9UvWb8urtwP4uSoA' \
    --userId 'XQsHrF0JjhATRXV6' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["oR9n1A4XI6deWl7M", "yK0kfDmkaDTdvxxd", "ruBRN89PNHPACDTg"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '76' \
    --name 'ZItsANssL2hKU17h' \
    --offset '99' \
    --orderby 'SNsMSfUhTWpnHN8z' \
    --sortby 'ZzzCsvDHHjnPzElZ' \
    --subtype 'ZT6ag3vKtggytMdn' \
    --tags '["9JaNE13WmDSvOOIZ", "SWW5jAXpNNvg5I5m", "KnPY42JsgckmD8TL"]' \
    --type '5gldDoWVj3h040oD' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["WWNsjpH7x8EhAsbB", "1o8M7uKOdHv86o4f", "7umyZP7jWFrfBOzs"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '8KEELOHOW6z0UX3A' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'QW8hwtPAZRJ3Qci0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'G7H7de6t8keCUSnH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'AkoLiU8sPNajn4jv' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'uliT5p4CBI02Xzse' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '73' \
    --orderby 'h8twGyFo6mv5kyzb' \
    --sortby 'NYKK1ogFJU9d6Smp' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'tHkHRL13DC1Bjs8W' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'r83TcjlXOPki7rMo' \
    --limit '23' \
    --name 'p9wp1XvZ7w0GkSuC' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'DgRcwV5p7irDZUx3' \
    --body '{"name": "qJB7F0W0UMj6uVoO"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '0mzWykNXxu1WAGVW' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'S8YGnDQA7T9HqGfv' \
    --namespace $AB_NAMESPACE \
    --userId 'c9uyvxzXpKUC570H' \
    --body '{"name": "MTosfxduPytUdmEv"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId '7VOiL4PhHnrCoRE1' \
    --namespace $AB_NAMESPACE \
    --userId '14tV9BZL4Uebf9Od' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'YAmSP2bSYUgPhXIg' \
    --namespace $AB_NAMESPACE \
    --userId 'W8zSeXqvMM4jZPxT' \
    --body '{"contentType": "aW5BsPIhbtJ32YY1", "customAttributes": {"4dzX820d9biaDNIZ": {}, "86i2yRb2QpmAPKSF": {}, "teyFo1SSQze0ySNJ": {}}, "fileExtension": "afHpRByilWj7bHQv", "name": "Z12mQichcu6P9T4G", "preview": "t5zuV45NxNZTTgBk", "previewMetadata": {"previewContentType": "RIgPOx9mdJgKPKPa", "previewFileExtension": "KyAvcUNfzc3G2NCQ"}, "subType": "0iSWSj9OAuLHzt8o", "tags": ["l4Z9DmZB39CsvPZw", "TxV4Swn33o2uniJ2", "GzFBgMZ6NmkrdzwJ"], "type": "mSy7bnmhlcJ1Fdmk"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'T3mCH5A8VxNshO5Y' \
    --namespace $AB_NAMESPACE \
    --shareCode 'dCEHg655B610jYPt' \
    --userId 'kjneo0guM8zcASKB' \
    --body '{"contentType": "2cJfzmf801SsutAA", "customAttributes": {"wZdiiQ8ufV06R8Rd": {}, "5OstQp8U2zpLwv7c": {}, "F0VR52HnzmwpPpO6": {}}, "fileExtension": "fWmSMvKiItpWNvGF", "name": "v62HM7ZU3C0xoHA4", "payload": "1t7E2G5QbhKxlFWk", "preview": "TsFQba1R2BDZ6JHF", "previewMetadata": {"previewContentType": "Mdvva1i0PoK3WBk3", "previewFileExtension": "Ja2mMDFzn5KLBetB"}, "subType": "M1hYWWWZhMMg7dB4", "tags": ["v60OxvpxhMJ6ynje", "i3jWKYh31etYF3EP", "yXfT0hY05QHUFMmv"], "type": "709193XKtQ4Vouk4", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'N1oJuKzAZlBXwcUy' \
    --contentId 'AlAEQuOnwupLHk3f' \
    --namespace $AB_NAMESPACE \
    --userId 'GsJWh95bGu19phyz' \
    --body '{"contentType": "ubr1V4OP1u9qnf1R", "customAttributes": {"xw8LT85fb2KNVtFq": {}, "2OfRkRT20Ye9CnsX": {}, "7W5nmNtn52mEVrVE": {}}, "fileExtension": "g4MrEBzp2XHvxfU2", "name": "qqMmMMUASRMzfAQb", "payload": "uNkNDqByhqKXmrQQ", "preview": "T2lyZdholQ5ihBKk", "previewMetadata": {"previewContentType": "ew57DtoMDZ8WpnYy", "previewFileExtension": "zYi2YzcKflsrey13"}, "subType": "jfgrpklN83AHJSLk", "tags": ["4l0hEz67WVNlZ4bs", "8OkznPXEvEXU76ji", "PKQOtzmjdXVKNqAx"], "type": "WhXuGx3rp7wBpZQ4", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'vuRUyE3WMcYOm654' \
    --namespace $AB_NAMESPACE \
    --shareCode 'RdDdMVh4iIrnPVFj' \
    --userId 'cF2eEQU7NreQZNz0' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'diy4oLlh2L1gKUfz' \
    --contentId 'huxn0g2jqlgLTo2C' \
    --namespace $AB_NAMESPACE \
    --userId '5YMWAuJSLX7E6M5x' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'TTU3Jtzfvx1auNOQ' \
    --contentId 'N9LqZXa3cqttw4VA' \
    --namespace $AB_NAMESPACE \
    --userId 'BMNWcsiJP09SEkpj' \
    --body '{"shareCode": "aOUCw5R0C3xdHn7e"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '2yulUeCRHuCQLqRT' \
    --limit '60' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'rUnbAHDFmyPNDfWj' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'yATwpMbZJsaLRSfY' \
    --namespace $AB_NAMESPACE \
    --userId 'g84PB8dqIjuPdoSo' \
    --body '{"screenshots": [{"description": "xhdcv3BHckVl8Ajm", "screenshotId": "paNqHn5APuXuonp3"}, {"description": "JXVvPDiMXgIlCAok", "screenshotId": "Np0Pf21pJnJtSsmu"}, {"description": "cQbRzOtjGZAgeq1b", "screenshotId": "xXNEh9RSU0gRhRdu"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'QJk72uwE6F09aVL8' \
    --namespace $AB_NAMESPACE \
    --userId 'liFIJmScK9Lkjjk0' \
    --body '{"screenshots": [{"contentType": "CVDnpC4iTrwwrWcu", "description": "Y3XhuisCxvQ0EcWB", "fileExtension": "jpg"}, {"contentType": "Ug6aqzYy6vbj9PNH", "description": "SlVlU0VWvXQXDhIX", "fileExtension": "jpeg"}, {"contentType": "u3E3CTSDIONo9idB", "description": "zmwwAHmgRlcNFDbj", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'KyQGocB1deNCx0yx' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'k9htLhxKHguPXHus' \
    --userId 't30qdxXG9Qb6yIGx' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'iOkyt43nAb61a5E8' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'hi1ylYEEULmOAhEj' \
    --limit '84' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'QiEpOMwE1RtoXA5R' \
    --limit '77' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'vRMCyHX88FDcIYU2' \
    --limit '99' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'ffjgGDlJrJkNJbww' \
    --body '{"contents": ["EL1auFDrsBDxAbtT", "CGAqbmqe0CXvn5af", "g7Yi5YDaUQEZ6k9x"], "name": "yztofJpHuZUMImkt"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'ZF9omwl18QqP3YMn' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'FngGdWsBk3nWyJRG' \
    --namespace $AB_NAMESPACE \
    --userId 'BMCGuRqPh0vTuUq0' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'abYSQNmQy4YNHF7L' \
    --namespace $AB_NAMESPACE \
    --userId 'Dw4e2ITJudOurkzy' \
    --body '{"contents": ["jljkljoRnVK5LpXb", "8dHSq3iFW3rfGpYl", "GRgr8jL1tQHgCHZ3"], "name": "6KVZd7csR03pWsZJ"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId '81VobeMt3Mjc1Sry' \
    --namespace $AB_NAMESPACE \
    --userId 'pG0u8Lc6pAtrWQid' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'a1vihJKNxQFh91jj' \
    --namespace $AB_NAMESPACE \
    --userId 'sYKgnv3elUWl3PMe' \
    --limit '95' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'hRZUomz1DtA7ptxv' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'hTpxA0ReWFwXhNkX' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --name 'SRNYFBT13hli07NI' \
    --offset '15' \
    --sortBy 'Ufo1rX6W8S0v2GVd' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'issYZWRjgbiTLFhx' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "kvycjxrsG4EmdiRW", "customAttributes": {"D4jmOnhCTKzQUIuW": {}, "TMsslyzF1OAF6LOE": {}, "FSEl6FlmhQPlfSQT": {}}, "fileExtension": "mHJS4WHvgV7TX9fc", "name": "vzo6THqFq1kSXqnk", "shareCode": "OHaaVd7jLPzfdMPg", "subType": "opoO2gxNdCODgeYH", "tags": ["ci1zzPgvCkWFUVlk", "0CbFXdNkNW4BltLy", "MnIeE2ljzCoTwwhK"], "type": "jXLkDm1Ul0NDdKxx"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'hw9xi5lx8u3zyqly' \
    --contentId 'CDH4PUDQbEVPjyEE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'n6mczWRAgFuTOoPy' \
    --contentId 'lZnL2fQ2Nq17C9GE' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"ZYTcj6N5DZfJE9f5": {}, "o3zHfT7XIf464Izx": {}, "dWVjmJDqV64Lj0qd": {}}, "name": "mU0IUPh43WRwazPF", "shareCode": "yvWvqYdwGn1rL63j", "subType": "B1MA1rUcxGiPPdZu", "tags": ["a3MpzL34stMqNFux", "JO2Cx5WpfnmYe6Y4", "UXoAoVYQZN4hJHV2"], "type": "MkN60nZ7RrNUmKSy"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId '3d0b0Bwi7bVjGJtK' \
    --contentId 'a46ZBuSKO4dHoLu2' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"IG8rQLXKrmGUlw4M": {}, "e1AgzlmaYWUYtkax": {}, "5YVUguzpuAxABmyg": {}}, "name": "xkOrEZ4bHBFwUDNi", "subType": "d1Sdr4FH9yMLvaHa", "tags": ["7GRLaTZPv764iHCm", "LpGFQ1RyOj0dnMZK", "KJSBM3dczI2mjFsO"], "targetChannelId": "paafUCVsyQJXYAGO", "type": "C5X96Na863NNIRWu"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'PmhLLAorrCpDVi8c' \
    --contentId 'lOnB9gdfJHGNnhXY' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "W3b3Axa8JxDNYABH", "fileLocation": "zYiT8ez5pUaw9lbl"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'eXuwdchs0DzIe01f' \
    --contentId 'uZnwJv10IOr9YGvF' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "pzl7bhPE3DWKqR7u", "fileExtension": "nsXsuWVNtCcO28fH"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'XcLrMwJgxjITsuC8' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "YWTXvmcXT0HaL88W"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '42' \
    --name 'MyI2NwptFCZCc2X7' \
    --offset '71' \
    --sortBy 'TQ2QukqC05YlAq1r' \
    --subType 'q8B14YymMJCr2UsJ' \
    --tags '["vbguCmhAyZFIpemu", "ji27MOsUYHzl7HOD", "lCPimnSPHGKFWDvM"]' \
    --type '8cZdYNIpT1LMDkk4' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["9z5GKWiv2H2lZ6Rt", "RHBqOljITClRyKgp", "NDPcsslIGqeAdf0a"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["mPUHcEs2BqCL8TRN", "mGi3Bc69Qgndqo1d", "bDc4jspkUVAVVFDn"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'dBB1aV0zXwQHL6Am' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId '1DmTHRCFyTHrltl4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'a9K3dCATTcvKstyJ' \
    --namespace $AB_NAMESPACE \
    --versionId '4RSZoaTCjSKfVwwj' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'kO083gvEtFaJkDbP' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "4m9Dwodzomz9yVS2", "screenshotId": "Aiu6JkJz6NDQBETR"}, {"description": "fpXk3RvYxLLsyb8D", "screenshotId": "39emoO9B6aAzj8Vs"}, {"description": "oE9991KicNC0IpYd", "screenshotId": "wfyXNpcLoPXufHwR"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'znGKBEecMFH9uI7X' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "lMdqcawlJzsKkGhy", "description": "mJcGMwg5Cx6Y545I", "fileExtension": "jpg"}, {"contentType": "BXW2vZ6oJtD7iRCn", "description": "Gl3j45KEhxI27slk", "fileExtension": "jpg"}, {"contentType": "c72vb9OpVmEfmZtA", "description": "hBaiD9Uzah1CACkq", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId '8gn8WYWQ5jxWFJzS' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'DSAlYKlC7EaIlyaN' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'vLggFkr6QjnDffWe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'jdEw749n4MT7AVVu' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '7' \
    --sortBy 'SgBecD0fIvZheG1V' \
    --status 'mBl4HhAKfCRhJyaP' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId '4vyNX6GnYNCe1Ysl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'cLCXL4600PKAQloH' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "sWG38n6igZARgsuq"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'FqUNgdI3GjliWoLl' \
    --namespace $AB_NAMESPACE \
    --shareCode 'AaNH5uJkbOytBRjU' \
    --userId 'jk95J9fheLnxkeDF' \
    --body '{"customAttributes": {"u7ZzSGOhiKxi9cBp": {}, "XLAge2QylZdggP1a": {}, "vMXW5r0eaqgjlNzY": {}}, "name": "6yp74GGz7z4QKE4g", "shareCode": "fJbLErBPGYI6eqhQ", "subType": "yKrnM2B2Pam1T4sN", "tags": ["P56kiWnB4G5noymC", "mbQy2jzBgHNC9Srq", "GxzKfxNFYDfP6RFI"], "type": "nRhJiZFhR6ZEK8f1"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'fnfKADPVzkr250Yl' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ATouQUHAI6XWoUo0' \
    --userId '89QV7VTII9b3W9GW' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId '0tr7wzRSad7Vj4BG' \
    --contentId 'hjaPvBO4lHg82yEy' \
    --namespace $AB_NAMESPACE \
    --userId '2Xn4tPw4mMQg5N3u' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'azRa4083ZKBY0SrD' \
    --contentId '0WffTyi2w2j5SIgN' \
    --namespace $AB_NAMESPACE \
    --userId 'qtLoPpIT0ELZdxsy' \
    --body '{"customAttributes": {"IeRGijsvGcL1KzZp": {}, "ueF21oAcaM91FEvz": {}, "mggXysFUhUt49rkM": {}}, "name": "vYVGNBE5384mFDNx", "shareCode": "qLXoiPOSP4NSk6Tw", "subType": "ombR35Cn3CuYkXoB", "tags": ["y5dF9OA9DRPXqFPL", "JI13Mhdr1ZC4ex3z", "dSM4r55ZfV3s0Did"], "type": "KfSA92W7SHTsn3jl"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'ocWVgCwnkfjS7li3' \
    --contentId 'i07oyJDxs6cVKHvu' \
    --namespace $AB_NAMESPACE \
    --userId 'xLPjhw9HAPi9T1N8' \
    --body '{"fileExtension": "H4SCnWUwqVpXHLTg", "fileLocation": "UR3Mhlv2CFxq01Iv"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'OT1PKiGohpQkSMyL' \
    --contentId 'V6cvSO4dZNnnKtK3' \
    --namespace $AB_NAMESPACE \
    --userId 'RkrxFcv8f3JJ2tFn' \
    --body '{"contentType": "smO3577TPvAtXog6", "fileExtension": "GvNrtO58HNkx59aX"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId '7TZAnSG8DKovawFc' \
    --limit '59' \
    --offset '45' \
    --sortBy 'l9AgfkbZiHxpkccA' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'j6sd8JKysyB1yCBa' \
    --namespace $AB_NAMESPACE \
    --userId '8S6AgFeW6lYARfgL' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'fdX82lSYNOzxr2vb' \
    --namespace $AB_NAMESPACE \
    --userId 'chTqwhkNOwdqDVMs' \
    --limit '48' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'k3fe1barUlIqgLOF' \
    --limit '37' \
    --offset '46' \
    --sortBy 'T554SdZhsGEZlzua' \
    --status 'unUb1shivz2QOvdd' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'LMzb1WoKr3Pa0LZ0' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --name 'QYdtuNayK3Lr4QY9' \
    --offset '69' \
    --sortBy 'jJt9lQlhzfx0SzHE' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '63' \
    --name '2Cj52FxvFbgZK4Mn' \
    --offset '52' \
    --sortBy 'CvDXdyCtofqjpjJ4' \
    --subType 'SxL67IZiDjKfwlOB' \
    --tags '["tjo6zEKj7IsQjotA", "wj91Hno2Erx8AUQQ", "ELNf9R8EkD5KzHqb"]' \
    --type 'CDZiVIJxp14tesKt' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["7UcFGSNbjkUxzVv4", "2f87e4uKk7mOKSIO", "nfBMt6iae6EWx7RX"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["mj5zK698ykhToGRm", "DzhhQfO55UqTRA3x", "7TS5gKbvUumYQtkl"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'VoaPwWbuHzhJ0G5w' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId '0ZoVJ5r0vasnU7Wc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'z6xZK9jSGSs7t0Tg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'Vzj3Kyy9MxUERqiY' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '28' \
    --sortBy 'Tf2p7YOLyB4LtqzE' \
    --userId 'yCZlXFVHzK6sozdH' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'z6hnhJtGhMAbVmtC' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '64' \
    --sortBy 'zcazef1su5U2hLqW' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'U5sMfk5OYsRdxRqn' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'x8948WEK5hhYrqX4' \
    --namespace $AB_NAMESPACE \
    --userId 'BB2cEdan3xAfR5sW' \
    --body '{"contentType": "lkBvW2cyC5GSjMdZ", "customAttributes": {"T3c4a2jzSWYhFyXA": {}, "L0AUmi4DlaHdrhrI": {}, "yayXArg0yzpNEFE9": {}}, "fileExtension": "OX1ZUgHJsOMduTh8", "name": "RP9ft5KGM6v1pS9n", "subType": "nWfxt3gsPCu3ZzTW", "tags": ["q3nTDh9SbmWjQAh3", "lCyCeAJLNOIUkZxW", "y4JdMUknOqNe4fW7"], "type": "vVhH4n5MHK4h4aOc"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'dLowNpSIQ6yHsvdo' \
    --namespace $AB_NAMESPACE \
    --shareCode 'MpFOHMYXDjnwOBQM' \
    --userId '4xMQNbinp8I6xoQg' \
    --body '{"customAttributes": {"lUceGGyFM4agIZxm": {}, "SlBUhSIche83vqtG": {}, "iKKgmM9raR2M1sSk": {}}, "name": "XmzYG7SkPI5DXy5Y", "subType": "L2Uo03JrDYLPulMD", "tags": ["VHGQYY72GsUCkjn7", "SLE3K8lcs50uBZdA", "8sHRQiGn6dNWbJRs"], "type": "ccH9xJ5TCV3aIkNK"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId '2kBtepviwsK6s89D' \
    --namespace $AB_NAMESPACE \
    --shareCode '2TeNWTyD5ZdzYNpr' \
    --userId '5WRHloHQ4Ga92T86' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'cgDTOkgC7rCTTjgY' \
    --contentId 'w6lWHdnQuIovI4J0' \
    --namespace $AB_NAMESPACE \
    --userId 'FX9qpI6Yhnsv0P1g' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId '8qnbvNAZWuEWA9dv' \
    --contentId 'cjLwuyd3vHl7P8Zv' \
    --namespace $AB_NAMESPACE \
    --userId '71tIs7pg0MaSBcE4' \
    --body '{"customAttributes": {"K7XNvZyIF7LcoXsv": {}, "KbXi3sLkpgGXooJe": {}, "xeICJEnm0YVIzIHs": {}}, "name": "1I5NXbSRY1RIAY1O", "subType": "9A943d9MheKy0P3L", "tags": ["X8qvMJOnLTjkyDWe", "omvOZZQsvdObCyM6", "8ptqiIFfHgQgr9KN"], "type": "dPbILXr3uKuDcDGy"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId '4KeV6mra4yMb3vp2' \
    --contentId 'MToyWsqU1QoBQRDp' \
    --namespace $AB_NAMESPACE \
    --userId '5hFdsYu2smVTpaUv' \
    --body '{"fileExtension": "HKan5WvoyxwXvoYP", "fileLocation": "aQwRQBaUzrhr6BgK"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'SloYFQh11XR0ZhDy' \
    --contentId 'Oef1CSOzFheLEht0' \
    --namespace $AB_NAMESPACE \
    --userId 'FsGcoaJQivR4O8ML' \
    --body '{"shareCode": "cxBuDh8vit6c76uF"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'EG9C3zoNHGXYRLqq' \
    --contentId 'WzOntrJYQmtdvOpN' \
    --namespace $AB_NAMESPACE \
    --userId 'XXjVFNthhOJPYnIG' \
    --body '{"contentType": "D4wcdZWTmhTciQyZ", "fileExtension": "4fLPJLFyDNswLY1y"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'IU4WfNq649uZ4ZdU' \
    --limit '68' \
    --offset '45' \
    --sortBy 'SF1h9dqFf9v6Sv64' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'o6b79fNjo4mzHnhq' \
    --namespace $AB_NAMESPACE \
    --userId 'SSuzYxZNRZ7rSbQW' \
    --body '{"screenshots": [{"description": "1rEeIeSzyzCx7eWc", "screenshotId": "6uaPln1gIfjCBaom"}, {"description": "SDTXivcR5fpjd1oW", "screenshotId": "DeTriDe0Fu5gTvzX"}, {"description": "iyM5LXNXa1lcVJty", "screenshotId": "YV8j7QExZ0oGpbBo"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'pLxQfjAgnHUZk3cY' \
    --namespace $AB_NAMESPACE \
    --userId 'HrPRN5Y7TAH4z1JQ' \
    --body '{"screenshots": [{"contentType": "IGco6J2YOOjCyLJT", "description": "CMIgJx7rMgsxFpaC", "fileExtension": "bmp"}, {"contentType": "CwbMDpcagyD3Vf08", "description": "Fx6jL7rTEjSMvM5H", "fileExtension": "jpg"}, {"contentType": "fZo13UzHdLAB9VQO", "description": "t4bCZnyvDGEyT24A", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'hjE3zqa9V6vmHrm4' \
    --namespace $AB_NAMESPACE \
    --screenshotId '8ZaHM9fF5lRTZomu' \
    --userId 'peqMVREBB8YI58xc' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'Cw0aXqybrqTlAv5V' \
    --namespace $AB_NAMESPACE \
    --userId 'iZkadVuvno2Whhkk' \
    --limit '80' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId '2NKr6OjTzuyYIDvi' \
    --limit '14' \
    --offset '76' \
    --sortBy 'xBJIajocL7mn7IiZ' \
    --status 'DHLhYdBAxrFdYIh3' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'SaOVMZvDEL2skHe7' \
    --namespace $AB_NAMESPACE \
    --userId 'MSWpfWnq4m6aY2Q2' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'DGWuyLCSG3E3v50R' \
    --namespace $AB_NAMESPACE \
    --userId 'dh99yX0KjXbmP2qL' \
    --body '{"fileExtension": "dAj0LRonrnrcCylo", "fileLocation": "BDx9zsOE4CmPKrHh"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId '8JMibwABfAcOGlBa' \
    --namespace $AB_NAMESPACE \
    --userId '8NAQQ5l3Vr6aNsUP' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE