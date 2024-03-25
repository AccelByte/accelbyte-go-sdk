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
    --body '{"displayName": "ytgObDs1uXEmWlLt", "namespace": "YCl0w2pE04tfanxA"}' \
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
    --body '{"actionId": 44, "comment": "gBdB2jS4wtQVxDNz", "userIds": ["0zm9JqlM1KCxdV3i", "sxLjQN7P6bFmfJ9P", "5kInBJ8xBiSktgM5"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["he3qd5JjT9xqmk9X", "DgNR8el1yp8navcO", "HMtlkrsS0udkTRlW"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "oefCrLqhOrEve01X", "description": "zCwDllwWc0ZY9IaK", "gameSessionId": "KhaFzDeHU5dsB5oD", "subcategory": "Wwvk9jkUntKDZbMZ", "userId": "80p15jgtvPOmtTnH"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'MkXc50agNSTSoZd9' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "QuPu7jdJNyaUCCEe", "userIds": ["6yAAAobTUU2adjsr", "maaV0NqnwmDxfD2y", "HHmHdk8i2bSiw4JA"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "EQrojwRYXTZVG6GY"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 GetChildNamespaces
samples/cli/sample-apps Basic getChildNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 13 'GetChildNamespaces' test.out

#- 14 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "AH7yumePFd52nYNO", "value": "BYBJ4IxCjJ6QkHdR"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateConfig' test.out

#- 15 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'Re0FjXnQ4BZksqKP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetConfig1' test.out

#- 16 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'Ho3I81XIyaaJIGDg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteConfig1' test.out

#- 17 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey '8f5Dwfij0OwfSvxH' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "R1O51hdhQQSEmVrW"}' \
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
    --body '{"apiKey": "c0CtCXTbbboKILvA"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateConfig' test.out

#- 22 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'lLEYRQVEAjrBeCPc' \
    --namespace $AB_NAMESPACE \
    --fileType 'dNdn6Do2czfsKnI7' \
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
    --groupCode 'L7be4vJlK3hV27Gn' \
    > test.out 2>&1
eval_tap $? 25 'GetCountryGroups' test.out

#- 26 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "Sy1Q2I6QT0lEuXJA", "name": "NqiXyHDP91dNFl5b"}, {"code": "i9OKqPkKD6FpVgEV", "name": "qKwhRdtbsL51C9h3"}, {"code": "VsPLtQK0MINekSpe", "name": "RmdmDBz0uptFJGdj"}], "countryGroupCode": "xOlTucp00wWqnate", "countryGroupName": "UXHcU3X0kqsgQwrO"}' \
    > test.out 2>&1
eval_tap $? 26 'AddCountryGroup' test.out

#- 27 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'LF8A76vW059Ykwwh' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "3L72xAgQQV6UTTmE", "name": "vkP2y2YM0eUowtZC"}, {"code": "Ns1UDEeRs30tgnFQ", "name": "95iyjoTjnTteuT9z"}, {"code": "n9TG2ESULzk1wD66", "name": "zTzyH3xnIaDAnkRY"}], "countryGroupName": "P3frqYEM7W7aAW3r"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateCountryGroup' test.out

#- 28 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'PsVzf1aMnVCB7Gow' \
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
    --publicId '7Zko3kIwBgO41XN7' \
    > test.out 2>&1
eval_tap $? 31 'GetUserProfileInfoByPublicId' test.out

#- 32 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Nc2h5yB6vBT7ACBy", "vWaisekIN9qinPlG", "B64K3idR5nw1EKXM"]}' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetUserProfilePublicInfoByIds' test.out

#- 33 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetNamespacePublisher' test.out

#- 34 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'RxtmStUIjiIpezWU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'GetPublisherConfig' test.out

#- 35 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 35 'ChangeNamespaceStatus' test.out

#- 36 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'QGRvw5ARHXZCFH4f' \
    > test.out 2>&1
eval_tap $? 36 'AnonymizeUserProfile' test.out

#- 37 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'G9ez6VRQvk07fLXZ' \
    --category 'O4zk8D6EtAbIosNO' \
    --fileType 'GVP6ZOrVeot2zF0y' \
    > test.out 2>&1
eval_tap $? 37 'GeneratedUserUploadContentUrl' test.out

#- 38 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId '2Ls8zsRUgoEtokWU' \
    > test.out 2>&1
eval_tap $? 38 'GetUserProfileInfo' test.out

#- 39 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'TnurPErMzgfOKYt0' \
    --body '{"avatarLargeUrl": "p34hItOEblxzorVb", "avatarSmallUrl": "DxJO4xs4cpkZffDz", "avatarUrl": "Ie7gDzWKlEBNXE3K", "customAttributes": {"0asYBOALkdpO6jkc": {}, "4F2Yleb0WNSpsSoV": {}, "7VfcSg0M9XMNCaxb": {}}, "dateOfBirth": "1990-09-12", "firstName": "XVXQZvj9qFjTEQTs", "language": "UbfC_lDdJ-iz", "lastName": "bkXSvvcDSzd2yCyh", "privateCustomAttributes": {"wsA5Vej37JnETvcm": {}, "EZiErhVDtxdps6a7": {}, "86SI4texU3OmXSd1": {}}, "status": "INACTIVE", "timeZone": "PkE2AAaTIGYOLu70", "zipCode": "VkVrnHAPJZhgPDBf"}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateUserProfile' test.out

#- 40 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'zGNMlGoveVhkOJUv' \
    > test.out 2>&1
eval_tap $? 40 'DeleteUserProfile' test.out

#- 41 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'GgMFqrAcEzzSOWEq' \
    > test.out 2>&1
eval_tap $? 41 'GetCustomAttributesInfo' test.out

#- 42 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'Eb0eJ44eTwWDs0vL' \
    --body '{"mphDGjggT3pJVPDD": {}, "adeZCGqiZ1p3z6Mp": {}, "clq0vbCBLLkZDQFw": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateCustomAttributesPartially' test.out

#- 43 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'PLYFENFiEniWew8w' \
    > test.out 2>&1
eval_tap $? 43 'GetPrivateCustomAttributesInfo' test.out

#- 44 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'WcMn1De1ZjEI0WMj' \
    --body '{"b1y4UfdMvmtQaST0": {}, "UIdBtDfvXs0BMp7Y": {}, "BadUyem1JpnshVSE": {}}' \
    > test.out 2>&1
eval_tap $? 44 'UpdatePrivateCustomAttributesPartially' test.out

#- 45 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'ExHT6gKTd6qmoFnz' \
    --body '{"status": "INACTIVE"}' \
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
    --folder 'kZPSFkLQAzI9MxTm' \
    --namespace $AB_NAMESPACE \
    --fileType '3rGgTwD2HJgL39Ci' \
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
    --userIds 'Zhwpjt3wh9OnHQjY' \
    > test.out 2>&1
eval_tap $? 52 'PublicGetUserProfilePublicInfoByIds' test.out

#- 53 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'MCWzvY1b8sWHNnej' \
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
    --body '{"avatarLargeUrl": "Ay5UmKCWNxBMBU7M", "avatarSmallUrl": "gid1GdVWC4aqmWmo", "avatarUrl": "xqM8FX123DjhBJ8q", "customAttributes": {"zMgkpQD8q3hfJwJ5": {}, "Lkx9kWJvMeXOiAeB": {}, "s6l5FyuXGwgPLAsW": {}}, "dateOfBirth": "1974-04-23", "firstName": "wQCU64SmAPYNvwrM", "language": "vvzN_LUta-264", "lastName": "y2pK2NLDWoRcHND5", "privateCustomAttributes": {"B0vxhGcQBk2kD8ZD": {}, "pKDvtafRhACvGxtm": {}, "WXQr3lg7FrUt1AEI": {}}, "timeZone": "fMM2YBFsLzXnWb84", "zipCode": "kbflWrYVW8Xwkkar"}' \
    > test.out 2>&1
eval_tap $? 56 'UpdateMyProfile' test.out

#- 57 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "7j5eC3E9eyF58S8J", "avatarSmallUrl": "cqnFU3QZoaA2tr4r", "avatarUrl": "rMSVqRNmlfAplgux", "customAttributes": {"lNxFL8cnaV4AM5v8": {}, "m1Pt7SbWfZuyaOE6": {}, "2stUvwCsXDvdCHMp": {}}, "dateOfBirth": "1978-11-28", "firstName": "TQPlv1UPUUIozc9w", "language": "ZqDn_Pekh_643", "lastName": "BRn0eWqnvKLOya8f", "privateCustomAttributes": {"hxqzpN0egD5IyZxv": {}, "BZ6xOX8A0L16Em4N": {}, "wGlxvpuC44ZKEhwQ": {}}, "timeZone": "PL9xdyixKkCRzKsI"}' \
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
    --body '{"W1VOds0MQNOK9eGd": {}, "bhwiEY8GHxwCOJcs": {}, "hpDg0M7Lyq41BtT7": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "GqAbReB5hTDuBBKl"}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateMyZipCode' test.out

#- 62 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'iw38wr65BPbOsqse' \
    --body '{"category": "z7ckHG553jOpnQM2", "description": "aAGLOcQCNvV3aDb4", "gameSessionId": "QyGZEc3AJ7iVGf7S", "subcategory": "tQ1VQnol2rsqpdZt", "userId": "yFNdZBHT25xNrTsb"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicReportUser' test.out

#- 63 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'gdZemmZXmtLtjuJa' \
    --category 'PBR3fq20BOveujKD' \
    --fileType 'eWv0en9X1mEFznvY' \
    > test.out 2>&1
eval_tap $? 63 'PublicGeneratedUserUploadContentUrl' test.out

#- 64 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'yYcMCbUHrlxjEnFg' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetUserProfileInfo' test.out

#- 65 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'SrBGc8twcdmpQqTo' \
    --body '{"avatarLargeUrl": "QjtAWHYdO8A7zShF", "avatarSmallUrl": "fMly8839ik7iBf6C", "avatarUrl": "ctNrMYpxEgfhzjCC", "customAttributes": {"uR6KozJWfcW8ihYG": {}, "Hf7usvubXNjFHe5Q": {}, "vyfzLiw5Dv7HyBkW": {}}, "dateOfBirth": "1978-06-30", "firstName": "MvSZAZqjUO6GbafJ", "language": "mnge-712", "lastName": "EgxhgRB4dWEDofAq", "privateCustomAttributes": {"5GRJzbyqQjtFzbRH": {}, "O0628GHGOmutshmZ": {}, "Ha0P9BnKO3ff7vYT": {}}, "timeZone": "skobpietb6kOQ7Oh", "zipCode": "QWMwiY0ZrZ63fToI"}' \
    > test.out 2>&1
eval_tap $? 65 'PublicUpdateUserProfile' test.out

#- 66 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'UH99HNFIELs1x3fA' \
    --body '{"avatarLargeUrl": "4B7dMMH17ieRCvxj", "avatarSmallUrl": "aKCDzzGZIQTteVFS", "avatarUrl": "KRfE5gmeqmdHudOD", "customAttributes": {"XjZN2OW2ZQFHKalF": {}, "KocwYky5bYlQhZc9": {}, "CptATvCMYpWrWhGF": {}}, "dateOfBirth": "1980-11-06", "firstName": "Nl9Mgq5P1RZvlp1X", "language": "INa-710", "lastName": "A9Z0vUlfWpdzF16l", "timeZone": "3Hvurey23W4FtmMN"}' \
    > test.out 2>&1
eval_tap $? 66 'PublicCreateUserProfile' test.out

#- 67 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'OSNeDUvdxxFp2zi1' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetCustomAttributesInfo' test.out

#- 68 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'Fi1iIjxbpiFirjOt' \
    --body '{"gB4FZFFIrHx2vZfZ": {}, "6Q5HxstzMkm2IYG3": {}, "ZpirIpZVbc9WCoG9": {}}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateCustomAttributesPartially' test.out

#- 69 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'lRH0EZoju4iw5pgn' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetUserProfilePublicInfo' test.out

#- 70 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'jmMxILeGR0HEDuod' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE