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
    --body '{"displayName": "bx46ZhlaZGJIBWO1", "namespace": "LjsPVG9yv9xqWp8r"}' \
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
    --body '{"displayName": "jsNXtza4U8BRIPnh"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateNamespace' test.out

#- 7 GetChildNamespaces
samples/cli/sample-apps Basic getChildNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 7 'GetChildNamespaces' test.out

#- 8 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "ajUqPvStRSVdTvOP", "value": "enxbf5FZgmzp6aSO"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey '13Bvz8B6xMU2rYIA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'GjzifPHd7y2PiBgT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey 'DTtObfweWzeurKeo' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "jibeWhi0Z5B34lhL"}' \
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
    --folder 'BmMTL0dVhgVvEeC3' \
    --namespace $AB_NAMESPACE \
    --fileType '1eed80sRoIccc8c3' \
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
    --groupCode 'GklxkMiCBkwdiYXN' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "62A81HR9ieM354w1", "name": "HxIxJGVf2yY7XFmQ"}, {"code": "pQYZVfVaPt4DfPY6", "name": "RUSg5MJ0sBOhD1aX"}, {"code": "cKVMTIGzZaYH1w3O", "name": "R82PX593ykdCDVi8"}], "countryGroupCode": "6k5sblGz1EwKIZYs", "countryGroupName": "L8QPilQspgiPWRQp"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'da7Ro40PNYow2oDc' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "rUS2tVmrHgX3DPbR", "name": "l2JXtSUuETw2uWGs"}, {"code": "ANLaOXVfzlxpXxZf", "name": "CQiAkjzkAnQBqkj6"}, {"code": "MM7zgqsqQeASn0BM", "name": "9EoNw02qNINu7wBS"}], "countryGroupName": "qtXgABgi7zylFDrL"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'OFUhPrheWtOp4hJ0' \
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
    --publicId 'WDoN6Y9hnHNFAA0y' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["w5gHejE1zntWGtqj", "IunuQkceQ1Dgbef3", "q7IQDfpLckpO2LE2"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'vkjLt8skDFCUiare' \
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
    --userId 'm7uJnZrcQGQcaRbk' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId '80wh2uh2gsyrql3Y' \
    --category 'ByfkEAvNCZoXIKmE' \
    --fileType '2bYIyBFhbRO67UYm' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'e7OUX8ltmyVS6ZEu' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ipkUGlHhdlDwBpVb' \
    --body '{"avatarLargeUrl": "Dus3LF3H7gS1XsxT", "avatarSmallUrl": "zh3CsftaCl9pD2wo", "avatarUrl": "tR9Dmc4c4dY5P1Pe", "customAttributes": {"4kiQ359RQ90NUn4G": {}, "q9aFcj2tgKxm5Yph": {}, "J5Ee4xMoACZcE52B": {}}, "dateOfBirth": "1977-04-15", "firstName": "konKQsDCidUB6zLN", "language": "Za-yxRy", "lastName": "xXM5o0WfqNIbDaaS", "privateCustomAttributes": {"VoChFBSuZhN6Tjzb": {}, "sedJiyrk49PGCM9R": {}, "iOQq7G2zG0dI4t0R": {}}, "status": "INACTIVE", "timeZone": "1vaI0ouBtPsbw03u", "zipCode": "f1rShPIEczLst5Bx"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'FcLZ8zD0kjFuVp9a' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'BKZu4A6Bysl9SUDB' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'mm7ZpyQZjNxNVRdD' \
    --body '{"BOlJ6u6GA5IX1Dk5": {}, "Z0MtqxGvYoeKkxwP": {}, "9Ia80aaWKknku1Ce": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'iFsrBOtvj7YGRBO6' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'kacbgkVH9UKj3Jyp' \
    --body '{"lSs9QZ2FEm4cuGrs": {}, "hIzJ6D5271dgwruu": {}, "t1r8dq2dNUDpOrkN": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'vB4RNkAs7OklvASr' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 36 'UpdateUserProfileStatus' test.out

#- 37 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 37 'PublicGetTime' test.out

#- 38 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetNamespaces' test.out

#- 39 GetNamespace1
samples/cli/sample-apps Basic getNamespace1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'GetNamespace1' test.out

#- 40 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'El4ePFEk8hVunSjr' \
    --namespace $AB_NAMESPACE \
    --fileType 'EfuhutTWTmvUfI2O' \
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
    --userIds 'TicLkLDpmDq5XgmZ' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["zArmrS7yoqEIDfvE", "Hmg7MCDzFmpU8BTN", "u8XV4yBq39mAmnHl"]}' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkGetUserProfilePublicInfo' test.out

#- 46 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'OvgwjGOBBRZ5QZq9' \
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
    --body '{"avatarLargeUrl": "aBS0OxgxoTrM03pd", "avatarSmallUrl": "qUtXdPDCpG3MDiWr", "avatarUrl": "Vvnxw5GzYIA0qWFu", "customAttributes": {"rQSMCuymWbBCTL0r": {}, "XauFWoaVjFJHIreN": {}, "BxPrmqbe7JlPci41": {}}, "dateOfBirth": "1995-03-13", "firstName": "iLJg3eLXMVUlUigN", "language": "BK", "lastName": "BPPg1c35XzDadg0u", "privateCustomAttributes": {"zqESpmkEV0jfDHsl": {}, "yRW9rPIdksaMNeqD": {}, "TOdTm4GVQiTwALtS": {}}, "timeZone": "hDDeWXFCEESVvBPh", "zipCode": "JDZyR1V0oaf5ZG4E"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "DF1bpPoNByGW5T29", "avatarSmallUrl": "3D7koA89koM8z4Js", "avatarUrl": "MS5CZG4jzc63A3ud", "customAttributes": {"mTM9oHEjTrjcWW7X": {}, "5pwHQgmXMhK2Ac5e": {}, "Lp2DEem7i7xKSYKn": {}}, "dateOfBirth": "1999-04-07", "firstName": "Ya03BClOP0AZDlYK", "language": "Jwy-716", "lastName": "F0iS4KFhZAKkiG5n", "privateCustomAttributes": {"kQSE0LGYmeqfloVm": {}, "h4n5jQX7kUzsXx34": {}, "bSQoxYEXMqyikYDs": {}}, "timeZone": "IfAueyLtUGeBK78Z"}' \
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
    --body '{"5r6qwXuSnTdg4Uti": {}, "ICQefRrguNH6vsUI": {}, "MQ3mNZYc6i8Z43eq": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "tnXDDLTM3vLaAdiR"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'D9a7kTAyWuZB8Pde' \
    --category 'FEvl1FZYzkIGUwg7' \
    --fileType 'F7j9ZKGP9LpNU1sk' \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'e00a5SWfQgU32hgb' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'TjKPjYvtzg5aDEZ2' \
    --body '{"avatarLargeUrl": "Ka3fhAPL53RWD34w", "avatarSmallUrl": "E3ERMPGpsiSAWLfS", "avatarUrl": "V8H6XYPVg43ZxpTe", "customAttributes": {"QMAIakIywcAqhLvE": {}, "YH7K4p7NUVB3UTED": {}, "3YV5w5sXT8P3CNap": {}}, "dateOfBirth": "1976-01-16", "firstName": "J1Q7jhv58vEsLX2K", "language": "On_741", "lastName": "3XWIWmd19PuPWPYy", "privateCustomAttributes": {"79oTfAOdlVVyWZfC": {}, "sfu50okmuC5kCTLX": {}, "4ekSKND0RgSaRak8": {}}, "timeZone": "Je9ZMtBmQOwrSjb7", "zipCode": "L9IiTuJTZh9ZUxU4"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ks64JG9l4ODyuUJp' \
    --body '{"avatarLargeUrl": "FmKC8J82EjKWYJhj", "avatarSmallUrl": "BaZJFHMkjRTNaLso", "avatarUrl": "uEaf6ugKvnSI4FNF", "customAttributes": {"Ds7KqrIRofUkkNRA": {}, "rEM4Ad70Bhb6gpXl": {}, "stV3MIwRXkrcgpt1": {}}, "dateOfBirth": "1988-06-05", "firstName": "32w9puN7mfgcVWF4", "language": "biU_rHyT", "lastName": "mfPFak0nnyDlFvL2", "timeZone": "lPFMPjWmvR1NqYpM"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'W802csikquI6ltHR' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'rij4mpEhOunNBAtk' \
    --body '{"hRvM1JL53W0ubVkc": {}, "gvJcYHTHmpUi284D": {}, "yfyB23xqwFkGLFfq": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId '3yP0SdSyBLAbnlLp' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '861iXL0yfVvj2J70' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE