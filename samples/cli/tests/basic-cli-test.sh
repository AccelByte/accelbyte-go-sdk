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
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "HjmryaDxF1X9XUD8", "namespace": "QxTDw1ilCTgGspLB"}' \
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
    --body '{"actionId": 40, "comment": "bvZwoiQw4VNrTA7m", "userIds": ["B5PxD4lFCIHBE3za", "N8DY4PDeJqLWZbyx", "xHExbIzpIcvrYPVT"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["IO2RuizewUrQUzy7", "AXTEx3myDNGiI5tA", "KwQfnGFHjY7Gr8AK"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "7fl8SxKSKdbwvcHd", "description": "leh6D0SDbUTfGtjc", "gameSessionId": "cBtXET7CNsK6UbX0", "subcategory": "5ehmTeZOdqCjNLCc", "userId": "rDXX0mCvOIafNXnD"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'IdY19PdMuNlzmVxm' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "oZmaNtrW1SvtUCY3", "userIds": ["BAfs2pkeBs1NyUR4", "OQCHSM8MUhcoyiS0", "NDNgAOhJsp66nwzh"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "AWMsTdPn0y6SHsvq"}' \
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
    --body '{"key": "1ziZMYd7aWooOk4e", "value": "7813uxlFVCCQsovy"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateConfig' test.out

#- 15 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'EN4oGVurpffFMypk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetConfig1' test.out

#- 16 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'TPayW9Q2DXaCC4Hq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteConfig1' test.out

#- 17 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'faNgdJ7oyfE88EbR' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "Igz7J9iPZmVHSham"}' \
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
    --body '{"apiKey": "Wya0NXOhqnfXGtre"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateConfig' test.out

#- 22 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'S5qflUjntnI4RCe1' \
    --namespace $AB_NAMESPACE \
    --fileType 'h5oU5I5CAL1or1Mb' \
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
    --groupCode 'WQaADQD5ABYpOyzp' \
    > test.out 2>&1
eval_tap $? 25 'GetCountryGroups' test.out

#- 26 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "3oWnxSdYtIDj85aS", "name": "ILHrUMTwoW7VOZUZ"}, {"code": "xCPOth0EC1VP84ty", "name": "x7hnAXYgX4LNvpQP"}, {"code": "mpytNECzXfHp2gwK", "name": "s0dxdiQp5wu8RLkG"}], "countryGroupCode": "HROhRk5M2tUDkrAc", "countryGroupName": "3K6wuErq4FOt19gs"}' \
    > test.out 2>&1
eval_tap $? 26 'AddCountryGroup' test.out

#- 27 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode '222Tjsr2djdnZFz7' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "wIckbx2fMOJ65WaS", "name": "O7nMwdGzzdK090gM"}, {"code": "sPtCpk0d2IPhZZeK", "name": "7eH1QI5nNye3RTch"}, {"code": "AjkK7eP8hHjndZFE", "name": "whZdHhwTTCDdPS3W"}], "countryGroupName": "DkApoINgnpbawgtM"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateCountryGroup' test.out

#- 28 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode '0cdyTmVIQngA83Vp' \
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
    --publicId 'CKxfvT9wEnpld30k' \
    > test.out 2>&1
eval_tap $? 31 'GetUserProfileInfoByPublicId' test.out

#- 32 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["2oKRmPbDKOhfVEol", "l36sft1IiiraIPjC", "JBfAV38h1vMmfo27"]}' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetUserProfilePublicInfoByIds' test.out

#- 33 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetNamespacePublisher' test.out

#- 34 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey '0fcCe5vKtBPuiN0q' \
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
    --userId '5JTmy9kWpH8vI1Xo' \
    > test.out 2>&1
eval_tap $? 36 'AnonymizeUserProfile' test.out

#- 37 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'Jv89YRoAAqGQ1O2q' \
    --category 'fqZicEnyjwENkbbj' \
    --fileType 'TZlt6JT3DjBsEX5o' \
    > test.out 2>&1
eval_tap $? 37 'GeneratedUserUploadContentUrl' test.out

#- 38 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'fV39AheJx3ZZVtRR' \
    > test.out 2>&1
eval_tap $? 38 'GetUserProfileInfo' test.out

#- 39 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'RCGE3RiyfD67VMWG' \
    --body '{"avatarLargeUrl": "69033rJurVjyPe62", "avatarSmallUrl": "uNdjDHQmEGRThQSh", "avatarUrl": "wmM1ucHl7gETHpPA", "customAttributes": {"MFBQ4m83GxWcWeyw": {}, "1ug4biFywjMyF6Jp": {}, "EI51TqKjCK5ppdP4": {}}, "dateOfBirth": "1975-03-25", "firstName": "YShM5dbYJWXwaAQg", "language": "gc_sEjT-521", "lastName": "TWsDPk2LLud8Zat7", "privateCustomAttributes": {"YB3gTfPQq8b15R1m": {}, "UNzwJDtAkmliVLhO": {}, "X72y44078u5O9HD1": {}}, "status": "INACTIVE", "timeZone": "liKPNUKpFtstwMro", "zipCode": "i9VLZMQVn49yRpDE"}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateUserProfile' test.out

#- 40 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '6HncrTL9fP43xhzQ' \
    > test.out 2>&1
eval_tap $? 40 'DeleteUserProfile' test.out

#- 41 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'lVLbvNWqoOKXdwHn' \
    > test.out 2>&1
eval_tap $? 41 'GetCustomAttributesInfo' test.out

#- 42 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'hfTM0MXlNzRmb2Uq' \
    --body '{"5mRt1IFY2hctnCZh": {}, "a8HUxDz3jy0CFG26": {}, "rzHDz8RuUcy7k7CV": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateCustomAttributesPartially' test.out

#- 43 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'KqBEUGDEkqnjmqCR' \
    > test.out 2>&1
eval_tap $? 43 'GetPrivateCustomAttributesInfo' test.out

#- 44 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'BB83LPFoz8NvziWJ' \
    --body '{"gg9i4kk2oW9CymlR": {}, "rRLYGc2Hu3ActQTm": {}, "kRwTDaz5WnuhBabi": {}}' \
    > test.out 2>&1
eval_tap $? 44 'UpdatePrivateCustomAttributesPartially' test.out

#- 45 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'm2e9u2oIUx1vgZxn' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 45 'UpdateUserProfileStatus' test.out

#- 46 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 46 'PublicGetTime' test.out

#- 47 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 47 'PublicGetNamespaces' test.out

#- 48 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'pFzBts8yFRjA7V7q' \
    --namespace $AB_NAMESPACE \
    --fileType 'kxGGeHds7xkREhyd' \
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
    --userIds 'VOLXuWztiX9U3wDS' \
    > test.out 2>&1
eval_tap $? 52 'PublicGetUserProfilePublicInfoByIds' test.out

#- 53 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId '7EfRdkKNKoDB1vsE' \
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
    --body '{"avatarLargeUrl": "CBvGeewh3qOZ6kAV", "avatarSmallUrl": "u4x1TV1UPVRCCRME", "avatarUrl": "iCFdNrgDhpmMHRXV", "customAttributes": {"owLe7CTaoG0mao9H": {}, "hn9q4YqyxMHPLkTn": {}, "bQzwgy6QPalkIgVH": {}}, "dateOfBirth": "1971-12-17", "firstName": "RIWHGq0x9SzBjxEG", "language": "udsj-wz", "lastName": "YMJuCcbnqeVSiKcg", "privateCustomAttributes": {"u5b9Scvkg88IAPHR": {}, "J3blPmI7LNOyG1mz": {}, "cXpqB609tpxXPL0c": {}}, "timeZone": "PjPhbruJaneGuUCz", "zipCode": "U0lwfhZawAwq15xG"}' \
    > test.out 2>&1
eval_tap $? 56 'UpdateMyProfile' test.out

#- 57 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "RnWo4HDcHiiLm9Eu", "avatarSmallUrl": "EKGY8DJBV2EnG6bU", "avatarUrl": "dGwRsGgis58tsdV4", "customAttributes": {"pI6oVEKOuS22fz3x": {}, "BjxIqyLmHIc31u8d": {}, "B94KwdKXF6TZahff": {}}, "dateOfBirth": "1996-11-20", "firstName": "M4MLN3oTTBnKtPib", "language": "SNV_YgOw", "lastName": "5FW5l7aFzBTTm4ny", "privateCustomAttributes": {"F9W8q2ll0oW1Ybce": {}, "oV0Z0mCc5DmUfkPp": {}, "XigX9pv7xvCLKaDX": {}}, "timeZone": "uUYouVQReDFqilak"}' \
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
    --body '{"NUqWgeJCeTAmFWDE": {}, "Oot3svjLL0ILw7uA": {}, "EwvasWEVrpxZ8SdB": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "QPk93atzHmMAaacP"}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateMyZipCode' test.out

#- 62 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'cxdEwBwscCcAtaPn' \
    --body '{"category": "SAMF0HYDwAJv8jYp", "description": "hwboMewKdbAWLiZP", "gameSessionId": "IvICLRSmRkLKiNtg", "subcategory": "tPsPj4p3pz0BxysF", "userId": "9YmTsPtFswG8wzT0"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicReportUser' test.out

#- 63 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'ZheYCn5VMpPRXd6N' \
    --category 'YiLKoxjOQyRWdHH0' \
    --fileType '3YrPkxCwXN1oAPCV' \
    > test.out 2>&1
eval_tap $? 63 'PublicGeneratedUserUploadContentUrl' test.out

#- 64 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId '2BDL6NfR3bO701Qy' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetUserProfileInfo' test.out

#- 65 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '2AQIWoBBiX1y8HbJ' \
    --body '{"avatarLargeUrl": "SBkmcnX0AtZbOK6T", "avatarSmallUrl": "oqcP5sJIFVm3qfMx", "avatarUrl": "6KLtSPUdmzulabYN", "customAttributes": {"KgvdoFT9t1ZlTIUP": {}, "ShCo1b67xSCPob9e": {}, "dhaDmIZUTHiEIN9a": {}}, "dateOfBirth": "1977-09-29", "firstName": "fLanaefbZDPX1q8t", "language": "sYlO", "lastName": "rZe9ZZfBr18it5zM", "privateCustomAttributes": {"OJVP05EFlL8lM0nq": {}, "7stzKbThAF6PX0NX": {}, "ajUYM7Jc7o1H6Pdr": {}}, "timeZone": "Gm8PowmZrGYFsHtd", "zipCode": "rE8PAZgkvvhCISKd"}' \
    > test.out 2>&1
eval_tap $? 65 'PublicUpdateUserProfile' test.out

#- 66 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '0trEuPemrXi0b1ly' \
    --body '{"avatarLargeUrl": "bM7rODZh6UqylVXq", "avatarSmallUrl": "KGtbugIGGeoCm52Y", "avatarUrl": "fj3b3KE5p58F3E0r", "customAttributes": {"RHF3yNzXflB8PIOX": {}, "DMfRlAI4wDcKaGpY": {}, "2DxHsLbnZZ4gvAM5": {}}, "dateOfBirth": "1972-11-05", "firstName": "hQ9ORwyhingmuZLA", "language": "Kze_mb", "lastName": "KwiDZJSWd8vwOfHX", "timeZone": "Yfc07EEauhBnZLyh"}' \
    > test.out 2>&1
eval_tap $? 66 'PublicCreateUserProfile' test.out

#- 67 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'XKYd7yrOALE3KGUR' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetCustomAttributesInfo' test.out

#- 68 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'BlwFyXcdx09YVKt9' \
    --body '{"rUfD7T3imi8QjEMN": {}, "u4maJM8FvcdZ3gnL": {}, "yRlFw8Q4wPqNnB7R": {}}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateCustomAttributesPartially' test.out

#- 69 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'GJKZUKnORB7Tx3EG' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetUserProfilePublicInfo' test.out

#- 70 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'Vf88bWporwEWB60Q' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE