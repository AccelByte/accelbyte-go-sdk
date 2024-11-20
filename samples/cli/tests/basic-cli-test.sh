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
    --body '{"displayName": "7W5PAwaYUc0Uhz2L", "namespace": "ZsOWO4oSs7Wc94uT"}' \
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
    --body '{"displayName": "oS0M0pT5U8dgizK3"}' \
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
    --body '{"key": "ZAR5QfNloucI1cbs", "value": "21qV369GTbqZWCqT"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'ziufg9ALyQ52qrpQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey '1Nd4vezMGBTlolHU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey '148NRO1GtdNKvFdX' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "mKjBJmyuEIjTbE06"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'V9nNFHoeacvoT7Y6' \
    --namespace $AB_NAMESPACE \
    --fileType 'zCBadZKdr9Ehobfh' \
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
    --groupCode 'A9caGIpFCxxLPuFr' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "99wiuPqtjaHibwYK", "name": "KbdHFpnqbx1JnM2I"}, {"code": "4pS9gXeMoIyjYvvX", "name": "D26jn7DuxjExLDgb"}, {"code": "3wbCXbZ1IZgLudbP", "name": "NaTv5pMmwoHz0DoC"}], "countryGroupCode": "CSLnKvBZI3E919x7", "countryGroupName": "nCSvz8fSNg6EcE5b"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'lTeTKTCB2NSMiLkz' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "Kb2rB4rtWIh2Pt4r", "name": "mRh0AXaijyzv2s2r"}, {"code": "fdoNe7Mi8NOdFSmJ", "name": "2FCJP5AVldQ5G5s9"}, {"code": "9X2ybqBX5xt1g7pQ", "name": "zDMjMEVDHRJwEJeG"}], "countryGroupName": "vVbr4VS9jOzcYCuC"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'FjUFnqpRQbDbpAbq' \
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
    --publicId 'Eio6nD0pHfxqeGnQ' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["pNsPy6Wbf4lnzFGH", "hASAvmcovtwoGLm3", "RTTFEFmlkR2NbUcn"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'FwD1dBnJRyPSq3GT' \
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
    --userId 'w3sUbZwCSdmPeJtJ' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'SEi1Ef2GIhvbmDN7' \
    --category 'MVNnoKq1vhHQu1Cz' \
    --fileType 'SHVMFbO1VQYah2uQ' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId '33NOuJvcPcBtKnoI' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'tWO1gJVJKI740x0Q' \
    --body '{"avatarLargeUrl": "ngqxrpCV7pM7WkMp", "avatarSmallUrl": "UQ2wpEtEZEPhwk6U", "avatarUrl": "AVq5nPNredTphpwZ", "customAttributes": {"0RGiKT9PwulLq6Tg": {}, "J1ovus1hiGoDO7Dz": {}, "9Pw09lt39d6CgMlS": {}}, "dateOfBirth": "1995-06-13", "firstName": "rrCsh902H3KSTUDm", "language": "oPtv_oY", "lastName": "zu9fy6fo5ZEqj7ji", "privateCustomAttributes": {"z3MKZbuP9VvoDIuZ": {}, "Om8zort6D4T2eFxg": {}, "wCjjOWvOm7ER52tM": {}}, "status": "ACTIVE", "timeZone": "07cqSeZMBM7h3s4u", "zipCode": "0M7ivyiKZLHu0fHg"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '1lVM8g1LUCN1Rsi6' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'PWsCPptc9NKGFDXx' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'zQU4l7KZWUgChG1o' \
    --body '{"REYgjsTCMXe8OwJx": {}, "qbEFkjfHou9uaaKS": {}, "sK2CDXBuA3VVprki": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'JkBsnLbKlJBM5TPH' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'RkCW6C9G9kLC13qO' \
    --body '{"Ts2K5MvbUQ5Ggr3P": {}, "BAlxqCZJpOJODXWf": {}, "uOAdr17ZBjm1aYhR": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '1S7VaSWzy3bDfat2' \
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
    --folder 'zFXXJEQsNkCEQV0U' \
    --namespace $AB_NAMESPACE \
    --fileType 'XDDbtAAJgGxygjvK' \
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
    --userIds 'vJvVbGhgyfSmdNXc' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["cKz5VveBPLMp5QW0", "PjgCwo1foidv4Got", "DyRcaODqnL5dPL9O"]}' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkGetUserProfilePublicInfo' test.out

#- 46 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId '6Dw9uGdl3S5UNvge' \
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
    --body '{"avatarLargeUrl": "uToNa2jnyMklsfCv", "avatarSmallUrl": "9iSW6At7Cqla3jwb", "avatarUrl": "RdWVGutMV9bktkl2", "customAttributes": {"WePrb78PQQswqo6f": {}, "qjxwDMItaKnkM2aW": {}, "aEEZ1klZpyYJwdla": {}}, "dateOfBirth": "1996-01-15", "firstName": "6FmFJ2iSDYDOKK4i", "language": "Np_OYFr-658", "lastName": "1TLHeYl6EQHDgG1C", "privateCustomAttributes": {"J1Dyb8bkBYBk4Qko": {}, "FZGfKgChROOG1v7y": {}, "eNHEhh1sNBvebDDj": {}}, "timeZone": "ixrhkQq6SWnPlH3F", "zipCode": "rMnMbbNEsAxWorUc"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "iuo4RKVLnkFiCK1T", "avatarSmallUrl": "BecNZn1myQWHWa3O", "avatarUrl": "E00U2SgUjVPhRtLP", "customAttributes": {"3KDC0mHRxWpe5eou": {}, "xiBrqLsNLUIuMoZf": {}, "VLHlhIfHD28bADO3": {}}, "dateOfBirth": "1980-01-27", "firstName": "Ejz2vvUz7m2WW8sr", "language": "Yila_lSFF_UK", "lastName": "6OrPvCN7dmUp9gdk", "privateCustomAttributes": {"sn68mjurLjEEITmJ": {}, "eIkjov3i0qBeCewU": {}, "9vkTVJ0srbAsvasg": {}}, "timeZone": "oRR6e2g1QMldu4Cq"}' \
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
    --body '{"qJ1taBDjVHaoLp2w": {}, "lDoYP9ncYyaXtEmf": {}, "VoSsmF0veKluw35t": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "W1aAQEmOE1SmGYFf"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId '5Zx6cjrLRCCc1Htb' \
    --category 'iUKJiyw4Wnj2Pew0' \
    --fileType 'jZoGzHk51TP32qw2' \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'OsvBlmvf8Sf1FJfN' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'TXVtUVZLu00lRl0d' \
    --body '{"avatarLargeUrl": "sLLM0RbQrYp7T92c", "avatarSmallUrl": "RIEAjBmtg3qvrFpT", "avatarUrl": "bRJShjtvlzh3On3T", "customAttributes": {"sHayfh3JydUnwuex": {}, "5RsB2XIXdsOzZs8M": {}, "TKLX7oGY7HAzH0or": {}}, "dateOfBirth": "1996-07-02", "firstName": "1hztFsyPdiIMLsFP", "language": "or", "lastName": "UiJz44shbO9asDdI", "privateCustomAttributes": {"mVxad70xIwmDCj3g": {}, "SDu8qgVIYaKt7pDD": {}, "Z62vKycqn531j81U": {}}, "timeZone": "TI85b2NbRnCHeNj0", "zipCode": "d1cpZcKKtpQPm3mb"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ULMv7w9Dt6T59NUn' \
    --body '{"avatarLargeUrl": "m2AWytVakZQXamlp", "avatarSmallUrl": "HMM03wWkz1fxfxHp", "avatarUrl": "GrJBo79iGfNHqfOr", "customAttributes": {"iHI6LKCPe45nCX1y": {}, "rXX2W4ckc0yfVmWn": {}, "YI2nAgK28KhA6dNC": {}}, "dateOfBirth": "1989-12-17", "firstName": "1GlkZMRTpY1273IN", "language": "Jg-Itiu", "lastName": "BsXbLaB4suyEqsSz", "timeZone": "tYM1xXTkSIfYDhaK"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'erjDsuMebq8NghUw' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'pUK3UIHz1bs5VJoN' \
    --body '{"v0ELHCqlDH2gXxBX": {}, "Ivzrc5E1GzEEYIy5": {}, "47ARf5hLPUGXCbJu": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'kiW0Jm0xSpMHIxaU' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'wDO3ibB5ZrLOzZV6' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE