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
echo "1..62"

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
    --body '{"displayName": "IxmUgOPOERvWSWe6", "namespace": "Tp6yOM1F7Kt6oa4T"}' \
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

#- 6 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "uvtRgfRQXL5z90VB"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateNamespace' test.out

#- 7 GetChildNamespaces
samples/cli/sample-apps Basic getChildNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 7 'GetChildNamespaces' test.out

#- 8 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "00qmR3La0zo5ytJn", "value": "tY4sZLogdoHhMCes"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'aShtEISDRD4R3M7n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'SSIX4YrcmGLEuySA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey 'vMwMcDks4n4YOXFN' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "tB0Q4RolGJjUuNzm"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    --refreshOnCacheMiss 'true' \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'ELnV6KWQStPcQrVE' \
    --namespace $AB_NAMESPACE \
    --fileType 'hFHmyr4wpGh3UqiF' \
    > test.out 2>&1
eval_tap $? 13 'GeneratedUploadUrl' test.out

#- 14 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 14 'GetGameNamespaces' test.out

#- 15 GetCountries
eval_tap 0 15 'GetCountries # SKIP deprecated' test.out

#- 16 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode '6eE1MhflBDsbKL4n' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "qcer3diQIKanob6Z", "name": "72k1JekHPNrUxwWg"}, {"code": "A4iBZarTGvhFOgLS", "name": "lgvVRzIjpHOQyzOO"}, {"code": "bCzjUpSEXVYAno1G", "name": "xDHWs9dFuIoCTxyk"}], "countryGroupCode": "O5UonZmdsNaZ2bc2", "countryGroupName": "06pVBciDs0AIaYMd"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'rMMCGMpda5as7icO' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "pHHpNOZmtmuqxLvb", "name": "9wMN8Ms8evoJgiki"}, {"code": "X2CJWCW3YI97SMuc", "name": "wH5LWCxg8WH2zDS6"}, {"code": "IaP0Mjgloj5sNpwm", "name": "nLgjy6OWZkgm4yOW"}], "countryGroupName": "hxVkz48G8oBwsMkK"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'HCuX6FuAe9qc08as' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteCountryGroup' test.out

#- 20 GetLanguages
samples/cli/sample-apps Basic getLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetLanguages' test.out

#- 21 GetTimeZones
samples/cli/sample-apps Basic getTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetTimeZones' test.out

#- 22 GetUserProfileInfoByPublicId
samples/cli/sample-apps Basic getUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'lF5IHosvQGQCtjq3' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ifC3DdyIvYsXOfzi", "qVRu450sbjGl0NyX", "vbNQZxvlgAeNTbtp"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'ACUmRl1PAf4gXii9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'GetPublisherConfig' test.out

#- 26 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 26 'ChangeNamespaceStatus' test.out

#- 27 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'qf6a0Wkx8wadzPhn' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'RbsE0x5RdaBytn0h' \
    --category 'AnsLCu9rtewpu74a' \
    --fileType 'dbGTz1RFrcmXdEFP' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'a9sG9VF7LLd61naq' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'q5zkTrIUsxvntAf6' \
    --body '{"avatarLargeUrl": "fgYmXtC9gBGhUWhU", "avatarSmallUrl": "5tXPXaO2MyoemvMt", "avatarUrl": "e4AZEq3hILDL5spi", "customAttributes": {"eBTkVrajuE4BJDMX": {}, "ArAkzMFqVyUoaRsQ": {}, "AcEy4a7CxHp7eYf9": {}}, "dateOfBirth": "1993-07-05", "firstName": "8kMJh2JqTWHqtods", "language": "UrN_uoJn-PF", "lastName": "8Th5vGSFxEvkMTgP", "privateCustomAttributes": {"eJiCj6mhVTCzZ0Hr": {}, "DYdoVbDKtXlU0uQF": {}, "E3QqdKbIZUfWHR5P": {}}, "status": "ACTIVE", "timeZone": "NWTWf3JpF1ryoav3", "zipCode": "c6rEvmrDM4MomMSW"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'UL8KT3dlZUcHxMT6' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '5C9q0E8sCx84NOgr' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'JXWZek1XnBEOaAP1' \
    --body '{"GKr5U82pBwFv3fHW": {}, "0iaRzrEwduxVXgH9": {}, "zew8YT68zg7CbdTY": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ZCmQuCQ49tFY5iEl' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'EFZbbFNZxZ5Lu6r3' \
    --body '{"EoJIzT69LGlVyzrU": {}, "j8cFQGsyjFM7RSmM": {}, "ipb0tBcp9Uhaobup": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '2aqhqNJQz5TFXE76' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 36 'UpdateUserProfileStatus' test.out

#- 37 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 37 'PublicGetTime' test.out

#- 38 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetNamespaces' test.out

#- 39 GetNamespace1
samples/cli/sample-apps Basic getNamespace1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'GetNamespace1' test.out

#- 40 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'dlZ5z27AQNs92KS7' \
    --namespace $AB_NAMESPACE \
    --fileType 'jDn4sx7Ojy9JSp4a' \
    > test.out 2>&1
eval_tap $? 40 'PublicGeneratedUploadUrl' test.out

#- 41 PublicGetCountries
eval_tap 0 41 'PublicGetCountries # SKIP deprecated' test.out

#- 42 PublicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'PublicGetLanguages' test.out

#- 43 PublicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'PublicGetTimeZones' test.out

#- 44 PublicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --userIds 'GpVQR1PMaqZa8oW9' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["WzbUFQZcH2NcOF0I", "6m2pmpVO3MoJcgiz", "vcxZEDd7Iq5wmJ5r"]}' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkGetUserProfilePublicInfo' test.out

#- 46 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'hbPX45pkVVe0a7Yd' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserProfileInfoByPublicId' test.out

#- 47 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'PublicGetNamespacePublisher' test.out

#- 48 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'GetMyProfileInfo' test.out

#- 49 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "SSQgZ7H9UAaLHuuI", "avatarSmallUrl": "CCXMD9b0cp7pgwSM", "avatarUrl": "XNysNkYS6a2C2E6e", "customAttributes": {"beovVeM0bRAxEJBo": {}, "QNu1A2sqsSrhQqpv": {}, "2cZueSMiFW1W0GSU": {}}, "dateOfBirth": "1974-12-14", "firstName": "pXonzjoAvNrUj1PM", "language": "dT_iTLj", "lastName": "AbdnbBvslssmUkd1", "privateCustomAttributes": {"OI9Te1i5y7pBcexX": {}, "c3YyrsIyrPMbIZZb": {}, "1K4C8lbq3ZoylHIt": {}}, "timeZone": "TC47y5vicPAKKhXQ", "zipCode": "wiH72ZCMtf0jz4nX"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "FxJF8H0ZqHeezylo", "avatarSmallUrl": "r7v6mTcOOBW3jm42", "avatarUrl": "oXnVus3Eq4oIXs8z", "customAttributes": {"vA19v9JQyZfyOErd": {}, "V8CWwRRzVm4V7vQi": {}, "cRmBxwW0iaECbvIG": {}}, "dateOfBirth": "1993-01-02", "firstName": "uFJsXRHZw3hJImpm", "language": "vyh", "lastName": "M1YaUzjNtuvYJNrH", "privateCustomAttributes": {"zScgCGzyQeSwo4e7": {}, "w2uVrerS2HTIhKPc": {}, "EcHEC5tG9Og5eFUB": {}}, "timeZone": "VM8Bg8RobgXRTV2w"}' \
    > test.out 2>&1
eval_tap $? 50 'CreateMyProfile' test.out

#- 51 GetMyPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getMyPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetMyPrivateCustomAttributesInfo' test.out

#- 52 UpdateMyPrivateCustomAttributesPartially
samples/cli/sample-apps Basic updateMyPrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --body '{"i4CfPvWhsZavntN9": {}, "E7NnMlEpBDW7NnyL": {}, "2ueqmXRrdOWZo7H0": {}}' \
    > test.out 2>&1
eval_tap $? 52 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 53 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetMyZipCode' test.out

#- 54 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --namespace $AB_NAMESPACE \
    --userZipCodeUpdate '{"zipCode": "9qXDfLxvrXdZI8UV"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'KGMFcS2xiu9opz2t' \
    --category '6su0o4LW7ASpd9OC' \
    --fileType 'CWjh3hdmDUbxxEJB' \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId '5FRwSlhqUPaEHH4K' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'jqJT7KpAM1lZdvVQ' \
    --body '{"avatarLargeUrl": "GYZfalQaNm6ziM23", "avatarSmallUrl": "azvqPioxoV1NXTHC", "avatarUrl": "jhhDNakXq0BQqYtu", "customAttributes": {"S1ZbXeJ392fFkVhI": {}, "UoJQIyvvOJLKCtIO": {}, "AGPcmlTUPQZ7DNTz": {}}, "dateOfBirth": "1988-08-14", "firstName": "bnttxKcHAsMJpVfz", "language": "Uz", "lastName": "DRJ1VBqaHFT9g351", "privateCustomAttributes": {"O4a7qEHPkf8XWita": {}, "k2s2lki6wPKBMOmg": {}, "OUrdidCTFHJ7v55N": {}}, "timeZone": "0btPMqRgV7vbvQDs", "zipCode": "AQuX9Y5C2mx5POqg"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'hl6CBGxZ0NZsCoud' \
    --body '{"avatarLargeUrl": "qmitD0I90XNeuLc7", "avatarSmallUrl": "gO8bcJNLNvnMABXq", "avatarUrl": "EwGp5JwxnznpSraw", "customAttributes": {"eIZsWZtMBw560xdU": {}, "CZv16zUTLOq9Vzst": {}, "hrmyT2bLLKWVHy6x": {}}, "dateOfBirth": "1975-04-03", "firstName": "ki4kDmnnzvlds05c", "language": "cRt", "lastName": "iCKigHXILbLmkqkE", "timeZone": "htkVfYG8AAp8tpB0"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '9C8aDOMMpgzNe26m' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'Ma05nyzFFwoTE74g' \
    --body '{"EYEqSuS2oLVMzrMb": {}, "N8hzlzLYpFqk5VFC": {}, "cGvNRfraAVaeynID": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ZNQcyGjAptIKQG1f' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'P9EooJYviU67wLMj' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE