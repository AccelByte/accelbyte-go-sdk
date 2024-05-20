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
echo "1..61"

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
    --body '{"displayName": "DV5nnnFlAHiu0REf", "namespace": "qZvWuLeTzJtFbwhT"}' \
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
    --body '{"displayName": "n0GQpmVTGndWWX30"}' \
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
    --body '{"key": "y1Pxo0hGTj4GnNlX", "value": "KJvgX4d4nsVIG2Hh"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey '5V2PF3rZ8MlrOfDi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'kon9YCdWHiCCJ4on' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey 'GZ189lTDFbxabsNT' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "3gmjesx4XCgVFePR"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'jY54NsRMYT63lrVv' \
    --namespace $AB_NAMESPACE \
    --fileType '4lfRPWbcbp3gQbPV' \
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
    --groupCode 'jYffBnxkqcB2utcA' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "tHOiRm4l10hbxYJW", "name": "Wnt6Rdp5Gz2FYgXe"}, {"code": "x1dflD8cpPpCZgdC", "name": "sAAtGHHNRD3cyf2W"}, {"code": "aMjPNaXWVkZiuknJ", "name": "cjmF5K2ZwmEp1X3t"}], "countryGroupCode": "cTvO6xBPIrgxUJ2K", "countryGroupName": "5bQ1aDJ4rGUoVbtD"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'NxzwSH2ahfuaY7JW' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "iYckhF3E0mnLYl8Q", "name": "JoyeqEt6ugrp7fNb"}, {"code": "lWYKzJabXgGkFJSp", "name": "1qdEgV26FNdeluyV"}, {"code": "Xv8vRJJrCxEMnd7V", "name": "bktXzPh5tWkoTmqK"}], "countryGroupName": "ZRsjCjBAzTNagFOG"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'LIkyoCHNHHXIKzXE' \
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
    --publicId 'UUcYsoQAw9bMP4kW' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["frIAHKtkJ00MhI4g", "Vv4OWCmUbGxDs4Hw", "ZvrudLj8xnGNIR5d"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'JFJkClQ0H7MoKHqc' \
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
    --userId 'SnUt6yj7fWkZRunW' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'THxEl8p2FvYzraHF' \
    --category 'Jc2LVxHm4rMx3I4n' \
    --fileType 'jbj1fUtoJnnFJjjF' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'bTzo8st2yZKCEPvR' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'So4V5NrM6rtStFZ4' \
    --body '{"avatarLargeUrl": "vSTB2AJ3jSCoMpp4", "avatarSmallUrl": "OyuhvwyoUaMbnpWb", "avatarUrl": "nzZx1hF3NJGlTzjF", "customAttributes": {"BRMxtyYVRO4YZIjq": {}, "zsnHlEFrcfPr171W": {}, "j48v5allAZyme5Z1": {}}, "dateOfBirth": "1989-02-18", "firstName": "aYFQem3FK9nJvxsb", "language": "zazV-zn", "lastName": "pfCcuj03xvhKJ83f", "privateCustomAttributes": {"JAvc4iFyW7G1pdjn": {}, "zhWVUVizFiSge0fk": {}, "5JhGMJVe5xlcHrL3": {}}, "status": "ACTIVE", "timeZone": "reTzWMeeLoKJaC6l", "zipCode": "rV32UX2t5HZly2GV"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '8gJ44TB4Wp3aSNE4' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'jdCTRBFAjdRDfRfQ' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'YViYKutRqJ4zwTy0' \
    --body '{"HQZpSU1hLwvv7A4P": {}, "mWb5j9F6WG3lqfzj": {}, "PCXoNQwEuZ9doohD": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'pCD5t95wFhn9cLc8' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'nast3wQZTsInHnps' \
    --body '{"FI8Q6klSN4wyVQjd": {}, "77TqRfLERKkL6SNt": {}, "iLAnOZLqmB35VsvX": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'cuOCzyBg3XQ4Xece' \
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
    --folder 'hBaPPtUARGXK865n' \
    --namespace $AB_NAMESPACE \
    --fileType 'ELKhvp3YzreIivsw' \
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
    --userIds 'XtMC2fveaM354Wq0' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'rUZNhLm0fi61H2fG' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfileInfoByPublicId' test.out

#- 46 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'PublicGetNamespacePublisher' test.out

#- 47 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'GetMyProfileInfo' test.out

#- 48 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "uS1UBzq147qdqNRo", "avatarSmallUrl": "bI6f6NZzX3w1rnZX", "avatarUrl": "Ku10zoYM5UYy0Wwl", "customAttributes": {"vVajmydUEKJwOTUg": {}, "RH03HQABhEce8Azi": {}, "1BFeoHHHA71epzBv": {}}, "dateOfBirth": "1986-03-23", "firstName": "IVVNzbwkPYhjj1jd", "language": "XU", "lastName": "vh0sfK4yfmA4sx3O", "privateCustomAttributes": {"2oPdQy6hsdW8jyaK": {}, "esH9YuBultczdeJA": {}, "kIQgnDHpZuICirW1": {}}, "timeZone": "mM3efJCrDQOXxOCy", "zipCode": "a4JVWHPTNydwLTJH"}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateMyProfile' test.out

#- 49 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "H8iys9h9I2iwrosS", "avatarSmallUrl": "GmvJgGAvjMrJpRKj", "avatarUrl": "iPgGk0Ks5LBRrrrd", "customAttributes": {"dU1jfdAsm1CW3tXT": {}, "pzV3XcC9tyFXkOFg": {}, "Y9mzg4RCUUnsKQFG": {}}, "dateOfBirth": "1977-02-15", "firstName": "Mspr6nO17sG3NaCa", "language": "Lpou", "lastName": "peKaHxqT3YWRyE30", "privateCustomAttributes": {"W3TD9Jq2VOebd3wJ": {}, "346TkguM8Z0CRdl9": {}, "fpzQjr6Vc5vCQzcG": {}}, "timeZone": "pQOdgrboOvNlgUbJ"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateMyProfile' test.out

#- 50 GetMyPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getMyPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'GetMyPrivateCustomAttributesInfo' test.out

#- 51 UpdateMyPrivateCustomAttributesPartially
samples/cli/sample-apps Basic updateMyPrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --body '{"uhS828IVQRY7lcqQ": {}, "9KdwD40ZiwsYprXp": {}, "s73bt7DWgfbCSaI5": {}}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 52 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetMyZipCode' test.out

#- 53 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --namespace $AB_NAMESPACE \
    --userZipCodeUpdate '{"zipCode": "fqOarr8iQYIdcJlO"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateMyZipCode' test.out

#- 54 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId '5kyHDUK28JDUSwgb' \
    --category '6Ul3ZP72bZuiINJV' \
    --fileType 'BpeGE8rPQRy8IfsS' \
    > test.out 2>&1
eval_tap $? 54 'PublicGeneratedUserUploadContentUrl' test.out

#- 55 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'YtunmEpelhpgbvqE' \
    > test.out 2>&1
eval_tap $? 55 'PublicGetUserProfileInfo' test.out

#- 56 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'n19d7pYehByXYqM7' \
    --body '{"avatarLargeUrl": "HtnNol91lISBWQIT", "avatarSmallUrl": "ciJC0eCKFmoAfuV1", "avatarUrl": "OjyEM5njD7B7YTon", "customAttributes": {"7Se7OH9BXlKLocll": {}, "1QLBGVoKHIDqbS41": {}, "2HZqKHy0tHfXd6Z0": {}}, "dateOfBirth": "1981-07-05", "firstName": "EWsSAJ5OTfsaOz2q", "language": "lmqN_vwbh", "lastName": "0oK69CNNwmzyrsor", "privateCustomAttributes": {"nTiGQkueSgKlKOdo": {}, "FIAIl036uEurrW6h": {}, "26rLmU5CTtZfEyv9": {}}, "timeZone": "3hRlW53xinkAqLeS", "zipCode": "a1nGMRy3bvLSGs0Q"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicUpdateUserProfile' test.out

#- 57 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'uAuMaRA0HuD5d0bI' \
    --body '{"avatarLargeUrl": "8Hj3ouQYb0F9v84l", "avatarSmallUrl": "UmwFUrZiqNdwV3LG", "avatarUrl": "Ve6Ay58KVxLwZvWI", "customAttributes": {"XKvUMEwV3G4GINM8": {}, "FTG6qWe9e7lnXwaR": {}, "RcNcdaKtG1Ev6w5L": {}}, "dateOfBirth": "1982-04-08", "firstName": "NFHOC3xnWkHeJZHo", "language": "Uc-pL", "lastName": "m1KxR3DwXJyhR19r", "timeZone": "1g8kynz35gfF3Nff"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicCreateUserProfile' test.out

#- 58 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'mCt5oQ9i6gRRUQHA' \
    > test.out 2>&1
eval_tap $? 58 'PublicGetCustomAttributesInfo' test.out

#- 59 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'VF8FJidIa4anIr82' \
    --body '{"K49o42m86VA35AkM": {}, "RjDnYptrxZv6wLDX": {}, "uFjG3Xg1OyazLfS6": {}}' \
    > test.out 2>&1
eval_tap $? 59 'PublicUpdateCustomAttributesPartially' test.out

#- 60 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'HKsVOtGQcqJt3l1z' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetUserProfilePublicInfo' test.out

#- 61 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'Jd8mWRG7BrvpY3rZ' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE