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
echo "1..60"

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
    --body '{"displayName": "xQ7FxkS3", "namespace": "93lD3FJA"}' \
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
    --body '{"actionId": 4, "comment": "m923mmMI", "userIds": ["U3rAgnU5", "QB9KJ9VP", "NflZ9uvw"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["WwOp229H", "VonVfynp", "ZsVo1PgL"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "sZMgIQOy", "description": "aoIaePTV", "gameSessionId": "qciBAewr", "subcategory": "Fa6bC8hL", "userId": "mTyaxQHH"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'k4bvc3uv' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "rw5gfsJx", "userIds": ["uIvGUjEK", "N2SHQhlr", "poojvcwi"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "va523Ydu"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 GetConfig
samples/cli/sample-apps Basic getConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'GetConfig' test.out

#- 14 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteConfig' test.out

#- 15 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "vr2qdPeR"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdateConfig' test.out

#- 16 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'YKtRpsm0' \
    --namespace $AB_NAMESPACE \
    --fileType 'amQgIOT9' \
    > test.out 2>&1
eval_tap $? 16 'GeneratedUploadUrl' test.out

#- 17 GetCountries
samples/cli/sample-apps Basic getCountries \
    --namespace $AB_NAMESPACE \
    --lang 'tFY3eAMU' \
    > test.out 2>&1
eval_tap $? 17 'GetCountries' test.out

#- 18 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'voXjeiW3' \
    > test.out 2>&1
eval_tap $? 18 'GetCountryGroups' test.out

#- 19 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "Sj9A0NP1", "name": "4DiNDkua"}, {"code": "7ISFwOqn", "name": "svEiiYAJ"}, {"code": "A5HcGcFh", "name": "rdQrAQkP"}], "countryGroupCode": "d1038ef9", "countryGroupName": "jbXXF2Au"}' \
    > test.out 2>&1
eval_tap $? 19 'AddCountryGroup' test.out

#- 20 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'OSJNDa9X' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "CCUrqrjq", "name": "sQsYOof9"}, {"code": "GCO4Kxxa", "name": "a2ZXkTD9"}, {"code": "jubjsT0a", "name": "XayYTDr7"}], "countryGroupName": "JzNjAndY"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateCountryGroup' test.out

#- 21 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'y7oyopXv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'DeleteCountryGroup' test.out

#- 22 GetLanguages
samples/cli/sample-apps Basic getLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetLanguages' test.out

#- 23 GetTimeZones
samples/cli/sample-apps Basic getTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetTimeZones' test.out

#- 24 GetUserProfileInfoByPublicId
samples/cli/sample-apps Basic getUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'xTq9kchT' \
    > test.out 2>&1
eval_tap $? 24 'GetUserProfileInfoByPublicId' test.out

#- 25 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["r2dRAD6o", "5dHUNXH4", "pN8pI1UD"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminGetUserProfilePublicInfoByIds' test.out

#- 26 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetNamespacePublisher' test.out

#- 27 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 27 'ChangeNamespaceStatus' test.out

#- 28 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'f7lGvNF0' \
    > test.out 2>&1
eval_tap $? 28 'AnonymizeUserProfile' test.out

#- 29 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'dkjsxqDe' \
    --category 'XoBI1EtJ' \
    --fileType 'BDINSy2c' \
    > test.out 2>&1
eval_tap $? 29 'GeneratedUserUploadContentUrl' test.out

#- 30 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'If0yx7X1' \
    > test.out 2>&1
eval_tap $? 30 'GetUserProfileInfo' test.out

#- 31 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'fbb3Wa5E' \
    --body '{"avatarLargeUrl": "wRg97HCY", "avatarSmallUrl": "78aYTF3P", "avatarUrl": "By4EVsV5", "customAttributes": {"s3Se7bEQ": {}, "Z5RziHLD": {}, "sMmrjOLg": {}}, "dateOfBirth": "1995-08-31", "firstName": "3J0GRtWa", "language": "DSSg", "lastName": "wtY2iMQB", "status": "ACTIVE", "timeZone": "1eTseIut", "zipCode": "ksFFqRbC"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateUserProfile' test.out

#- 32 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'pQSZHkVy' \
    > test.out 2>&1
eval_tap $? 32 'DeleteUserProfile' test.out

#- 33 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'WpPNsIj2' \
    > test.out 2>&1
eval_tap $? 33 'GetCustomAttributesInfo' test.out

#- 34 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'hV2jVqE4' \
    --body '{"gfeIi8lr": {}, "0k9cgTb2": {}, "QbGmAP5O": {}}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateCustomAttributesPartially' test.out

#- 35 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'MZhDD1JG' \
    > test.out 2>&1
eval_tap $? 35 'GetPrivateCustomAttributesInfo' test.out

#- 36 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'SryZ16Wu' \
    --body '{"pIRgabv6": {}, "CyGcHiVW": {}, "GeHH44eD": {}}' \
    > test.out 2>&1
eval_tap $? 36 'UpdatePrivateCustomAttributesPartially' test.out

#- 37 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'kVH6B61y' \
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

#- 40 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'QdZ5a2KZ' \
    --namespace $AB_NAMESPACE \
    --fileType 'ibKUf2u5' \
    > test.out 2>&1
eval_tap $? 40 'PublicGeneratedUploadUrl' test.out

#- 41 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang 'OHHe2AIc' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCountries' test.out

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
    --userIds 'CLrkxr8A' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'TcExYekW' \
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
    --body '{"avatarLargeUrl": "Mj276hi7", "avatarSmallUrl": "9nxeR853", "avatarUrl": "5kNduOEM", "customAttributes": {"zjFg9KAS": {}, "vz5m75oN": {}, "RUpq6opb": {}}, "dateOfBirth": "1990-10-03", "firstName": "MvFzps6A", "language": "HR-YE", "lastName": "83XzaZFv", "privateCustomAttributes": {"5kaweLgn": {}, "Slgsrfqp": {}, "QIJf9g2i": {}}, "timeZone": "GiRGiW9U", "zipCode": "Tmv61Qnw"}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateMyProfile' test.out

#- 49 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "9ddfeUro", "avatarSmallUrl": "ME5cQ261", "avatarUrl": "5wXx97xU", "customAttributes": {"RPEbOQ3T": {}, "5IPXhEPh": {}, "fyAJGmpy": {}}, "dateOfBirth": "1977-11-03", "firstName": "PnunVkcy", "language": "fJLF-qbPW-MU", "lastName": "zCthvN16", "privateCustomAttributes": {"4wmR2VNx": {}, "9cU0OLBQ": {}, "jXpQ8oCT": {}}, "timeZone": "caTm9LqB"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateMyProfile' test.out

#- 50 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'GetMyZipCode' test.out

#- 51 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --namespace $AB_NAMESPACE \
    --userZipCodeUpdate '{"zipCode": "ba0enQug"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateMyZipCode' test.out

#- 52 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'jDS50COj' \
    --body '{"category": "DFGFUC9b", "description": "1rFaKWCD", "gameSessionId": "AtdDDuXK", "subcategory": "e5WHKhh9", "userId": "shtmtC2u"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicReportUser' test.out

#- 53 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'ojyptp8Q' \
    --category 'sPA4H6ic' \
    --fileType 'rVSG2h0e' \
    > test.out 2>&1
eval_tap $? 53 'PublicGeneratedUserUploadContentUrl' test.out

#- 54 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'RWwI9wHb' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetUserProfileInfo' test.out

#- 55 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'cypsazw7' \
    --body '{"avatarLargeUrl": "71OpfE6q", "avatarSmallUrl": "Hgs9a6V4", "avatarUrl": "UF0OojLB", "customAttributes": {"YBzI8IkT": {}, "0r64jnu1": {}, "DmvlNwWp": {}}, "dateOfBirth": "1993-03-26", "firstName": "dMz2ba32", "language": "VSpK", "lastName": "PuhpOukh", "timeZone": "JxHEpTCq", "zipCode": "mmt2jWaW"}' \
    > test.out 2>&1
eval_tap $? 55 'PublicUpdateUserProfile' test.out

#- 56 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'UTXuivkj' \
    --body '{"avatarLargeUrl": "l3QHC77y", "avatarSmallUrl": "ZH0fCPrN", "avatarUrl": "lmy61XYK", "customAttributes": {"c1dN1sLG": {}, "ftvxLkaU": {}, "7uvBLt8j": {}}, "dateOfBirth": "1974-03-26", "firstName": "bIpFL1Nk", "language": "vQ-ey", "lastName": "1B8tWo26", "timeZone": "Tssjd0mP"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicCreateUserProfile' test.out

#- 57 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '8avPg9qF' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetCustomAttributesInfo' test.out

#- 58 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'eykMO0Dz' \
    --body '{"5YXWPhuI": {}, "ZeIDavNP": {}, "JmrNu3D5": {}}' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateCustomAttributesPartially' test.out

#- 59 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Q5CanMmV' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetUserProfilePublicInfo' test.out

#- 60 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'kW5nwVVu' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE