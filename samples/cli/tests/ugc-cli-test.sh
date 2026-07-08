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
    --limit '26' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "ltwXasaVhk7xqIYF", "name": "loUOxdsoUJQN1tpt"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId '4uTM7dzH101qVRYu' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "UwRkkWvLPLIl7ook"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'YZbRFzpsDtKxg2rT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'oW6n1MvfqSjtEymh' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "6q6CyNlm20leTQuB", "customAttributes": {"K4QVMVu99ccxM0pi": {}, "zEI8x4PoMDEtBmvy": {}, "wdN3eqR6zaa59ZhA": {}}, "fileExtension": "8roIG3mpYpJzWlBP", "name": "vHH0WCDL7MdGH6kp", "preview": "d7mOUNXuH2PL5Ytr", "previewMetadata": {"previewContentType": "51TxQmubdB2k8NLY", "previewFileExtension": "ozcX4sNompu2VnZK"}, "shareCode": "B0Zu0FA8f1fuzbVw", "subType": "g2O09WNjPJCzC635", "tags": ["LY4NztP4YOyKG0l6", "Z0f2HIOtkU8GtbMU", "RLEMV09pzAZrAy8L"], "type": "grQ9oWz0hvnI61GX"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'OPbVraTHqHRZE8Ku' \
    --contentId 'pqbkASW2EKEtTtFL' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "kcvyVnMEH3WKUEzY", "customAttributes": {"49GLE4MWKClI4VVO": {}, "hpMkAZTdxaNbLEhm": {}, "6DsbxQ9rkOBpsM47": {}}, "fileExtension": "ORzYXVpwGvAjKI2v", "name": "jJ6t2jzdcArU3xRK", "payload": "qgoOmmCGLupEhMSO", "preview": "udyYEL9KGGlTqe7k", "previewMetadata": {"previewContentType": "CXJNAIkLBS7Sg5QB", "previewFileExtension": "4jdDsHFxFDnt7nAT"}, "shareCode": "QZk9TaB9j2LtbYrv", "subType": "T5JERWqP17P5yYJ7", "tags": ["ZunUbsqhQ6vaIvpS", "P5jMNPwvb6M7J1kQ", "OIMWgzvS8L8y0Yqy"], "type": "2Bx6hqy4KhhZYhyy", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '7UK2oS2dfvleJXwC' \
    --namespace $AB_NAMESPACE \
    --creator 'G1CUMzBr74viOhBM' \
    --ishidden '0KukchTCr0X22awH' \
    --isofficial '5g0KkIcJ8Fu6b4aM' \
    --limit '43' \
    --name 'FscI67YrSC99MZpE' \
    --offset '95' \
    --orderby 'HzIhpdvnZxpzrLHi' \
    --sortby 'GYFOjfHH8xrNkL9e' \
    --subtype 'xTwvM9g9WuMWtVEg' \
    --tags '["xXoPEII3JvEiUAi6", "ebthOxffiC5ByxhA", "8sCDJKmkZk5I88H6"]' \
    --type 'r29QpttXyuht8GNo' \
    --userId 'Nk7BdIvZdq4ZMgwC' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'gQujzVWBvQM2Hd6O' \
    --contentId 'wyUX9PFZhtJuqrVv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["oeO9dH8tzwpOnIQb", "v22ZORcTwEYHr29R", "DMk1WbitTiktd9LL"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'H0WwE7kRjQoro5fW' \
    --ishidden 'KoZfzWBUIhZad2pG' \
    --isofficial 'R2dKqRDAzlLy8T8A' \
    --limit '42' \
    --name 'EtOKRJpOEyVFoxR7' \
    --offset '10' \
    --orderby 'UAFM3F6DHPtwPJdc' \
    --sortby '7he3Zs6L1GwjY1Un' \
    --subtype 'YEdTnX7dWnR7Dhgx' \
    --tags '["SgxZedDGNNvStqh4", "VgwtJduaS4CZYmsm", "maeJKqxeaS93WbmO"]' \
    --type 'iUg4vorDeybGl2I8' \
    --userId 'DmT64iONW7jrYCcc' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["q86bDV9cRZUsr7pO", "tNBzDfpuIhquQTGB", "TNLYW31WX2Qc0z85"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'HDBv5OYcrwt1pHWp' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'fyomfXPOzoZoaEWm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'kxT6jOMpUo0Kq08u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'kHceJo19c8oIi8fZ' \
    --namespace $AB_NAMESPACE \
    --versionId 'FOSzaR6t1xoW3yRW' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'mvjPQxxQgGpTZmHK' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "KtyPsr3sYBrhL9cG", "screenshotId": "3S9VJWHtgcsPJV4o"}, {"description": "Y177fBscsqjWQpLt", "screenshotId": "bN3MjDPsffFhrp9C"}, {"description": "yhsJIvph57aQ6eKh", "screenshotId": "A3hyvJDgRM57GtUe"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'NiyEMFflbsNTydBH' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "M3wHwPZu5YSu8cEW", "description": "IhyXsyKqROu9pZ3h", "fileExtension": "pjp"}, {"contentType": "O4pfw6rUw1ci7PJT", "description": "KSBt6sxtctAM4gHG", "fileExtension": "jfif"}, {"contentType": "bKOGm8GY2vauzfsK", "description": "sN4faC04ZKC1nhvG", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'nygBIM1uwoByhH3M' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'rldsSSeTUCGaMzZW' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'x4OsyN3rHhzww49n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Kk00T5Ehx1WU6Tmd", "t6R3r08F24sEZmrW", "2Y5co3L6quGWLnFh"], "name": "72qsmH5TSOYye5SR"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'UGp146rIhVtAQTPJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'tznnNIEVzWz6kfB0' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["ctvaMqFDKbfxwIwb", "5nd3XiXARn5NWnYT", "b4yHiJU1dH3aTUCQ"], "name": "leo7IXp83FQrUejc"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'B8YuxXhbnk2jSeZ8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '5YJ1qOb1lagh2rb1' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "qR7IrejKoJh9Pb00"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'TCeMl0AtekiiTh7Z' \
    --body '{"tag": "BPrbKUKKmGYrbrvw"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'MgXUQFygOKaUHS4G' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["msyk9ruJLsnwgI1g", "d7Qq9GL5bXH2RpnJ", "aB7mlALoGJhMXQym"], "type": "RKfmWYcm3dv2O0sc"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'ZnpzdrZ09zmOLNrH' \
    --body '{"subtype": ["uCaSLNJvH3PHaiAp", "w0nsCYXWTtFb4tZo", "MFdHMrjVKhRwdIQ2"], "type": "G1jJdopNiWLl5S24"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '8RA5HksOTra76InC' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'Ez3z4mlprNaV3DFv' \
    --limit '55' \
    --name 'nZMGSXxYZHsYXbhC' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'FZTgEydSwy9ttgFz' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'gM3IZCBqV8nM9cLS' \
    --namespace $AB_NAMESPACE \
    --userId 'dPVo94k6yvaLGSVK' \
    --body '{"name": "433rM7OWD27hSIlw"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'ZApKej3Wh1HtZuSS' \
    --namespace $AB_NAMESPACE \
    --userId 'Mi3f5RCUDhYtLqbp' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'gkLibN3URsrZEf3t' \
    --namespace $AB_NAMESPACE \
    --shareCode 'dcjI2rRSEm4A2UvW' \
    --userId '1ONFjbzCuPHIsNaq' \
    --body '{"contentType": "3jj9M4O7NkSpzGC0", "customAttributes": {"hMGKFV97o3Cu5DcW": {}, "G5nC5wgYdZFmU4vn": {}, "lRIkQd5NeirK7UPm": {}}, "fileExtension": "qvlrtjAPKvx9S4CJ", "name": "76CVfLaJ9MDkq8FX", "payload": "MAJcZUPxSslUadgf", "preview": "ZJPELA5krtM3Chpu", "previewMetadata": {"previewContentType": "vQmaY912BhVuGWwN", "previewFileExtension": "e3SzrW562567yTz8"}, "shareCode": "X3v9DxBnFg4mJQR4", "subType": "gzsO8Ff5nQu1YvkD", "tags": ["haTjxfOoh9Oq032X", "EDxCC9VppKH5BNov", "6owHOCCWGX015Did"], "type": "qYvGqv5DQQtW6UXJ", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId '6J70neoVN4RdAbx7' \
    --contentId 'OaItO4jp3YrcgWCI' \
    --namespace $AB_NAMESPACE \
    --userId '1SUljfwmCd7P2Fr3' \
    --body '{"contentType": "TgWrXhdFIVTXhO20", "customAttributes": {"zhBE3Z3QNF5qnCl7": {}, "vbl1j8mxiS10lPzk": {}, "vQrizxNG8ANEVtJf": {}}, "fileExtension": "lj60sgocDJ2CfL2I", "name": "69qZYfeWOaPh5xlm", "payload": "k04ubrs2CqRuHrFO", "preview": "M5kN8gyE4x1JNVc0", "previewMetadata": {"previewContentType": "e3s8JwUtXj3gSKdK", "previewFileExtension": "KZXgVQKlz87mLsdW"}, "shareCode": "Gm7bCRwibpzF23Ig", "subType": "rCrCxxcAuSGNOtg3", "tags": ["lGmUbYKbmLIG07Xf", "3ix9chwgV7c7oyZR", "hr3jzAlgLrtFsRYk"], "type": "u4TeosoMjkttSsrV", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'NaJFHREy4arCynvr' \
    --namespace $AB_NAMESPACE \
    --shareCode '0gtaqNPAcXPj71zO' \
    --userId 'nTKbJogH5L5VqM9P' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'VjUGVVhpvhyrdfpl' \
    --contentId '89f6cAzdf4NAAZuD' \
    --namespace $AB_NAMESPACE \
    --userId '45Trb7cgQfOVvXbz' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'qEQ8eUxLPHsi3UTy' \
    --limit '1' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'NmlraXqzUU9M0jad' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'jzKqWMbLgqla3mKc' \
    --namespace $AB_NAMESPACE \
    --userId 'ZH4rPGL1xwhtLeI6' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'yGHUe5MhB0IlFn9E' \
    --limit '59' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'j6WZnUfpNWzrbjea' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'ZSmJgl3o1GkBIIqb' \
    --namespace $AB_NAMESPACE \
    --userId 'escUYWYWqFtEbPaC' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'anwQHqwrepSJjKCh' \
    --namespace $AB_NAMESPACE \
    --userId 'scxsTAfYIIsvy9ul' \
    --body '{"contents": ["jR8UMicBxVtFkflc", "KF4PT4kE4RdRpO7m", "tUCgAyeo3oQUijCr"], "name": "Sl5BrljNh0Hhxwkf"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'r3BBTsWIlJVzqylj' \
    --namespace $AB_NAMESPACE \
    --userId '4eDtKadRHUKCsq2s' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '6sS8FiSfXWAximVX' \
    --namespace $AB_NAMESPACE \
    --userId 'Y1vBoVu5xGNQlzYL' \
    --limit '72' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'MjL4c1XbvnHcTjAH' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'cn7iHgKRY2HSvIo2' \
    --namespace $AB_NAMESPACE \
    --creator 'Z5SxGD22PCZthQoA' \
    --ishidden 'jHUoKQraWbQUDlYe' \
    --isofficial 'MMM8Fw6A3WhHM5Uz' \
    --limit '16' \
    --name '8swGuSENFVtDRByG' \
    --offset '75' \
    --orderby 'TYXRINYKkyk2EDt8' \
    --sortby '9kWZH2hwJlJE1uuz' \
    --subtype '36rNhj4NWvOwZ6If' \
    --tags '["MZCXVv2iigH7zPCr", "wQKZOSlu0OBtf4Pq", "XeWDS8VUu47q5Sis"]' \
    --type 'Usi5sWWDjAewRfXk' \
    --userId 'jpBy8Zcw53NCAIKL' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'C4X851N0EeXkqbdf' \
    --ishidden 'S4FjTJYsHQj3GwtW' \
    --isofficial 'FuuR3tY6P14KZUrK' \
    --limit '94' \
    --name 'jRj9Plzsqnl0zHvj' \
    --offset '48' \
    --orderby 'lq5czTXu1ZGGvyHD' \
    --sortby '3LUuaXsNEMuQ4Ev4' \
    --subtype 'a3QFwxwwejvX2JxN' \
    --tags '["BcodL56pTnBUcc56", "1KUEkcAJwgQbU7CD", "QpeQdODyjX23OOj3"]' \
    --type 'x49JvWBNtQxKQlky' \
    --userId 'lc4ZvNWfe86V5z1k' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["GaWmz23M35K1frTt", "IIALMuR0O2ekmTpY", "DIO9AtvtD2gQpJAy"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '42' \
    --name 'iE6W0qr0qW8plSLu' \
    --offset '25' \
    --orderby 'VOZVcUZuoa6PtwLj' \
    --sortby 'z9EyQsxeLDMxTNvv' \
    --subtype 'CZwOu8Ju5owjW2Vo' \
    --tags '["iqXWOFmPofW4ASA6", "bqsW5cUBOhyFq11o", "KjxG2rw1Jo3DGBiT"]' \
    --type 'jfwZE4Bn9AFbF7jw' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["AuHTgbPbKLlRkgmR", "LXS2sGpqAed8ThdV", "eBhps1UyhwWlvO0D"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'DeyCPqcEx8M7pK4e' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'fJpcyyfMK1Msk7Qm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'wmZPhnixXCNJyu2a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'gywnj4ZQYlVM6ZH5' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'udRw1bj0moZj6Msi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '32' \
    --orderby 'HNsuQYVnpDqkB5Xu' \
    --sortby 'hpVkViTD1rImwrz4' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'Cuc4hjoYCBbbn6tb' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'BK0aBDLQONcGE0je' \
    --limit '1' \
    --name 'FcN5lgQWeqL8ro4f' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'T7REz1DODP9QdX9d' \
    --body '{"name": "vaCbC6ECCejAnxIP"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'LOUOJO7GNWLt9UpP' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'JRPTNGP1Zf3TCEfO' \
    --namespace $AB_NAMESPACE \
    --userId 'MYqwCjIq3MaF4r8L' \
    --body '{"name": "9LFahC2qBZWtHRwy"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'FsNft16V3FSS91xM' \
    --namespace $AB_NAMESPACE \
    --userId '88cE4NdwUMA0TYYV' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'gVl1oNaCkVB9zPdD' \
    --namespace $AB_NAMESPACE \
    --userId 'TgPaaLxw0CtI3VhE' \
    --body '{"contentType": "CM3tlLIxOlCTiqHj", "customAttributes": {"rnrLp587eC6O0IXA": {}, "y6YksADqZnqdg4MA": {}, "43SCMj5kxX4XMibg": {}}, "fileExtension": "X8MV7PtEgX2l2kXg", "name": "Ocm0jWReD0M7dtfz", "preview": "CJZoGvsQTt8FmPG9", "previewMetadata": {"previewContentType": "8UHkr16VHTg4qSV9", "previewFileExtension": "B5lDRno3OpdLiSzN"}, "subType": "G1AqAJnWLmZXHPx0", "tags": ["FcjgwrRL2mD66LxI", "CKJ4N9CP6JY8upF2", "TVROzGd2LH4p8MdA"], "type": "nbCTn2XZiUEmVbbj"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'gvyXJXuXvSnKCKdp' \
    --namespace $AB_NAMESPACE \
    --shareCode '3MURhXWLs7qe7QjY' \
    --userId 'Rsc6QBUM4UG4cFUr' \
    --body '{"contentType": "wfpxrLlByF1RIYut", "customAttributes": {"zbrxeA2iLaTzgdTb": {}, "8fXRPIhwqcqbVm1z": {}, "M9t2lSlWJQOQy7Lw": {}}, "fileExtension": "TWJShbDWihWdhBb3", "name": "i0PhMKRYdHSMWgvp", "payload": "57Rl5jzFSpIjavVH", "preview": "3PzYpi4tKNf2lYso", "previewMetadata": {"previewContentType": "NA04OtLZ1kuJQOzL", "previewFileExtension": "ElBwD3W87VA0qt0C"}, "subType": "P04kffI3jdnL232M", "tags": ["WybBHrS3eQoU1JDT", "uVfCCoEFj8WZEYHS", "2mLBKYV8ZLbXfGVx"], "type": "68kloDsSdGMfz9Bp", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId '6i6DcfXkTSP4MO1G' \
    --contentId 'BkBD3O82RUItbjR9' \
    --namespace $AB_NAMESPACE \
    --userId 'DWmm5Ghd2T093U7K' \
    --body '{"contentType": "oj7b7FrGTRkR1Onl", "customAttributes": {"dlLHuQgdqhpnBaVA": {}, "Cpx0f4xCO3sYerMp": {}, "pLLQ8SvF1qpsCMIo": {}}, "fileExtension": "OKHppXE2YIU9LliA", "name": "OcyLeSEyWsTUntan", "payload": "9PyLBejRDCuEc3tv", "preview": "jHCVNHzYcuvIRCNb", "previewMetadata": {"previewContentType": "d7dDq6FpIKAQFbfY", "previewFileExtension": "61HB3qKqllHx1x6h"}, "subType": "FCgxNBDd9mWyV0iH", "tags": ["KtDO9LidV3u8ChtY", "u3GLqqmHXDJVcrNW", "kNK6MRK0XrbTuaTQ"], "type": "aYzYZK5l3RLPE1Xo", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'ykQ9tPQiqrdSFaFH' \
    --namespace $AB_NAMESPACE \
    --shareCode 'OD5OUtQE83OuZDTi' \
    --userId 'Vm0QH5adOenreYJr' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'mgB2ou8DVwObnDUk' \
    --contentId 'lC51EIom8StyqxsP' \
    --namespace $AB_NAMESPACE \
    --userId '0xltePmNRhHjIB1N' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'cdWlAy08KSO6PxP6' \
    --contentId 'p45QcsnGan8HuVDP' \
    --namespace $AB_NAMESPACE \
    --userId '6I4GwXsPBBWzQenw' \
    --body '{"shareCode": "gMRui9gvQZZ9bIT5"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'YGpyeVaZLI5u6gg7' \
    --limit '79' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'FNoadrRZ8llwJZhs' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'LmZs9DJKAoSCgQ6r' \
    --namespace $AB_NAMESPACE \
    --userId 'fUftLzF6k3YXLcnG' \
    --body '{"screenshots": [{"description": "Ty4BMzuvsAoifDHH", "screenshotId": "uxyJb76WAIQDm6T4"}, {"description": "KHKQG4dnLeLOZghN", "screenshotId": "1WoJpUpJLhwJyMjX"}, {"description": "AHXvHUimZtDGw0CW", "screenshotId": "psF0QozVs2FmzLG1"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'lndchv1hWkedFDnr' \
    --namespace $AB_NAMESPACE \
    --userId 'Ol6iVcydVzIwc8ew' \
    --body '{"screenshots": [{"contentType": "YbJqujAbsPp6Ea7i", "description": "zYU42KivUvTJhvT3", "fileExtension": "pjp"}, {"contentType": "BCXoPicL0Ndohq5J", "description": "S3HelogtHv6zNTfs", "fileExtension": "pjp"}, {"contentType": "e7Au0jMZW7SGiMvP", "description": "4GPbEwq2zJ0UVeRX", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'v3bE2jUgJfP9ffhI' \
    --namespace $AB_NAMESPACE \
    --screenshotId '0ropyYOmKPgAzl8o' \
    --userId 'EA9GHeehMrsqjYBl' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'bltFFQeHXAFOqUCu' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId '0niORF2y3WBhh6cW' \
    --limit '15' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'pAi0QGOtQjXhnKAB' \
    --limit '99' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'eYHtquoDCfHnn2iE' \
    --limit '26' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'UH39Z2eE9p8EB5jE' \
    --body '{"contents": ["zcXVcsIFgATwcSNY", "7FAep0hhipE5TSlU", "2WhnV03PIVMlkXky"], "name": "35GrFZPA9lUvrJfk"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'eUh8DS7H6yisy8Yn' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '6BM070CKbwszkPsC' \
    --namespace $AB_NAMESPACE \
    --userId 'lNqhnqFhUiGClxYO' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'MpIfWM4wJiulSyyf' \
    --namespace $AB_NAMESPACE \
    --userId 'WRrgw9vKIEyOyAAD' \
    --body '{"contents": ["pzbXmSRC99qasr60", "zgtO3lJFvIyuUdF3", "4o3BswSVCvcw9L5b"], "name": "UPJvLPr4Z4jlMH9n"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'A12c6AzL0TslbF4m' \
    --namespace $AB_NAMESPACE \
    --userId '1nYAZm5pij5njPBM' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'NW554Fz5cmbj9C2J' \
    --namespace $AB_NAMESPACE \
    --userId 'dYM90seKPKMjhKLl' \
    --limit '54' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'mfWGynoT7uzZPpJ9' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'KbIe2RkMlxiHhhqL' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --name 'YsCvuoXWZ1YI02jY' \
    --offset '47' \
    --sortBy 'zjhtUEwi5RMfo26a' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'atsXSfprruvh2OTH' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "lLb20Tk913vAW7k9", "customAttributes": {"QWgcu48EFc3loKWt": {}, "nuo1K1aVtsqI7kmF": {}, "GHZQQHMxwf1vlNc3": {}}, "fileExtension": "EosucaLy2uMifFhP", "name": "dwngFLntBaq5TcgL", "shareCode": "BIIZb6ZVvPTJNT2I", "subType": "tEyl6URspjkv1g5t", "tags": ["LD0k5qDF3cyxBvem", "5PRPsnUl2MUZUylW", "QYku1QsiN4x4bX4f"], "type": "LXuh88RD5gDZIOjp"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'SmIKMhroMI9cKekV' \
    --contentId 'mqV4gqG8fcRKgSwj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'bT0TSUp4QpPmy8gN' \
    --contentId 'AuM3qrAF35SG670E' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"3usP8gVV4pGmGdPf": {}, "xZdGT0o5yEyEnSko": {}, "gLrBCEDEDO46Bpaa": {}}, "name": "Kbzbkw4P8t9ODFAC", "shareCode": "EaRnnQeCnHqznadd", "subType": "7M6SuPT4oSahST8A", "tags": ["LVf1pz0OrxTbchLi", "lAmOvVriyc0uR721", "T80AFFaSAzIhcolN"], "type": "JRZUy4lIIdASvfT1"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'UyuumJC7B2H8xaPx' \
    --contentId 'FzT1qyBqGh2RIzg9' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"2Ob7nbyYMHdufyZe": {}, "CuOukiFfSUh8WYJK": {}, "tZTs91IIxRRPW624": {}}, "name": "NoyZWAgYA3D5DIgX", "subType": "mGrieXhnDnqcDjqK", "tags": ["MotUbLfTECYJmk1V", "kPQZB2UNZR8gJln9", "qispUMFl4lppzz69"], "targetChannelId": "HuMNFTdibdrevDFO", "type": "28kBikLlkGIEF2ee"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'djCWpkHGZ3PjnKep' \
    --contentId 'HHKLEDLnLExycKyE' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "maAzR8nlwrI1Rdux", "fileLocation": "YoUSrHXVSzbqmDFp"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'iwtBpBaQKPSpqZEv' \
    --contentId 'looueHYiFpdNTfD5' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "WAWweCGSuALt1xPa", "fileExtension": "IruhgU2a1d2wVLtf"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key '27tUBMvE5uVphlxh' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "Dne46FcPzouauGZG"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '49' \
    --name 'q132ycg461n5ywA7' \
    --offset '32' \
    --sortBy 'XfDBwoAjXlSzwLKi' \
    --subType 'GuCsAhbIv6iYZEqv' \
    --tags '["H4tWv7UVjGaYRRQp", "jT0oaOZMtat8pDNS", "41DEsGmTdDHezsB8"]' \
    --type 'zflaUK2ZvLuK6Aw5' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["DAyDq2KowWJKk1HC", "O0sU12m7AprbiZ2z", "fZEHTKMmU1gTxCek"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["5v05e4rfkNKpkMop", "YR1fXCp0msnjxktL", "6vSKNZrpowm9bWUB"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'XEGspOaYPYhKGF0Z' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId '1WN7TaoKxxzYSOPO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId '7a4UwhKHLofYd2wG' \
    --namespace $AB_NAMESPACE \
    --versionId 'iu3bi5gjOKD0bpQS' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'CpeFX5i29pf0GZ0q' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "yFfQo3GKyh9ahj3Z", "screenshotId": "TzyObjX4rrKul8Pj"}, {"description": "oigYpFDjG3droVL1", "screenshotId": "N03k2511ad1UUPbN"}, {"description": "bRiyMMbAZgTcbCVf", "screenshotId": "ZgVxGNWlVZwuEfbz"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId '069t5qM5zjZqIObF' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "W8EYRgKxsfemwjbu", "description": "qJBRX0tB7t4OYY9v", "fileExtension": "pjp"}, {"contentType": "1Mwtl0hwHhhLMbUc", "description": "biE0pqQJL7PYRkRn", "fileExtension": "png"}, {"contentType": "ln8nnacU1OPfvTjQ", "description": "3U2cu31mlyzymMXr", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'L95kAIHpzaW6k0MG' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'rhPOanGStigXVxZX' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'evnVhi3QigLzSAbi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'CqPXyINxnteoPI3H' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '43' \
    --sortBy 'fDtVzmJO6bxV38Lz' \
    --status 'HhYtcMrHUgQx9xX1' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'PfrIRSVa0kOi3VR6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'zI8JtfYmJpnic5LL' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "EyUb3QedegysfRY1"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'TfFOBaqlGUkCd4QM' \
    --namespace $AB_NAMESPACE \
    --shareCode 'TaDNb4t99ZtRfUBQ' \
    --userId 'ypMDL3z7UmWjSe9L' \
    --body '{"customAttributes": {"zQPClF0MZUUDIH9J": {}, "i8JgLBpDYYlTCUql": {}, "VU7SGq96iyaH7sRG": {}}, "name": "vsF3ifwOFWHWUYxn", "shareCode": "YXfhjjRV0EPRsy55", "subType": "SuD6SAUGyIQU8cAQ", "tags": ["vephQ4DS67orayU6", "bzB9XI0SELHJDtxu", "M03LB7ScQqNKTmTY"], "type": "Vp3Ecd1LPdWpTBHT"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'SbTUDPnSn6q3DJcH' \
    --namespace $AB_NAMESPACE \
    --shareCode 'OjlWNPh1aFfUTZsQ' \
    --userId 'CKfbPL5L1TCB1uNW' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'TWci0umj4P4QhleS' \
    --contentId 'Z6wtYpFehBujACTi' \
    --namespace $AB_NAMESPACE \
    --userId 'S4NLDBRFxdg2riTM' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId '4VpoFU6UmyXoX4w2' \
    --contentId 'Y5Doap986oZxIhgh' \
    --namespace $AB_NAMESPACE \
    --userId 'b9frFgkKo1JqM0TM' \
    --body '{"customAttributes": {"WhKvwX4wZJzCmRXD": {}, "u0NB3hu91lD3LkRA": {}, "I1PJjubuYGeUpkdj": {}}, "name": "26pRXzlRA9WxO8tK", "shareCode": "4abG7nBeuyEO6fDn", "subType": "P7qKW7LyHtK7oyNL", "tags": ["RVOzAQLhbNJKmh1e", "9C7vZt6VIzJHJPFD", "EaqBI1OafTGQPRmG"], "type": "0XG6zHdO2bSjItLa"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'NMAHetj3tytwjQrb' \
    --contentId 'H38QLssKqyMkiiOO' \
    --namespace $AB_NAMESPACE \
    --userId 'qE4X62VYXTZ0dExl' \
    --body '{"fileExtension": "dqx5pgWtAxCiEt69", "fileLocation": "MC66Ia2ZnruXCyWm"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'XHvnFQeMo6DsmvUd' \
    --contentId 'zZQfGYmgIsi0juQf' \
    --namespace $AB_NAMESPACE \
    --userId 'r8BgVTOxXeZXGLVr' \
    --body '{"contentType": "QEczjHmiLOjIsiG4", "fileExtension": "zx22R0aBYfgUVZyT"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'kgsynCsmWlaYq7p0' \
    --limit '17' \
    --offset '71' \
    --sortBy '1BcZUwRbfJWic5TP' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'VrpJNpqtIHaVu8IA' \
    --namespace $AB_NAMESPACE \
    --userId 'Vsdjy2EVwDNUYDOw' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'MIVVccnRkQsy7H2H' \
    --namespace $AB_NAMESPACE \
    --userId '7TZxhtXpzB7OuCgA' \
    --limit '70' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'AY3qNWQgN8UrNfCZ' \
    --limit '72' \
    --offset '90' \
    --sortBy '1AtJVvpjX48ewajP' \
    --status 'gZlIivxhYkmntuCP' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'z2QSHPi7ndcBC2UU' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --name 'uWdKhZ2nzM8IbgZF' \
    --offset '64' \
    --sortBy 'I7zcBUJfOox65m8T' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '66' \
    --name 'zvUWIJu0vCF9YryM' \
    --offset '95' \
    --sortBy '58EHHZ0kVwvr8ETW' \
    --subType 'SmV7wZgR5d7F7GxZ' \
    --tags '["bkKH72RWshCm6lKw", "us5CTtpiyvRuQSZ8", "8UDGteqexr8Zlds9"]' \
    --type 'HnCepgX2WwIvF6Vj' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["JQOI65zJxK58T5P4", "EqJatJnhjwgBxAnl", "6OUBZKuEsPzusG7E"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["wmlehInK5LIKSa34", "D666fMcrV4rKf6PH", "xitDWeMY7q58H0A4"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'zg5c2oRhJvI2JwxE' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'l3hVDLE1sfs8ekH0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'SX4N001uYVeCG0l5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'gGIZi3F98MnsPJ1N' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '53' \
    --sortBy 'fWR6GTlwUpjeNFY1' \
    --userId 'ScuGbIqHROHQZHfA' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId '7D19eVJ5thLnzZpM' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '0' \
    --sortBy 'kARh2utlAI4nxCNl' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'KjNlzBMWMOcVSYaI' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'guOEdlo3XKos1NXK' \
    --namespace $AB_NAMESPACE \
    --userId 'VSk8ECcRvTEQuRk5' \
    --body '{"contentType": "g2DQzvpR7CQgPngN", "customAttributes": {"1y4TE3z1pS0GpO83": {}, "XMGnsCX797BiObfC": {}, "TVvQRlZfuWqjFBcL": {}}, "fileExtension": "qWcszngjjsjb07kE", "name": "kBZleDGswaWUIPCr", "subType": "mTw0jFlUsnW81pzW", "tags": ["ZP0dLig1uzp4mO0N", "abN9L37ahgBDsxRx", "HTOKll0WYxifYRVV"], "type": "UVBAqtARjxYppeaM"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'FwlsMNadVVlqgHtl' \
    --namespace $AB_NAMESPACE \
    --shareCode 'pE4DkbEsQVCKUI7K' \
    --userId 'VOoh42z8v8r5Z6tB' \
    --body '{"customAttributes": {"nRLqcVLwNY463fDR": {}, "Iwo58FDzMWXPo5AY": {}, "B1PuStywHLdeAWQ0": {}}, "name": "XCjUBLTgz5qB6uNY", "subType": "zOk4iQMg7bksEH7E", "tags": ["PmOjbpUp25MnlFOB", "mjG69DQLZj1YyFD1", "GeAj51WW132l5nCK"], "type": "Ql6GKjggleZ9HwVE"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'kgsemNIJKJd2Qd1o' \
    --namespace $AB_NAMESPACE \
    --shareCode 'mfx521NNmgG8w2nu' \
    --userId 'clF9lkdM9xjLQL42' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'VeC16gX5YtNDAKzp' \
    --contentId 'CMTiMKZcMxohMxG6' \
    --namespace $AB_NAMESPACE \
    --userId 'Vn1Fthpd0zSV73hX' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'Uy6AH9wJqgTk1fdd' \
    --contentId 'DfpyMRewFtXN9QK3' \
    --namespace $AB_NAMESPACE \
    --userId 'd4ao97XrydDJVTZq' \
    --body '{"customAttributes": {"fEHHSlrOhOQgfd5O": {}, "kVaTsOn5ltkd0lYz": {}, "zHBf8bNED1GbrQ7M": {}}, "name": "pCzy9OZuYRLngjNY", "subType": "lZY1jzXUzgfT3laX", "tags": ["fSN5yodrHASpU6Ck", "u68mO3kolTI7qGTv", "T8FrMNYDmQKROju3"], "type": "uHg5XDi7nqEQ77qP"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'VUVhF54ZQtPsbaSU' \
    --contentId 'Q4bw7shOHTH2ZeIc' \
    --namespace $AB_NAMESPACE \
    --userId 'i9Vdpm9SPvHGzFkN' \
    --body '{"fileExtension": "GSUNMjb9RECTZ2R7", "fileLocation": "vutk0mKgCihYLGIi"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'KikpVGu6xmHbS3TA' \
    --contentId 'NfY8nKxH4QT272DV' \
    --namespace $AB_NAMESPACE \
    --userId 'ZPEHgqWrF8LTzq0P' \
    --body '{"shareCode": "y4WX5yBNZhMX4v5B"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'Vt2CT3VsPIZXLosc' \
    --contentId 'XggQEhwM6PXvt5pO' \
    --namespace $AB_NAMESPACE \
    --userId 'nSkFDV12kRGKl07J' \
    --body '{"contentType": "3YzMaWEAc3CJcVL5", "fileExtension": "xBS0rPmGhPNEdf9G"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'w4Ksz6lLNyTm9gYL' \
    --limit '96' \
    --offset '31' \
    --sortBy '8im0PaaOm8g49WWx' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'qiYiPAbSyAU7lOCH' \
    --namespace $AB_NAMESPACE \
    --userId 'LQA8JCXrswGjJ182' \
    --body '{"screenshots": [{"description": "2v61gWlOehZmnu5S", "screenshotId": "3w3QhQjoERDVNXU3"}, {"description": "Sj5oM2AaTjpu1hY0", "screenshotId": "ZNlclIWEpN2HoWxn"}, {"description": "R5AZKrOTRG5rkcIn", "screenshotId": "uJwzTXdxJ0XOapVe"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId '1z3LwxI0n6wgf5kv' \
    --namespace $AB_NAMESPACE \
    --userId 'JNCdfFU16be4repZ' \
    --body '{"screenshots": [{"contentType": "lqbtZhcfwDFRddKy", "description": "pQVOwC9G1BXJDqp8", "fileExtension": "pjp"}, {"contentType": "scjK7X6zRtC8LHBO", "description": "LMOF92KQnqchnez5", "fileExtension": "jfif"}, {"contentType": "XERcOZjfE91dQggx", "description": "jDUVWG6vfdV1Bw8F", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'V2PmfQQaqilP7we4' \
    --namespace $AB_NAMESPACE \
    --screenshotId '9PmqIeZFazXBWVDa' \
    --userId 'dU9Tp4tddTQACIyy' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'WOkHnkHXjGgyDCmM' \
    --namespace $AB_NAMESPACE \
    --userId 'FOeEsXeZUJMj3Yv8' \
    --limit '33' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'W5yJ2iBOx8iuGjZn' \
    --limit '42' \
    --offset '44' \
    --sortBy 'r8Xpadn7QKppu4U0' \
    --status 'h0H7FJ3SuJeMDAjs' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'tG7F3D3XaAL9wGcV' \
    --namespace $AB_NAMESPACE \
    --userId 'D6pycC3EIofy9bhk' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'I4JbL9BaXAM9YZ9f' \
    --namespace $AB_NAMESPACE \
    --userId 'o3FblbqGifuyHE8A' \
    --body '{"fileExtension": "lZZqVoY7SElxSlrh", "fileLocation": "wO9p5JdHhi3KNaSk"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'O4Z22GYAowVL4YNo' \
    --namespace $AB_NAMESPACE \
    --userId 'uXapHcM7B6XLQI4D' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE