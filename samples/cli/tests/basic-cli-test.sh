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
echo "1..70"

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
    --body '{"displayName": "SZ9UCd7bKkKnCApN", "namespace": "cldLFUy1lda3y34K"}' \
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
    --body '{"actionId": 75, "comment": "bD179Lmtr5s3doNx", "userIds": ["WfG0upEzDclUXcRy", "m4V230pAl8vqIkaR", "vWJfZpdpaLJxgyKT"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["KSlJpmjIR8LQJDfc", "ffeymC58UTYvocLl", "kpw4LByy80zruQ6S"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "1qMdWsdEUeT2K0vC", "description": "qgDFU68CbogNiEsy", "gameSessionId": "yFpLxwTzhzUXcv16", "subcategory": "x0Tx9p26sLAJQ5fy", "userId": "ckwZbCjwajboRlH6"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'HnhctlKv5IJSY67J' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "jQvtpHwob2gRYISu", "userIds": ["Q7hAbQ9mcAbDt0kV", "g6zH06uFntec4jw3", "7N7pLH0ShqNJQyat"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "erw3GVj5dCmQgv2g"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 GetChildNamespaces
samples/cli/sample-apps Basic getChildNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 13 'GetChildNamespaces' test.out

#- 14 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "i5J8yfnj1yIVm1Xn", "value": "txfBBaVkXXaawzFj"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateConfig' test.out

#- 15 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'YPvjkPJHLLhVp1KA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetConfig1' test.out

#- 16 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'c1n06nSv0tzwO1l9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteConfig1' test.out

#- 17 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'eKR56msNvitpFnb1' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "hEmlAi8TjanPv9kn"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateConfig1' test.out

#- 18 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetNamespaceContext' test.out

#- 19 GetConfig
samples/cli/sample-apps Basic getConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetConfig' test.out

#- 20 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'DeleteConfig' test.out

#- 21 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "U0OKTy7FQnDeBBWJ"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateConfig' test.out

#- 22 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder '4AjB00yQnWv06e8J' \
    --namespace $AB_NAMESPACE \
    --fileType 'cfTZ24GueBYCjC6u' \
    > test.out 2>&1
eval_tap $? 22 'GeneratedUploadUrl' test.out

#- 23 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 23 'GetGameNamespaces' test.out

#- 24 GetCountries
eval_tap 0 24 'GetCountries # SKIP deprecated' test.out

#- 25 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'KxspdcnuX7FlTmRu' \
    > test.out 2>&1
eval_tap $? 25 'GetCountryGroups' test.out

#- 26 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "8bRHbOayYN34qdbs", "name": "rkTI7lxhRvIVPTN3"}, {"code": "kqpJBKIK0WPRrbid", "name": "YjmI8I373A8owgVv"}, {"code": "dMkKJfFywFFIAGnh", "name": "ZWZmb9n1zsnMTUuv"}], "countryGroupCode": "rZ70lwZDjk2fMtYw", "countryGroupName": "AeMZ4Zf4bxw47GMC"}' \
    > test.out 2>&1
eval_tap $? 26 'AddCountryGroup' test.out

#- 27 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'xtsQq0o6zpFafw9P' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "jgw4wFc2PfR1MCjc", "name": "8FClHsYRBBbxh5Ac"}, {"code": "O62oIp0GpYsgY1pk", "name": "jDu9oBm0YxZ7ps33"}, {"code": "iq2uTxKXKpODcVmq", "name": "Vg0xxu1EteMrd7Lf"}], "countryGroupName": "qk0pcZzT9XVMkyfF"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateCountryGroup' test.out

#- 28 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'GXlgpXOzqmdJ4s7f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteCountryGroup' test.out

#- 29 GetLanguages
samples/cli/sample-apps Basic getLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetLanguages' test.out

#- 30 GetTimeZones
samples/cli/sample-apps Basic getTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'GetTimeZones' test.out

#- 31 GetUserProfileInfoByPublicId
samples/cli/sample-apps Basic getUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'WJUgNugHuptrq8nq' \
    > test.out 2>&1
eval_tap $? 31 'GetUserProfileInfoByPublicId' test.out

#- 32 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["IX8ZxRyWwRB5Oklm", "YGZQ0oLEFFsmPCxH", "gCwMMMOt2WGlXckm"]}' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetUserProfilePublicInfoByIds' test.out

#- 33 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetNamespacePublisher' test.out

#- 34 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'S943oFcSvIbafWF0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'GetPublisherConfig' test.out

#- 35 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 35 'ChangeNamespaceStatus' test.out

#- 36 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'LDa8sKvGStf1gaJy' \
    > test.out 2>&1
eval_tap $? 36 'AnonymizeUserProfile' test.out

#- 37 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'fk4YPyUId8ekfXdw' \
    --category 'YfA1xFZywKa5OqVl' \
    --fileType 'zZmTGjfcTtl24Bbk' \
    > test.out 2>&1
eval_tap $? 37 'GeneratedUserUploadContentUrl' test.out

#- 38 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'roZgBOtluC1qdDTq' \
    > test.out 2>&1
eval_tap $? 38 'GetUserProfileInfo' test.out

#- 39 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'IWm0J8h0tFTY0hXr' \
    --body '{"avatarLargeUrl": "Sqrq281xaLfkCWEp", "avatarSmallUrl": "UJr2TzNyAWRvpntf", "avatarUrl": "ThbwVtJLaestfJaG", "customAttributes": {"erlLDIiFm7eItc0m": {}, "okTgEjPMScvdJ4So": {}, "Rvf0M5CkfWwiYegT": {}}, "dateOfBirth": "1999-07-23", "firstName": "xIkBekBB4GwANF3y", "language": "JY-krQY", "lastName": "nKWug3HOkNhIXdwk", "privateCustomAttributes": {"og2LmmNlr3COZCyk": {}, "y5ow99j4x9ieU9iw": {}, "Up6m07mlExF49KG6": {}}, "status": "ACTIVE", "timeZone": "dTTRpmrF6aHQBp77", "zipCode": "ZJBfEhfgmkF6SBWy"}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateUserProfile' test.out

#- 40 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ynz5euRtYIiJohKM' \
    > test.out 2>&1
eval_tap $? 40 'DeleteUserProfile' test.out

#- 41 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'K9CDaKhPJrolwTSb' \
    > test.out 2>&1
eval_tap $? 41 'GetCustomAttributesInfo' test.out

#- 42 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'iufpQRUh7GRvIOZQ' \
    --body '{"c7Fnfl23OFMNK7fJ": {}, "jI6nAjbdIMyfD9l2": {}, "3WZoZdvtLwLeeNvP": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateCustomAttributesPartially' test.out

#- 43 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'B18tFBz5knsp5d20' \
    > test.out 2>&1
eval_tap $? 43 'GetPrivateCustomAttributesInfo' test.out

#- 44 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'uNpKXA48YnFtnrc0' \
    --body '{"xRErqg2zb1La6whL": {}, "XakC9yXXalx2jXSh": {}, "9muKrx4mDWpXyVvC": {}}' \
    > test.out 2>&1
eval_tap $? 44 'UpdatePrivateCustomAttributesPartially' test.out

#- 45 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '55x1py5CXtbtIo8n' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 45 'UpdateUserProfileStatus' test.out

#- 46 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 46 'PublicGetTime' test.out

#- 47 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 47 'PublicGetNamespaces' test.out

#- 48 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'aTXGN6fHYAgDFKlj' \
    --namespace $AB_NAMESPACE \
    --fileType 'm2wwLGYgCSBoq4FP' \
    > test.out 2>&1
eval_tap $? 48 'PublicGeneratedUploadUrl' test.out

#- 49 PublicGetCountries
eval_tap 0 49 'PublicGetCountries # SKIP deprecated' test.out

#- 50 PublicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'PublicGetLanguages' test.out

#- 51 PublicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'PublicGetTimeZones' test.out

#- 52 PublicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --userIds 'Oa3sSUEfbDLswoeI' \
    > test.out 2>&1
eval_tap $? 52 'PublicGetUserProfilePublicInfoByIds' test.out

#- 53 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId '6sxZTMGElberpEHB' \
    > test.out 2>&1
eval_tap $? 53 'PublicGetUserProfileInfoByPublicId' test.out

#- 54 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'PublicGetNamespacePublisher' test.out

#- 55 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetMyProfileInfo' test.out

#- 56 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "8ScLqLPuikhCkYZt", "avatarSmallUrl": "ljl9L5NtgWyOUdWU", "avatarUrl": "MAxQr45jnuFs3Wyf", "customAttributes": {"SCGglmnlomaIzle6": {}, "NHLN3ebUB5loph2Q": {}, "f7ABhE03RcnE4dUt": {}}, "dateOfBirth": "1976-10-05", "firstName": "1bqwit8zcjq0oL5R", "language": "ewQy-KVuS", "lastName": "pHZJPNbFjwNRQExc", "privateCustomAttributes": {"sEiV957FfAWBjZVB": {}, "a8L9IKUbVxe2gKxk": {}, "rzU3PTnVogPSvSo3": {}}, "timeZone": "RwqJ7s3ysvqb9zwN", "zipCode": "q42Z2VipqEkWst6w"}' \
    > test.out 2>&1
eval_tap $? 56 'UpdateMyProfile' test.out

#- 57 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "b0lGdAHf6SK3APnk", "avatarSmallUrl": "s3sGIgiXgwDQG3qk", "avatarUrl": "XAd5P9rU0iGltcYV", "customAttributes": {"vzBGqDmEymOYlDzI": {}, "6UsUsw3Fv57sVM5U": {}, "NZf0D8QbnT1yAssN": {}}, "dateOfBirth": "1981-07-17", "firstName": "u4ma003qnhKUExj6", "language": "NiQ", "lastName": "272W3MF9qoA5GIPw", "privateCustomAttributes": {"4qijekdbKGxdbx74": {}, "jwNfwQ2pC6mDkATx": {}, "U6xqLhY4wV0QgZCi": {}}, "timeZone": "cO2jcxIdcRX0j0l9"}' \
    > test.out 2>&1
eval_tap $? 57 'CreateMyProfile' test.out

#- 58 GetMyPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getMyPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetMyPrivateCustomAttributesInfo' test.out

#- 59 UpdateMyPrivateCustomAttributesPartially
samples/cli/sample-apps Basic updateMyPrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --body '{"Yz6GuOyjBmWc4RTq": {}, "oAYDJF9FSWrkWJDQ": {}, "4fQzkXBwzCQ0ITfA": {}}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 60 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetMyZipCode' test.out

#- 61 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --namespace $AB_NAMESPACE \
    --userZipCodeUpdate '{"zipCode": "ksK9Tm8sp8jciRox"}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateMyZipCode' test.out

#- 62 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId '6XbpiIXLSUkuu8vZ' \
    --body '{"category": "mmg3ruEezqjSZHNv", "description": "kfkfQ4C5T7QeVY6Y", "gameSessionId": "cBo4GPaDORPDm6SQ", "subcategory": "SkMkTbl3JKwQhCLc", "userId": "lzcUmpkCUBONzO94"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicReportUser' test.out

#- 63 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'lux2IhNy9GEoM47O' \
    --category '3myGcLuiAwbqJ2kD' \
    --fileType 'UYATL8EjSakdkFDz' \
    > test.out 2>&1
eval_tap $? 63 'PublicGeneratedUserUploadContentUrl' test.out

#- 64 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ppa2KozP6xzQ6Sxg' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetUserProfileInfo' test.out

#- 65 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ndANaU1av0ne1A2P' \
    --body '{"avatarLargeUrl": "q62Bm18m4dSNz6dM", "avatarSmallUrl": "bZX77TaY81QzOfOI", "avatarUrl": "V0BLvvcNtr275xZW", "customAttributes": {"itxWSDGQi57wsKJ0": {}, "m5llHYai0rU3MgZU": {}, "3yH7AluVqfGtJzwS": {}}, "dateOfBirth": "1976-01-16", "firstName": "3hkjg4uTUHq29XpF", "language": "hoOD", "lastName": "2dGLz8sOkMXZTEN2", "privateCustomAttributes": {"97XEtva1dexXRAls": {}, "3RPiKrbcUwRDY8GK": {}, "GMTDbwSl7PlVrTCL": {}}, "timeZone": "4VE0TN5Yjf8ObrIx", "zipCode": "ZuqAIfUks0JHNyf3"}' \
    > test.out 2>&1
eval_tap $? 65 'PublicUpdateUserProfile' test.out

#- 66 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'e8LUGf0LGqAbRqY5' \
    --body '{"avatarLargeUrl": "UQW2E38ZGav6fRMh", "avatarSmallUrl": "yald12L73DpGdLWl", "avatarUrl": "7ltI4zlHWrfIkV7x", "customAttributes": {"GC0Nnj9xaiT8p3us": {}, "AJ8RDplLfQkU8AAN": {}, "a6cKzd2oQ6AzpOhJ": {}}, "dateOfBirth": "1976-03-09", "firstName": "y5Jj3EXCsnmtJ8bg", "language": "CO", "lastName": "qU4qmywqTcE9ihIj", "timeZone": "EBXQOwzUonvJpGx1"}' \
    > test.out 2>&1
eval_tap $? 66 'PublicCreateUserProfile' test.out

#- 67 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'gD4HLHtmsNKW3dRZ' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetCustomAttributesInfo' test.out

#- 68 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'RytyjtvAApciTwsg' \
    --body '{"GsDiXQJwfXOS3zA4": {}, "9WUyRQT6SHVV7eFw": {}, "EoWMp71gJ0AORyZy": {}}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateCustomAttributesPartially' test.out

#- 69 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Bmo6LMqnHATQcKEr' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetUserProfilePublicInfo' test.out

#- 70 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'n2ARcmtpvgcAXTWI' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE