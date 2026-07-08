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
    --activeOnly 'true' \
    --isTesting 'true' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "G41nOxwllRqnU4I9", "isTesting": true, "namespace": "BdEwpe8yup3BDinC"}' \
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
    --body '{"displayName": "Nfe4AKdetunpej5C"}' \
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
    --body '{"key": "zNznAtOknUh3KVPx", "value": "c2g4frxFm7YZ4UEf"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'QU3YSV1oCfNasz2U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'uMeELwpAmmC6KXEH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey '14aoKN7VZ7nGq65A' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "Z9XYbGAFI7ivO3xz"}' \
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
    --folder 'AsC6Ps6GFSRqKaaJ' \
    --namespace $AB_NAMESPACE \
    --fileType 'daekyZqgV1S5TWvN' \
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
    --groupCode 'olxIp7Cyhq3mm01a' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "Ri7njZvOSi4Y359t", "name": "yqlef9O8KMLH1N1X"}, {"code": "wtqYH5gEdwltMj4k", "name": "UsdGNOOuLJYV5Mck"}, {"code": "f6Wyaz02XuC3nUlL", "name": "HGCwllssMnKymt3X"}], "countryGroupCode": "JkClp368Yw9i9zX3", "countryGroupName": "RPhstoq9C5AjhPmX"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'vowZQTUeExSnFcAV' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "pFKPprt9Enc13Kr1", "name": "016zHhSrZHtvGX3M"}, {"code": "xL7rJWqMyF6YOSG7", "name": "wZ0Jbqkaex64o59S"}, {"code": "gWq6Hc9m24tuqdGf", "name": "ZzUns0fKEkwUAS6d"}], "countryGroupName": "p5cbil8JNuSEk3TC"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'QDTdwVSCrA3DaUWc' \
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
    --publicId 'SIIp3sXQDLKp9XPA' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["XCh42P0xW2XCa2GU", "P6aL38XMTkqAsgKs", "3k6TVIR5aQVmWjPZ"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'Inl8bE5YlZrgJZ1G' \
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
    --body '{"isTesting": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTestingFlag' test.out

#- 28 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'TDF3Jhg6vbXJtQSp' \
    > test.out 2>&1
eval_tap $? 28 'AnonymizeUserProfile' test.out

#- 29 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'isAEJdkYrJcE7ZOv' \
    --category 'hJQLnE4mp9agUN3z' \
    --fileType 'o5uS1yHBNRkLTs9n' \
    > test.out 2>&1
eval_tap $? 29 'GeneratedUserUploadContentUrl' test.out

#- 30 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Dxmg6GiuTNRy2W08' \
    > test.out 2>&1
eval_tap $? 30 'GetUserProfileInfo' test.out

#- 31 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'LbTJ3jyoAPSKCWQS' \
    --body '{"avatarLargeUrl": "vrkYDqlbId7wzm3i", "avatarSmallUrl": "fvod5j7fBHPAh3rU", "avatarUrl": "LKQPLXde7cmFIrig", "customAttributes": {"SNvrrNpLWIKQCcHy": {}, "P5RgdIVXdqvvziVX": {}, "WaHjy9J262V7Lvpo": {}}, "dateOfBirth": "1971-10-02", "firstName": "Oidm98Hxip9pzjjL", "language": "wXO_cINY", "lastName": "OFFnxRFzVKsDcwk5", "privateCustomAttributes": {"X1y6LwsCXhCWD69N": {}, "vjmmylSC6tpBCf8R": {}, "NX0iB1sld5IjedGe": {}}, "status": "INACTIVE", "timeZone": "9FvpM9TsNuXtDZwg", "zipCode": "cGZ1iP3X6AmYD0Xz"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateUserProfile' test.out

#- 32 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '7T3N8M5KxXVkUtTT' \
    > test.out 2>&1
eval_tap $? 32 'DeleteUserProfile' test.out

#- 33 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'jiZ9kG7uWkGwBSfn' \
    > test.out 2>&1
eval_tap $? 33 'GetCustomAttributesInfo' test.out

#- 34 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'fzqyDVz1a8ppKdrb' \
    --body '{"Au7d0TBocMxBeY71": {}, "FU1RF6AIuyn6ydXW": {}, "tbl5kUhB1dbLHexr": {}}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateCustomAttributesPartially' test.out

#- 35 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '9cVvPHryMRAqMc3Y' \
    > test.out 2>&1
eval_tap $? 35 'GetPrivateCustomAttributesInfo' test.out

#- 36 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'kMtBWT0SUU23TX1Z' \
    --body '{"5TUw6p4V8FrtyM1N": {}, "UxtWTYLIcYRCe4Xj": {}, "3L1iwfWqJKmkqfDZ": {}}' \
    > test.out 2>&1
eval_tap $? 36 'UpdatePrivateCustomAttributesPartially' test.out

#- 37 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'wdR8Zw6wo29rhivK' \
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
    --folder 'Is22NLc7P9qqWbVS' \
    --namespace $AB_NAMESPACE \
    --fileType 'Hh7U8P6rNXpNhIpL' \
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
    --userIds 'WsESK3UtcWIT6vqW' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfilePublicInfoByIds' test.out

#- 46 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["gpCskYDewsxKZ099", "CxsgjdOVcMZv0Uea", "AwvrSTcDbnjlFi0Z"]}' \
    > test.out 2>&1
eval_tap $? 46 'PublicBulkGetUserProfilePublicInfo' test.out

#- 47 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'GRXl7gzWNdI4KFCk' \
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
    --body '{"avatarLargeUrl": "zIjERxIHEat7LmPB", "avatarSmallUrl": "VFjj9qLnnDgnF5Jg", "avatarUrl": "i2vHYDUqyECk2e47", "customAttributes": {"PMLIsg9Ldv1k5Ytz": {}, "Nby3yaE4R6PFKrEi": {}, "iH04up5OXQMRS2k4": {}}, "dateOfBirth": "1989-03-14", "firstName": "BU6fJWHihaMrYNbZ", "language": "lT-vKjh-tJ", "lastName": "GGNGTqYyF8IMcDxn", "privateCustomAttributes": {"Xv1npoe6Df7MRys3": {}, "bmY072MEDl5Q05LI": {}, "q0StCsZ4Od4NYHXV": {}}, "timeZone": "7t6Bv49sYWMWBz8e", "zipCode": "5L2jsz7yTueWRmxe"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateMyProfile' test.out

#- 51 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "DK2WIhj9nRjXOsPB", "avatarSmallUrl": "wOtA4amBekLTXYUT", "avatarUrl": "wd3a2vFRiHtgmxyP", "customAttributes": {"j4o8RcaMuJeNWohI": {}, "TYestpdF7OdkHtfy": {}, "I8HBBRkwPlNDsy7O": {}}, "dateOfBirth": "1995-09-14", "firstName": "iFZLMeswxNWojvAL", "language": "lg-kX", "lastName": "m0BGXwOvB5z8CKQc", "privateCustomAttributes": {"nx5g9bh9YZ3t7QzV": {}, "5qXVaNfuHKv39uw1": {}, "B3whM6ql6PwAAvjr": {}}, "timeZone": "HZTCePbiRuGm03rJ"}' \
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
    --body '{"3LU7J2nsxHS3exXw": {}, "WSvjNNOqA7VUbtUQ": {}, "vr1x8UCHK7rjkklH": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "kXXGqmRY25fpquWZ"}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateMyZipCode' test.out

#- 56 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'WZqSy1a3SOieNp90' \
    --category 'GVEbhs5bZMEjbLFW' \
    --fileType 'ud0DvPDrWZFucIBE' \
    > test.out 2>&1
eval_tap $? 56 'PublicGeneratedUserUploadContentUrl' test.out

#- 57 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'hQuv5QDYd3hGYOM7' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetUserProfileInfo' test.out

#- 58 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'uxw4vyt7ShmiTdKZ' \
    --body '{"avatarLargeUrl": "tjhRUOd8C7A6xsvq", "avatarSmallUrl": "TwspTihAWw3mUZ2C", "avatarUrl": "v1aU2fo5ZR8VNZIu", "customAttributes": {"xQcyCAvurO6Rax6y": {}, "gfYQH3KwkyNakdeU": {}, "Kvge0LQ999CDhLsW": {}}, "dateOfBirth": "1976-05-21", "firstName": "6dtYuIniLXLkekSQ", "language": "gZCI", "lastName": "TaBqUtE0jZnAOwXQ", "privateCustomAttributes": {"3I2LJVhanbUofht7": {}, "WkcISDVtoTMo2Emd": {}, "wlGKd5rymgh6ot9H": {}}, "timeZone": "9Y6eN3M98Gq6F06U", "zipCode": "v9CtO9opmyOrdDOT"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateUserProfile' test.out

#- 59 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'bVzmCze1iMZNoZij' \
    --body '{"avatarLargeUrl": "UOgoKXD5ZvdZG9V5", "avatarSmallUrl": "WJCl8qmnZI8g9pRL", "avatarUrl": "DQ1ksi6bexn1cUEk", "customAttributes": {"DTMqXbtcO2s0gw7a": {}, "ChT37z27NCzt8rpM": {}, "BqABYRclx2f2zHij": {}}, "dateOfBirth": "1986-01-31", "firstName": "n89iEc1hMPPZrlfm", "language": "wLro", "lastName": "Oo6UK79NMpcoO0Gs", "timeZone": "QsHaBHcX4y0AVOhK"}' \
    > test.out 2>&1
eval_tap $? 59 'PublicCreateUserProfile' test.out

#- 60 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Yand7D4Xss7JHilJ' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetCustomAttributesInfo' test.out

#- 61 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'dVkdMNr2IrSFYrJR' \
    --body '{"6UzbrPBdSp82spsa": {}, "WY5VSSyb0J9xgNKh": {}, "vvcYYyfmnUwOLzfz": {}}' \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateCustomAttributesPartially' test.out

#- 62 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'CL4q7CMSYRSN2Kc2' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfilePublicInfo' test.out

#- 63 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'BDsDcqIYXDgyXL1r' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE