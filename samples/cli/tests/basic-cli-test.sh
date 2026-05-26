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
    --isTesting 'true' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "b5Zec17V5xtdRyDS", "isTesting": false, "namespace": "wxGZQcnWy8BwmUQZ"}' \
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
    --body '{"displayName": "TkxOoh6ZGOkS69hh"}' \
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
    --body '{"key": "diyd6djBBAFRZQ7a", "value": "njZ0mS35jXvWKT4r"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'SgrnVt7zFnaU3XCy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'JCzfhTA1UcopplNR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey 'vUtuQzhLbHlaEg37' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "J8Qx99scI1Ht6qMD"}' \
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
    --folder '21f4V0RwdbTo3GAJ' \
    --namespace $AB_NAMESPACE \
    --fileType '3nbjJuHYTr3q84yp' \
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
    --groupCode 'hNf352uIDYgK7HYV' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "rQ8XGD4xo7mWtk3p", "name": "HC7QLm02nGKt7eyu"}, {"code": "yISvlyjpa3YbKjvr", "name": "W8j0300L8ipfZWkY"}, {"code": "R4JCDln6kHOrdnhd", "name": "jIUiqNUTqbzEPvyN"}], "countryGroupCode": "WgUyutgIJaLHWFfo", "countryGroupName": "UhLIjnQVhvOyHRzh"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'ntnIqPrT6nC6oDju' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "kkLW3jRxMm2kciAG", "name": "wwGbk9PbWfhlIfkK"}, {"code": "GeeWt35UvnHYhpa6", "name": "KJLuvOWfeAjqN2cB"}, {"code": "xoBFfqMJOQ0qCPEi", "name": "mMfgRMbtXa6lK3WL"}], "countryGroupName": "EUR9y5XhKhRcxNqt"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'mr8ZTV39GNSX45sE' \
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
    --publicId 'BIL3E7drEgOm5Jd1' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["2ig8zSOslbAS87CC", "4SJKr0Re3cBxkhJZ", "U38ARLBHk7PqTHhO"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey '6LEFITWgDGU8TZe8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'GetPublisherConfig' test.out

#- 26 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 26 'ChangeNamespaceStatus' test.out

#- 27 UpdateTestingFlag
samples/cli/sample-apps Basic updateTestingFlag \
    --namespace $AB_NAMESPACE \
    --body '{"isTesting": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTestingFlag' test.out

#- 28 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'nGl6tmfzgSkLUEO4' \
    > test.out 2>&1
eval_tap $? 28 'AnonymizeUserProfile' test.out

#- 29 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'kOqSvkfn4xtAPkwA' \
    --category 'YnKrcRCuzXkIvgSN' \
    --fileType 'At5868LPgraTOFxv' \
    > test.out 2>&1
eval_tap $? 29 'GeneratedUserUploadContentUrl' test.out

#- 30 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId '5ll0ye7np7xQeRPO' \
    > test.out 2>&1
eval_tap $? 30 'GetUserProfileInfo' test.out

#- 31 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ZFUo9x49WJMH43lM' \
    --body '{"avatarLargeUrl": "QLs7Tv1z5XlKtegA", "avatarSmallUrl": "da6iIYlmLZxfRhEm", "avatarUrl": "blNIl9Xq7PSjQFtT", "customAttributes": {"vVKdlQwI7zii5lpV": {}, "8ME4O9GJEOTyQJip": {}, "gyiOZQSUO4xKtb8U": {}}, "dateOfBirth": "1981-05-24", "firstName": "artI6MxfFI9htJaU", "language": "SF", "lastName": "YNpSEOmLVEbfpX3G", "privateCustomAttributes": {"IkJPij8jedqApjIZ": {}, "Iu9RzYZCFrOYeBam": {}, "jZJr58ujzzXRqEDv": {}}, "status": "INACTIVE", "timeZone": "jUX8lGzbN8eQrdHD", "zipCode": "kGsZiTktdezQJUj1"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateUserProfile' test.out

#- 32 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'm6pw6B4ExdWrNYoo' \
    > test.out 2>&1
eval_tap $? 32 'DeleteUserProfile' test.out

#- 33 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ZEQuwobPESu5DeSk' \
    > test.out 2>&1
eval_tap $? 33 'GetCustomAttributesInfo' test.out

#- 34 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'tYh9GAgWIra1Fw4f' \
    --body '{"LMqpeB6cnezgaq0R": {}, "6e3E8G0uJ2uWLsLG": {}, "0E6WoXZ8QnbBUiqG": {}}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateCustomAttributesPartially' test.out

#- 35 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'SiGHs5QMP5Pr9ceJ' \
    > test.out 2>&1
eval_tap $? 35 'GetPrivateCustomAttributesInfo' test.out

#- 36 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'pu73o8NkAY1Vp19A' \
    --body '{"LAXQCYF0JAcWf5Z8": {}, "lvaqBLwKWIMNrhrj": {}, "wldfPN9ubwGt3p09": {}}' \
    > test.out 2>&1
eval_tap $? 36 'UpdatePrivateCustomAttributesPartially' test.out

#- 37 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '1iNrS5zCLKPpO3NG' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfileStatus' test.out

#- 38 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 38 'PublicGetTime' test.out

#- 39 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetNamespaces' test.out

#- 40 GetNamespace1
samples/cli/sample-apps Basic getNamespace1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'GetNamespace1' test.out

#- 41 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'E1blNibm71rWhcMX' \
    --namespace $AB_NAMESPACE \
    --fileType 'jmtMckDIdKY0p2vz' \
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
    --userIds 'KYwg2KeM3772HD7c' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfilePublicInfoByIds' test.out

#- 46 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["0aIunY9PR5YUz7xT", "RTRcu71Ze1EfUKjc", "iMDvBuxDFwG7mKmS"]}' \
    > test.out 2>&1
eval_tap $? 46 'PublicBulkGetUserProfilePublicInfo' test.out

#- 47 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId '99NU0Qvj1o15YwjG' \
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
    --body '{"avatarLargeUrl": "ssvX6eWCA3W0F4t5", "avatarSmallUrl": "nwAPrHwGNq1GVb0m", "avatarUrl": "wigpHhaQFgInd8lD", "customAttributes": {"7RMw040786v4IMUo": {}, "hhhpyOCM2chqgN5g": {}, "Wgk4ZffsTRqyKbxl": {}}, "dateOfBirth": "1972-11-09", "firstName": "iEb6nKTxLoUs7ip1", "language": "ulV-TXRu", "lastName": "mNt3O8KuKvV0Cnjn", "privateCustomAttributes": {"hnfJASZmdjiHyj3o": {}, "If4eZPHCoSosxTXG": {}, "Wy2I7mMWIXl8CqeH": {}}, "timeZone": "JDvl69U4c8aUOnyg", "zipCode": "VSawT6XzdaYXi0kH"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateMyProfile' test.out

#- 51 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "PVDvMb0ZYq1Su3ko", "avatarSmallUrl": "LfAAibTvljKXBcZx", "avatarUrl": "TQmQasmSpt0ygo8o", "customAttributes": {"gDX2quFOruWtUQ99": {}, "6hYdzPOPaOhiAtfJ": {}, "3WKUGz1m21PKNh42": {}}, "dateOfBirth": "1975-04-25", "firstName": "Ajz3pQmSBTZz0ePg", "language": "fKXt_SfPG-us", "lastName": "L7S0ATJ0MI65IwOK", "privateCustomAttributes": {"AX265OBIApaOgpDD": {}, "XNbpiZRs8snNj8eK": {}, "NY1sQwxQ92Shp0SG": {}}, "timeZone": "NhPpmJI2UiCCjD8G"}' \
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
    --body '{"OpSevauscqVziUxD": {}, "VR4Hnxn8Y0r24cJP": {}, "N45rY8TMlD7pjVJU": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "bXoUTCTaSEY3jPNc"}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateMyZipCode' test.out

#- 56 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'IlSKhXCnOzSDAkeK' \
    --category 'SodF8kjLq20gQ8c2' \
    --fileType '5HDE0qHwKj8PXSii' \
    > test.out 2>&1
eval_tap $? 56 'PublicGeneratedUserUploadContentUrl' test.out

#- 57 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId '6ieZ9jeSGlrxcqj8' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetUserProfileInfo' test.out

#- 58 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'p9ayu9ORx5ISoX9j' \
    --body '{"avatarLargeUrl": "plWRxOazZagcxHBq", "avatarSmallUrl": "brMbzedM9TpBbMyO", "avatarUrl": "TNMgOxl5ph7S6P9a", "customAttributes": {"NqqY4jE4aWSSBWDV": {}, "bCVz23F8HrIgdqLk": {}, "9TrBJy8ycGAEOVwb": {}}, "dateOfBirth": "1989-04-13", "firstName": "eb0qBETMEuQPXwy5", "language": "JTi-395", "lastName": "z1Yic8O9LDYyu56h", "privateCustomAttributes": {"lCQYaHFBxPQvSgE2": {}, "IixSDlwjbxl7xYOf": {}, "tWmMVIQM7Ow1kL4o": {}}, "timeZone": "UAfXuYElPPvp9Zyq", "zipCode": "Lrhn18fxQTAqiY41"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateUserProfile' test.out

#- 59 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'v5yZEcL0i2F3d8vl' \
    --body '{"avatarLargeUrl": "RmMuxPQdBdBlyWs5", "avatarSmallUrl": "pZ0DAlltpN6P67pW", "avatarUrl": "q0UMt61D73oNByjM", "customAttributes": {"1TUDCOKEsRgcF4Af": {}, "Psck6DO21qCf2l0l": {}, "c860ZPDU5K0bsLUi": {}}, "dateOfBirth": "1996-06-26", "firstName": "Cus3L11qfpIqDuPx", "language": "DA", "lastName": "WMTf5xKrgg7ou1EF", "timeZone": "bbGbKo60yH8MpEkT"}' \
    > test.out 2>&1
eval_tap $? 59 'PublicCreateUserProfile' test.out

#- 60 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '8QA8BGP08N5CsnWQ' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetCustomAttributesInfo' test.out

#- 61 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'pbr1GOUL0Fw2zgPa' \
    --body '{"Y43xEzKNKmWdl5sM": {}, "keBjnYp2JRtsBsWT": {}, "QruHJ46FWbBsss8Q": {}}' \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateCustomAttributesPartially' test.out

#- 62 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'TsDDrTOMaUSmMD9f' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfilePublicInfo' test.out

#- 63 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'gZ1rd332ePqWMJwB' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE