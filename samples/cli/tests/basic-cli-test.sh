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
    --body '{"displayName": "MT5je9KGPQKdFUAT", "namespace": "si3OiWNwNpnPdRyS"}' \
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
    --body '{"displayName": "Vhq5JlB58nWejiii"}' \
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
    --body '{"key": "biG7t4GTS3tsVeNo", "value": "HiFcFQFXN8eXVkMM"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'JN8f6rXDKtYUWLlf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'mh2fHgMzVwT6VEcd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey 'fmkyfeVJA8fUU87V' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "frujFN7aQzHlZ4PY"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'u6W8jLCuDlcRs0rY' \
    --namespace $AB_NAMESPACE \
    --fileType 'nlNls7KMguwbwnxL' \
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
    --groupCode 'jlN2klYYd9LP1tno' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "GZaGNwGRZVqPzRvR", "name": "lDwOlGHZxQwQ2dJU"}, {"code": "UDJjSCTVKH9auDKt", "name": "tA157a7GctAo2TFf"}, {"code": "IblzQyVYprbbKf4r", "name": "PCNnitFVXdRzjdL6"}], "countryGroupCode": "KRKN5BhwxAX94yQu", "countryGroupName": "8r2SGQYwbDayF0Jm"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'YmUhgYCoKeuXDO2p' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "BHsj9aP1nEPX3LNY", "name": "TFLR9JhJTdyskEoA"}, {"code": "WNivC5ne37hCkEk6", "name": "mZBIzLgHPrmfI8h4"}, {"code": "DNM2o0E1Y0f5L2zp", "name": "px7Mdhflq8P7B5rQ"}], "countryGroupName": "c4uxIT8IDSY1THlS"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'gL4CJfBgqrVvQoeH' \
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
    --publicId 'RYyut4lxupILRpBL' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["EOEuc96LWceAsf1p", "hLEq97ihNzQJO9rR", "mZbpF7PDOMtxbGlD"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'EllLbGmgqTUcggvy' \
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
    --userId 'gJoczVn5m9r2SN0k' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'geeQL46TBplGr26k' \
    --category 'tLZQ9eqeFgAKTc4Z' \
    --fileType 'cFctTxQo2cX32IMv' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'u2OR3uPPMfwaFhHb' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'VMMbcongF5b6aTDB' \
    --body '{"avatarLargeUrl": "XsER4WWAvFQg5PRB", "avatarSmallUrl": "pMPod8G6slZK2kdF", "avatarUrl": "eP5F49023Js87fya", "customAttributes": {"nDwCuE0FEF5L39ID": {}, "b1ly1R29n3k3MD14": {}, "fObDwS9NozgFdFkW": {}}, "dateOfBirth": "1994-09-05", "firstName": "yDcy0X1w7rsHPX1S", "language": "sD_HhYl_158", "lastName": "I2Ue0QD9DA5dPZ1M", "privateCustomAttributes": {"Q1bJVmz7n8rJl58P": {}, "n1tTUaVqttCHeIaT": {}, "SIq4pOK8Gp04k3WW": {}}, "status": "ACTIVE", "timeZone": "xPHhFflQ6AtIhI6e", "zipCode": "8RK9dMU9FqYxHSdF"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'D6vz33GdHOjQgk7j' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'y3xSIalDGHWmAJ3P' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '5oOaO1KpMo7PDzAK' \
    --body '{"wtsG9mkiNh2ZJPdM": {}, "NKAoxneCiStLk6ju": {}, "UrxvZ4A0LV9SgmeE": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'V5Klz7chxWrwu1MZ' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'Hh4OyUXpmXz2JWib' \
    --body '{"giXbgiQuZRnJtToR": {}, "KxPDavWwkFEyaL2G": {}, "XB40Y7KUu59TfdBP": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'u8JTayMMekzVdvlY' \
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
    --folder 'DzRYGzbhlFtJMkX0' \
    --namespace $AB_NAMESPACE \
    --fileType 'yVRQqdGKHl5l6oG4' \
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
    --userIds 'JrGKvw5oJL8UGoB4' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["lvU8y9PoSzzzRGb7", "K9XbYdUUGA9QVTj4", "jyr6yX1znKZJUgbC"]}' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkGetUserProfilePublicInfo' test.out

#- 46 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'oxyoLRKeFeD23ZNc' \
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
    --body '{"avatarLargeUrl": "jA5W4EMoCSD5Tvlu", "avatarSmallUrl": "3HURtJI7PPNayFh2", "avatarUrl": "FZsnYTG2SHfCBqvo", "customAttributes": {"4cjHNIs9uT0g3Ljt": {}, "sLxA6cuL1A6zeQT4": {}, "nJt9mDvtod485Kmw": {}}, "dateOfBirth": "1998-02-11", "firstName": "J8sVgLG5GynFw7no", "language": "Jzgi-xM", "lastName": "vPzQFnt4IsdRGKyf", "privateCustomAttributes": {"aCBW31D61bsewhpr": {}, "8gfoOgIXAYAn8I7k": {}, "mKDsTIMdy4kvxqKk": {}}, "timeZone": "ISR7B4kb1v1PS0hh", "zipCode": "CLpu5fl7xr7x1efz"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "HFbs4PhUrerBHIiM", "avatarSmallUrl": "KX79QCJ994Y8xPq5", "avatarUrl": "QuAxLAADstz8R9I3", "customAttributes": {"chDQLXJ4ylhDtoJ3": {}, "t31SkzcGRFrb3w62": {}, "zuWImhKRspIjLyN4": {}}, "dateOfBirth": "1996-04-12", "firstName": "rpPU3xfLQhNS2O8q", "language": "ck", "lastName": "TckPqNjKG8Wp0BJL", "privateCustomAttributes": {"2Fg1hj008rZO0kV1": {}, "83J7tB7k9xZKnPdU": {}, "9hh3pJlNGkiTcobz": {}}, "timeZone": "5b1XVwgOIizrVRuW"}' \
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
    --body '{"Djdu0VGGRXDvwkEB": {}, "I0EMdiYbD9LjS3U7": {}, "h7N2L2ZfMmpK1I0Q": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "SmxyCPTrNBO7l7bc"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId '00dbywCdE8SB3jwi' \
    --category 'eaZdflBCEBOXE8Wg' \
    --fileType 'SXopBVGs5S5OrMgq' \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'MvRsFwJtauT7xsDB' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'pLw0uScQBDkSsdzk' \
    --body '{"avatarLargeUrl": "rfH6cL2qutZmmULG", "avatarSmallUrl": "SkSPsH34TAFLuQqT", "avatarUrl": "p7F41fqIxGO7gxoO", "customAttributes": {"TBOlD8oONcPwyeVF": {}, "DIJ8lqspXHS5uCtk": {}, "XRMGqgNjefj6OfaC": {}}, "dateOfBirth": "1991-09-22", "firstName": "x59S4H8MKThXTb65", "language": "PQpt", "lastName": "I0JPbTuZqu6GdRDD", "privateCustomAttributes": {"9HW2Rve7G7kro3i8": {}, "AHPjs1XsqKzg4f3y": {}, "nyEE42hrsySHITRF": {}}, "timeZone": "SfOBkWwpLdBK4Yx7", "zipCode": "v0BkHbjvo5NNAFuT"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'guOjLfLHLrLfVuQU' \
    --body '{"avatarLargeUrl": "FSDlRj4FqAKneIbb", "avatarSmallUrl": "JdxVbYlAaaBlb6QB", "avatarUrl": "nCM4v2zJtix6MQxP", "customAttributes": {"fiSIIO6Xp9I2BH8B": {}, "HjJn5IFBBLqX3IiK": {}, "EqgnZ7TXou540841": {}}, "dateOfBirth": "1984-06-14", "firstName": "HtjLwut77oYEIEl9", "language": "aaOK-tVMi", "lastName": "JMJ2W33W1yRwuZyK", "timeZone": "TqPPITAZOXCPkaRr"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '2XdDsI8ytZk5SPB3' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '2ZbO2vwYvwPkTLTM' \
    --body '{"slrjd1QBnfFQ9Ay1": {}, "xxhkASkiVmdqyE1Q": {}, "TY2r4YQRHDo27qdp": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'UOOQN7tgmG6ovETM' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'PSCziMDqbdSokUQO' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE