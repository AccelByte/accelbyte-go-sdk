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
    --body '{"displayName": "eSwkBQ0uMBmlRnm3", "namespace": "1kPnFfe1xaXa3Zqd"}' \
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
    --body '{"actionId": 38, "comment": "ybDZewm7WoCTnf8j", "userIds": ["1qdNz6icHH7dda72", "17KdkyfzrPXVVzHJ", "RbbnRQ3zHUAaVisS"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["IV1iaU6YDhMI0ZNR", "iCh2y9BsUN2KjZWv", "hglgUIKjMxsXk2i2"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "ibz2ISlDWqZiSSHM", "description": "eodrT9AncSMRE2dz", "gameSessionId": "muqbNDnPDnN7s0Ui", "subcategory": "97khdYAJK7o2UGS4", "userId": "g7yY2zoNCDdFTiX3"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'drFh3x03AFWtmlwH' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "aSbQV3cVzx5OVrbc", "userIds": ["sZi7TmlirRSWBWQI", "ENr3rGYQwO87q5kP", "HHbtAaUtq6fADjYP"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "cdKMugnLT9LsN9lo"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "wo163RU2ZBlIGRg9", "value": "2uTqVKNpjCItWz1i"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'RJZmZKxK3JIyeoJ0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'ELW1uIavyZgidzZl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'XBoyDkr8L5q4RN6n' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "6ji1DIHcIpPkXQvq"}' \
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
    --body '{"apiKey": "cw2GwaqxAcLK971V"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'w73vgSwqXOWbMRSd' \
    --namespace $AB_NAMESPACE \
    --fileType 'vp4W9EYuzmbvWcA1' \
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
    --groupCode 'bIxFmFSr9B1owqq5' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "dJKEQeZcIZT002TL", "name": "V6ZGf2nPGZrOoQ8l"}, {"code": "8mn4tPXMZ5AdfV6X", "name": "Q6SzPFZQblxjzNGi"}, {"code": "eGDaXdlZeykAYY5p", "name": "sj3KxDYKaWmPwIhG"}], "countryGroupCode": "CBcA5QRzbU6te2m2", "countryGroupName": "T808tQx9SNtBsSsl"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'Ev5f3ePVSk5FF0Ua' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "AByp3icXSVhhJfCL", "name": "iIAL6elZ63EXLPez"}, {"code": "WeZWalKy5P5TuQOO", "name": "GJlA1xcH0pndsQ90"}, {"code": "ytMNlMIZI07wlIRR", "name": "lesDCBwhPEQLKdMZ"}], "countryGroupName": "4iTah9e7krKhCnhf"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode '1Oa1jcUHMofyOhXd' \
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
    --publicId 'jK3zXxxA8AYynyc8' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["bOcy4QExe7G4ia19", "chhE82R2LJhbO1aL", "iAFxZeIhoEYQnBME"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'E9yUPddJP95W79zZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPublisherConfig' test.out

#- 33 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 33 'ChangeNamespaceStatus' test.out

#- 34 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'vEnwEEe7VQf4Y3V6' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'g3h5LG0BTas0u2ab' \
    --category 'IYzhjyiCCYu9Jgq5' \
    --fileType 'JgLBQn9MWljbOK5A' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'qM9cTpBLwZSoFTlM' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ctzMhd3dxk2pVFEo' \
    --body '{"avatarLargeUrl": "oIUD5zormEijNdbq", "avatarSmallUrl": "nySTvgKjAqld2HWm", "avatarUrl": "HBQ4xxG3N4iJvYTM", "customAttributes": {"tLsimoUlqEfO9kgI": {}, "ucE04rjUF2pcJQjJ": {}, "9kFH4nlbx5VIs5BI": {}}, "dateOfBirth": "1972-10-08", "firstName": "SAgU1u07AVuwmulz", "language": "OhmC", "lastName": "DQjHjgnnQm8gynP9", "privateCustomAttributes": {"ANKEvnY3Os4oXGv4": {}, "L1kxvmOAxxq8kruF": {}, "nI6KiC5NQa5q9A3v": {}}, "status": "ACTIVE", "timeZone": "gmLhQaAPw5A2wUbi", "zipCode": "jZSWLSohfhlteeIG"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'tKTiBTZINzK56jJI' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'hmlLr9pM20RaVBOa' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'QXglsqj9dlAGLd3s' \
    --body '{"llARAlLNqm7ZIUvr": {}, "m8kXWmjzmNXf1e7E": {}, "Zzu55ldWugLFbOk7": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'sSCnGvDXrbUxGjo1' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'BTf6TyrzvPQ3Ipu7' \
    --body '{"bbQl8Tt5rwr4yptu": {}, "E7jfbZ8tLYWRjEI9": {}, "qLNGAcZgTrEZg7aH": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '109behECtgooEtOS' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateUserProfileStatus' test.out

#- 44 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 44 'PublicGetTime' test.out

#- 45 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetNamespaces' test.out

#- 46 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'IhUTFnOjmmRIJqpS' \
    --namespace $AB_NAMESPACE \
    --fileType 'il9zuNIHq9bs4dsy' \
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
    --userIds 'UP9dvlJN4h4Tjf16' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'hUJFp14TPRDh5dnc' \
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
    --body '{"avatarLargeUrl": "E4sJR7cYpfsWu0v1", "avatarSmallUrl": "d8Xgltj1AFoWTQiP", "avatarUrl": "E1nSYRE1B0z8LoHz", "customAttributes": {"XEclerVXWEL4QBXD": {}, "A6Bzhs6FCv5GpKt1": {}, "B8l2HNiLFDAugbre": {}}, "dateOfBirth": "1983-05-24", "firstName": "Sp5xkCQqNdRk46Mh", "language": "kwPt", "lastName": "Wcncfb13XScbz0f8", "privateCustomAttributes": {"O4f0IfULm7vBcFpi": {}, "6zCbA8R96iVN0nj9": {}, "ufCGxK862GtLAr3V": {}}, "timeZone": "35PYXRCWRxfzKIHW", "zipCode": "NCK9NtskR9hSZqNN"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "12yxNsA1rcAiQuDq", "avatarSmallUrl": "eMulBdWwVBt1KN0f", "avatarUrl": "DsIt4kfdpyaH3Ug4", "customAttributes": {"o64R8Q7KZ9ojWIoF": {}, "ziYNxSUSkSpaR2FY": {}, "TLeIDbIcZaHBVWlo": {}}, "dateOfBirth": "1973-06-29", "firstName": "7M2DjNF41w2Hz24N", "language": "Fa", "lastName": "3XSYI1eXTHaHXNlx", "privateCustomAttributes": {"WZXC3dSyjcTvO7Qv": {}, "kTHmfhzUfGZzmvMb": {}, "SSkEB7DQ5Qlx6xuZ": {}}, "timeZone": "PZEihACYQ6FpxszJ"}' \
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
    --body '{"4bI7iORd8peCT2sM": {}, "YjNouqJ6X3GXfZc5": {}, "RZ9Yod2OIor6ZBh2": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "VX31kveULE7cgtUl"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'tedtJwvtWpvLdVDp' \
    --body '{"category": "G8EyvOezsdHvabcB", "description": "Vxv29BkV2kmTaS2a", "gameSessionId": "WUJJ5cl48tvCqmUz", "subcategory": "WvfiJ1xZya9Cscyc", "userId": "Rl4DbsFxBMvQd5RM"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'M4He8pLyQ3gP5HXs' \
    --category 'oxfBU4fwaKM70EXe' \
    --fileType 'd1KA6QnsI9Y24TBw' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ldW7IYxM4kjpL1Rm' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '5uo6F7eD5LhlhFIE' \
    --body '{"avatarLargeUrl": "nilAhIZ80LqjxDrY", "avatarSmallUrl": "YYpB2PWxbg5KnX9R", "avatarUrl": "I5OimRJM8Quzt18c", "customAttributes": {"Z8JIb6N4ZUQWkbS0": {}, "6m55qoeXw0Y3hmsh": {}, "NZYrvKptnTB3LsVU": {}}, "dateOfBirth": "1995-11-20", "firstName": "IZ7dSr28CqiW5GdI", "language": "kjpo-hYFR-oP", "lastName": "gcZoNM2LHcA1N2dV", "privateCustomAttributes": {"ckhnXWHQFxArUcVH": {}, "Evg0x73kciLcOJfv": {}, "JjH3fYNrMRAHkt7Z": {}}, "timeZone": "k0tbosL6dGGOpM73", "zipCode": "P4p6Jnqe9my5vbLX"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '5OjXAiU9S7K1plff' \
    --body '{"avatarLargeUrl": "qkjgz8AP4EAdl4x1", "avatarSmallUrl": "nkrtcEVs37sw23d4", "avatarUrl": "eVleIE0KUKNhkurc", "customAttributes": {"KuoTjjubvT6V3oN7": {}, "qDO3C9W10FsT8WHu": {}, "8kpcPSB2W81Na6c7": {}}, "dateOfBirth": "1994-04-25", "firstName": "TfbhtNjnWAyfbnPr", "language": "PXnj_lr", "lastName": "1txwYRqTnIkVdJEW", "timeZone": "WibWq8BfhHVh2lZv"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'IbUu0gZ3PkNUdLXp' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'EQSKxWW5nrmWRQad' \
    --body '{"Qz8B0iYg1cU8lZIP": {}, "68zleoOaRKDHj1cg": {}, "hj55l6JeKDCTPZjy": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Q1N0qWk8UQrB3APT' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'PUhskyjIwqazEW1S' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE