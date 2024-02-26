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
    --body '{"displayName": "vluJ6a0NAzfzXQ9z", "namespace": "bsraIaBjuPJvTd1w"}' \
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
    --body '{"actionId": 13, "comment": "0pIY1dpIQnHaJ6Hm", "userIds": ["fCG3w1JM6zMUPfKu", "etfPT3VMDRKjZQv2", "ahXYzR2asyGJS07K"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["pTfjHa5xGqLzZvoF", "Ogb8LcDHV4KTP7SA", "NRxlnBQdcx6aH4Du"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "iPCfxmGh1bofJuCR", "description": "7JyJKMoZksIhI23q", "gameSessionId": "q8qnE7Akaki4uo7f", "subcategory": "3YWelxNHPPtjFuSl", "userId": "96PCG2qO9Bc2aI5g"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId '7uT4zSHIWe5bChwF' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "3a7ubxT1oZqFsX6q", "userIds": ["BWr3QMfT6y2a7Hph", "hlgAOqPGvdyRupXY", "75aoKX7Lu3ZC5l0B"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "LPrImVlgQrO7tOOA"}' \
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
    --body '{"key": "qE2KS8kktOCVlG6e", "value": "dPgx1MRF9AACcj93"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateConfig' test.out

#- 15 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'ugapt9lU7RnqUmkR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetConfig1' test.out

#- 16 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'A6ATMXU7EvDNKTkN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteConfig1' test.out

#- 17 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey '9nMBYd7hgXpZ2YUx' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "Om7W7TFYOBKEAvm1"}' \
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
    --body '{"apiKey": "Rr0Uir9neXj954ol"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateConfig' test.out

#- 22 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'hYb3448BpD9jyjQK' \
    --namespace $AB_NAMESPACE \
    --fileType 'pUgDaivso1c5c1Qe' \
    > test.out 2>&1
eval_tap $? 22 'GeneratedUploadUrl' test.out

#- 23 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 23 'GetGameNamespaces' test.out

#- 24 GetCountries
eval_tap 0 24 'GetCountries # SKIP deprecated' test.out

#- 25 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode '5CT8liWT5KUmqxpG' \
    > test.out 2>&1
eval_tap $? 25 'GetCountryGroups' test.out

#- 26 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "X9qgwOgcEa1SQxsa", "name": "f2tn3PrJYNZBTJ3T"}, {"code": "awba69UM0OcwcMyr", "name": "1M4yObDgj6mknRfx"}, {"code": "4Vdy0hNSaU28sRxe", "name": "bkIWkSc40zq79GrB"}], "countryGroupCode": "Pb0IrihUKc6sfwdy", "countryGroupName": "zYAFCuxkQQ5356hz"}' \
    > test.out 2>&1
eval_tap $? 26 'AddCountryGroup' test.out

#- 27 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'JKKEEfgXVo5j8Ohi' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "NtXCqUNBi0wnl647", "name": "DNeF1ypVcxamAQYX"}, {"code": "72aeOaslWB18eymf", "name": "hUSihGrFVhPCDFLE"}, {"code": "BSSKwk26xzk9Zepv", "name": "Nph6A2Iz4RN9bBBg"}], "countryGroupName": "s6mo5ArJl6J4wuYd"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateCountryGroup' test.out

#- 28 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode '9FcYwBnyL82O8mW1' \
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
    --publicId 'xDnF7x1AhMAjk6xD' \
    > test.out 2>&1
eval_tap $? 31 'GetUserProfileInfoByPublicId' test.out

#- 32 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["6a0cRQVLGydkK49P", "WpzY22mO3yEpJwWf", "HOeTciUOdeQwiQy7"]}' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetUserProfilePublicInfoByIds' test.out

#- 33 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetNamespacePublisher' test.out

#- 34 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'iDNtOY0P6UzJGG6m' \
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
    --userId 'UCC5N1ej5qAeIvot' \
    > test.out 2>&1
eval_tap $? 36 'AnonymizeUserProfile' test.out

#- 37 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'IS3jFk7gE68N2nc4' \
    --category 'UCfGdAIJOEIsEgWk' \
    --fileType 'ZY3CQg0VX8udZyRn' \
    > test.out 2>&1
eval_tap $? 37 'GeneratedUserUploadContentUrl' test.out

#- 38 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'EazsxOpIHGEF3Uuf' \
    > test.out 2>&1
eval_tap $? 38 'GetUserProfileInfo' test.out

#- 39 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'CqRtMJNKE9uCf5XH' \
    --body '{"avatarLargeUrl": "ITLRzpeddOKVYHnb", "avatarSmallUrl": "yuDQjXLZBF9PePZS", "avatarUrl": "fY3kuk6kda7W0gEM", "customAttributes": {"BLmaLBAUsIzWyCM1": {}, "7dWmPDfnMEcD8cpR": {}, "9XHYkVSekpLimh9v": {}}, "dateOfBirth": "1987-07-06", "firstName": "MimDoOWUDYF7lO7u", "language": "sR_QQTc-085", "lastName": "M1d8TJub6OfIpeGO", "privateCustomAttributes": {"TDtNGXMaVye4HbgQ": {}, "REHj1j6sCpa9PeE8": {}, "ocKl4Opff3hQDRyY": {}}, "status": "ACTIVE", "timeZone": "vH9hQwVGzXwEYsiO", "zipCode": "GjEiwAg3i4FqUgli"}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateUserProfile' test.out

#- 40 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'uuUR94MgfPBttyv6' \
    > test.out 2>&1
eval_tap $? 40 'DeleteUserProfile' test.out

#- 41 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'TH1961odkuIqCllu' \
    > test.out 2>&1
eval_tap $? 41 'GetCustomAttributesInfo' test.out

#- 42 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'gVAXHIz01syUu0Cb' \
    --body '{"Tx9o8YR2fklNryqS": {}, "WCXSHdYVkklTu8ni": {}, "0ufhryrM5F2jkLiN": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateCustomAttributesPartially' test.out

#- 43 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ghr5uQBLtch9GgTg' \
    > test.out 2>&1
eval_tap $? 43 'GetPrivateCustomAttributesInfo' test.out

#- 44 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'eXb0vX4YtsQvkrhb' \
    --body '{"eQNcbadLWt1moWyA": {}, "3i5yraH5bedBfq0P": {}, "Xf3xe2MDHJOlszzp": {}}' \
    > test.out 2>&1
eval_tap $? 44 'UpdatePrivateCustomAttributesPartially' test.out

#- 45 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'nX6hMzV0QG3mAb5I' \
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
    --folder 'vooGDHVpltYvJJP5' \
    --namespace $AB_NAMESPACE \
    --fileType 'QIPac8BwXeFBLUuW' \
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
    --userIds 'pEAksO2dPwb3SrJ8' \
    > test.out 2>&1
eval_tap $? 52 'PublicGetUserProfilePublicInfoByIds' test.out

#- 53 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId '1CJFWszcWfF1aXDi' \
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
    --body '{"avatarLargeUrl": "dCMV7gkwZjeJSLFC", "avatarSmallUrl": "GRAmThHwC1h43Msu", "avatarUrl": "HReHArfUsFMCBxBe", "customAttributes": {"qoziJGo46fi9IuYF": {}, "n7Y91wlHq9WtLiVW": {}, "3r8zFBsKvYYlZGfe": {}}, "dateOfBirth": "1981-12-12", "firstName": "R00IMskANR6j1JPZ", "language": "uER_Geqi", "lastName": "R7pkkzNaTnqzwnG4", "privateCustomAttributes": {"W62GQj6SFAsCxUJE": {}, "6gWsbndseEdCHglY": {}, "TkzQaviDI3L4DPY8": {}}, "timeZone": "U5avj3nHBmEY6Txs", "zipCode": "1UMPmy7RhVwDBfGm"}' \
    > test.out 2>&1
eval_tap $? 56 'UpdateMyProfile' test.out

#- 57 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "dLhBKdBGSQtn93pw", "avatarSmallUrl": "5UAUZuWcew7ulE1q", "avatarUrl": "RaWEGxMUzIyxtUUh", "customAttributes": {"AmwKNl8k98apO4sD": {}, "Bb1Oke06HTwBKuH4": {}, "bfzH9Vy2PXmr5WMH": {}}, "dateOfBirth": "1973-08-22", "firstName": "agax2ww2GLT7mVWs", "language": "SB-408", "lastName": "xiWSL3IpM1SBXcyI", "privateCustomAttributes": {"eSAPvgxA2s61FNVe": {}, "tnAz0zQSEPbvEkiZ": {}, "UkuxN1aqlYpoBYRy": {}}, "timeZone": "WL8pLET80Syx7PF9"}' \
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
    --body '{"bIRPCA0KqyivUdDZ": {}, "APA3Ky9xFCFAfzu1": {}, "FtHFVA3ydUwhyn8J": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "pTbe4iS19yFs508L"}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateMyZipCode' test.out

#- 62 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'k5jhQTxs0DjfnhMM' \
    --body '{"category": "q95SGfH03Qwx16gu", "description": "PoZXDIBUNvq5rnXP", "gameSessionId": "pFd0LXtUiBdobykk", "subcategory": "UDCf3c6fQKEOTb3M", "userId": "xCGZ5W3gLKLv29R5"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicReportUser' test.out

#- 63 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'SRKE8KSKGLgKkLVn' \
    --category '1jEiV4qMJMgjrLXe' \
    --fileType 'XtpaHyWNA0mdRKdD' \
    > test.out 2>&1
eval_tap $? 63 'PublicGeneratedUserUploadContentUrl' test.out

#- 64 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'c1RxmXVcfwpZxV4Y' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetUserProfileInfo' test.out

#- 65 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'BZXLJF5qPg3RubPi' \
    --body '{"avatarLargeUrl": "deZEtbq84nL4mr57", "avatarSmallUrl": "oaDcdsMV01FSCWnR", "avatarUrl": "JonwOBM7s0s9TQ0a", "customAttributes": {"HoGmS86r3D3ncos1": {}, "K5FBYGxTd8XPCzqK": {}, "ZjGwfFdBuEE9t9e0": {}}, "dateOfBirth": "1992-02-06", "firstName": "B0wOeLOgJcOjCMr3", "language": "kyuu-Amdg-ey", "lastName": "u1jdyI5XsZCgVjCx", "privateCustomAttributes": {"c21Kb1nYN8GK1ULK": {}, "oPF73OqjfwSopHTd": {}, "YVCNZzirU2Wd7kVT": {}}, "timeZone": "CyBZlK2mi90YcYQL", "zipCode": "HvLprCIdHK9bYZvz"}' \
    > test.out 2>&1
eval_tap $? 65 'PublicUpdateUserProfile' test.out

#- 66 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'cHf6SKJyo2lniiKG' \
    --body '{"avatarLargeUrl": "C9OmPBvpivFo81EK", "avatarSmallUrl": "RDby72qT5uxSeASl", "avatarUrl": "2E2eUCczwVVzfzcP", "customAttributes": {"TpwvxhLzp3vjHIAn": {}, "gLkQVJjan8IlkMDG": {}, "cIqcWuBCNpgP9k2j": {}}, "dateOfBirth": "1994-11-19", "firstName": "gERV6xbdcl77eWUq", "language": "lIn_ga", "lastName": "uG8IcmUXRkED7qnY", "timeZone": "TMbmcGU1Jiy6lgwR"}' \
    > test.out 2>&1
eval_tap $? 66 'PublicCreateUserProfile' test.out

#- 67 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'q6938b1I31jnMQVs' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetCustomAttributesInfo' test.out

#- 68 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'wl9QliYFPIyGCfto' \
    --body '{"y96IL6VvNTAbKuFk": {}, "NTq2aAH3O5zgKlG2": {}, "a2t5NBjHoSsgZPU8": {}}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateCustomAttributesPartially' test.out

#- 69 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'VJ7ndPR1aRfl8co9' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetUserProfilePublicInfo' test.out

#- 70 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '0Eu04Se0jodcyK74' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE