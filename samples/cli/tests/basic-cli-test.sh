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
echo "1..62"

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
    --body '{"displayName": "ZO92PcylZHzeM9fo", "namespace": "tUse9A0B2oUtIpm7"}' \
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

#- 6 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "TCoEqkfVh7ltSlWw"}' \
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
    --body '{"key": "FNU9oeVNKpxIjBw1", "value": "zjVH1tTUmJ1bl2qR"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'UBGqxDwi9Ctd2cuB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey '1JOIRs1XpnFKtQun' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey '0J3jmk0aWylveziZ' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "nO9qiEc2MoxnfyHd"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder '7YtCKjmwlCVsPkKz' \
    --namespace $AB_NAMESPACE \
    --fileType 'TBUPbR8keFIMNRaD' \
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
    --groupCode 'EEW3TjfiORXXG4uJ' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "8D2TCHqn5MGzavyv", "name": "e2Nlw3yHrfo6eFc6"}, {"code": "MQjqawWijSlZhFBj", "name": "VReg7YF0Kt6k1taj"}, {"code": "Q4M6xwsbu9XYhrnU", "name": "ficDaQvvEpSRn4YF"}], "countryGroupCode": "bPjcyWLgF6KDib5T", "countryGroupName": "ZqHplMt2PQyfu0pp"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'gngLNvu7bhSRoXnO' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "GXOmW12LDTSmnXFv", "name": "ygZQQ5Gx3IUF6M61"}, {"code": "tffGc5mEqnzTFVQ3", "name": "eTfRhhyvyeVbiAuP"}, {"code": "5kLyURAtiQc6tBL3", "name": "8G2zLCgs8BacfT2T"}], "countryGroupName": "DPR5Xzj3ldcrKJUE"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'kPKBoOoq8kMtE5vO' \
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
    --publicId 'crfKcQPuc45atdax' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["lF3jtxHNwL3F49Vt", "7hOG6MLznDKOPs8B", "vyS2DA6iflzBUQcr"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'a2qJetwaCiRE5wXG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'GetPublisherConfig' test.out

#- 26 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 26 'ChangeNamespaceStatus' test.out

#- 27 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'P4eGwTQOrIc2U0DU' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'cmtdtjadmtwffQGv' \
    --category 'YSZ7QcKQm5Bh0Jzx' \
    --fileType 'iHomjvY41Zxmu3Ag' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'mRPTYIddeWOzhUg7' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'tcVRheuvB2poClpK' \
    --body '{"avatarLargeUrl": "FETI8lbSxJhHlW9y", "avatarSmallUrl": "PaBcSf7jAX5qRMUK", "avatarUrl": "x6GTqNugL32kb3hH", "customAttributes": {"JvjBtSUJPCPXH4CP": {}, "QLiWrj58lmJNMFJ1": {}, "OO8RMVOyWLtFYsC8": {}}, "dateOfBirth": "1981-04-16", "firstName": "XYDhXuOELYDfnHAw", "language": "Bs", "lastName": "xwcEs0S5n7nPTLO8", "privateCustomAttributes": {"ukUFrsvInp88ZL3O": {}, "QYmce5JPADXSNogb": {}, "GEHf4HRgsH5TdDfU": {}}, "status": "INACTIVE", "timeZone": "xZ83XV42LVu51WeW", "zipCode": "ZfYeeHiRoVIEiSLc"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'I9uAbYG2w52amdgN' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'TgmJZqQiRSgHyGLJ' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'kgQiubk7GnGvRsIQ' \
    --body '{"smMEqcAqiISPKI1D": {}, "IOeNPUMlXlqKNvNm": {}, "w9eOhYvEFpRZUeZx": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'y9C4bITAqri78Sw1' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'B6FYwGzjjACoi6cs' \
    --body '{"UAxTAV9hHPTYABrt": {}, "MOHPZmH5LSsoxQ2y": {}, "6H34OEPCqeymT3Ml": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'bW9DxC3jRDtdyPff' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 36 'UpdateUserProfileStatus' test.out

#- 37 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 37 'PublicGetTime' test.out

#- 38 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetNamespaces' test.out

#- 39 GetNamespace1
samples/cli/sample-apps Basic getNamespace1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'GetNamespace1' test.out

#- 40 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'x0NaiYLbiHL5Fg58' \
    --namespace $AB_NAMESPACE \
    --fileType 'UvZOHNYSVoFiWNnD' \
    > test.out 2>&1
eval_tap $? 40 'PublicGeneratedUploadUrl' test.out

#- 41 PublicGetCountries
eval_tap 0 41 'PublicGetCountries # SKIP deprecated' test.out

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
    --userIds '9hyEID6XSKjmYRZo' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ySNMUqSZszPWfXb2", "9Sr7ea0IGodnovES", "znvPXKQL1lAee65x"]}' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkGetUserProfilePublicInfo' test.out

#- 46 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 't1bPAUtV4r7RaKFp' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserProfileInfoByPublicId' test.out

#- 47 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'PublicGetNamespacePublisher' test.out

#- 48 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'GetMyProfileInfo' test.out

#- 49 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "951zYwczG3PhQ08F", "avatarSmallUrl": "VThM1PYWiJ716aL8", "avatarUrl": "aMpqNwfk7GH1q2rD", "customAttributes": {"QbypcFobFUpOAWir": {}, "T49r7yjppoCgsuWL": {}, "eCY84TbDT9KVtbTK": {}}, "dateOfBirth": "1994-03-25", "firstName": "6QDhqLA4BZKetAsX", "language": "ked", "lastName": "tGTKCNYNmmIbhXP6", "privateCustomAttributes": {"NcDlcqRQEeoX93X8": {}, "22XgkGsWGjAPKAGR": {}, "GWM5gH0y9JKmZNNA": {}}, "timeZone": "kOjruXQNyFmZhO15", "zipCode": "irVtKnnLSVMM8aFt"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "041tGC85n2fX86ue", "avatarSmallUrl": "rtBG3msGtDuYnDir", "avatarUrl": "W1AjDg6ykW2Sm4lF", "customAttributes": {"OSVB4eamPgudzn8a": {}, "Z5Hp05WTgMiojQHz": {}, "ujHutVKJ318whnyi": {}}, "dateOfBirth": "1987-03-10", "firstName": "AOSaOAvKKVPrZ7IR", "language": "Qf_GOHi", "lastName": "A8tbuYbdLTgdypty", "privateCustomAttributes": {"kq6rnFMKKxikDTQc": {}, "LKs8s3v0YALCsBD8": {}, "dAwqtJ5UxfaqlPDt": {}}, "timeZone": "JKZHpFox0QqTEowi"}' \
    > test.out 2>&1
eval_tap $? 50 'CreateMyProfile' test.out

#- 51 GetMyPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getMyPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetMyPrivateCustomAttributesInfo' test.out

#- 52 UpdateMyPrivateCustomAttributesPartially
samples/cli/sample-apps Basic updateMyPrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --body '{"NysZC5P2b5JMfpAS": {}, "yZbq0hn5oiyRPpwO": {}, "cTKqZ3a0nIyzkwqg": {}}' \
    > test.out 2>&1
eval_tap $? 52 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 53 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetMyZipCode' test.out

#- 54 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --namespace $AB_NAMESPACE \
    --userZipCodeUpdate '{"zipCode": "nFKfQI6Fo1nUm651"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'UfoRaMB3YVuOgSYR' \
    --category 'bpvbknn3SsbxK2Yz' \
    --fileType '0nmtiCToeM1ufaUa' \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'vrwUlVu6ViUkERYE' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'AZHxQt8odr8gDVdr' \
    --body '{"avatarLargeUrl": "9eOSRhFnvrlofnaJ", "avatarSmallUrl": "ei0e33Nd2SB9POxt", "avatarUrl": "VajC52lUi1IF9Qnu", "customAttributes": {"7mWM2dnVoyNH8Tb7": {}, "pO7Lxu7KdmqmjVGc": {}, "WNvHsXNd4Hy8uXnP": {}}, "dateOfBirth": "1994-09-09", "firstName": "cYW1qt9nAdhXcp9i", "language": "wy_Xz", "lastName": "rwleiPlaoamjvHWC", "privateCustomAttributes": {"LTPmg4jTiP92L2sz": {}, "LDRKM1yPsJ2N0vfJ": {}, "Slon5QgaMoAzGLKE": {}}, "timeZone": "MnrONOFCElGzSVQU", "zipCode": "h1cKZSSHY3iwYUph"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'CeNh3a4O51d2bnrT' \
    --body '{"avatarLargeUrl": "u27LXJItfYQBbZMF", "avatarSmallUrl": "Bei5axUUBZCq8zts", "avatarUrl": "55O5d2c2ypIdC9EI", "customAttributes": {"OoaXSPjgJNwzD3Gy": {}, "eCU20HooTPrg9woe": {}, "DbGjsgh9bjENyOeG": {}}, "dateOfBirth": "1977-06-25", "firstName": "9t2cezpbsdJ8K9v2", "language": "NEiL_HlZV_ev", "lastName": "Di18sxSVfQmt0Ba3", "timeZone": "C5my5alrp79IUKR3"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '89RDCah5zhsy7a7u' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'oyukg6mMZO5TBOC8' \
    --body '{"nGYeBcZRqhSEYIxg": {}, "7yygy91VjOsEoEWH": {}, "bNaJX6xhm9Vw5Uyt": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'hxmTypwB3ztekM2Q' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'xM4v2JjilYPrG8GS' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE