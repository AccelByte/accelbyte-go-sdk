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
    --body '{"displayName": "TRYehTpIzUlxFIN0", "namespace": "eP6dHbdXSUQl8LYG"}' \
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
    --body '{"displayName": "zD2p1up31shO2T1H"}' \
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
    --body '{"key": "F8nIFoPzBTeDH8UL", "value": "WwhIhycOxZmplryS"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'JZuItE4putbdb7jg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'E0yo5cAYvYZllea1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey 'uf7ck2KJsbBIxDMO' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "uOk1sKQ5kAmNDm7T"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'UF7BHTKJcOClglx0' \
    --namespace $AB_NAMESPACE \
    --fileType 'jyWhtLcnqswD1TSX' \
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
    --groupCode 'YZuccIvl4NYPkh7e' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "BZKNm7McssTXIsBJ", "name": "o5QgXumJ43yXGuK7"}, {"code": "bSgVqmGcHhwe5qdm", "name": "qM5QlXHM7xM3OWOE"}, {"code": "8SSEm3E7qeQMvLtv", "name": "aPxrENe9aELALuEn"}], "countryGroupCode": "eaO1qPj6gUun2Ysf", "countryGroupName": "qKYoGxkjKBe7lFKQ"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode '24ShcWIH2U5R60o6' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "y5UUPpWEYAg8H34a", "name": "SvAHDOMXdb2Iw4XQ"}, {"code": "qUVhCf9WnOstWcTc", "name": "gnPbffATnSS4tHOz"}, {"code": "sGWbLlBl40OKBm5h", "name": "Azr54gJGtdn7pRrr"}], "countryGroupName": "iNWUxzGM70b44sp6"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'CTie93XR3lRGjYcm' \
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
    --publicId 'QeSXv8aaIVcEqQUV' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["yOLTOYKoIQmYdUd4", "ip4hecz1NqOmXHxa", "mScMUqdcoTe1gn78"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'LKqt9EZZpphmfmMA' \
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
    --userId 'rjEvgnlwMIZhzg5t' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'AB2treFjkK5arc59' \
    --category 'ehkuIgmhYyVZSniH' \
    --fileType 'JbTf2kZoyrNAqqeQ' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Pln4z6atj0valt0e' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'LonwXm1IJWR1jEED' \
    --body '{"avatarLargeUrl": "PhY6V1aPRPv3aULG", "avatarSmallUrl": "VeClTVbW6LrfYV5K", "avatarUrl": "DGBwBuOHJl1DNtvn", "customAttributes": {"gOi9rxUSaIObiyJI": {}, "F9LUW8wQX47icsu1": {}, "OsWMUL5GpHsaQhn5": {}}, "dateOfBirth": "1995-01-17", "firstName": "J0DO81weyjFIXjZm", "language": "Eyh", "lastName": "WKjC1GbmPPY54zTu", "privateCustomAttributes": {"Y1aYSy5CclvLsdoq": {}, "hXYwo1NwICzP83j6": {}, "Fc9fsVCL9ujNsins": {}}, "status": "INACTIVE", "timeZone": "a6RdaHbVyOF0fYie", "zipCode": "JCG1xZQh0ubVSL3w"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '0HRfgCpkSt4U76v7' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Ov4swL9keQDbwUxm' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '8LIirt9OivaBxrF4' \
    --body '{"T5lD1kPcgiHt2qCS": {}, "y06k0JgZ1iXNA5eg": {}, "jm4y8XGD0e38v26I": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ZIO3rjofgSyFJQtD' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'SjMEgsAjAFmKpESG' \
    --body '{"iVRldxcB55QvVFG6": {}, "XrKUI6tmaVvxCRiP": {}, "fA0qz6nLWaZFDDTj": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'tGrq5CBlvUnf3HFi' \
    --body '{"status": "INACTIVE"}' \
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
    --folder 's2wH447WtNi02tQJ' \
    --namespace $AB_NAMESPACE \
    --fileType 'Leh554Pxt4XX8tkp' \
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
    --userIds 'Eao2kWKk56AizN5x' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["BGbTAT80nqjO6LeR", "QlKwzs3k4jmhE3Il", "nkXQYUlpaBDxm1YK"]}' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkGetUserProfilePublicInfo' test.out

#- 46 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'ozWuFjJ6hoYGO8ox' \
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
    --body '{"avatarLargeUrl": "ddZzLAwVzSY4s8wd", "avatarSmallUrl": "S2hhYOEmaLr9lVLs", "avatarUrl": "9PHv9Xx0JWiuEqJ2", "customAttributes": {"ynTBMKDQAdGjMeyp": {}, "3iIuEJ3rS3Nz1OPb": {}, "aepu6QWzoJLc2yEH": {}}, "dateOfBirth": "1996-10-04", "firstName": "fq1W8rqLI4aPnuld", "language": "LtPi_592", "lastName": "fjj94oEFNLNjPb2C", "privateCustomAttributes": {"glLOliEBkw7hKUxD": {}, "VSoHkWXRkpvnRKQD": {}, "eFDqGg8gwpBPI9xx": {}}, "timeZone": "3FiTXGRQpuS1EozA", "zipCode": "XEy9nMrfscfniPxt"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "OsOvDabPs1fAz9w4", "avatarSmallUrl": "pEArLLsjWVxfPsTF", "avatarUrl": "acInqIm2d8zHAgXI", "customAttributes": {"nDePs7PD499QlMrm": {}, "mcpBIYmHEkpxelpk": {}, "vsRkQQDgicWqZ1ce": {}}, "dateOfBirth": "1978-04-13", "firstName": "CUQvc9rxqY3UFVCZ", "language": "Mq", "lastName": "2TzS8St8vOv2MhEN", "privateCustomAttributes": {"PBHj2syJqmiPxaTq": {}, "h3yOVc8QbhfRycjD": {}, "6XyFsaGVldYbqVjV": {}}, "timeZone": "wWsdtwUvDQohOTWL"}' \
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
    --body '{"9K1bUJKBPH8KSnXu": {}, "N7GhUtxXnatvDzvw": {}, "WWzhmjNuQQW3oUAI": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "wfpKPWE28mLCBWzQ"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'h9IRCwSv4fPC9u6H' \
    --category 'lS1eGspPi7ImUHQj' \
    --fileType 'JFVeE2C5VZVN8pZn' \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'cBh55437qEkHGNFY' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'U0lm1qC6Ss7HrzZb' \
    --body '{"avatarLargeUrl": "n6rwVSVkZAEm6C8f", "avatarSmallUrl": "G4UDJHY5rVUClHA8", "avatarUrl": "KNBHSpS3XSYKofQu", "customAttributes": {"3yUsZJJXgmKy8IqX": {}, "cw7CbrAIlNFNdevT": {}, "I7sb8v1RsDv3rIQj": {}}, "dateOfBirth": "1992-04-01", "firstName": "LtLa51GYfALecjju", "language": "zUV_BFCR", "lastName": "oNqCycAwgssMTsCI", "privateCustomAttributes": {"BNL51Ism3TNtmIJl": {}, "5GCMHjvYDHIQZxfI": {}, "d305ElDRPW8zdKQj": {}}, "timeZone": "ua4gQ6ISLi0ytNwT", "zipCode": "mmAbZX64KbkT6Zts"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'eEC9R09Jxv8alvWO' \
    --body '{"avatarLargeUrl": "akDgioA6CFPXXIH5", "avatarSmallUrl": "48PC42k4o65hbHwL", "avatarUrl": "Y1nyZrKXyKgW7vXK", "customAttributes": {"9Novkr58rd8El8Cd": {}, "DIzkZAguXuEURgog": {}, "Xi8jd9AlGhrz3hzU": {}}, "dateOfBirth": "1989-04-02", "firstName": "qInKOKsczr1Fi4dW", "language": "XFap-qUWp_033", "lastName": "qLEkwk9bX8rG66SP", "timeZone": "zCIQl5dwM0pnGdr8"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'z5b4mCA3rJoqIQOS' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'GdkNd5lZhXqsvdg6' \
    --body '{"7zcALGD5bqDw8Gm6": {}, "EkOxBNilNNwzXZcK": {}, "RFZpctBTbQuq0MHl": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'AgEeWNA0eN5X7UOY' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'PE2vulkKpWEg4Iiw' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE