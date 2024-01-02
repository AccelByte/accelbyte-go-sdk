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
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "4zEPjlAJXXjEWGUd", "namespace": "1BRNTUipNTxHW19O"}' \
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
    --body '{"actionId": 22, "comment": "oE4lTzYRL4eaq1aY", "userIds": ["uu4RsnFicGMrLh8e", "U078mfK45xRLoKRD", "HrTtUrVIi9j6ULYL"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["NrUIiQBwJ3pZujd3", "WxEYavyO0zo5WQUd", "YbeCsvzEqUH7ijCz"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "rh85WRsuNE0EB502", "description": "AlbjI6QSRAcyJju9", "gameSessionId": "eoAusOf6cLs4AnMd", "subcategory": "TjEPaNn72ZjlwgL7", "userId": "Tr4W1DMGvvn0wlSP"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId '0kYWMTljPhpGen7O' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "GLdCUI7W5GCVIK6c", "userIds": ["BFzlXWdvaOoGsTRR", "tONz4AJGy2r65dDj", "rAHJeBMCPqxVqmYk"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "9j1HF1ogZzqTEVnv"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "2OEaKUOn6OgM1j3u", "value": "9TwcOr31aFhmKMPh"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'SmHJhNUYvdKqBlrY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'g9BKOrWWvVgkAI67' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'pCREr1MbL8ry5Hwe' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "nuj5moVdt1L8UHfa"}' \
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
    --body '{"apiKey": "CZvHbeseN5jWyBAn"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'wVHYORhJF2ZLz88w' \
    --namespace $AB_NAMESPACE \
    --fileType 'fds9Pu42qtLOoOpM' \
    > test.out 2>&1
eval_tap $? 20 'GeneratedUploadUrl' test.out

#- 21 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 21 'GetGameNamespaces' test.out

#- 22 GetCountries
eval_tap 0 22 'GetCountries # SKIP deprecated' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'rh4YtP0nbQbB2LCz' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "31EGuhKa6PMxOfBn", "name": "pMxVrYAPfWG6oIB0"}, {"code": "T6YKyaNa6CqczbOQ", "name": "Op8YtIrAv2IY1FCj"}, {"code": "gbrQJ88sYvM14VvO", "name": "DBMuO10o3XcFZL9A"}], "countryGroupCode": "lRI1i3VIiTvsafcr", "countryGroupName": "2RBvcWqxWZXZMP41"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'VHhIHCZMd0WcfyXv' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "wkSbq13AZuAzPpGT", "name": "q0rSU6GHTI2HZKji"}, {"code": "sFwuJjoPXQjmvwYN", "name": "aVvmQ9dWnzJ2K6Bu"}, {"code": "dTG0UCz86yPpdwtc", "name": "q9Gpw0tD497adwGh"}], "countryGroupName": "8K9Y8ZQkQj7D4jql"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'bwwGWxejSoaZcGzD' \
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
    --publicId 'cRwYji8gdsqm1bP3' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["DyjuoY2GNUqipjcS", "XiQMJISRqXvkeW0V", "O6Xk152ab6QZWCmY"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey '3nDP0s25aQaMsNAK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPublisherConfig' test.out

#- 33 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 33 'ChangeNamespaceStatus' test.out

#- 34 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'fM5JQmZHTByE6DGH' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'GjMmGxlomfrguesg' \
    --category 'byIGtdqlEMuADwVG' \
    --fileType 'SP3hHHypzNDmWmJF' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'kEFJUxPGZniMGjvz' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'tsAlIkVarzbOfv8J' \
    --body '{"avatarLargeUrl": "ogoFkejbZs9AFxdW", "avatarSmallUrl": "gimb9K5KIx20pGLo", "avatarUrl": "r3EW0ZS7VqdzCUcn", "customAttributes": {"rg2oR2hDhbsoZePv": {}, "4vMt9JVNs3TFxVk0": {}, "QN5z3SNGqFfaLfTe": {}}, "dateOfBirth": "1981-03-29", "firstName": "gPKK1acOaEPu5TzG", "language": "Ep_650", "lastName": "2CIzZgGqf6miEEgv", "privateCustomAttributes": {"qODCm0KP0TVTs02T": {}, "k7b1AMISySUUTtCO": {}, "GApfrgYYaTOGcw4P": {}}, "status": "INACTIVE", "timeZone": "Mwa7MoPHUtEwbLgp", "zipCode": "HPg8UnS3pNypeA0o"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'o5R4C3LFVYm0pI0n' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'UXhA0J7Yap2C8ike' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'HZ32mUm1kjDHSDtR' \
    --body '{"Ray55gaOHAyIa15Z": {}, "xChgsgHuhZfsMBGB": {}, "V869KG3r4DaGusmx": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '48tTUl1lYjODNOrb' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '2v2cVyTCFvqB5LTo' \
    --body '{"kcrEB04cKd3g7wTj": {}, "jpZpC3HlDZVscPrs": {}, "IzmCYoMc7UqkLRxO": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '73Pz1qJhA7hU7Dv8' \
    --body '{"status": "INACTIVE"}' \
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
    --folder 'USHt0wpiEIEKpiku' \
    --namespace $AB_NAMESPACE \
    --fileType '8cifw1KqyhZC4zym' \
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
    --userIds 'mWWAatgvTFnFsBE0' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'DvtUev48Zcyzh71u' \
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
    --body '{"avatarLargeUrl": "bPK9d19ORzd5YRf4", "avatarSmallUrl": "D5YfxDFj7UJx1HJi", "avatarUrl": "rrYXo6q1jNI95a6w", "customAttributes": {"v6ATHVodhwuzSu46": {}, "tonZbNpnbukzOjxg": {}, "PsSnZAYNF81a1sfk": {}}, "dateOfBirth": "1985-06-22", "firstName": "Ndgh4zk2OKvPXuPP", "language": "YA_UA", "lastName": "1ChXgwtcJxmCZ4Lm", "privateCustomAttributes": {"56W8JnMp1Qaec9U7": {}, "PyCG8aeXXg4mODVE": {}, "KeKGiIfDAoxsZTF4": {}}, "timeZone": "h3pAwqSmoaUVVgNG", "zipCode": "UmvzYPyUkLGOKgL9"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "jJTf9AH16T1hEWeK", "avatarSmallUrl": "AjTkF1AFN2gjQKKZ", "avatarUrl": "ToIfoNoFtqVuPule", "customAttributes": {"xtJihCl2KNiT4qMP": {}, "Z7HkO2OMCWefSVH2": {}, "FnnifjrhCzwmlPyV": {}}, "dateOfBirth": "1988-03-05", "firstName": "WpXirmUEKiYjA7DB", "language": "WyqW", "lastName": "wZenQ6wwNIP139Vv", "privateCustomAttributes": {"MVQKWIB6yGnK4jzI": {}, "JN43eU89u81yDBgT": {}, "X5nJcXJeBEVFLPO4": {}}, "timeZone": "Xl5alysXStmUXtPy"}' \
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
    --body '{"ry9cpkZ9guqVJ7g9": {}, "sjLbwFWjzZm6yMRK": {}, "4YaFcfkqOk4KsWxA": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "3OYEMREQQKz9AKmQ"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'at4bLTEa9odioYuM' \
    --body '{"category": "Ytm8xaSvK1ZyMYrl", "description": "3cj7NTHkCDsKh3cD", "gameSessionId": "iQrEL7t2BvWLhvTH", "subcategory": "hTWFKrbuG3ct9hZ1", "userId": "4p2kmZvvhhQbeEpz"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'ZC16z2ZZnZdx2C1u' \
    --category 'm7uNGG6liRqQHc90' \
    --fileType 'TjaYdQW483yIKOhV' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId '1BZAJPc3DMUjJILD' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '387HWURb7EWEQvP0' \
    --body '{"avatarLargeUrl": "Y8rufUQy5bw5MHtJ", "avatarSmallUrl": "oa9sDaS2BlnJhbd2", "avatarUrl": "bA3KqE0xr43GMZcC", "customAttributes": {"RPTjEvOCf98hCHUc": {}, "eRUMYK6AFHRlH3d0": {}, "FJJtfwRLn3d7oIrd": {}}, "dateOfBirth": "1991-11-13", "firstName": "2Y4FJopDH09uA79g", "language": "Cg_744", "lastName": "4W2fwbXtBwakluWr", "privateCustomAttributes": {"fupoRLpKjzwI2CDz": {}, "KOGuoT1KMarZ17kW": {}, "wsvQpGosYYPAQGPl": {}}, "timeZone": "LUE8Z6ynXvXuGClt", "zipCode": "x97VA25yk85lWy7o"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'hxsZT4zzhv2IMd3l' \
    --body '{"avatarLargeUrl": "h12eRo0O1ZJbhcC6", "avatarSmallUrl": "fKueg7aGc181qPiw", "avatarUrl": "z6ojPmZQEHXLLn8e", "customAttributes": {"XVjtMcLsknNnIxsc": {}, "y5OGrfUzQEtvcv3d": {}, "xoR3OqxVYPilptbx": {}}, "dateOfBirth": "1982-03-23", "firstName": "Esf3QahZEDVRtx1N", "language": "RaB_shGq-881", "lastName": "LVPlhvPCrBDPYwrn", "timeZone": "6UvaR60GXdqznyX4"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'WAbJY4cTlfF2uc3h' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'K2R2vowAzb9RxVv7' \
    --body '{"A5pMWKT85e43Emk3": {}, "RQXYGr6Fh7Wbg6VL": {}, "KVkXuzOproOlvwOF": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'AYpcpYq79w3TskTz' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'z0A79fBfNK4X1iUJ' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE