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
echo "1..61"

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
    --body '{"displayName": "e7PnSvM97H2qC2nr", "namespace": "yS9UobEJcmfewGle"}' \
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
    --body '{"displayName": "41zOHjj9akzLve5a"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateNamespace' test.out

#- 7 GetChildNamespaces
samples/cli/sample-apps Basic getChildNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 7 'GetChildNamespaces' test.out

#- 8 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "w9Wk051m9xzoE9Qh", "value": "AqPdRxIH1O8JyCAx"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'N9tYNGRXKWWpMSlF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'Qswhs5NWOCf4Xj0a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey '96PPhhXYaDCNJ7pb' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "eDcI3tgtV3aPu6rO"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'MtlMBOS92uLdnByw' \
    --namespace $AB_NAMESPACE \
    --fileType 'nCUsT3pNQxZIV55v' \
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
    --groupCode 'R6CXSCJZHVT19dy6' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "nf7nVb18OYiwr4Up", "name": "Mle5HtT4Belnjit4"}, {"code": "NE0LQiGBjDppf0PH", "name": "dZtsHAemnTnSFZkv"}, {"code": "xVnyq1nBFoK0uJkd", "name": "vkz5nrMlugClchBz"}], "countryGroupCode": "yjCSaPGgX0Pa7E5s", "countryGroupName": "b3nOl8U0Nyo1MMZR"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'D6wwnDmVJDSkoK3C' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "mi3w6ED3Ccz0gnoT", "name": "LOp8iGtHZcI2N3d2"}, {"code": "AbiRrOJZ0hymigMh", "name": "WPBzlb81UFJT0BBZ"}, {"code": "Hidn7qDKhKXCTGil", "name": "dfmID3gvjFMOTlPQ"}], "countryGroupName": "AbvsnPxWDlkfB5Ls"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'L9WK9el00oOOYTTw' \
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
    --publicId 'Pqxx1rhzODWKXyum' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["79eMYfIyNOIRcFoc", "5hT86tJPA3bDO2Gp", "tE3Z5NHA91xheayk"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'GDPDh8le0bYnrGXE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'GetPublisherConfig' test.out

#- 26 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 26 'ChangeNamespaceStatus' test.out

#- 27 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'FcxRn2EimYQjsSCf' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'zRlMDVaizUm2DkGE' \
    --category 'w8frTGeg8TX3qibZ' \
    --fileType 'byhZu194E6GNgaaZ' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ILslmbdjIXiLvVJN' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'MmRGpkKhRw5TlLPu' \
    --body '{"avatarLargeUrl": "Get015ACYVtkD2OA", "avatarSmallUrl": "7W6XuI4t2GbUQJAG", "avatarUrl": "I933WeQqyKqTqOrA", "customAttributes": {"vTAd6fYlaemQURI3": {}, "CfgbZp1OMdzvMaat": {}, "EU8k0uG7JOhpHoKf": {}}, "dateOfBirth": "1976-04-05", "firstName": "CGL4mwUlFwjQEzHK", "language": "agGW", "lastName": "DJTBnUnzZO7JTnhR", "privateCustomAttributes": {"VxB7ni17U54F7KFo": {}, "qAbBVQgqOWQKAcjV": {}, "aqNLpWSofIW6GTEM": {}}, "status": "INACTIVE", "timeZone": "kksMQhMRmwo1pBTv", "zipCode": "HTP7GIP00VEttqvs"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '3rZXoFfjtOm87w4x' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'nVzs62lrEqz6UR4d' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'QfAZVSLbVWYdVUUK' \
    --body '{"BUKOlEsRUYYikhmS": {}, "2lpUu20K88IIOwpq": {}, "9uOu76YP6kiBjum3": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'SOwGLPrNCPYoiwtd' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '9Le3OKsZchKPMlrn' \
    --body '{"VUO6uVfZKGA9dynJ": {}, "15M6qEcq0EzQlUK6": {}, "imLhr8fQuyUfU5lL": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'nWzpEEaGKqtRlUAg' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 36 'UpdateUserProfileStatus' test.out

#- 37 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 37 'PublicGetTime' test.out

#- 38 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetNamespaces' test.out

#- 39 GetNamespace1
samples/cli/sample-apps Basic getNamespace1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'GetNamespace1' test.out

#- 40 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'CRK2ppvxLUU3BKXX' \
    --namespace $AB_NAMESPACE \
    --fileType 'UvSszdqpMgqMblop' \
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
    --userIds 'tfmnsFkY8wCxl0XA' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'y8YCJDcOSgiNK7fa' \
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
    --body '{"avatarLargeUrl": "IETf0pQc1aTH0Bf5", "avatarSmallUrl": "a3z02gEUBjZgC6DY", "avatarUrl": "F2oXWyt4LHt7dgVG", "customAttributes": {"e1TYj4asvckWL4gB": {}, "O0J5ukSBDVINoU3i": {}, "mtXhub46n0tAe60V": {}}, "dateOfBirth": "1977-09-27", "firstName": "bnQtb7F12KZKF2iZ", "language": "ivH-JKHJ", "lastName": "XphPt2uNAtkXqdau", "privateCustomAttributes": {"zt28tIOmcPj2aId8": {}, "fitqkFnnAx1fEpxr": {}, "Liqdlc88KcGT84zE": {}}, "timeZone": "qvYkoRs4KUFRDoK2", "zipCode": "YwQzvh02VbqJck8r"}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateMyProfile' test.out

#- 49 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "ChDjYwveduTOul0N", "avatarSmallUrl": "4PfJOp96rgTvatcJ", "avatarUrl": "USUZsmB6Vnhk4TKe", "customAttributes": {"h0xZrFGGGP08BtJP": {}, "b8OfEbafNHPNL8U1": {}, "JfkcPBeCk8tWCgtv": {}}, "dateOfBirth": "1972-08-10", "firstName": "ReNOaCqqEbKvK07r", "language": "ni_Yali_Rq", "lastName": "S8sDqiR3vH8V9TZ2", "privateCustomAttributes": {"IDYYjCQnXM1CUv7b": {}, "PZlClXYVOUqV13u8": {}, "NjhHFufq86egi6qG": {}}, "timeZone": "CYYzLNqhN4u3jVxn"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateMyProfile' test.out

#- 50 GetMyPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getMyPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'GetMyPrivateCustomAttributesInfo' test.out

#- 51 UpdateMyPrivateCustomAttributesPartially
samples/cli/sample-apps Basic updateMyPrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --body '{"JeGbUlnVAahFpDdd": {}, "Ykry9oLuUnXCZ3kC": {}, "G31DeuigNtQmOTIi": {}}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 52 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetMyZipCode' test.out

#- 53 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --namespace $AB_NAMESPACE \
    --userZipCodeUpdate '{"zipCode": "QKCke1FKz5F87BBX"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateMyZipCode' test.out

#- 54 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'MksUhSvhVznEnt7k' \
    --category 'TajgLbQnzPm8FjUp' \
    --fileType 'CLttbyMmwpngtUov' \
    > test.out 2>&1
eval_tap $? 54 'PublicGeneratedUserUploadContentUrl' test.out

#- 55 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'zAXwHbxBOe1p86f1' \
    > test.out 2>&1
eval_tap $? 55 'PublicGetUserProfileInfo' test.out

#- 56 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'vKdt7xOORyaAZCL6' \
    --body '{"avatarLargeUrl": "YJCdltoVZUTwWNrL", "avatarSmallUrl": "osEFIklDc5sZqE55", "avatarUrl": "c6YIbgydOdkA8OQW", "customAttributes": {"h0XcFBqc4H8XGjy9": {}, "0QD5h3PafpgStPg3": {}, "ByGrloRKGnYBayPE": {}}, "dateOfBirth": "1990-03-18", "firstName": "HtnrZcki5Raqe9zM", "language": "dF-vXDc-tU", "lastName": "EMNd5wXup3uGKwCW", "privateCustomAttributes": {"9PY4Jt8pdgpxiFtp": {}, "6vfkra3NXf39kG1x": {}, "u26AvLMqN7fPxPdc": {}}, "timeZone": "R9mIYZ7Ab8M6Hsin", "zipCode": "q4tVCzlFkVTu7dwn"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicUpdateUserProfile' test.out

#- 57 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '6JFZ8wFnKk7d1KTS' \
    --body '{"avatarLargeUrl": "9wMhvL2EQWhxBAAH", "avatarSmallUrl": "acUAkDbvgEyL4wsZ", "avatarUrl": "4UIiPuUmNmEmgmcq", "customAttributes": {"VBzvJZ6zJ8gZL6w0": {}, "1h9TohXLUtfRZ774": {}, "gO4P7eV6gzZyQaJD": {}}, "dateOfBirth": "1981-07-20", "firstName": "a2pFfu4PBMCmkG3s", "language": "zUYD-eq", "lastName": "Qgu1C3IipggXsIJF", "timeZone": "Pbqkpr0TrOruSRQO"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicCreateUserProfile' test.out

#- 58 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'hCelGdrlWle3OSfr' \
    > test.out 2>&1
eval_tap $? 58 'PublicGetCustomAttributesInfo' test.out

#- 59 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'b5z2iL90FD5pXAa1' \
    --body '{"qsmrFY650qr7FFAl": {}, "uROYsjSsBsacQ3aM": {}, "HnVKZeWmsyAIKb3A": {}}' \
    > test.out 2>&1
eval_tap $? 59 'PublicUpdateCustomAttributesPartially' test.out

#- 60 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Sl7S8kITMaEidjEs' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetUserProfilePublicInfo' test.out

#- 61 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'mKYmT1J0XVU6kWvY' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE