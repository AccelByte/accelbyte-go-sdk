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
    --body '{"displayName": "3fbkuRIl16LOzVg3", "namespace": "SkfTEQNTTZvmXkCE"}' \
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
    --body '{"actionId": 40, "comment": "xMT8AZcbDHo1AnXq", "userIds": ["MPtL20M4l9CNnn5k", "HjYxCfES9OODVpLL", "GtfEWlSNO2YYeLnY"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["XlIRBKbvUJ2FGRl8", "L4lByd7KT1wlXViM", "sAyEMJNDnhN07FzV"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "xIOzXjZBAeBLa0bj", "description": "aUAYlmnaBQKQcc80", "gameSessionId": "GwJ7nzORsuj5jf4D", "subcategory": "W1jgL0ymhrkek21N", "userId": "GLefYtMvLSOBix8F"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'OPwChfOIi7EXQhR6' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "UjSstciMcaqOURFt", "userIds": ["0fJaDd669098O23o", "L9TsGlcsfmyDSW9j", "N00sYQiaYSJ3bqcX"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "34QPYWDvTv9W02CN"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "QvaVGoqkuO3b6Dsp", "value": "HB9hkqr4borKFtK8"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey '8oLEEYq5YTafMS18' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'eL9mZf5dsGfDgBC8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'LIT8RGhEQ1b0Rpyo' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "YodMGWkpxsLHR91m"}' \
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
    --body '{"apiKey": "EJKZfQJ9JXq6wUei"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder '0QbNTkrzDiYGZv8a' \
    --namespace $AB_NAMESPACE \
    --fileType '8CDrh8xX7RU1CaeN' \
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
    --groupCode 'J821kKpIorlKvFWi' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "VCgPOdXc5ZO2SZze", "name": "pCOoNIQvN1OvV637"}, {"code": "HP4vjGKU9MTIXfwh", "name": "WRl3uoRE0JalnmBD"}, {"code": "nf2gpg5CMJ21In2X", "name": "MPxGlttTb0UqpRQh"}], "countryGroupCode": "ed9thr1k1CaNz9BM", "countryGroupName": "JnR2zb3kfjmfZLa6"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'OjLuaBHmxXNMXOmE' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "7vMalAL3eAxkDuG5", "name": "LxlAyLAz2F1MP49k"}, {"code": "AsvaxJpLoMLCzOSb", "name": "f76zioArVCnwgfaT"}, {"code": "xJMFie3TTqliK1nz", "name": "ljFq3leeNjnOdPvh"}], "countryGroupName": "W12C5os49hLCdxIE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'CbvbPmAsBr5uzP1L' \
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
    --publicId 'oTv1XpZi09Qd7CDO' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["YDHzQTbvbWWKGSR1", "PhSZv2CqUQydrIJW", "T4syZGrNfJYXO6L5"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'zfypkG85DFO81O83' \
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
    --userId 'W58YGEJvlKuaqDsZ' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId '3sLLadXk49OsAs06' \
    --category 'Pz2lxQdrX4DKBW0X' \
    --fileType 'UHhIidez1ti5YCXV' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'V9OJIGnMsnLtUX8f' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'w3NZp2mHox2MMD3h' \
    --body '{"avatarLargeUrl": "81G5EOVFehLwAA8z", "avatarSmallUrl": "LlUWVod9C6FYMEhC", "avatarUrl": "Rg30NPbPs1cfjbsJ", "customAttributes": {"ZAerpHyj2NnI7aw0": {}, "yMxVWZmPBwH1wabp": {}, "cKhNB5cqiQmdo1Be": {}}, "dateOfBirth": "1991-08-11", "firstName": "cPM3uB97y38DDGKS", "language": "VUKn", "lastName": "olebKO4ZTLsFAxDA", "privateCustomAttributes": {"FURCI06iOD6qFjZ7": {}, "CxEH6ss6iwfHcbb4": {}, "QNWQh0jpno25hzoC": {}}, "status": "INACTIVE", "timeZone": "BpT54VlVfvqQno4z", "zipCode": "aoL2pIWtBJfuQEaz"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'SStngNXYsraT2Rgd' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'pd2p4NO80dB8KT58' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'D1vP9XMYy3Wh0la6' \
    --body '{"6zm7ixCxD067LV1B": {}, "gXjbgaMpyrdpWZCd": {}, "FdPKxRsLakKANa5T": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'EM8xcrmzc3VGVEPu' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'BhIEYl1TIuXyskqc' \
    --body '{"kMFs1wluRmTbc7K2": {}, "eum5RDO0s4iIP4Jl": {}, "vtqb8ozw8N35cM1C": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'fJG3fmwPUgdBnDtr' \
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
    --folder 'vpcGPInbw56qgvnS' \
    --namespace $AB_NAMESPACE \
    --fileType 'sjpvse02HIYvBfIB' \
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
    --userIds 'AHX8BdKf7dgKK3kS' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'ZUcPMaJb9ssXZ13n' \
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
    --body '{"avatarLargeUrl": "DzEpzKyQZaVJP8DG", "avatarSmallUrl": "2BzItyhZqrdIkgmd", "avatarUrl": "bjKpnPpUwvUQWZJE", "customAttributes": {"lQMqSpek1oUL4V2c": {}, "QXEgda3yl4KfASXs": {}, "aRprHYdHBAUcAkYx": {}}, "dateOfBirth": "1997-06-09", "firstName": "YLOVY9DxilHvUPF8", "language": "fY_600", "lastName": "g4Gwoo4IKGvoqsyX", "privateCustomAttributes": {"a5Ds0sgSyTWWz6uL": {}, "Vy7D3iUjFGOPUGIU": {}, "pQnZ06IhCCaR7DTc": {}}, "timeZone": "lQPv4gt4QnYvsuoF", "zipCode": "m5Oq7DI4LrYvAbQi"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "B2tYvbBdYnGlzzpA", "avatarSmallUrl": "iExBSOtttgywf7Cz", "avatarUrl": "nVfu4yg1dqhLctk1", "customAttributes": {"jkl9QPAYT2BbGwnf": {}, "3M8bOCdYbRhO9KhB": {}, "HYNRsYA5pRXGJlzq": {}}, "dateOfBirth": "1982-04-01", "firstName": "rwWFg50jSkQgs32b", "language": "BE", "lastName": "gKDKibb0QsD8TNpa", "privateCustomAttributes": {"SyH15J1utEdE3Pw3": {}, "ac3WQvG9DPby1ciJ": {}, "h6A7D0Zi4V0UYAj8": {}}, "timeZone": "UgYlx16RGWukw8Tr"}' \
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
    --body '{"tPez4LFO7mqhivO5": {}, "FOMIHUy0CmapSsYK": {}, "awXlj44xi6EcB72n": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "4YE4M9bhNPZBcIIj"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'yJTMiq1UinmAygcp' \
    --body '{"category": "zway8F3eQvTODet5", "description": "2QID4Gdl4L7g0b6N", "gameSessionId": "E7r4gPPiWGpQGkZO", "subcategory": "dBqw2BOGXyHEiC9n", "userId": "hHGckfvJUfXDm3zg"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId '0lLjaodYKtl5Styn' \
    --category 'joo0jIM7fbwHkJnG' \
    --fileType 'S6YitmyuDv7AHvXU' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'MaGaT6evCRcl2mf3' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'rsPB7N5Wkuw6xyGe' \
    --body '{"avatarLargeUrl": "tHGfya0gFNzSAABM", "avatarSmallUrl": "5RqTwWjvaTB7KMp4", "avatarUrl": "yT8TTrw58lFHVRE2", "customAttributes": {"Yz15fr1Iv6I1zJ5v": {}, "l5N4Wb04dZgRSsZb": {}, "iFBTQ4K5vl1sA30X": {}}, "dateOfBirth": "1986-11-20", "firstName": "BqEXqyWSOmTUxALN", "language": "dHhi-992", "lastName": "yImOqu86OGFbVELT", "privateCustomAttributes": {"FxgytJwC9lpOQ4vI": {}, "VLbIQJS9nvCC5QPH": {}, "HvWPTOeiL0lfwJ3x": {}}, "timeZone": "QJSjmfLtavdMU2oI", "zipCode": "wNU0sMYoKSoSoY1D"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'knsOcOw2VXHoFKLZ' \
    --body '{"avatarLargeUrl": "5AoovToyDxI4kRsU", "avatarSmallUrl": "bKn5ncJlZUMSBLxb", "avatarUrl": "uhTkDd4aoLWzva7t", "customAttributes": {"TFaZzEh9M8OlOcJS": {}, "LZ00QYm7OddmsbVK": {}, "IDYpVd85ciu0LoAF": {}}, "dateOfBirth": "1972-01-31", "firstName": "C41N0Dj5KJFkrfnY", "language": "Uuy-OOeC_WR", "lastName": "8AqhS43dnh5tbper", "timeZone": "Eg0JzxdJsRFNDlK5"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'bf4buwPe58vdGrea' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'gIPkb7fBQw8gObFN' \
    --body '{"B1vv9JCT3WsXR1zd": {}, "voZWlXuSiY87X0VP": {}, "T7YrqYNVrDd6v6AF": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId '0666qTsviXE88rcH' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'OqUEDlk1PL72XqX5' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE