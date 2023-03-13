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
echo "1..67"

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
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "twYCA9kP", "namespace": "I6LZrkq6"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateNamespace' test.out

#- 4 GetNamespace
samples/cli/sample-apps Basic getNamespace \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
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
    --body '{"actionId": 4, "comment": "UzVRiXbq", "userIds": ["lAw7r6W2", "ktQG0h5J", "Aav5kRa6"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["2WopBJHP", "tcDs8bBZ", "LCXLx8bb"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "gorQeFbQ", "description": "1g7qbPng", "gameSessionId": "UNB1vRod", "subcategory": "wpzS6DaD", "userId": "pv8N7ZQV"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'qGj6oDLj' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "WjkY1aXl", "userIds": ["FcDtgOjc", "hIua5tWE", "IC32ogW7"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "olvbTgrh"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "RTcPiSuL", "value": "0Sly6XM4"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'OI18mAQL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'nzjMf8GZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey '2WBZqxYG' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "3aREAu2D"}' \
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
    --body '{"apiKey": "6QVKNCWP"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder '75TB0i7p' \
    --namespace $AB_NAMESPACE \
    --fileType 'KxR8dl0z' \
    > test.out 2>&1
eval_tap $? 20 'GeneratedUploadUrl' test.out

#- 21 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 21 'GetGameNamespaces' test.out

#- 22 GetCountries
samples/cli/sample-apps Basic getCountries \
    --namespace $AB_NAMESPACE \
    --lang 'W4EZG9m0' \
    > test.out 2>&1
eval_tap $? 22 'GetCountries' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'XcgGVbMq' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "SszE8GHa", "name": "vj7AorKs"}, {"code": "xwkosAVe", "name": "rXpc1C8X"}, {"code": "fwHuKeb9", "name": "l3rGN9A3"}], "countryGroupCode": "sNm84hdd", "countryGroupName": "SpHt0P7M"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'IIR7CkyF' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "6C7duuyZ", "name": "0GhDogqr"}, {"code": "hBRd8lDR", "name": "6qVNPRZY"}, {"code": "dFLIAjGG", "name": "JddVCvu9"}], "countryGroupName": "vx5KQ7KY"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'nIuMBvaO' \
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
    --publicId '35llzQRa' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["T5kPxUfo", "fvnnSuB0", "y5WUlrMd"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 32 'ChangeNamespaceStatus' test.out

#- 33 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'sNveabnt' \
    > test.out 2>&1
eval_tap $? 33 'AnonymizeUserProfile' test.out

#- 34 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'BSxTeIv5' \
    --category '3HGCiljv' \
    --fileType 'jKoyD6SC' \
    > test.out 2>&1
eval_tap $? 34 'GeneratedUserUploadContentUrl' test.out

#- 35 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'wGrncqmL' \
    > test.out 2>&1
eval_tap $? 35 'GetUserProfileInfo' test.out

#- 36 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'tjQHAf8T' \
    --body '{"avatarLargeUrl": "goNm03VL", "avatarSmallUrl": "isV6zwPu", "avatarUrl": "o3td6TC6", "customAttributes": {"I3lMjGSW": {}, "N2laRlxf": {}, "cjHfYakU": {}}, "dateOfBirth": "1985-07-02", "firstName": "TqGkE7wc", "language": "FAen-Ptkz-962", "lastName": "yYoNRKd3", "status": "INACTIVE", "timeZone": "L5TAQ6ii", "zipCode": "PlSC2uE4"}' \
    > test.out 2>&1
eval_tap $? 36 'UpdateUserProfile' test.out

#- 37 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'o5Vwdo3f' \
    > test.out 2>&1
eval_tap $? 37 'DeleteUserProfile' test.out

#- 38 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ePqIJA8I' \
    > test.out 2>&1
eval_tap $? 38 'GetCustomAttributesInfo' test.out

#- 39 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'Htrkmu0h' \
    --body '{"pDDWVAla": {}, "2l5BYNtI": {}, "uS5S5XUd": {}}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateCustomAttributesPartially' test.out

#- 40 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'jsoqwGyz' \
    > test.out 2>&1
eval_tap $? 40 'GetPrivateCustomAttributesInfo' test.out

#- 41 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'zWi9gwQY' \
    --body '{"v7t1o7TT": {}, "r1DmrhZv": {}, "15T7quIO": {}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePrivateCustomAttributesPartially' test.out

#- 42 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'vBMcaYmv' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateUserProfileStatus' test.out

#- 43 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 43 'PublicGetTime' test.out

#- 44 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetNamespaces' test.out

#- 45 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'zYoMcHyC' \
    --namespace $AB_NAMESPACE \
    --fileType 'UEXlAvxJ' \
    > test.out 2>&1
eval_tap $? 45 'PublicGeneratedUploadUrl' test.out

#- 46 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang 'MdalwSyl' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetCountries' test.out

#- 47 PublicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'PublicGetLanguages' test.out

#- 48 PublicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'PublicGetTimeZones' test.out

#- 49 PublicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --userIds 'iWMNW5Ny' \
    > test.out 2>&1
eval_tap $? 49 'PublicGetUserProfilePublicInfoByIds' test.out

#- 50 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'Lu0M3VHh' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfileInfoByPublicId' test.out

#- 51 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'PublicGetNamespacePublisher' test.out

#- 52 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetMyProfileInfo' test.out

#- 53 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "2EI8JlDb", "avatarSmallUrl": "PWbQ6Q9l", "avatarUrl": "NmqRBaAk", "customAttributes": {"LnvxkT1X": {}, "68cmDc3f": {}, "xU8MyKrQ": {}}, "dateOfBirth": "1979-06-28", "firstName": "M4hkkK6K", "language": "Uyro-WkjA_gN", "lastName": "51TkhjYn", "privateCustomAttributes": {"aq6foWvX": {}, "a3bMrXsD": {}, "r6kILsSS": {}}, "timeZone": "yDdmykmo", "zipCode": "PYgc2L4j"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateMyProfile' test.out

#- 54 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "k4Lo0LSP", "avatarSmallUrl": "0pf4IxjU", "avatarUrl": "kl535X3a", "customAttributes": {"teEKDpAD": {}, "z1x3poD3": {}, "Qgb3boLQ": {}}, "dateOfBirth": "1993-05-25", "firstName": "1MzH7Qm8", "language": "cX", "lastName": "te9NDUPV", "privateCustomAttributes": {"Jf6c2Z0Q": {}, "ZxfgPubT": {}, "DIHrvqAT": {}}, "timeZone": "huwjRHpK"}' \
    > test.out 2>&1
eval_tap $? 54 'CreateMyProfile' test.out

#- 55 GetMyPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getMyPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetMyPrivateCustomAttributesInfo' test.out

#- 56 UpdateMyPrivateCustomAttributesPartially
samples/cli/sample-apps Basic updateMyPrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --body '{"KTlmVr9X": {}, "uoJbRFQS": {}, "KVPHbn4X": {}}' \
    > test.out 2>&1
eval_tap $? 56 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 57 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetMyZipCode' test.out

#- 58 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --namespace $AB_NAMESPACE \
    --userZipCodeUpdate '{"zipCode": "xtu7LQRE"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateMyZipCode' test.out

#- 59 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'NjEEztx1' \
    --body '{"category": "WsYSiZqa", "description": "n0nSBJro", "gameSessionId": "av91GXlv", "subcategory": "PG6bFYRe", "userId": "VHQipcCx"}' \
    > test.out 2>&1
eval_tap $? 59 'PublicReportUser' test.out

#- 60 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId '9Zw5D2L7' \
    --category 'vIYhGGSy' \
    --fileType 'EW4ZJJ42' \
    > test.out 2>&1
eval_tap $? 60 'PublicGeneratedUserUploadContentUrl' test.out

#- 61 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'd3PBddN8' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfileInfo' test.out

#- 62 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'S48l9lyN' \
    --body '{"avatarLargeUrl": "ApflxqMr", "avatarSmallUrl": "j3oZk03Q", "avatarUrl": "XcKMDYDD", "customAttributes": {"xHSZjtqX": {}, "yJ58f7Gc": {}, "26SaiGVk": {}}, "dateOfBirth": "1983-07-09", "firstName": "dwYWQG26", "language": "vwU_uTcG", "lastName": "pFDcSDG8", "timeZone": "aMVGLiBN", "zipCode": "rDjqoxcw"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfile' test.out

#- 63 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'gGLXpUL4' \
    --body '{"avatarLargeUrl": "pp2ncYAH", "avatarSmallUrl": "dNzDmeIP", "avatarUrl": "6rOvDz9K", "customAttributes": {"Osb392k6": {}, "YmJFfRBy": {}, "jlBiuFM3": {}}, "dateOfBirth": "1987-10-05", "firstName": "IoVk8T3G", "language": "ba_XdZN-147", "lastName": "kYs4Yw20", "timeZone": "DOqOBSC2"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicCreateUserProfile' test.out

#- 64 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'DKHRuPMM' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetCustomAttributesInfo' test.out

#- 65 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'WH8Yb33T' \
    --body '{"5UBJCjfc": {}, "nLRfxeCS": {}, "z9WEi8Kl": {}}' \
    > test.out 2>&1
eval_tap $? 65 'PublicUpdateCustomAttributesPartially' test.out

#- 66 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'loeH0JT1' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetUserProfilePublicInfo' test.out

#- 67 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'yduat2vQ' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 67 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE