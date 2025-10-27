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
    --body '{"displayName": "GBfK0vUPxQ9TwLPB", "namespace": "3RAO95oaawbITgkO"}' \
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
    --body '{"displayName": "ObIWk1YDrYwgt5So"}' \
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
    --body '{"key": "6WDhobXyMpEEHKe3", "value": "awU8uzcmTUMXcgZv"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'mqDIN8pP2dbWmtgZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'WrmN42BEjpVC2TEa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey 'FwdTuw40oL1Hc6lH' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "bVQKLpNRvX4oZWne"}' \
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
    --folder 'Zl62LLgKCcZhX8Te' \
    --namespace $AB_NAMESPACE \
    --fileType 'H27nDuse8U83xt5n' \
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
    --groupCode 'vo6y9hjGnHogr8nT' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "lGwIVgpIS59u92tp", "name": "K1JTMAKtVKVDDitu"}, {"code": "yMUTZBqIc3sNGjwu", "name": "bCm46aY7brbuHvZV"}, {"code": "BTw0lMHQ8P1DvHjP", "name": "4eUVurvHUmFYr8S8"}], "countryGroupCode": "Qc5jkJdPq5Y7lykv", "countryGroupName": "twGd05Moxk3MhcGH"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'y9mewLXjwwbZmUK9' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "sG9dw6C2Xfcll4Jj", "name": "4pFCxF4jFN1PIXhm"}, {"code": "9WVBBmGWzWRHW1eg", "name": "YxgP0GSHeJJTV39C"}, {"code": "R9hO1dT7HCTAGNUM", "name": "4c44VU2syilpzqLw"}], "countryGroupName": "5xwcO8Rj5rcLF31r"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'Rh4dXcjiAiq6uFAb' \
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
    --publicId 'fnpR5UB1Ug6eVhk0' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["HNOJBi48mqxM0X5l", "NIiCnGPQikn8vBvX", "bvLbnIYSewOgSHcd"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey '3D4XHINhimt4Jye3' \
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
    --userId '94mDDMKDwrQ1Vw85' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'WCmZilGdJqYnKFZI' \
    --category 'BexK4QXo44OpSmyx' \
    --fileType 'VHN3N1z5oA7qOpoN' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'MKO0JUVXzW00Y8hB' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'UNdjU3AdvlfTLu1j' \
    --body '{"avatarLargeUrl": "kSoZeQFNk56Ss4qD", "avatarSmallUrl": "FRPP1IawH3vZIzOJ", "avatarUrl": "BgI8bwgY9PsQehao", "customAttributes": {"lljmg2w247bdDVZ4": {}, "9ci390K3i1qyFWph": {}, "oDybXxufj2okT2kj": {}}, "dateOfBirth": "1991-01-31", "firstName": "uSOUm5wrFmEVx5Ip", "language": "gIC-WCgb_xi", "lastName": "K4HN00mfC0Jz6kFE", "privateCustomAttributes": {"j2nDk25FlnmM96yx": {}, "K1rvB9u5WfvDeHkj": {}, "5ZHUd94DHEWXqUnp": {}}, "status": "INACTIVE", "timeZone": "9HIg4tnPi9BLubee", "zipCode": "vddiA69RPcULZrpt"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '71QtZlKyxLlhQ3nS' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'RlY0edQxGMMrqRfQ' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'HaSqJRJtXbwpS7mP' \
    --body '{"ccPf5QIsyhORGwMB": {}, "KqGQyK7v8d2orZHk": {}, "3xXNTjM1cx3RIg6B": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'VLuMoeBrKcxeNWZ5' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'NlDdDknB7XCsZv5u' \
    --body '{"7v1X2BEanuU28LTn": {}, "SdURBLsgrnk1BBLY": {}, "zOILJXdUx7AD4PPI": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '2inBRZAfPcRrcqUX' \
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
    --folder 'x3kI9lxPuFLJJP4a' \
    --namespace $AB_NAMESPACE \
    --fileType 'anXbwgKh0C1KaDWu' \
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
    --userIds 'bV55HDD2uZ1YnQRr' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["XRz41bJNFt421Kj6", "Huk6X31isJntNTHO", "c8UMYem3kkPwhouo"]}' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkGetUserProfilePublicInfo' test.out

#- 46 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'gusj189j8vdyuIin' \
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
    --body '{"avatarLargeUrl": "zy2eeCJ4S8zk631f", "avatarSmallUrl": "aQaXO9whI34c5xek", "avatarUrl": "ejORtjmZG9E6N1zO", "customAttributes": {"IV1xPD2k5ZupzJXf": {}, "yxw6vOHsXMmla9j1": {}, "oOOS4iKcFi13dsqA": {}}, "dateOfBirth": "1984-06-21", "firstName": "tUdJPHpW3xm1BiRr", "language": "fjed", "lastName": "wCW2MF5c95tbXZs4", "privateCustomAttributes": {"jNxbxEktbvV0Bhjn": {}, "uq2wpiOW0fvCdWyL": {}, "svt2rzDVB6moFoZy": {}}, "timeZone": "e8k8P8ov46MyK4Bc", "zipCode": "gBhOrkbDhpuJDuOG"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "izgeHmvMs2XEwgYv", "avatarSmallUrl": "Ht4fkevIe1m1l6to", "avatarUrl": "w1X3CfV3ddGwp3fT", "customAttributes": {"Sf5VKVKCdoNHFaBn": {}, "4TcjqPEJD5l2GEhy": {}, "wsRiE62JGSkiwxXl": {}}, "dateOfBirth": "1991-09-08", "firstName": "hjBVQIK9HRh5rkXA", "language": "ca", "lastName": "DEjVm8h7y5HrUHM8", "privateCustomAttributes": {"TqKhwqkYjNpKiQME": {}, "mhk5Q5wu1cYQZGwC": {}, "5LfadHtnqnpgomAw": {}}, "timeZone": "o6YRIuBrjp6n6POu"}' \
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
    --body '{"0C7zjI9e39ZbXHzI": {}, "CtG4tCIAPxbSAO46": {}, "nK1XLY7nLKWns7yr": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "CuLkmvVE7E3dbn4p"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'tEGqrwfsRiR4ZdtJ' \
    --category 'lYU3s6BGrmhP8aJk' \
    --fileType 'fmKa8esDXIDZu6E9' \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'k1Iyf47TYW5jJv9p' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'A6FH0O6Zgvc5dJeA' \
    --body '{"avatarLargeUrl": "FWTfHjPBv5eczEXm", "avatarSmallUrl": "OIK0vJzobPTB1N4t", "avatarUrl": "2C8YYbUv3js9JWJ0", "customAttributes": {"FPKB9fGq9hyiV9fQ": {}, "5UAsFA5wSqqTvpOV": {}, "36nweegQZUkL9Cb6": {}}, "dateOfBirth": "1974-03-22", "firstName": "Ucv8ShL8UbXzZgx2", "language": "gGFY_ilAB_LB", "lastName": "3uCkSGKjTsjUwxVb", "privateCustomAttributes": {"UMO272htO1rpk2UN": {}, "cR33OQqB2GyeJKxa": {}, "Rk5QFpXuJ2hC7rUy": {}}, "timeZone": "ffC6nRnJcMOhvpG2", "zipCode": "085mrkYn3MwXQzJ1"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '9PSL9aLzJfsVZK0C' \
    --body '{"avatarLargeUrl": "gMmHgUPjUH4NDsxD", "avatarSmallUrl": "SRNDVFGkbTst97l7", "avatarUrl": "8F7WPfWHGLVlsCyB", "customAttributes": {"3XpJb6Q7Gg7tKV9z": {}, "ZLTv4WvjS2HYuUHq": {}, "Q5Ka4T9XcRdrApde": {}}, "dateOfBirth": "1971-03-19", "firstName": "8IZcp3zSLUgl6REL", "language": "AQ_ssuA", "lastName": "07FdWEwAPhsRsPN3", "timeZone": "itwTrgq7aZ9ZX6YW"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'i696n5YoFiRacPXA' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'VlK5P5kblW3bqWcP' \
    --body '{"2IeLDQhB4ifPlVjG": {}, "GZeRor0fMjIzI5zp": {}, "uaFuHt4d3IKGrEYb": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'zMNTBppsuOa0QRlH' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'Jd9IhY9MVEjAM9Iw' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE