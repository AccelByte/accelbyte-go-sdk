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
    --body '{"displayName": "dwIH1yd4H5b2VAaU", "namespace": "jsRJ0vdMH8cStHeF"}' \
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
    --body '{"actionId": 73, "comment": "sZFfvvZQKrcLKawg", "userIds": ["xAJ81YDl4QiXIivg", "B0H7pEvLc5qWoOgu", "UhfkB5kjmU0mh3k1"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["xk5a4PTR5THSHB0d", "3DPHkdbUax7dIEgs", "Om67GC06pFr0UnGH"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "cp0h84bR9e7G8PWU", "description": "T4PJyuqNADRYfhW9", "gameSessionId": "K0v7wPxNjiNGQGl1", "subcategory": "NZXBUvdx8PtVMcdM", "userId": "Lvx0acSQB28GN3Co"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'yhRrq4XV17pDRHTX' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "xqONnbQHvA2ml6Jy", "userIds": ["g92IbntENta9HRqi", "52x5pfCCZGPeT3jy", "6xolUFOaJ1jPH7Rk"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "GFnRmoB4s4iCsBYP"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "DRTBWjBsUKXSqYIj", "value": "F8S1EhGpBeHTb5bV"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'jRbpWCpHXWXhkmuz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey '8zu3rgbypxTCMxyQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey '1eicC02iIOH1siA2' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "jReQSxrS8pWIpBET"}' \
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
    --body '{"apiKey": "6hrm7yYelGgxAPwp"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'gXVOetbzl4rlapYS' \
    --namespace $AB_NAMESPACE \
    --fileType 'MVNBiqE7Tfhj5NPA' \
    > test.out 2>&1
eval_tap $? 20 'GeneratedUploadUrl' test.out

#- 21 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 21 'GetGameNamespaces' test.out

#- 22 GetCountries
samples/cli/sample-apps Basic getCountries \
    --namespace $AB_NAMESPACE \
    --lang 's6jP6QA7o4MxIp4G' \
    > test.out 2>&1
eval_tap $? 22 'GetCountries' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode '2dIPnVxLDXslQrsU' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "5uNgU49Ensai6O34", "name": "fddYqIMOiSgKqIBV"}, {"code": "BcOaoO0S2moRulUW", "name": "f97sZc8VOoR926rn"}, {"code": "DdVFF87Obv5uvMXw", "name": "Z6LJrTyJFbTWPWHH"}], "countryGroupCode": "OvYje4O3Q1xO7p2E", "countryGroupName": "kNv62asYdjw39rhB"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode '2DUMrCU0xj3YXy06' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "wDypFoRbkHzMqt2I", "name": "yvjH6P3jNEbvea1F"}, {"code": "Hb1MTwWJQsnbf8ee", "name": "ZMTVhqyB1mXgKzw5"}, {"code": "lsxBVmDGvpfVwEMu", "name": "A0d8LMiUuZIdkMva"}], "countryGroupName": "jYh4JXTLojaC21Tw"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'VsHgGpjSOau2GgjA' \
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
    --publicId 'HxKh3C0jZ94ujocy' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["LzQ3m5EXK7eidiZs", "py6Ls9j42CVwy6ue", "2t7yx34aOZH5HaXk"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'ShxDlFgXhz6iB579' \
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
    --userId 'SGe9bNPhoqeRhxsP' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId '6Mdruk3YA60KA6W4' \
    --category 'VXLFHd3zAyQ88NhM' \
    --fileType 'Qw3vxpH9ZASACDNY' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'FyQiutDaOSTJrLSU' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'X2MwBJgtXPONW1AL' \
    --body '{"avatarLargeUrl": "YvaAOtGrjVCUWeuZ", "avatarSmallUrl": "nqaYD4CXUNkv1kHi", "avatarUrl": "DQaX2G6mNDjUBVzn", "customAttributes": {"JF6kNEPov5KynYzz": {}, "4hQ4owKjUeXQ12FX": {}, "3JZMslwUlg3Tq0uU": {}}, "dateOfBirth": "1999-06-22", "firstName": "eoKZZSz5Io8v0hN5", "language": "WV_cpIC-525", "lastName": "1ny8pW13gBiaZM9T", "privateCustomAttributes": {"TIHzHovbFFSvk6KD": {}, "iRkTdSkx1iwVrgUW": {}, "WbgImJsT2nt12o9N": {}}, "status": "ACTIVE", "timeZone": "bucLRQfc8FAEhmoJ", "zipCode": "6T8qnZjRFYVbMZYh"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ubWq1XvXQcVaY82g' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'dE9C1QJq0A2wU8ch' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'G68WenKWFkiKLFkn' \
    --body '{"aUlMpUCOLcRVbA8M": {}, "OXiZKkdqIg3qZE80": {}, "VrZu2NCaGbg1i7pC": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ejtUpSXhZrYToUW5' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '8Icto5p1Cx7TZsDF' \
    --body '{"A4aTOSQ9kYUQ2GgY": {}, "64OAK0LKu61me3rA": {}, "B4owyzJ6VipL4QQq": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '3u6E6HiXajjsKu9j' \
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
    --folder '6Wmff8FadXCQyo2z' \
    --namespace $AB_NAMESPACE \
    --fileType 'Mhy4ZcTa27z8nrkf' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratedUploadUrl' test.out

#- 47 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang '8mNMeclLXGcHdOug' \
    > test.out 2>&1
eval_tap $? 47 'PublicGetCountries' test.out

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
    --userIds 'YbLOU6DFNq4aRbYs' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'Q1a2S7cyfFpklLTk' \
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
    --body '{"avatarLargeUrl": "F0ab9paYp854oAgH", "avatarSmallUrl": "j3f5Kx6ZAe1LDube", "avatarUrl": "rKseuTnUSB8FS6cQ", "customAttributes": {"BveGBZ5w1FqRhBoS": {}, "wNzoZk2YC1lNSRfn": {}, "I4HMiHlOnQQR5ivR": {}}, "dateOfBirth": "1977-10-31", "firstName": "ynMZEuwSVkWMlqlw", "language": "kn_na", "lastName": "GfAVo4VmAOpkKTCQ", "privateCustomAttributes": {"C9U637AUN2FMksvj": {}, "OkHeSWL6EIdc1CpX": {}, "WXNtXzHxBpO7c63d": {}}, "timeZone": "ALoCx7ca21HIxF2T", "zipCode": "5bdgDHXnbK1cSUdn"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "FepTksEarJzWcQ8V", "avatarSmallUrl": "z3uqjGCDFtafQjvj", "avatarUrl": "UxGDfQRJgThZKiub", "customAttributes": {"D9HdFGXhZ6LmhvDn": {}, "fhOOZMgDGAVCqTGI": {}, "cdb9nfz1Ne6h7wja": {}}, "dateOfBirth": "1995-02-28", "firstName": "XCPchcLduk9iWU3H", "language": "Vo", "lastName": "OmjdC7R9LFUCKp4q", "privateCustomAttributes": {"iwn49e46jBhPDbSs": {}, "kQAxsoQmMNysQGr1": {}, "1pQRrKLlEXWXaxu7": {}}, "timeZone": "XWeXNmMtR0yYEcyG"}' \
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
    --body '{"wW4PCH2i66UaJm4U": {}, "ZGpgrqWsPz2fJdOd": {}, "I3xqsIcXnFN0BiYN": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "gzUXCeX1lK8njvni"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'nMa85Yg7W0Bo865F' \
    --body '{"category": "cXRHEC5qHeJd2alD", "description": "vPhcrYrrdr9YeEjg", "gameSessionId": "c2JjmWJdn1HLh6XB", "subcategory": "xcmbeBAt9mEaVmkQ", "userId": "dJA3XBnnFXGE3f5k"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'dNKvAAcDLakrWj8s' \
    --category '6BVkpL8xDN25u1Zf' \
    --fileType '8zeZPLClnUHsmMU0' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Cf086RDfUgYbeb5M' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'Vv1pAuarELTe8YXt' \
    --body '{"avatarLargeUrl": "bRrwW4YLytiDJKL7", "avatarSmallUrl": "v8e6TVqYOMPS91GR", "avatarUrl": "2iq4Divg90RmkgZg", "customAttributes": {"0Ixlm89SsPQwoQA7": {}, "x55PDUE6n7C72cy4": {}, "lKo3xOcx4qTTagUg": {}}, "dateOfBirth": "1981-01-08", "firstName": "A7bSUJm0xvkuW5Wh", "language": "Ja_XMbR", "lastName": "kqBaDsMxEq3nde2T", "privateCustomAttributes": {"oe0aBvRB27snDtRm": {}, "wkmGx2HP8quhUNng": {}, "PM2kvrTbIKFNZ9AL": {}}, "timeZone": "bCNSO6dNbzdeUzQI", "zipCode": "V1doEWVAccz3KKg8"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '59Mh3hRvnuAZhdxM' \
    --body '{"avatarLargeUrl": "20uDSbDbhoTgCxGs", "avatarSmallUrl": "ctmKnWJeF9lSfKY8", "avatarUrl": "m5NPw5JtXPRSFBzv", "customAttributes": {"Q0OZSVHfGzWOoDrL": {}, "rWvcSXzUEzWyaZEU": {}, "4kdjFp1KtXOm6fTL": {}}, "dateOfBirth": "1972-09-21", "firstName": "bMBjZ15otFAUAskw", "language": "vlSi-mfLV", "lastName": "9cMZ4AP7uphhLexH", "timeZone": "rQo8lAZkBHqRsfSj"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'u0fYDk3Eku2WKIVI' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '8ytQ6rkFfixNPP33' \
    --body '{"jtCC2EpeWUb35L7m": {}, "8dJoWpVlJcrChl7x": {}, "FyN3Q8SUD63BnOmO": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'oofMdAeyXu2QIEJQ' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'vodhOjqGzYppE4Qg' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE