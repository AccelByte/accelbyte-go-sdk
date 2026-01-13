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
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "Yz9IALwTrgqxDELI", "namespace": "e3Ol9acWpICtVl2k"}' \
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

#- 6 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "yvQNcuQqAbQzoJEM"}' \
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
    --body '{"key": "uyhKlYU9EuQIYRiW", "value": "d5kfB6mPHeQ1mFc6"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'zkNs0h5NNDyZ7Qty' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'XXYaTiLG2s44uUed' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey 'Sj0h5h5N3tjM73Sw' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "6XXpDcYevyPc7K0Y"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    --refreshOnCacheMiss 'false' \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'iTdLJfMlpatriQlL' \
    --namespace $AB_NAMESPACE \
    --fileType 'Y9PJWC8f7itVwOeH' \
    > test.out 2>&1
eval_tap $? 13 'GeneratedUploadUrl' test.out

#- 14 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 14 'GetGameNamespaces' test.out

#- 15 GetCountries
eval_tap 0 15 'GetCountries # SKIP deprecated' test.out

#- 16 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'ZEKLY6VgZowudPRp' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "Hi5glt3VF548IoCR", "name": "V31mA5O3XCBV4BNF"}, {"code": "3mRncfA80b31XxyI", "name": "IhWua4HZduYFQJA3"}, {"code": "QeX01rfjHPtfWeOE", "name": "v04P0uo9tqnbAqkL"}], "countryGroupCode": "CM4BTj2c69vhRZoD", "countryGroupName": "oW4HHNc8r9kpyFVA"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'uaZyWHc3E6rRgW0Y' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "3mCFkEd6v1YDMynW", "name": "U0Qyv8zYXHH45qvu"}, {"code": "gdjFmNgxb7NZr4T5", "name": "3ZmCDtX9o4DZflB8"}, {"code": "tUhoT2jwWjE30UQC", "name": "ZRySysyTC7cAjzds"}], "countryGroupName": "9BexRC5qCtqGwuAo"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'XRayoA7Cs1UvBCQ9' \
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
    --publicId 'ILx0bHWsQuSpyFCG' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["nCRkRFwi1uRkms26", "ZrOekI9JyHMxSXle", "G1uzqaRGlwTGgL1u"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey '1M9HlMePZDCaOuuO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'GetPublisherConfig' test.out

#- 26 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 26 'ChangeNamespaceStatus' test.out

#- 27 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ii2AvqEmuT3eBb9T' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'vUY10lTLvxaOGNOz' \
    --category 'yBnGx4pyj8XMG0CI' \
    --fileType 'CmWIpxF5ZalmZAvz' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'hOahy3CRcQlwdme2' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'gemAktF9D4ZWbT4P' \
    --body '{"avatarLargeUrl": "343bIT6Dldep7HYy", "avatarSmallUrl": "UgbrBiCeK2DcmXg9", "avatarUrl": "69IKdbO25j3pfnC5", "customAttributes": {"6LA9SJPbGW80Kz5F": {}, "aRhq0cks4ST4I3eu": {}, "hrdnvXcidIvJdftj": {}}, "dateOfBirth": "1996-07-10", "firstName": "MH1ZLuPdHo01LBNF", "language": "Isjl-vfjz", "lastName": "cSjJ94gdRfBYhUoH", "privateCustomAttributes": {"6hYQcEdmxJcAsK4M": {}, "c5FjGWw4w9yhpB06": {}, "RAYbAn27vTCGWhoF": {}}, "status": "ACTIVE", "timeZone": "jWAcuI9QE2VYm42U", "zipCode": "7WKSwy3nEckDBxMy"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'C397481tFrLIg5tQ' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'fsZ6i8545ALfC4Xv' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'N0loXlxaRAmhR5PJ' \
    --body '{"lbFABwwEb8KB1eKr": {}, "YwUUNwQybJLaBPqq": {}, "HLN93dbwOU4PVhao": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'PrrSlk8Ypa4FDpUZ' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'yvwrae828FfOr8k9' \
    --body '{"OWuPZtkfE4mYAR3n": {}, "Y6k1P958ZqaPnlEz": {}, "xQTLKxGhI9fXhrVJ": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '9i2MGVc3PnkBWcXK' \
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
    --folder 'KJsfJ8uoUcvt086m' \
    --namespace $AB_NAMESPACE \
    --fileType 'YcXophNfWXmm4uzq' \
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
    --userIds 'A8FpaHs0O7ChRVrH' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["nCQ8MyKU6VpEDLe2", "ZpHHqPBsvVm0y54y", "fWwTKVUr3SOnmdCD"]}' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkGetUserProfilePublicInfo' test.out

#- 46 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'Ps6gODalGN0loTKd' \
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
    --body '{"avatarLargeUrl": "kPCERnvqm0CJNaE9", "avatarSmallUrl": "rx9PqMQFQOkohTWx", "avatarUrl": "viFJXpiuiIh20yRr", "customAttributes": {"uRfqEUBcKexeCfeP": {}, "2P28h9HWWuV7YEfp": {}, "GXn5G4j4GHxK9Hdb": {}}, "dateOfBirth": "1999-06-01", "firstName": "PwSjmyzsbMTEkEgX", "language": "LYzJ_uCWt", "lastName": "tI8HODbJcU83vIUz", "privateCustomAttributes": {"P6i1MP3LIlG7OpQS": {}, "CS34wHlQqeU9oIbM": {}, "NQAJeWekzVywjOHU": {}}, "timeZone": "Hz7P248wWQNj4Rft", "zipCode": "ERQBsAC8PQ74XSSQ"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "OlZRoTSoLTU3ZK0k", "avatarSmallUrl": "H0yAUCbSdtrHQPyy", "avatarUrl": "Z1znvsKb4yWWqnMp", "customAttributes": {"GzR6lug76gqRwWSC": {}, "v0KaxqFJvtBUy4zC": {}, "OpSNNjkUo3CKy60K": {}}, "dateOfBirth": "1989-07-11", "firstName": "LnprtcpT7lKQXLtq", "language": "hCTn-ElLm", "lastName": "J6HRVGFPzxdUpEkk", "privateCustomAttributes": {"69VBJZZOnZkF7SMX": {}, "PMft57B5ytq7MIi2": {}, "JHDO1MHVZPUui0qF": {}}, "timeZone": "1Uw5lJr0mzGzgG5Q"}' \
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
    --body '{"9hQXt5ngoRLxha0R": {}, "Di3wBbUFUGnraz2s": {}, "EK28QVfPAtVXw5Ch": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "R287UtMtqPtnCdfQ"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'Na4iYYVgPXTXeZu3' \
    --category 'N4nZ4NuC5MbubGk1' \
    --fileType '8SXiSSrCPONY1XBr' \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'rLcVKGPYBDpwqkKE' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'lq8LjXKSW3y8kFPF' \
    --body '{"avatarLargeUrl": "7Qm0MEgwjlyRy2K0", "avatarSmallUrl": "APXKVpieZmv9GFSo", "avatarUrl": "BttlLzOudg2tRrpQ", "customAttributes": {"EFZaNhbmSyWZH75C": {}, "SYFdwdEG7oKkcgve": {}, "6HTdeW8Oa1mkeaSl": {}}, "dateOfBirth": "1997-08-09", "firstName": "i93mrosrozmdf1Ob", "language": "LB-352", "lastName": "ZsCEyxYjNUszUF7Q", "privateCustomAttributes": {"NXDQdtxY9GUBqvBx": {}, "YS4F6vaT33L6kM3y": {}, "Bt2sZPjiNawMDmFG": {}}, "timeZone": "AbriaLUrU0U27wI0", "zipCode": "VyuUzkku8iCVuBra"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'nZmlvtLVYHreoC2D' \
    --body '{"avatarLargeUrl": "FoePbSdDFCgpsMZC", "avatarSmallUrl": "A6jSdARqqFAY2V3X", "avatarUrl": "iyqU53FhnXxFtk1j", "customAttributes": {"AxcrvJ1UDRqJwwax": {}, "eDgqwHj6Ko4mPAOF": {}, "AdnTKEquSM0zkwiB": {}}, "dateOfBirth": "1986-02-01", "firstName": "4J8i5YjiASbGHtG3", "language": "XrfR_397", "lastName": "wnc5gZYMXuvaxkRK", "timeZone": "ndtBOuiGLIXxxvmd"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'DIg21lnDKwF6ArHZ' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'qB6s97DuK4qTE0L7' \
    --body '{"aOwEMzQCvqzY7hx9": {}, "hQRKPdEoIalhK1Uy": {}, "kYmyUeNOxrGDrPRA": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'q68IaRtnGoGy0Lsi' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'zHOJau8dKrxqrbBi' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE