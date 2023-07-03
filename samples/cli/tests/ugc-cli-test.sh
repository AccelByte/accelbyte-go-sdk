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
    --limit '67' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "SpamOErlf58l4H5P", "name": "X3xUAInXNJyFoVsz"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'Qqx6VzvyhcPfGnsM' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "AkrvHisDoAk8ixuc"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'cHqbZyJTqVgxbwan' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'AvRbB5cASUJArRlg' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "RVLnbwGIlhRAUAC3", "customAttributes": {"7uNBUqz4rKNalPzr": {}, "L1JbjCyGyhQxOXX3": {}, "0aH5qJ34yiUk5fxO": {}}, "fileExtension": "6XklizZCGi1SyuWY", "name": "8SbzzZTvc2wOxyM2", "preview": "GIHk1sBjrzexofyp", "previewMetadata": {"previewContentType": "GYHTwZPJLf9f8fbB", "previewFileExtension": "3GMkMxMbVQjWCM20"}, "shareCode": "r8dQvEZCTsRAhMHy", "subType": "DxvddLxLVnRQKITA", "tags": ["mcmFCjBhYqgJ4bdM", "dGT2rghV0DmmDWnL", "jmgMk4se2Jgcwy6x"], "type": "JfISujKqA54WZaII"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'ildelN0fIUp8GVuh' \
    --contentId 'cPLN72xL0WUrKqml' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "320pRNV61aTPSEVi", "customAttributes": {"22sZxZlpohEh3qez": {}, "8k48RMfzG2QcGZ9G": {}, "SCzIQ4biPnPuicpS": {}}, "fileExtension": "kQeUQiysxQjRO9gH", "name": "EiwoKLR7q3FwB9zW", "payload": "v6fDk8Vc1e0m0dKi", "preview": "n0MsaGJZqBeAlpFH", "previewMetadata": {"previewContentType": "cJuo3RdZMSwBdZsU", "previewFileExtension": "tlfy8raimDjuYiMZ"}, "shareCode": "0n553kEAtlDa90Jd", "subType": "cIpmPWG2yVVVt1QX", "tags": ["QEKTJ2AQZ9lN0QE7", "FWneE2tmLyMil6Nj", "7PGz9BLlUqE9VUOk"], "type": "j3c2BYxtsoOaxTWe", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'w1L4tyO375nhCas7' \
    --namespace $AB_NAMESPACE \
    --creator 'qw09HvOq1o3hfksN' \
    --isofficial '1bnavjUl5r2iFHPk' \
    --limit '67' \
    --name 'fBrSksUC01HhpFcE' \
    --offset '29' \
    --orderby '2pJXFgU8gZaCWPLf' \
    --sortby 'OBZL8fl2Ho8jf0WN' \
    --subtype 'onSXLdMtFvTkt7Ny' \
    --tags '["Wsgc6PZ6AVD3qq7a", "QNaQn6KYrJEjGvJD", "9PfD0FpTbcowakFu"]' \
    --type 'jYG2USX0WUzlKaMM' \
    --userId 'gCXT4tZJgYSJRckW' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'vSOVds1kfTwbihwC' \
    --contentId 'Xp1kCJD9hbyKIzLm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["OLhi2niFRo0NEomV", "UcrkyCdESFflDzYS", "WRbgl6sfU1ySCgfx"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '4hx3d0NL6zxXVcDD' \
    --isofficial 'fayUMAVE0hgWHT0S' \
    --limit '45' \
    --name '4wMVYP2sd1BTGGaP' \
    --offset '80' \
    --orderby 'ojiRP8Eg9f5yYQ0o' \
    --sortby '2H7uT2xEYxyD8U4A' \
    --subtype 'XROcLlmisQtv8iYC' \
    --tags '["vbH0hdhhDiS35Q15", "FBWnhjSassGbPinK", "1AQst0TXyj49KbI0"]' \
    --type 'i245dTP6CzMWap1z' \
    --userId 'YXVBgHHa5txoJbjp' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'ya6VBTBVA5A8bC9Q' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'lT4CPPsG0Jevk42A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'qoeYO8YJe0qVK5MS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '6qmVO8CBWvMPYP6H' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "aK7jnD9LC32HvLJL", "screenshotId": "96Ktd1ld6W9e61nG"}, {"description": "0OkLPIMLjkVopB7W", "screenshotId": "7VAp7ByWnnrlul5E"}, {"description": "A9MKcNbFwrQQkbYz", "screenshotId": "6zwsMAWIEvdMBT8H"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'hipNUOF4KnCEoJpz' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "8n0ZB25H33Q9s3ny", "description": "BxnlPUijizOP46z2", "fileExtension": "jpeg"}, {"contentType": "tKZ58tdyFSMPQE6O", "description": "wknzHvFCXEl1RXNT", "fileExtension": "pjp"}, {"contentType": "8f2qzZe300UBx2u5", "description": "b24lMjBcCnNKKkPc", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'MfZPFPYYilaoDwZ6' \
    --namespace $AB_NAMESPACE \
    --screenshotId '5VlXp46wDR9RiaMf' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["cZS5Oaps4a15zeGj", "6ixc9mveoIV6yyar", "9ASASa71hEkvXlTV"], "name": "iIdQUNfeiHVsPA5b"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '5ixO5s2OQARMRi5I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '7TRvotzpny34z5Nz' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["mS4wrNTfiUuRQLfx", "HkvL5O8Jc4GeIdkI", "qDcyYO2PVEC9VrFL"], "name": "hoUaErLDBJZQ1pv5"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId '4QavfXBFsZOkbB7G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'eJjDf6tEJwHQKrv3' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "F7TiTX5rHzPdNZ1g"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'i8r0R3BijtqO3jHP' \
    --body '{"tag": "3XUBusZcZGabcNHm"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'FnMZMmWusq86c9QL' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["PhMsEJcpYvqfBA91", "QGaHif9Ub2JBParq", "y8aQivamXJAvpTG5"], "type": "vCGymrNDCJok9y3c"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'LKnufwXsEn0rs406' \
    --body '{"subtype": ["HNUuCk3e2X7siAZf", "yNiKwVoghmaUAwGI", "lM2W5jpiHuEn0Vvk"], "type": "QG3rZuFRwOO6c3Im"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'qNF6ngvQvvpcY3kB' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'UFZG3MgMM8zcqqaN' \
    --limit '84' \
    --name 'jvw3rpzbCDvlrimq' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'zvKSvtLBSTRxqpPl' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'iz2xhfobqeDt4FHb' \
    --namespace $AB_NAMESPACE \
    --userId 'cZk0kdTX4L9ADuTK' \
    --body '{"name": "z3zhdR2Hm9O66gNg"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'X45jLs1uxut4iP94' \
    --namespace $AB_NAMESPACE \
    --userId 'p9WrHuf7qHui1trf' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'R9VrYCF9rRzV5evp' \
    --contentId 'JK8VOkj5bDaKtXWy' \
    --namespace $AB_NAMESPACE \
    --userId '2vdJ7Ct1oILzCRAO' \
    --body '{"contentType": "WTuqx4ZQfjTi9kt4", "customAttributes": {"gPdzQWCzhCxkihGS": {}, "9au95OAYoJQ3OiMs": {}, "4hQKQNRzIICXDOyL": {}}, "fileExtension": "7hhHlJbAiHiy1CK7", "name": "4HS0tvevpkg2YEeF", "payload": "TdsKhUu03sprHhLI", "preview": "b6Zlmxhm6V6tOjF0", "previewMetadata": {"previewContentType": "bFUHw8d7a2hLKFb2", "previewFileExtension": "lATyoQS8nWhG3P2l"}, "shareCode": "KIiLFZqRpBRi50tp", "subType": "YqNHBDiUSEQhqoMJ", "tags": ["0Wlsjj3KMHpK98fe", "dAV1dCiXNcAaAW2S", "gGUr2bsUHL8dct6B"], "type": "C6Ajbtr5SvJDcYH4", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'oNJJkvMG2ZZMuZ6x' \
    --contentId 'cW8PzGxcEI7IIapK' \
    --namespace $AB_NAMESPACE \
    --userId 'zxkifgy51baoyijB' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'Cpkdj7PxycTPfKGV' \
    --limit '64' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'GY761q0kInNX6WuD' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'W5dNVICttI6KMmC9' \
    --namespace $AB_NAMESPACE \
    --userId 'u6Rby0tbrpCF8RJh' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'c98PKwLVso5XTyTx' \
    --limit '43' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'BsRkYu76zoaPkxXW' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId '2D4vqne3WYftxrjv' \
    --namespace $AB_NAMESPACE \
    --userId '6hozQheaLMX8hiws' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'XPLJD3iX6zy77ph8' \
    --namespace $AB_NAMESPACE \
    --userId '4o3sHXOYdTbDBmDl' \
    --body '{"contents": ["rQCWr6T6eJtPu6TN", "nxA7FUVEdkeRTj2n", "3fveqQCxbCg0T90r"], "name": "19smxHrshNE1pJdr"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'RyjiD8WJsb1KAVAx' \
    --namespace $AB_NAMESPACE \
    --userId 'xWRhb7olUSe9TZZx' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'b5Gkfz02WRs8I4Uq' \
    --namespace $AB_NAMESPACE \
    --userId 'WrokMYqtlQIrbDOe' \
    --limit '51' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'v6TmwIhj17fU1p6g' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'hAjJ1M7SzLSEm19d' \
    --namespace $AB_NAMESPACE \
    --creator 'u2E67B7uwpW1V0UD' \
    --isofficial 'vz6AeYgk5Jd4RjIm' \
    --limit '79' \
    --name 'c7BtTtVipa6SXckN' \
    --offset '75' \
    --orderby 'EgBIzk621ZosWRXl' \
    --sortby 'FkhNQG1sUgZHo1FD' \
    --subtype '2VjgJjsCyqobnZIT' \
    --tags '["rUj0l6mpGeKHh0vQ", "gh2oX4ECZZJszgiI", "8dMyJqAyXyZJMHUT"]' \
    --type '3A6j7TTLcVCZCI3L' \
    --userId 'kBDHxWlZVIMPk1Yt' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'HiWrrQBxE2ruDRAO' \
    --isofficial 'YDWx2qrFI4gQUupq' \
    --limit '49' \
    --name '2pgunkS9EtJGJrmu' \
    --offset '96' \
    --orderby 'zFWqSYAq3VENI9vc' \
    --sortby 'fzKiZnHaIHlrIYdZ' \
    --subtype 'XRALr5A6xBLxT2Zb' \
    --tags '["l8fp1FgqZO8qw5qq", "ZmMjDNEYMMyxlW5s", "bVowmRPDnFbqmytU"]' \
    --type '5DKE4iCpwHUuHbQp' \
    --userId 'Z2nUhYXZNEQsyR4s' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Ei3MrveXs1dSJ2HS", "gBS6e9a88rf8h8rt", "v66b2QPk9fK7R1yi"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '45' \
    --name 'GVe0uHcr44F5TmvD' \
    --offset '29' \
    --orderby 'CyQmvJXOOD3JsabK' \
    --sortby '9gStgKFu23Gp9xXO' \
    --subtype 'TIJgbFOiO9xAlP3X' \
    --tags '["mHhBgpdzmntPDqb9", "Jksr3fnTy0hMiCSp", "Qpc4ybeo2PpyYThm"]' \
    --type 'c9yD2Q53q96UnNZU' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'nduYXgJY0TPfqLhm' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '3QHAv4KmuZOyCTb7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'krp26QaFwYDMMbYc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId '6lvhlV8IjiyzhrIq' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'TesGwccME6CK1sC1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '93' \
    --orderby 'gCHiORV5GVaZBJhY' \
    --sortby 'rCtGSWlSgCloO2QT' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'QPAxnYteJFsDRK3V' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '4mURk38ketrgYPZN' \
    --limit '0' \
    --name 'LQh5LiZb8l4me0w4' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'rEqVjkIVbeR37K52' \
    --body '{"name": "458B249mHBHhGGPR"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'NyfR5AxCQyvNpDVR' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'YuDaSdbvsl8iYzpH' \
    --namespace $AB_NAMESPACE \
    --userId 'XRPy5lHNp2XG3WqH' \
    --body '{"name": "GLVfrCRgeJt06mG5"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'tCaQWt8gOL1Uv6gp' \
    --namespace $AB_NAMESPACE \
    --userId 'WDraKZNMgpGjPTqW' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'rzRsGz7E69Q5JZU5' \
    --namespace $AB_NAMESPACE \
    --userId 'Q3SvIxH1IIiDxqH2' \
    --body '{"contentType": "moWYiys5ec7TekaB", "customAttributes": {"sv9hMBx0TtnfGv78": {}, "wJFuht4atPOx8gU9": {}, "fSz7ZgPNcm4LQn0F": {}}, "fileExtension": "IJcHQytU9FX7JuV6", "name": "4x86i0hd7KeDVlWP", "preview": "QAMeU4ieCdNSNUzx", "previewMetadata": {"previewContentType": "GZLqoy5JZBXcix6Z", "previewFileExtension": "z3qpuyS8Jkfb5vrp"}, "subType": "quNn5ZRng2cVoR5U", "tags": ["mICAMi8aih7epB7D", "3cbDCkqf4Wzf82HH", "4xOGgmfBdnufvGVA"], "type": "vcAJrtwkbzH1kkNU"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'BKYctW3SvOWc9laN' \
    --contentId 'A1rBRbEDyYIeorEl' \
    --namespace $AB_NAMESPACE \
    --userId 'GXZplG9ccYwZoSgG' \
    --body '{"contentType": "ACGcA3ne0FMKw2wz", "customAttributes": {"RhzWfQACM4l2NNw8": {}, "bwUMQ96RKgULDSO7": {}, "Q0MVyLrLHCBLhtNA": {}}, "fileExtension": "raeFhy5zuoGyPRLX", "name": "lfut4J14jgztla1c", "payload": "1FqMODJ5Ot91VlhO", "preview": "RDappn6m3GM3qp9A", "previewMetadata": {"previewContentType": "jGZYraf2n98I7dEd", "previewFileExtension": "N78kG27J2g2l0pAA"}, "subType": "VCVjPUUbpVkdEatJ", "tags": ["uvmK1B0lxN4XvGXs", "RTkg8U6qVJg8um24", "y1LwtLXIukxOo7wY"], "type": "RNBKebClVoA7bFdv", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'gHK5wozWnx10xCSW' \
    --contentId 'JADRfoxzJx9b9ivh' \
    --namespace $AB_NAMESPACE \
    --userId 'GqEDNE2sqG34hwcI' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'HeTkolNkpfefMn15' \
    --limit '44' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'VOgmgYlKUgEnHugO' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'pwNmrFopHSsFfnZU' \
    --namespace $AB_NAMESPACE \
    --userId 'pyAfsPQ7lokIeR9u' \
    --body '{"screenshots": [{"description": "MH87mhdtSuzzilgz", "screenshotId": "APfLW52D1HpJMsFf"}, {"description": "aOiUghvFdrjF6saL", "screenshotId": "Es8BeE39D2Wzg4Vw"}, {"description": "4nAr0Ub6HltDu8nj", "screenshotId": "K0eQp2c0J2XfU5gv"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '5txIp41iri8RU2LK' \
    --namespace $AB_NAMESPACE \
    --userId 'pCsMO1YJ4qZ80V3k' \
    --body '{"screenshots": [{"contentType": "ozgRZJ72mpYHPRRO", "description": "AV9EoGVqpigp11AA", "fileExtension": "jpeg"}, {"contentType": "hOZzWzJfL66Yqm12", "description": "mxRxTKF3lhcYWYKD", "fileExtension": "jpg"}, {"contentType": "CwoLTlESJlCnywVr", "description": "KRIRecFhg29P4qqk", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'GzjvW69Pv2Tdf28s' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'kjx9OHO1eKXUJnJx' \
    --userId 'IrKD6esDICkRd4Cn' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId '1M6rJda2UNixbTYg' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId '9DSK4Y0wK9ty2CEd' \
    --limit '76' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId '2PEP6iSzYqrxbam1' \
    --limit '77' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'UoVvFgGfDx1VFzZ5' \
    --limit '65' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Wz7OJPTqUlrUmwpV' \
    --body '{"contents": ["1R67rsOKOoBe7bB5", "8C2jE9JNTKzFI0xq", "oLQz8UVbWa5yHSIG"], "name": "DX3NjPZ4PxppWdfC"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 's8J3UJQOLXD9oOZF' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'xcCr7rwXI73y0usx' \
    --namespace $AB_NAMESPACE \
    --userId 'VjCfyK4Ekn8I8OyA' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'uyaQCAH2p5lYku1z' \
    --namespace $AB_NAMESPACE \
    --userId 'vwgD2OvojgPdFqFZ' \
    --body '{"contents": ["nknKiPPFPbPyiNAx", "EDfqs0Oz7nkl5BWd", "IzRjqwB70Ml0cT6t"], "name": "lWTyF8xyskYXBaOJ"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'FNSJb5PkkViXsq1D' \
    --namespace $AB_NAMESPACE \
    --userId 'rgQLrip5lhWtZjp6' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'RKcvtc1erfo5yHqt' \
    --namespace $AB_NAMESPACE \
    --userId 'kQ0VagcTY8ZzQ9W7' \
    --limit '71' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '6loTc2xcux5jzqIE' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE