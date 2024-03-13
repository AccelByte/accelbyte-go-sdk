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
    --limit '51' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "udETLIWRuPRcb6MC", "name": "M3ZC4Mhda7h4qAgr"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'cMPcRmCHkw6r0vx1' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "X7xwwx3puULLIGp7"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'Dff0yVSokw1QNCdN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId '1VVMta10GUPJthig' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "Mkq4twbgKdyDpPHt", "customAttributes": {"lurX27NYdb0KewfI": {}, "NiGFkti70rvbxFCv": {}, "mNpvKuZpsAb9hsJy": {}}, "fileExtension": "kr5tynOtZIBfUdzS", "name": "eU8Dw4Rkg5Rqjxm3", "preview": "3xaSg7TwjYaKa9Xq", "previewMetadata": {"previewContentType": "PkoiszVVScNdNoPW", "previewFileExtension": "H5ulYd7SRdc4PABH"}, "shareCode": "RD8w4HHvZbS6aSKQ", "subType": "2zU66i5iJEvIJ68g", "tags": ["3gAWCYbeyDcrhas5", "e8zqz5vPyympfQ6K", "S01foQCAurDn0AeO"], "type": "5NBlhd6e0TkHtVsA"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'nz2HVBboCQHCWYkP' \
    --contentId 'qZ1Di09xKsT7Rx0Y' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "FQzwWVNeDzhPU0aU", "customAttributes": {"Hzky2Ek8MDeCc8Ra": {}, "8xoZTJwgO1agQCmF": {}, "zD9jz9yYE3rfDwB3": {}}, "fileExtension": "raGLPOiqUnVyfZTk", "name": "lJMjUK8vrfqtvPcT", "payload": "NR8FEK9l0AXdMwAR", "preview": "tYsrERCIeJEnrKDh", "previewMetadata": {"previewContentType": "2TP6UL3G8aTOCi15", "previewFileExtension": "OAmMdJ0LB8hXPF3y"}, "shareCode": "SCzP6vSsgdhVRd08", "subType": "ssUVak6QjAqbhWPs", "tags": ["IN0UrgQNiYJtEIKR", "mWqLIQS0elyLXuNX", "CczKVHY4uB4gOZuM"], "type": "9qIZWaWblFdbbWwg", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '9KE84Vdh51L178wv' \
    --namespace $AB_NAMESPACE \
    --creator '5rY7RtxUuOo07KlV' \
    --ishidden 'QVZHimoQH7Frd5hW' \
    --isofficial 'ZW8bUEEw9fKnrS4S' \
    --limit '98' \
    --name 'pKzvBxLSD0P1qMvV' \
    --offset '4' \
    --orderby '8nxhCcgmtbUevqHQ' \
    --sortby 'tfvILzPxjEbSWCn8' \
    --subtype 'VkKP86Digq5uKIpY' \
    --tags '["qhHYwBvze5i8wQde", "HbSI8cTrlFmXV1IP", "2QUmptwhWMLPPRsU"]' \
    --type 'WDNSiH3izdug6QAi' \
    --userId 'osKMViq9FFoU0s96' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '9AOYbsowvtZmtS7P' \
    --contentId 'oruLxmHzm8JvBdfH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["CO6TEYFixgL4ryUs", "TchQ2k3BIgrsA7BK", "jgPijFMnaVr6tUcA"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'TKygGc9GfCMNSCKa' \
    --ishidden 'm8fyukALwbgZZJE1' \
    --isofficial 'O6Nsw56io4UROIu2' \
    --limit '77' \
    --name 'd6aOW7H4Z4OdPLxT' \
    --offset '43' \
    --orderby 'W7Oc7Xa4Evnvzkwe' \
    --sortby 'EaDxA3NWXIwZrQFb' \
    --subtype 'pBFpEyT3ZqG4SUtw' \
    --tags '["WdCdySNpS9WJjzlz", "l8mvpHpvyUuVJFY3", "NMin6QLVJ2vRyaMq"]' \
    --type 'YIkYJnvYPsccFpwf' \
    --userId 'vZJn7xcMt3ha1MtL' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["eHxMIWeAVs9h5ENF", "BvLfEWlpcno3TfKB", "kLcjFEmXRxuftb7h"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'ojQmmRYj1j4dI8JV' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '9egxl6VwlKac53Rz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'KVSf7FGCWS63Wnsh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'UMPEJeCzlPyrkM72' \
    --namespace $AB_NAMESPACE \
    --versionId 'oZ1nlhZxfU48dVxJ' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'icp6ukNYt5sZczh3' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "BfZsfttNRyjreyLv", "screenshotId": "cnxQrU2azDgN0iVp"}, {"description": "BxxQZcup412WA3gt", "screenshotId": "2XdvJAMVw9FqqL09"}, {"description": "BZ88BReSYGRXVYB3", "screenshotId": "mUTYK6OkBMR1ikxv"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'rHPhUwHXEK7iTvAn' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "d8teLUhBHAMMbuWg", "description": "E7xR0CkhkNlJxM6b", "fileExtension": "jpg"}, {"contentType": "uRotr2V097KBnJl1", "description": "k7NsEghPssciTuqF", "fileExtension": "jpg"}, {"contentType": "L6DXg2VONiMrVEr0", "description": "5cf73eeinHWG77ks", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'cvYnuY09W6gi0yj8' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'kLMMjbqqJRGLzuSO' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'djo69xRZZtbH30jz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["tF6DFQES5al4FXMc", "Nm136oNB0eqC621r", "unwEPke8kn26Iu8n"], "name": "9HcOnegbEXI9ZJgX"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'vRyZIiVK0CK7tNFR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '5KSwvAwzqJEp8stn' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["HbTVlTRPlza1Eq7m", "ULHx3KykqqKlHLn5", "BmLNq7j4ifwoHB0J"], "name": "xq9AH75uhLaDysSt"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'kRloMKTjJfm8gZYq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '7J8SmJG0dVgJSHsw' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "JOF0B6WBs379qCJZ"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId '9fXKJgU9hVhUMufi' \
    --body '{"tag": "ssEd6NTyW7cAA4l2"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'GBSHC9Tx5udArU6K' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["Rs6pAdXiLTXmI7V5", "UGdNCkVOSUPmKq91", "BUTfl1PvmD2hCkHu"], "type": "q029oucaUtwviLQ5"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '6EKUgzOKOjoBsxiV' \
    --body '{"subtype": ["8AAzImRyBIPhWkMv", "td96YA7Z2rWTLyyc", "E9hpIOwJiRUS9fhq"], "type": "fvEeEjBONi8tFm84"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '5oB1FEKD3g40oDIB' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'fBC8H1V4Bl7RwugY' \
    --limit '36' \
    --name 'K3EPlgJBTml1bLeL' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '8NDc4hRVvzbrJCn1' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'MaIryQg7nZdRt6t9' \
    --namespace $AB_NAMESPACE \
    --userId 'CcLLA0DAwk6Ywcxt' \
    --body '{"name": "vN2A8emN4S553KjM"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'Sn1y9EZWPdBerhLX' \
    --namespace $AB_NAMESPACE \
    --userId 'SWm5WNcaqFG8ZfJ6' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'amfgaCr3FI5ZYNvM' \
    --namespace $AB_NAMESPACE \
    --shareCode 'hkVhrPKLqz7zdlJJ' \
    --userId 'KYEMlcOvyib4Ac4Z' \
    --body '{"contentType": "goBxxJP1nPqaJ55c", "customAttributes": {"tUpLtBS82bxPzStg": {}, "c0G6oqGCKiUTWi1Q": {}, "cNgSHPnrVYRiSWw8": {}}, "fileExtension": "2XNAgp9rWQX0xisf", "name": "FsVWPBdErUxci2ql", "payload": "QxrnVqFeAAiv2Th7", "preview": "y8buKoIbtntPAGE3", "previewMetadata": {"previewContentType": "L1kKh6aYgefvsPdG", "previewFileExtension": "HgRWv0szDegbJ4Dp"}, "shareCode": "m6I83NSXNUTfUnBq", "subType": "AZCcKpAnAnfSPNwp", "tags": ["3PwIcQBSiL0e1Ukh", "jTynjACrwBcqbrjH", "9KyuXWkHBrGxZWXc"], "type": "fAay2qYsYG4IvEc6", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'dwebj5q2qSZMEyOS' \
    --contentId 'uF7DQWva2ZrEWprr' \
    --namespace $AB_NAMESPACE \
    --userId 'cJYZdYgnINffS7HR' \
    --body '{"contentType": "TgeYdyORteWLNEmd", "customAttributes": {"LDH02ZLOX1OEHGeg": {}, "TsFprQIaesEwIai6": {}, "vExl6SCPHaIcVdYa": {}}, "fileExtension": "IBQUfcfdmRLGJhP6", "name": "02l1TQyoSTpgZ0gV", "payload": "he3HykTEld4YXILa", "preview": "yJib4qMg5wtVLMlT", "previewMetadata": {"previewContentType": "fv6PmjbIXRn4bTFI", "previewFileExtension": "tHbRS3rac8XNmX15"}, "shareCode": "iMZJMwdxHDRRaFii", "subType": "F1lEIWF0NI30KnrV", "tags": ["fE3MIKCQFmLsqFG1", "0m10kFuhAPuRLxLb", "xqyoa0vij2qgvP4a"], "type": "Ias7zSwDJkzz5qda", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'vONmWV7Zf6oySpzN' \
    --namespace $AB_NAMESPACE \
    --shareCode 'yB6fSue5LBqEd1ml' \
    --userId 'IAGsdnyuVuX03m5u' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '48RmXwgL4CqUY03h' \
    --contentId 'AL4xZaK6EUurLV4Z' \
    --namespace $AB_NAMESPACE \
    --userId 'PBJDUbklIRLANYNa' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'kyWEDi6PC31LYCPR' \
    --limit '50' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'QAW0dLNhfetEn7Va' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'w839pOdXJfV3lYm8' \
    --namespace $AB_NAMESPACE \
    --userId 'GuQOFXA2CMuDRqpF' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'snqWa3fM4viMldic' \
    --limit '45' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'SrvjpZk9R3BWzIBc' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'fd4LDlvWpXTQsz7s' \
    --namespace $AB_NAMESPACE \
    --userId 'JPkGchTudpIvVv5T' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'S8YmghP5mngOqUZI' \
    --namespace $AB_NAMESPACE \
    --userId 'Nwf9LHVbSUCMnvIT' \
    --body '{"contents": ["gMunxCRARo6cFNNp", "NItXKrGvUX82xjes", "Tzl54ZoHbOpsVgeC"], "name": "gIyBoYJ1YyHWqhew"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'mrxRQb0iyKaSeg2z' \
    --namespace $AB_NAMESPACE \
    --userId 'iisevtzd1PZk9TuH' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'PvCcoxRw5g17lCc0' \
    --namespace $AB_NAMESPACE \
    --userId '9n1Z1HI4iPTaXKnA' \
    --limit '23' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'ZFwWxbaLFaHLVU2M' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'xdVSq918o5DOYYNn' \
    --namespace $AB_NAMESPACE \
    --creator '0Dihq0GWze1Ai0FR' \
    --ishidden '6GzuNRiXJf5jxppr' \
    --isofficial 'hB331X0QbS44bALp' \
    --limit '15' \
    --name 'TP8SNgLcjmg8CGpi' \
    --offset '35' \
    --orderby 'f69jThpbeXrvP1Aj' \
    --sortby 'IaHjHb0ERknAqONA' \
    --subtype 'oIjh3xqKia4XJbEX' \
    --tags '["kkGrTIwWCx3KqZwG", "tKL1PkFEJWcEuom7", "HEYbPPLIGWIdIRRx"]' \
    --type 'tX0BZPqsbhLmGCtT' \
    --userId 'UWpHvDMVkdgZCSjP' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'mVQkcEY2LmOdPwZB' \
    --ishidden 'JlXgld7Z5IxuUcJ9' \
    --isofficial 'FDFQtfRqo4EdkoJX' \
    --limit '80' \
    --name 'NWaHvNvFqOS0tfm6' \
    --offset '92' \
    --orderby 'T1E0N1bfoiNDDKa4' \
    --sortby 'p82XXjdPJ10frYYK' \
    --subtype 'bo8L9YqvjurCZupc' \
    --tags '["RWUOpHrVzlO7GZpI", "T1B56lxAM15CxnEQ", "P8mPuJF1zREoOYXN"]' \
    --type 'JVAnl1u6pKHCbL5k' \
    --userId 'Ld84P4tfsI3pEN3G' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["hRg2P6Ia2iaDUZMw", "0Zigw6gJ5Zy8UTjF", "rUnbCGyFRrN2ilcb"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '3' \
    --name 'kL1IAynKcwQ2ZTKo' \
    --offset '78' \
    --orderby 'YTB0XH8fzkH3JyEA' \
    --sortby '5yTeN3ydJmm5DiPb' \
    --subtype 'e26gOnApONlnIJn6' \
    --tags '["MKw0g31W4vkoDeIe", "0l65yHN4wMdXFqOt", "uDUdsnTulot9hZih"]' \
    --type 'TUOycmXA91goc5HA' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["q25FP8CJWy7WSXOM", "0xSj4dzPLL7Zhz8a", "HMY8o6GP2k8vkVXA"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'WKoHuzvl55w4RXcW' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'daTFH9spO1wk0PMS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'A2kJFxwgjVdOTpk4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'IUFzGfuSrsSEoScd' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'GUxSwkJEJNKpuoK2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '43' \
    --orderby 'pOIwNtEczt66cLTu' \
    --sortby 'EDdiiPkfJSysn52G' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'CDdWNHb0FndauGGz' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'PdPDfpmiRK3ApZsR' \
    --limit '98' \
    --name 'dBNqsIhFT9B1sIFg' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'iqoHnyBTWS3XPlnE' \
    --body '{"name": "k81W7fqMOfPSuuLa"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'zkHrxZS5yjDZAojT' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'yfWAbOVEfiOZjibH' \
    --namespace $AB_NAMESPACE \
    --userId 'ma7QGhBxlW5YljrC' \
    --body '{"name": "tDf1Uw3iKVNdf4It"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'ydWRCWA3Zrw7YYVG' \
    --namespace $AB_NAMESPACE \
    --userId 'IO9NGOfs2ZO0lFkf' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'rcTKHSTIhYi332U3' \
    --namespace $AB_NAMESPACE \
    --userId '9qy2ehMe1C31sttm' \
    --body '{"contentType": "anF9lmxAIIHsMIhy", "customAttributes": {"8AcdEPex1eqqEVWQ": {}, "GEFlzaf7ys0OCc5e": {}, "81RFsmlDA35RLU1I": {}}, "fileExtension": "z0NiJOrtLFMBFzzR", "name": "U5JFzgvBopm19krJ", "preview": "ALDjvlpZs0CdIFuw", "previewMetadata": {"previewContentType": "DeVJdYQtIjYnEMyn", "previewFileExtension": "wSwmix2E3idBvHEC"}, "subType": "6O3aJfEHE2ks2iEm", "tags": ["8qQICHY3hnmJYxVk", "ZiPI0jlGVGFP9UWM", "GegEyfcVvNYHAsvG"], "type": "Q7Y7VrJDPsbZbcRm"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'E1xyRkq5aWXypFfi' \
    --namespace $AB_NAMESPACE \
    --shareCode 'cuXHRZezxkWO0nK1' \
    --userId 'L9gsgNTGN2wtPko8' \
    --body '{"contentType": "XQeSk4glgRElvixb", "customAttributes": {"DS31WtAv8uM1VfSS": {}, "1DFcjrTkrqC6QBGS": {}, "SHnzKcBG6pvQGEci": {}}, "fileExtension": "HAzVQAbRNoSfhyLB", "name": "NH33CZgL9ZVDe5su", "payload": "zsqhp0LdUDNMujLL", "preview": "8niXqaJdhuYsDgBt", "previewMetadata": {"previewContentType": "M10kmaTXUGQMTsho", "previewFileExtension": "mn1qvJ8m5xMKVdEH"}, "subType": "0ZXMP1sWDGELK9Fx", "tags": ["948Ct5CjZwnFUbYV", "4hRFn4Vlsqq9ewX2", "I3ljwYgFAGl4wa0c"], "type": "edWFpfpLj2ccq0OK", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId '4gK7TuJFdVnBCpcZ' \
    --contentId 'phD1L0dVpuGpiGFH' \
    --namespace $AB_NAMESPACE \
    --userId 'Qv6qFbb3B2vTimHi' \
    --body '{"contentType": "0QxYx1vD5NwOEK8E", "customAttributes": {"m7kr7IIZu7XGMecB": {}, "XfzphFMJwAlp2tHX": {}, "IX0yfeJLQp29rNSq": {}}, "fileExtension": "lHHErlwFfkDmrt4j", "name": "Sswd0tMveBc6B7Uh", "payload": "PzsPHUhVZe1RNmLC", "preview": "NUcFTziKEV0Odano", "previewMetadata": {"previewContentType": "qvtlIIiMsy3BHwcj", "previewFileExtension": "bpW3Gv7wvyGUyqBb"}, "subType": "jhDjNmgHSLVMYwop", "tags": ["XNjwQrdSNuAcICTW", "cvgZQT8ycm3i5tRx", "yzFO5DDrmqPJcp8j"], "type": "3SzoI8ykgt7rLCeR", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId '5FcI71DuvcWRZ9ht' \
    --namespace $AB_NAMESPACE \
    --shareCode 'RETrR0oskbBu3eik' \
    --userId 'JzznwrGhOiBPy1GK' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'vy8oHI1Ai9iZLP5y' \
    --contentId 'WPGssg6akqNlB9Dt' \
    --namespace $AB_NAMESPACE \
    --userId '91Cm1Oduu2di6kTs' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'n8JJllKLWuGkEKWC' \
    --contentId '4qOKgskqGUdWOTZG' \
    --namespace $AB_NAMESPACE \
    --userId 'K6ufTQJSRbC1Tzit' \
    --body '{"shareCode": "CR7ZJWDFYigqTdwx"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'HJHqTrCNV20ZKEXf' \
    --limit '65' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'qLsRIEb2dJA5uRRn' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'hFhskFJdAZr2p6ZV' \
    --namespace $AB_NAMESPACE \
    --userId 'nY7KcGekpLzJKkH4' \
    --body '{"screenshots": [{"description": "1i028l6DRNeAGpnB", "screenshotId": "3XuI5KArb0nKHZQ0"}, {"description": "p94BSl5R5UX7wwrr", "screenshotId": "0wuJ0alW04btRuoM"}, {"description": "IrdUatmpJ1yCPlRr", "screenshotId": "afYd7XFe1v3Qb4dc"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'aWsA88CP8K1zbxMF' \
    --namespace $AB_NAMESPACE \
    --userId 'T7vZvWAStnX4YOb7' \
    --body '{"screenshots": [{"contentType": "7tt6M8tvHYcsYr25", "description": "rU0vfYm6ghU37yjO", "fileExtension": "bmp"}, {"contentType": "0XvrIw6rKKDDKK2v", "description": "T8WPrWtNfMA3YyHo", "fileExtension": "jpg"}, {"contentType": "dspc7f34jMcSYtl0", "description": "l2E2Y1LLYR55zrvA", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'k1oDF80SHluPNraU' \
    --namespace $AB_NAMESPACE \
    --screenshotId '1E9faHVc6EGBZ53G' \
    --userId 'DnEXHBKFJDu0ivHP' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId '0ySUdKzTa77aS9bS' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'L1AC8hy2GpLpsUAZ' \
    --limit '1' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'BKxoKkp0S4WUdJhb' \
    --limit '16' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'CTjUJUhNJhRPxGm3' \
    --limit '97' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'CioU48HruNP2OELi' \
    --body '{"contents": ["sdVN4WumVG4JfVPU", "EK7pcvOjrsAH8Zjg", "2ifzxnZJAjRz9QqZ"], "name": "KzZb9qltnlohIIAI"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Vn7CthPZVCSF1Iwz' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'HPIIpQKRujJD4y7i' \
    --namespace $AB_NAMESPACE \
    --userId '6WRP5hLQz336UEIO' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId '1ufBUzkVpeJyrd1X' \
    --namespace $AB_NAMESPACE \
    --userId 'LLQV7rVvliT6Hu02' \
    --body '{"contents": ["kVs88yObwPysSllL", "CY23f0qS9L1Yxrtj", "bgqSdmTLW53aUtq5"], "name": "pHVtQk0crHSj9nf1"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'ECwRlUmc2ov43NV4' \
    --namespace $AB_NAMESPACE \
    --userId 'NALygHE8x1YLOBac' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'qeru2rBgoG85KG3R' \
    --namespace $AB_NAMESPACE \
    --userId 'qxoKl2wgEuqhJnDU' \
    --limit '46' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'D9kmCmWjOWQkjGWc' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'xIXvtq6qnOoXt3tI' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --name '4Wq91LU5X8RMrATT' \
    --offset '6' \
    --sortBy '7lMYpfm0ccheZsy4' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'k50J2NjxMYzdLMHX' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "sE3y2R1Ewr3dgSFo", "customAttributes": {"yqH4BDlsMH6kteyJ": {}, "3YdtnOiCZDhlhB0c": {}, "aNhpRVSmRweYxl2X": {}}, "fileExtension": "9P10y8qABJ70YqC2", "name": "zbmnYgjQQBZyz1rk", "shareCode": "eilNZtjq8JW4AbMb", "subType": "P7uOwNwLPwmkeHnp", "tags": ["387nIhF7opwCxkwB", "wPhI3DOZNBLqEpQ9", "mhrofGekNWUsUdIN"], "type": "FRbsr48h8Z93jwyB"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'kphOyg58s6xRFqbR' \
    --contentId 'ZvzI0zhqQizevZr4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'oGmEx30XZLQAmETY' \
    --contentId '9NtpX8yEvjjf4NKW' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"iGBCwoeEZ5CRjgjC": {}, "rrFytTItv5fiHGof": {}, "iQA5iuhHhe9CyIDi": {}}, "name": "UK8FR3YFh48kc9dZ", "shareCode": "5Vz5Ww0bVId2G31r", "subType": "aQVbKmzqAgiI5Tfh", "tags": ["JWLHPrXLjiws2z25", "e9kShk45gGCYJsC1", "OeNU6iIhj1p5S9on"], "type": "ha6Wm9hny6wd32ir"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId '4ktQZ8pWgl0lAguN' \
    --contentId 'E3r0B3RwHIhCdqZi' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "1XK8K6QB0md0kgEG", "fileLocation": "1qv8sKywJbcBIM35"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'WeT6e3ChnL4EVY5V' \
    --contentId 'kxTqWLC91goX7Fxb' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "IZ0hLT9pkCGrc6df", "fileExtension": "UaF0SsrHo2nz5WRL"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'mL8YXuEGPuS4Wgbm' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "kVoQZfwqN1qvpIVW"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '1' \
    --name '7rcwvAWNamYsyGNM' \
    --offset '92' \
    --sortBy 'c3RYvr2AUQWHzYeF' \
    --subType 'vKf5hKoSMsIbASWJ' \
    --tags '["GGVvdZyBsyPNSaxR", "eX6UMvujEpAoONGy", "a9B5CzuNdrTCEA2S"]' \
    --type '6tYDW0oqAyjoHGIH' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["aHu4qOeKHj2UAACf", "Ly6injgFJeaBWb9O", "RymGyOtGeHd6QztJ"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["KAjkX0dmImEl27q0", "zBj7iUuzm7dfSBTB", "6sJO2hFv8rY2FQOv"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'Ph2Or2YIzt8RF6rD' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'PJHtEePIsDbTJVeq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'wN0kl8T7mpHVXEXY' \
    --namespace $AB_NAMESPACE \
    --versionId 'LNd7SdyxexxGvwsd' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'jk2A45MSAi3HWAoK' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "te8i37nAMGT6lFwb", "screenshotId": "nvWDuyCLqFqUZs4A"}, {"description": "HmQMn6m4o2amVm14", "screenshotId": "u6wnoPyXhJWlNCmE"}, {"description": "7OlKUeJpD3zNuxSH", "screenshotId": "75ksxwL78Nm3jlO1"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'Yu3b8VOP37uSci7m' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "LydQyp98VGYqlFbz", "description": "NeTLZxv0MqNYC8Zq", "fileExtension": "jpg"}, {"contentType": "zMmgqNgoEcCSPmpY", "description": "5o8R8uglPLlVHSNj", "fileExtension": "jpeg"}, {"contentType": "Lki34paoYxZWdLYw", "description": "hrQWOZw8JDOzaUfl", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'h4VC6FjjeTm7F6UM' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'iL3pkVntNwG9nvsf' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'kJYl6mI9SEgjlBoe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'cH6fhvrDTNAeEyrj' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '8' \
    --sortBy 'Wm2TS0bky0Vmz2KC' \
    --status 'cAEg68Rrxr5SRCQZ' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'pGq6JxgYLZZrh7BQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'HC9KqNVFBleqRxY7' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "hdsjaOlflHFDuV2I"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'KiTVtBXW8ntuXbIZ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'hA7RDnGGDGmDo7zg' \
    --userId '5DuZyXyjXLSsP1ow' \
    --body '{"customAttributes": {"P8ddqs0fh7JIdzb5": {}, "xLcjMeA6OT3jh48C": {}, "VooiKno0zKzNdp9z": {}}, "name": "WRNlJqdGQwVLBDto", "shareCode": "tVze3DJqyDrrM2E8", "subType": "v2rYmDmtkHQOjBVi", "tags": ["gOG44B0ujoRd07ux", "z6bIm0dTMtjWf8m7", "CRIMQzU8qNSy5uMg"], "type": "XRBzUoHxotKypsja"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'vTz3VYB3bkw28JgB' \
    --namespace $AB_NAMESPACE \
    --shareCode 'aeOIjfIWpBqvP0h8' \
    --userId 'evYQCIxO9FsFGi09' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'klPY3gdK9wccaKFa' \
    --contentId '1QQmpDzrOAEO04Lc' \
    --namespace $AB_NAMESPACE \
    --userId '8Qz3S4nP0T8ldp4a' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'aq3p47ygVjyhq9xK' \
    --contentId '52i8qv0LMrJ2jluW' \
    --namespace $AB_NAMESPACE \
    --userId 'zzG4V750GoOwBwU1' \
    --body '{"customAttributes": {"EfO6sS1HqJ4tsnWI": {}, "rHJEej6YQUOmkp7y": {}, "Gqg4WC2J4YSL0Zyl": {}}, "name": "ZiMPzASxsrx30oIu", "shareCode": "mEwKd9w1HB5gNRrT", "subType": "M8ClUDypkk3yIoIi", "tags": ["hOSqTLbqi13r12lh", "CQ5fjNJ3CFE6nGQc", "zlfeO828bl069Iq5"], "type": "tzFtm8GUlmhx5epR"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'fBoU6cGhOuDpOqUZ' \
    --contentId 'o3gWt1QUVFEIA8O3' \
    --namespace $AB_NAMESPACE \
    --userId 'tqhxoru7mcarPdAD' \
    --body '{"fileExtension": "MhQ2PD6eoa0HCzQm", "fileLocation": "po1Hq9f2U9Xxyg8u"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'IAIHdAiFqe3fsFg2' \
    --contentId 'qVe6RtL4VePBUn8e' \
    --namespace $AB_NAMESPACE \
    --userId 'uOHv1qfj6x2EjAws' \
    --body '{"contentType": "tfXcjJZVqKFPHm2S", "fileExtension": "zXXCALV6wMIFaxtl"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'gcF8XdXsCrdo5lr2' \
    --limit '20' \
    --offset '30' \
    --sortBy 't12WR8sImXFeS3C3' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId '3hS07OmtZY6A8LKk' \
    --namespace $AB_NAMESPACE \
    --userId 'tY2iuS0HseQ8LcGX' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'DHND6Htk9Igr8dLb' \
    --namespace $AB_NAMESPACE \
    --userId 'MuSgbTkaetlacmbD' \
    --limit '61' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'H4SvtdQ2BhZeAthP' \
    --limit '13' \
    --offset '17' \
    --sortBy 'B02WwbDGOxGYGU80' \
    --status 't72w8c3b7rBZHq1K' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'i6K6QTf8cZY9kTku' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --name 'av3ltzN3tOHO1wnM' \
    --offset '90' \
    --sortBy 'Qe8aNTsfDuwNeS6q' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '81' \
    --name 'g7fQv9rbCkCP0mrW' \
    --offset '60' \
    --sortBy 'jsvEfS2Ruy5LJ8mZ' \
    --subType 'ax1V9lwUE3AFkGiR' \
    --tags '["Qs1oPdKzI82TD0hW", "sUZOS3WYdPdOGQ8U", "4hq66a6tmXBjGM4I"]' \
    --type 'OBURexfm2F7s4eqh' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["iy52kKBZBazZ5I3E", "NLnwlO4OgjmPGt8E", "UKMkAkPd6DuwHT21"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["OybilU3tc1Jtmre1", "F67t9aAKZ0XSFgIx", "w5Ff9irap0NCoLDQ"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'zwwIqw3T8S3Nz325' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'm3WVQttSUtfWo4kd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'RSxbdzegtbJyOako' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'OtF3z1CngD8tesPB' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '1' \
    --sortBy 'LFoLo3zF948nrgkS' \
    --userId 'nJ5MlAdNUZQdiEcJ' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 't6WZ80828atqAsG5' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '38' \
    --sortBy 'r947RgULIonU1I9B' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'HPuXWW0Xtv0fxDjE' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'VMQfoZqdypvR7r7C' \
    --namespace $AB_NAMESPACE \
    --userId 'MdfmkT75jhLGDdrf' \
    --body '{"contentType": "HMgOEYyBcU0WZEYx", "customAttributes": {"H2tMv21mN4PpZ9He": {}, "UIhVDfDw7wn2nYYF": {}, "MYxXuPTSFFhNIJGA": {}}, "fileExtension": "VeNS1bAoMbjX5yy3", "name": "elhGKR2LPhLJ9div", "subType": "6AwZUtZW0kqjoABq", "tags": ["CpzXZSu6cOq3DFxV", "iAlKRxHOHAH9DjJ0", "Y7tcfyQpM8wsCfW1"], "type": "poSVv4mxlfiSIo8z"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'uYCe7Vet20GjK19k' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Ndq7JsSpBbDu3VTT' \
    --userId 'S8GqPigdhiT7stFc' \
    --body '{"customAttributes": {"3KNNDPDaav3LrkTF": {}, "GHdyXpvZMfnFUSFv": {}, "axt50FlLVyCrDWV0": {}}, "name": "UvmvX7pISMQgCFqW", "subType": "hbpbmb41gHJhHJkF", "tags": ["a4nABK8QwzWtb2IK", "8pFDfjSnDELw2hnS", "6WK1Syebj8qBhGYT"], "type": "rOuyaWT2IvLrkd7y"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'hq0YvRqfBLjnwGpR' \
    --namespace $AB_NAMESPACE \
    --shareCode '7xw4JAOxCOdF9WWD' \
    --userId 'AgZAbvXGg5XzDKvk' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId '0zoAUD9JsUfUpTu7' \
    --contentId 'prrnF7VzWSOmC7dN' \
    --namespace $AB_NAMESPACE \
    --userId 'Zj71tzaSBQiNb7aJ' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'mZa4hynraK7Wmfkg' \
    --contentId 'S0RtyKXY1t730RRI' \
    --namespace $AB_NAMESPACE \
    --userId 'rL1tIUzozt5oQa8G' \
    --body '{"customAttributes": {"5uon1gTQxBGftXac": {}, "R9z069tDuzbwdNfb": {}, "9pg7xrNEQoibNkqy": {}}, "name": "FyucXGVBGGfyGYPy", "subType": "h8ALncD2GFga6UAN", "tags": ["gmyvBX402nFcOtdu", "54nj7MDEvR44LX0u", "X4v27MAdhPagoGP6"], "type": "2a1h9MiqfswYOHco"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'X8MGitiiTZ0pqoU0' \
    --contentId 'MGacXyBmPLGUBxF2' \
    --namespace $AB_NAMESPACE \
    --userId 'ZECYUdPQXoSFGmWl' \
    --body '{"fileExtension": "TrRlESePHPssfZoq", "fileLocation": "yueynYIMlaz2wCoB"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'VD4m1lT7rDmOeZTL' \
    --contentId 'VjJoQ7y0mp8sJrcE' \
    --namespace $AB_NAMESPACE \
    --userId 'g71KitM5JUFUhu0Y' \
    --body '{"shareCode": "CxWKe8whoZBvyK1e"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'vz82fFNBZ5Js4PmK' \
    --contentId 'ilkpVOmZv1YJDtcl' \
    --namespace $AB_NAMESPACE \
    --userId 'Ip3p938aMuKpn5oh' \
    --body '{"contentType": "FWLsuCnQ316VHcF1", "fileExtension": "ef9bxac5yIWjWg0Z"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Sg6RkWiur3VFfI7P' \
    --limit '85' \
    --offset '46' \
    --sortBy 'KHEKbAIbH7qE8KVV' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'E8skcED7RmzGtHiB' \
    --namespace $AB_NAMESPACE \
    --userId 'sQEcx7As5FWVdg3c' \
    --body '{"screenshots": [{"description": "p2zwCnJ10089ZfaS", "screenshotId": "RA3z0zRyu8H7a7rs"}, {"description": "HvzeLuEbqxyRWha8", "screenshotId": "intA27wyeRXWDyC1"}, {"description": "IQvvNH8pbHv9w4Yu", "screenshotId": "XuatNV8LK2abiATA"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'E1G1IOr0tSIKwsQD' \
    --namespace $AB_NAMESPACE \
    --userId 'j7QGSF2nD2dG4YmK' \
    --body '{"screenshots": [{"contentType": "W2UYio5vuBl0AxNP", "description": "igkWIGVxLvv8S53E", "fileExtension": "jpeg"}, {"contentType": "STj3Joh2Vuw6E3Ai", "description": "RKolPQsKslEZrlTv", "fileExtension": "jfif"}, {"contentType": "19gpXLwxoRWWFocz", "description": "oV6FzQb3IzIfsdJQ", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId '7wmu8xLRSaG4bvNC' \
    --namespace $AB_NAMESPACE \
    --screenshotId '8Y9sfGS7FBE1MpUe' \
    --userId 'ZjVS5d8gcvZPv967' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'R4N6dGeEGQMkokb4' \
    --namespace $AB_NAMESPACE \
    --userId '1DfiaEWrG5qkMWzt' \
    --limit '42' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'DwGe9OhVu887pTAa' \
    --limit '60' \
    --offset '57' \
    --sortBy 'ZV8cu0U7QzJo6z7f' \
    --status 'autJUVkILiKTbxJU' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'kLhU2xrI6BP6TcJI' \
    --namespace $AB_NAMESPACE \
    --userId 'kzQ408zkzwbqHsHI' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'ME91fRZh3O6AULIq' \
    --namespace $AB_NAMESPACE \
    --userId 'sgQYZQGpu3kWM3va' \
    --body '{"fileExtension": "oedahrD6fM5iIlon", "fileLocation": "2S2NDGa3kM1ZIDA3"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'YFByTzAnU8R1Nek4' \
    --namespace $AB_NAMESPACE \
    --userId '1eSNODewucxI79cX' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE