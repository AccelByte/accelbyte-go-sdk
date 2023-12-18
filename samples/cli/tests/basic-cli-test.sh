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
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "TIbhAlb5MEFHnPzl", "namespace": "ssWK2tyGGRFXDWe1"}' \
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
    --body '{"actionId": 78, "comment": "LTjmLotY6MzG4uee", "userIds": ["qLObRNmq5MJnUppR", "1SQ2KOCKjKySC30L", "22OXmk8fLifOzSg7"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["5HVaJNdVn8POg54s", "YcKoJPIOK2niKooI", "JPQrRGxOJKVWmNW3"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "ucbNEbscuU79QUmx", "description": "K9tzgwWtW0MWVNvM", "gameSessionId": "4FPv8xbxdMLFUhTd", "subcategory": "LswCRhfHCri2EdoE", "userId": "bRzypSNl8XvE708g"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'm4GHmqnzjvpuMx78' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "xqVJ03UfAncGUcJq", "userIds": ["xL3qHyXKd4M429gz", "i2aTHObXwruI0F36", "R1dkMjXxpkDshlIL"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "fptEFt8PEZ3m4qGL"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "r4EF7F6UAJaH64W2", "value": "1zhxV3wvPo4UYTY5"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'M2QVfla1tOFrrnLm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'cXUEInBwaziFjE0r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'aAt2kQZSwUut6glu' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "PcNc9LJjuseqa2Js"}' \
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
    --body '{"apiKey": "FeQkQ0c2E474J3VH"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'jRGumUsAwrqfx2xP' \
    --namespace $AB_NAMESPACE \
    --fileType 'lfBq2tqz5RstNq3P' \
    > test.out 2>&1
eval_tap $? 20 'GeneratedUploadUrl' test.out

#- 21 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 21 'GetGameNamespaces' test.out

#- 22 GetCountries
eval_tap 0 22 'GetCountries # SKIP deprecated' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode '03iiVNmDMWhUxn23' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "DXl02b3ZIRhu9gO1", "name": "kLNlKjCRHS7DnViY"}, {"code": "Xfd7JNlbOQQCb1MS", "name": "w6UoniOhc8GKDehC"}, {"code": "p7FEAXceoAdNYdi1", "name": "n429MjmcHumuo7Kh"}], "countryGroupCode": "3wOznk6WL9VA02JM", "countryGroupName": "s3e1BkahRdGzr0Z0"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'nl3LDVMz6lIy9FgY' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "MxRDWJ8sEqciMyBi", "name": "5qt4GrUwMqpk70yv"}, {"code": "eT8qcfR3rsAmLi9s", "name": "HBEF9mhCsdH4YNOd"}, {"code": "wW7cxFA4oQONf7pR", "name": "vvlYANmzVFRz8WmO"}], "countryGroupName": "CZwQValcobtwEbzy"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'bkxuXGiyfmYD2GE5' \
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
    --publicId 'i4uaTakMccwMBABt' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["0KT9kfBhHobMChj2", "15uwhKBpeNmsCD5h", "PY17dQsDtjCKYvlS"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'qW4PvEVHqIKJNvrB' \
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
    --userId 'tcjcKOTFt5f7vYe3' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'kgJfaKZ2io9xu7Mx' \
    --category 'qNf6o9Lqdhc0a9EY' \
    --fileType 'DUqJs1RqUhNLgBDq' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'etoQJ7ycBpRXU1Dm' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'VG1LsXT6VhTJwnfX' \
    --body '{"avatarLargeUrl": "yXE8o8digpZ7j7s5", "avatarSmallUrl": "NBtBXQcsgn0rtmgZ", "avatarUrl": "pWQsK0YO2LVYvOEe", "customAttributes": {"PNJIveHecC7sYGS9": {}, "gAle0L8U3dZrX1hy": {}, "mIKoGMx3ZHeHqiP5": {}}, "dateOfBirth": "1984-01-21", "firstName": "eTdwfgEF1Nsj9W9b", "language": "sVNk-KPNI", "lastName": "NnJB1RbnCQ6DqhrK", "privateCustomAttributes": {"VOjPvIyy3h679vEi": {}, "07KehrXYyPRgsdQJ": {}, "F8mTQOCSQI7krpMV": {}}, "status": "ACTIVE", "timeZone": "FGum88eJEjB8WB8o", "zipCode": "v7aqljdgj9yJILSU"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'lszh6Xl4gedmT0iO' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'E0ZtLCZaTqCXCjKm' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'KJ71yG2fYGNK3Rl0' \
    --body '{"zuMhsZSQKkZ0LKEP": {}, "5dv8FJ4MwhTqI62p": {}, "CyDLPLwstbXGRrJV": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'QWwEXfEPDTLgRRdQ' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'msMQutYInxIaBUSh' \
    --body '{"UYXRlIqRBAddYB64": {}, "xGoeLu9zVXIkz3Xo": {}, "ptOittI8aD6dy2UO": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'XPI8xHBkVCwGDiZL' \
    --body '{"status": "ACTIVE"}' \
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
    --folder 'V8QnmKDVMPWcNijL' \
    --namespace $AB_NAMESPACE \
    --fileType 'vvUqJifJUiVfZYDk' \
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
    --userIds 'jhRKl3UfwAk5eRpD' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'McDhDXYlDXOBvfby' \
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
    --body '{"avatarLargeUrl": "qoyJFCjfwbTtwB1s", "avatarSmallUrl": "n6avBVfc5MRpBIq6", "avatarUrl": "WIxxQ1AYtXJ3rzBW", "customAttributes": {"5HZ2edG40AZ29jsK": {}, "si0X5hBQQYuP2gvW": {}, "2OLl2UpVxGoK2Ly8": {}}, "dateOfBirth": "1973-01-08", "firstName": "iuHQUs3DlNpKHWNB", "language": "NYOI_lBDK", "lastName": "K5l04IMaK9uIy4ap", "privateCustomAttributes": {"NMFLMxaGLsPy8uMS": {}, "wBgOAJ77U1MWvY74": {}, "4sO0zJI90L0VDh5E": {}}, "timeZone": "3PmkHtJEO5xkIkCC", "zipCode": "xX2IX6lfv3BY2rde"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "lMP71qlqs6YmS3OM", "avatarSmallUrl": "ilaBMCIg2atMdl2Q", "avatarUrl": "MLWvpMi4KmIhX4hX", "customAttributes": {"u0MRLy1ZE9Q7EdYC": {}, "SCRkZzV8X1kpN52k": {}, "Ab2nzaS4JfsJpZ0a": {}}, "dateOfBirth": "1980-04-08", "firstName": "nkdx99WJ21vkgbMU", "language": "lrRW_FGSt", "lastName": "v1Ue0EA824Epgl6g", "privateCustomAttributes": {"hvj25DOxIdnrnEpV": {}, "7czp7z1g8r14zDof": {}, "4s1OYUGLAWr1BjDQ": {}}, "timeZone": "HYplVBFfbO9FR9UO"}' \
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
    --body '{"n5n9zathEdeynGO5": {}, "dtaC2qd8LhdOAW1J": {}, "JQQLux8fFu4RN3WI": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "SQP2nYuDaZsqclsC"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'NgLaFzNfNBxT8ltF' \
    --body '{"category": "uyc2Dt1tFsU0EnNp", "description": "Qr4vy1ADTGLpuiiD", "gameSessionId": "rN3g3rFOYRg5YJyT", "subcategory": "taDmTVHmm15z1sem", "userId": "uck4SewqF5en5SHi"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'nOJkf1S0fE684cV6' \
    --category 'JN6pZmi7RRmo0bUt' \
    --fileType 'bu6ylGdNg7h3C6Mj' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'iKjC4MnGbcp8QORB' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'L0tNO9sHKk6vy3TX' \
    --body '{"avatarLargeUrl": "3LPUttUNN7LmacHY", "avatarSmallUrl": "lnb70wHKFZLd3oFG", "avatarUrl": "fL2HYfTwwqPK4x3k", "customAttributes": {"3TS8KpuLm3XwdqVI": {}, "NCzObYc7EeUyr3fO": {}, "E274VW4esGK9UyQ3": {}}, "dateOfBirth": "1999-01-16", "firstName": "DOJsNjQZJRSGyFAP", "language": "nsf_NKmB", "lastName": "GtKtgURDL20qm7MN", "privateCustomAttributes": {"IcyiQU65S6NcLksN": {}, "r9tSZptOHs6XgFsg": {}, "Mvo2CxdTKNkuS7LT": {}}, "timeZone": "ZFuPxSqkuRPIw0Kf", "zipCode": "2V6BEOAOsRWBSzeR"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '4o8TJn2NXdQLwmJb' \
    --body '{"avatarLargeUrl": "F2g0AzrMfcgDzTFS", "avatarSmallUrl": "DnEcayFVRblN5hYt", "avatarUrl": "7hJDOsO5m2lsHJuI", "customAttributes": {"FlJe9jJhG809MoxP": {}, "zx2vMmE8uDZw2uSw": {}, "kkpsr4b7FTehbuoA": {}}, "dateOfBirth": "1975-04-08", "firstName": "KzvxMMiS62STXoDw", "language": "ly-BRaK", "lastName": "3QuqRgPSdPqGtVuJ", "timeZone": "RbFDOO7ul8YiIbFS"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'H9qwjQWTXreeosah' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'lFnKpDj3yDkVAaYN' \
    --body '{"BjR1QBdxVRjs45Qq": {}, "anz766GRayT18kRP": {}, "ZWfLsH5JWOZBTMvQ": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'vqTesN9CXbhhYgKH' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'cmeAWHx4sOqmtpcX' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE