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
echo "1..68"

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

#- 2 GetNamespaces
samples/cli/sample-apps Basic getNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "XyhGO1oZNfJQnipY", "namespace": "lc8zRNLVc5Ty0dWh"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateNamespace' test.out

#- 4 GetNamespace
samples/cli/sample-apps Basic getNamespace \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 4 'GetNamespace' test.out

#- 5 DeleteNamespace
samples/cli/sample-apps Basic deleteNamespace \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'DeleteNamespace' test.out

#- 6 GetActions
samples/cli/sample-apps Basic getActions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetActions' test.out

#- 7 BanUsers
samples/cli/sample-apps Basic banUsers \
    --namespace $AB_NAMESPACE \
    --body '{"actionId": 69, "comment": "zgJvlS4Gjlr1Izwk", "userIds": ["uzkcA9D9df2c0rnY", "CbRaBZYoFM2V2ZxP", "e2uKDfdLgjkQgoNl"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["Lzs46baAHGFAPhv2", "zwyrS8F8WPWfpkvd", "rJiEbNd3sW8YCHgc"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "UoNK0s5k8LEJAIaf", "description": "yjdFKA13FT8CiGYX", "gameSessionId": "GIOnxOGu9Go2VXXB", "subcategory": "w9xh3vYyG6Kw8i0R", "userId": "fl52q0VGg4lE6Qe1"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'tPY1IdZR6vJFFYmq' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "eujq67US7IOSuSac", "userIds": ["u22zwo9LnE2pEzl8", "fryQQbaKeYrzt205", "ixcOQGUeXaydno4Y"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "Yr9lz6GoKm3r0fNT"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "QibA8kykKbh9ZrMZ", "value": "7WoJrDx0Dcw3yAUq"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey '9KJhF493Zfid6W9E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey '17kU35gASepPSxJd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'jcYLugH5D0c0Srp3' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "TkVTvdeFEwEhrA9g"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateConfig1' test.out

#- 17 GetConfig
samples/cli/sample-apps Basic getConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetConfig' test.out

#- 18 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'DeleteConfig' test.out

#- 19 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "V1hueokIFPDxX76c"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'qv1s8RzpmZ8EY83J' \
    --namespace $AB_NAMESPACE \
    --fileType 'fLFezrIJQaeZr6rJ' \
    > test.out 2>&1
eval_tap $? 20 'GeneratedUploadUrl' test.out

#- 21 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 21 'GetGameNamespaces' test.out

#- 22 GetCountries
eval_tap 0 22 'GetCountries # SKIP deprecated' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'HI1hdEDD1Z9JL7QJ' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "yG9lU5TssMMz454b", "name": "NqV8tmSZwbrAQosj"}, {"code": "3LpwfQJz96RcBd2D", "name": "Xb6Rpp5hYTVHp50u"}, {"code": "xjYXN73XmCI87Cwb", "name": "zNkd1vR920uQSZii"}], "countryGroupCode": "kNLmobEUyN4kxn9g", "countryGroupName": "tGaaSodn5djxJ1vu"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode '7mG8XAvp1wNi5gcR' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "HWb8uS9VrmAfEcow", "name": "ULWpQu1nniEMMMfu"}, {"code": "Vquvfz0H5UYt1lrl", "name": "PRBV2NO7ySFGERYY"}, {"code": "nLLE8GwZcujtx92s", "name": "OX6qAfi3Tu2PRMCd"}], "countryGroupName": "vsgdY0rqGgqHMcx2"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'uT4rdDEO2OCUCf5O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'DeleteCountryGroup' test.out

#- 27 GetLanguages
samples/cli/sample-apps Basic getLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetLanguages' test.out

#- 28 GetTimeZones
samples/cli/sample-apps Basic getTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetTimeZones' test.out

#- 29 GetUserProfileInfoByPublicId
samples/cli/sample-apps Basic getUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'NDCd7p6581uiTBam' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["64PcDZedYR5MQgiP", "CwzYnVU2tXnJQXDK", "ukRFmsViLIKYuF9h"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'aSgFSX0juoFYwTmr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPublisherConfig' test.out

#- 33 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 33 'ChangeNamespaceStatus' test.out

#- 34 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'Px3XtHpj4C9phdHq' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'f0fJAQH3TJr5Yz5z' \
    --category 'n1cOnQxVmUzujurQ' \
    --fileType 'K29Ib0xRrLejIZ8A' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'VQtG5B73opaQT07w' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '7R5g6bC4sA5NHySq' \
    --body '{"avatarLargeUrl": "prjCruMzlZiIkWiM", "avatarSmallUrl": "eUzIqxeUDVFIuCPp", "avatarUrl": "33lXBoutcPwcgGTo", "customAttributes": {"WyGqNZnrIc9Jv8nd": {}, "jHxC4oE4dDj4F5LE": {}, "N13EkFA6KXBVciQo": {}}, "dateOfBirth": "1993-08-20", "firstName": "NfoLSF9raWbfxq3g", "language": "XDp_137", "lastName": "ed7IlaQR1R5Zf5Qz", "privateCustomAttributes": {"5wY647xFO8XuPnGK": {}, "q5zlK8MUTbMII64y": {}, "KDyN6QZQt35DQsqP": {}}, "status": "ACTIVE", "timeZone": "CNd9gYSta39XjTeo", "zipCode": "CThVZKitifLrnWKk"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'x8BEVY1UxNTpXQZ1' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'zgtjBqJF9zmnw7Ox' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '1s8vyMErF5r5HY6c' \
    --body '{"T0pLmLuLNJdKK0kS": {}, "nfyCitNHjkCGIBXy": {}, "0KL3AeGueNiYsZ3Z": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ICIB66bGHG1BAV6q' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'QcfgD27MaOPtGUwe' \
    --body '{"P7vSpoOXYmYCXLrm": {}, "XtC9d3ZuVim9ywtf": {}, "uRywrb2x1FVP2rKS": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'eRvyzrx7064z7KnU' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateUserProfileStatus' test.out

#- 44 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 44 'PublicGetTime' test.out

#- 45 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetNamespaces' test.out

#- 46 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'rz43IpRYSATJMSKT' \
    --namespace $AB_NAMESPACE \
    --fileType 'rWJ8gw3h4rbFkO7k' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratedUploadUrl' test.out

#- 47 PublicGetCountries
eval_tap 0 47 'PublicGetCountries # SKIP deprecated' test.out

#- 48 PublicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'PublicGetLanguages' test.out

#- 49 PublicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'PublicGetTimeZones' test.out

#- 50 PublicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --userIds 'YRchxjvtbT2tekBW' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId '0zGuSfUI9Wda4QSg' \
    > test.out 2>&1
eval_tap $? 51 'PublicGetUserProfileInfoByPublicId' test.out

#- 52 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'PublicGetNamespacePublisher' test.out

#- 53 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetMyProfileInfo' test.out

#- 54 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "OZLaAkw0KzWHPAIK", "avatarSmallUrl": "V8esuqFpWsBi5xaK", "avatarUrl": "nhreHAeuED9JhG4e", "customAttributes": {"TRExbGP9tuTmt1b6": {}, "WTe92O7yJ3bXBgQS": {}, "wuwzfgGTpfdX52SC": {}}, "dateOfBirth": "1977-09-29", "firstName": "nyrxya1be1EjY6Br", "language": "mVM_095", "lastName": "GgTDtvfep9avnLvV", "privateCustomAttributes": {"64hKRbWbZl2FJwaa": {}, "HquQjGzaZ4bH9Ylo": {}, "ZItv5qTxZz0O7y1e": {}}, "timeZone": "T6knH5dtle6tFsdx", "zipCode": "vIr8OsKNkxOTHDc9"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "TRv9Ygeee1Dy6dPj", "avatarSmallUrl": "gCkHSPneVpMeQlLK", "avatarUrl": "r1bsUDh6esc1R4FL", "customAttributes": {"R8DVFuU5SIwlym1T": {}, "8dkwH3n0rpBe12t0": {}, "JxumwQY2jurSCmZK": {}}, "dateOfBirth": "1979-08-23", "firstName": "exMuZIwd2l6hluZs", "language": "CW-DjVU-296", "lastName": "eHULeL6Ma8FkbY58", "privateCustomAttributes": {"zuJnZUWcU4haIhTI": {}, "H9wsTMrdWBonwFyO": {}, "tEmz151QHhaE70Mk": {}}, "timeZone": "Slwpiv5yPbhPsYhA"}' \
    > test.out 2>&1
eval_tap $? 55 'CreateMyProfile' test.out

#- 56 GetMyPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getMyPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetMyPrivateCustomAttributesInfo' test.out

#- 57 UpdateMyPrivateCustomAttributesPartially
samples/cli/sample-apps Basic updateMyPrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --body '{"FgmUAKQj81ZqXGhn": {}, "oDNANxYkL4gBEIS4": {}, "ExZfC87iUVxf8bo2": {}}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 58 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetMyZipCode' test.out

#- 59 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --namespace $AB_NAMESPACE \
    --userZipCodeUpdate '{"zipCode": "qUzasmUXwId2InYr"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'W6YyeVXhOCmp4M7G' \
    --body '{"category": "7ean5Hj9qCc5qIXo", "description": "vg5ZQvstwCPtBYT3", "gameSessionId": "tA19qAOdzvQ7uTGo", "subcategory": "TkHw7GsuPwSe653I", "userId": "GL7wPxHxf4219kIC"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'iAWhR2ER96HqXFzI' \
    --category 'O0IqIiXx1E2D1HMG' \
    --fileType 'k583Eb7qNTabCS4R' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId '6twZqtdwka7CRatD' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'Y52HqC8JxZc88ZFg' \
    --body '{"avatarLargeUrl": "KG0JJdgeXjh1FPFn", "avatarSmallUrl": "N3j5NYB6RdP2QmKw", "avatarUrl": "GrPBPeL9lCZNV6Fi", "customAttributes": {"im1JEG2cIy5l2Q80": {}, "XgXIgC5tq48dnuI4": {}, "eSv9tYl2pFcl9Xd7": {}}, "dateOfBirth": "1979-12-01", "firstName": "FCYLQoViwDn7qwKE", "language": "jjHK_FlyR_450", "lastName": "XhjAKEj0JQqL8jcy", "privateCustomAttributes": {"vGpsMEqdmzlBHmVO": {}, "dJyeFLMccvV0Jy2u": {}, "vLSKeXT34pRFNvXZ": {}}, "timeZone": "NRrAPdOjU7qq5BkV", "zipCode": "QqbWLO7m2c8SD9jG"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'SmCqWpdpifEKL18b' \
    --body '{"avatarLargeUrl": "mvX6oqYzKGhewMPe", "avatarSmallUrl": "p9RMn53iPyBE9d1B", "avatarUrl": "0YObrxdCSDhJ4Unt", "customAttributes": {"JSH7BxPr2z7swUmK": {}, "jxMmZptUwzOBln33": {}, "nh98NoTOX1RyxYZN": {}}, "dateOfBirth": "1971-07-28", "firstName": "y4k92saycYEsqVyQ", "language": "bP_zO", "lastName": "B5ZEerYvA1cvLmp2", "timeZone": "lpd4vD1cBtGp64LW"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'TT3Vlg8MSMsoOAIp' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'emu493BLfsXdWz3V' \
    --body '{"paY987jr7Ci2vwQr": {}, "y3TXKiXQkMfL5iI9": {}, "QzQqNBA0P5aCGxbQ": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'LT7OprLfskVmvZ2U' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'gTp5aOskSpUkQYlV' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE