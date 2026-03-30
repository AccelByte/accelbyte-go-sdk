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
echo "1..63"

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
    --isTesting 'false' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "8izQJaWnPialu5px", "isTesting": true, "namespace": "LGzOg1pJU8C1v5RL"}' \
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
    --body '{"displayName": "QXndq7ZQjhYf3e9p"}' \
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
    --body '{"key": "htDzzOCSV9Fu3t06", "value": "7mCFd3hzv8L61x4w"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'rmnjxgIzd1AgsFRI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'vySx1t7xJTeCgjgU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey 'pFbN0LKudJ1l0F0M' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "t2a7ZXgrvDpd0tu6"}' \
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
    --folder 'rN4bDhMRzf0H6Ub8' \
    --namespace $AB_NAMESPACE \
    --fileType 'wryaNxBrKWJiy1Bp' \
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
    --groupCode 'yzitf6y0ONqo7ovG' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "0V54BWhbA6WY9t1u", "name": "dUaHj7eG6tO3ddhV"}, {"code": "ocs0KNjh6PJRKbQD", "name": "z0eGOSFZOajJyh5w"}, {"code": "LFq04nySpWiTmfvZ", "name": "lGs21eKzhtAUXBUb"}], "countryGroupCode": "eHFCVmb31cK1ZYLQ", "countryGroupName": "67bPnsboTCcdyQzQ"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'ZHzz2n4LICnrAJmk' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "6Se4tpeK9kv4YHIL", "name": "S303FRK9CrkYEoGL"}, {"code": "BRdscdBr5znQnndM", "name": "upH8G24CKz9ZSsf9"}, {"code": "l2RWbHQ9wKN4brBK", "name": "fMeuvxqesxpMve9h"}], "countryGroupName": "AKVcIOkDcmVqV2Sc"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode '4rzH0yNixR6KKWJo' \
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
    --publicId 'cERBFtnK0h8Bn45q' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["8s92rH1dOPCb1Zyw", "LV69liYf8gSbJ1YN", "34wlzoYMsmOVaTBL"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'c6oaiqFrWPGPJSOX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'GetPublisherConfig' test.out

#- 26 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 26 'ChangeNamespaceStatus' test.out

#- 27 UpdateTestingFlag
samples/cli/sample-apps Basic updateTestingFlag \
    --namespace $AB_NAMESPACE \
    --body '{"isTesting": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTestingFlag' test.out

#- 28 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'Cdz2R7eK1DG9lq4r' \
    > test.out 2>&1
eval_tap $? 28 'AnonymizeUserProfile' test.out

#- 29 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'CQwG9EXa9ClRYxbN' \
    --category 'F85tnLSeAv7hxKWd' \
    --fileType 'QU4UK585ZjBCTgPo' \
    > test.out 2>&1
eval_tap $? 29 'GeneratedUserUploadContentUrl' test.out

#- 30 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'NkwGaDxsKaZNum9h' \
    > test.out 2>&1
eval_tap $? 30 'GetUserProfileInfo' test.out

#- 31 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'NS7qM244Y6rZfFHi' \
    --body '{"avatarLargeUrl": "tVfB1YsThbnjtPX1", "avatarSmallUrl": "6PK6sWnbtR5MYBHE", "avatarUrl": "2LiYEo8tz3A8qhG8", "customAttributes": {"75vdg0RoPaWXjZdk": {}, "uQaCQgAVAfgK3R9G": {}, "3GliX0F8oVzhLHnm": {}}, "dateOfBirth": "1999-03-26", "firstName": "11lo5W56wp1lKUHI", "language": "dLgE-wRfC-oV", "lastName": "BGtwYmgFJqRGbt6X", "privateCustomAttributes": {"inWBa3JRw8TYmLJD": {}, "yCEe1rR3uIO6RT3I": {}, "vKnx8oBRYvsnErPL": {}}, "status": "ACTIVE", "timeZone": "87noTfUpVS6Sxa4c", "zipCode": "drNC3w7EIAq09NNm"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateUserProfile' test.out

#- 32 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'uPOeXGkuvMPpspMq' \
    > test.out 2>&1
eval_tap $? 32 'DeleteUserProfile' test.out

#- 33 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'w15o9hL9QHdheY7X' \
    > test.out 2>&1
eval_tap $? 33 'GetCustomAttributesInfo' test.out

#- 34 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '1fz1hkxafiF3THLT' \
    --body '{"0G1zGB0t9h8YLN76": {}, "sqQ0Y8MHCftsiHgr": {}, "rJcEx0QfgOgvI6fs": {}}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateCustomAttributesPartially' test.out

#- 35 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '0WNlzR8X4JxSeHUu' \
    > test.out 2>&1
eval_tap $? 35 'GetPrivateCustomAttributesInfo' test.out

#- 36 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'UPN42Gp2P9SMRUTO' \
    --body '{"4Lo2FEp6UFyoC6pG": {}, "U3E4e0SXAAu7NZ7y": {}, "F0ALyYXrHdRGyeWE": {}}' \
    > test.out 2>&1
eval_tap $? 36 'UpdatePrivateCustomAttributesPartially' test.out

#- 37 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '9TV0NCZGtPDxCabH' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfileStatus' test.out

#- 38 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 38 'PublicGetTime' test.out

#- 39 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetNamespaces' test.out

#- 40 GetNamespace1
samples/cli/sample-apps Basic getNamespace1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'GetNamespace1' test.out

#- 41 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'KFCWhng6Wbvrk4pp' \
    --namespace $AB_NAMESPACE \
    --fileType '5N7xm0wJ51Y67vDz' \
    > test.out 2>&1
eval_tap $? 41 'PublicGeneratedUploadUrl' test.out

#- 42 PublicGetCountries
eval_tap 0 42 'PublicGetCountries # SKIP deprecated' test.out

#- 43 PublicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'PublicGetLanguages' test.out

#- 44 PublicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'PublicGetTimeZones' test.out

#- 45 PublicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --userIds 'qkWo1c02ob6hjife' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfilePublicInfoByIds' test.out

#- 46 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["IMLr2WXSbmvpZ2xy", "rZnlrY7YxHtrl5kz", "w2NboJHa3o2zemPc"]}' \
    > test.out 2>&1
eval_tap $? 46 'PublicBulkGetUserProfilePublicInfo' test.out

#- 47 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'JFja0SdnNj588aYe' \
    > test.out 2>&1
eval_tap $? 47 'PublicGetUserProfileInfoByPublicId' test.out

#- 48 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'PublicGetNamespacePublisher' test.out

#- 49 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'GetMyProfileInfo' test.out

#- 50 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "wRTT1ZEIW4Bh8f7I", "avatarSmallUrl": "BDNqSm0v1LS1nBCV", "avatarUrl": "r9EzuspV3tIYKWGJ", "customAttributes": {"J0FeunwKPCfeMlS3": {}, "awKvjUe6saT1719Z": {}, "9h0bzBFLDSOQ3YMK": {}}, "dateOfBirth": "1978-09-30", "firstName": "jReWPMaHHAIRCSBC", "language": "sQ-493", "lastName": "YZyrRZnG93YmLmAz", "privateCustomAttributes": {"hPoY8uACGfNPetGi": {}, "pM3FRssqMtNrASjE": {}, "IB5xwqB5y5tLWbKf": {}}, "timeZone": "hmhM6TmINXOg29Wv", "zipCode": "82ttvhHR9R4M4aba"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateMyProfile' test.out

#- 51 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "kFpDkwcGUnGlCzig", "avatarSmallUrl": "cYFu2qnlJ1XLXg5a", "avatarUrl": "Ayzl1q2tfrqW1njx", "customAttributes": {"hWarclbLEV5yFUO2": {}, "azfMH99lnpQ3DYe6": {}, "4IZ88REvoraTDPau": {}}, "dateOfBirth": "1988-11-21", "firstName": "aLGfG9t1mYfzvY8y", "language": "htR-kzYG", "lastName": "YJ3zCGMbNtEql5xs", "privateCustomAttributes": {"zCpOtZiIgESXZlOf": {}, "v6bnQW7iPgkyny6k": {}, "gJQUtZNebXxNKVM2": {}}, "timeZone": "bHKCIBObpvPiTTQ6"}' \
    > test.out 2>&1
eval_tap $? 51 'CreateMyProfile' test.out

#- 52 GetMyPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getMyPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetMyPrivateCustomAttributesInfo' test.out

#- 53 UpdateMyPrivateCustomAttributesPartially
samples/cli/sample-apps Basic updateMyPrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --body '{"VRK2n2L8vwXoSGCZ": {}, "SihZKtNX8qAMkHT6": {}, "7lZeCR7f1VgtAIU5": {}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 54 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetMyZipCode' test.out

#- 55 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --namespace $AB_NAMESPACE \
    --userZipCodeUpdate '{"zipCode": "haUHgpQ4iBjP8B7n"}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateMyZipCode' test.out

#- 56 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'uCiSmpyEzEymSSHi' \
    --category 'EsVKLw0uT0LNQZ9Y' \
    --fileType '6CU3uyqWk6es2luk' \
    > test.out 2>&1
eval_tap $? 56 'PublicGeneratedUserUploadContentUrl' test.out

#- 57 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'D70JSzLjCJ63F7zz' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetUserProfileInfo' test.out

#- 58 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'aNXFmWktY6CUkHgl' \
    --body '{"avatarLargeUrl": "suoj7PKEuH5z3nne", "avatarSmallUrl": "0CT8RqmTCGye3kk6", "avatarUrl": "qp4rFSgjzsMxEf1i", "customAttributes": {"LdHwcQyIyu2b7yCO": {}, "kJ5OzMg1hu4FTepr": {}, "cmjrtrTXnrvsL8j7": {}}, "dateOfBirth": "1984-01-05", "firstName": "Eu8KxYGCkquAXrRE", "language": "PqtE-458", "lastName": "wsPD1Ebv83mDrOuP", "privateCustomAttributes": {"Y5xAvSnykkTmZefe": {}, "6Q3ZJAxSN31Hj5qD": {}, "wnVQZOujIFPLlOV3": {}}, "timeZone": "tGV8Yz1s3p8190JW", "zipCode": "2WATwRJHrqMVJOa5"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateUserProfile' test.out

#- 59 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'CotXPqjFsYs3tfah' \
    --body '{"avatarLargeUrl": "N3TP7ytUlujxsSmE", "avatarSmallUrl": "ysKmKfjGts24TgUB", "avatarUrl": "DOTt3FH1HrxVohBv", "customAttributes": {"YoeNrCBamfbJaOeD": {}, "vfgGv1URTgvt21G9": {}, "GUuNZiy6rbFoxtCN": {}}, "dateOfBirth": "1972-11-21", "firstName": "MfjVWnsYwsP2Ukcm", "language": "FLuR-617", "lastName": "JzNIpyrsi24eInHe", "timeZone": "G4k3GHhLb7AXho0i"}' \
    > test.out 2>&1
eval_tap $? 59 'PublicCreateUserProfile' test.out

#- 60 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'OY9VZ8D59RHPCKjo' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetCustomAttributesInfo' test.out

#- 61 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'KtdiGA1Nxu10iktR' \
    --body '{"oPo8LsvPbUUzjkI5": {}, "muOg6Rteh7j1Unvt": {}, "2DfZxeBnRO42Ea4W": {}}' \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateCustomAttributesPartially' test.out

#- 62 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'hjmLFAa6wzO248EN' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfilePublicInfo' test.out

#- 63 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'bxeveMPqJKkNzQIw' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE