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
    --body '{"displayName": "h8slr2WkZAKPsCJG", "namespace": "CBLNh8Lc1AGY4bbm"}' \
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
    --body '{"displayName": "dWBDYDOoHYtuxQFc"}' \
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
    --body '{"key": "b6IL0DfVMA7QrxEZ", "value": "p3pejkaFMTbkZanh"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'U3zmNMRfAtJKCaLJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'YAxGtfnNB0blNZN7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey 'QzTtjEK4nsA5pHyC' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "vKPWpaP0NKPRTLKP"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'CIORjz9e7eLx2yIS' \
    --namespace $AB_NAMESPACE \
    --fileType 'lIj2rKYhj2ENuLHY' \
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
    --groupCode 'IOcgmHYAvmeoXiWH' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "NKT059YuqQpYLj6P", "name": "UFC93jR6U7TdGFYF"}, {"code": "8j2SboCHxbayHTCM", "name": "AQ2FjbTGdkDRNcYY"}, {"code": "pZTOGuslnA7Kwx6n", "name": "KeaXFVJ4QBNduXqb"}], "countryGroupCode": "hAVrZeFbgu8CIetl", "countryGroupName": "btmiVNveMEZWCdLz"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode '0uKQEiuWXNQvGdm8' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "H93wESFS7517y9jy", "name": "cA34ozuEg1hsZZJs"}, {"code": "FuQLSlxiaTtsvQS3", "name": "gCqYQKk6QGX3dBag"}, {"code": "t2tn6jJ98eHcnkYs", "name": "7E7hBoIXrhcWvQhD"}], "countryGroupName": "2sWgXgxmcvHihkoY"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'RyETAqeiF2vNWBuK' \
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
    --publicId 'AV9f1Dag07Qi4jGH' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Kz2bItSylrYk4v6I", "PgES1WZlnMlIDIgA", "05tnW2qwPFhULkKJ"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'ymbYdbmprYsV28Lo' \
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
    --userId '3trADUKgbVbIJ9Q4' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'Gk8JQOZP456qGTtE' \
    --category 'Xma3o0gV3v5qncfM' \
    --fileType 'scdF97dCGiLJ1E0f' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'd9bYhvtNK3xRmdAU' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '7naJSZSKsPCxlQff' \
    --body '{"avatarLargeUrl": "Su9Fm8a63s3dXSjp", "avatarSmallUrl": "hXB3pTQP60Wq7gSC", "avatarUrl": "6mX4Tlfc4UDvODqW", "customAttributes": {"sev0ovUUz323kKFv": {}, "sQJDBjgo6B7QShXb": {}, "5iw35RR3W96xvLfu": {}}, "dateOfBirth": "1984-01-15", "firstName": "o1fxUq06ylWXAAnW", "language": "CyG_JcyG-Ev", "lastName": "niPkFiWeuIBz0Xan", "privateCustomAttributes": {"LPTXJkqzzJD1dwNx": {}, "WJtlq0SnipL6DAvr": {}, "sGc6lb2CpSssMWb2": {}}, "status": "INACTIVE", "timeZone": "EGMM7Pftt2AsWLlF", "zipCode": "QbZ7fJ2wm7U5ON30"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'HOASc3fvMyhU2CwG' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'F0p53BwNOTrfe06b' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'p0i2sOviaLbwc6ZM' \
    --body '{"oOTa8DQqa5wint7G": {}, "ior1cBWRyxD2NAhz": {}, "lN88Kz2zpLX5i4kJ": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'h0m9BlHx1f8AsTT0' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'cNpb5P4JyIo0BqsY' \
    --body '{"uxW1SZt5NXnRXPuH": {}, "kiCq2EpNz9O9KnOs": {}, "AJpfSW0k85EAIv88": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'zQZNEYCn5MR85JWe' \
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
    --folder 'KYkhXNTISkhuJxEC' \
    --namespace $AB_NAMESPACE \
    --fileType 'dLob79JJnPD1HVSG' \
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
    --userIds 'RKDXJMLM7yuR51s4' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["g7MsSJhjI2Fi36Xz", "ZAS9BeTIIMxDTnKc", "rwUJzS8tRXEJbN3T"]}' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkGetUserProfilePublicInfo' test.out

#- 46 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'zB1kx1FHYC5hM9jU' \
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
    --body '{"avatarLargeUrl": "q0PeebUdY5lM9WNQ", "avatarSmallUrl": "3N0minby3mQZU0vm", "avatarUrl": "wcD4aeBiv6x7kV3c", "customAttributes": {"6eD61wiTmrJB1HsG": {}, "3wi82srZ6RsI8U0I": {}, "lEce7aXd20HCwfb3": {}}, "dateOfBirth": "1974-04-08", "firstName": "U0yfQOcM0DLaZKEe", "language": "gz_GTlu-806", "lastName": "u4WmLs0f5nBbfcAv", "privateCustomAttributes": {"bEhmxeYUUpyadh44": {}, "C4vMK4KQUaVDTang": {}, "M0Rb4DRUbZ25V540": {}}, "timeZone": "kZToslIssrvogRMi", "zipCode": "3EgGTyzdvofhAE42"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "U72n2b5JKDGDD1wX", "avatarSmallUrl": "ADinqJubf44lGuVp", "avatarUrl": "xhsGP3Du8V34GmyO", "customAttributes": {"7e40exWSxwJzS3Kk": {}, "NFNEDBGFxmG6oYG1": {}, "VyOhtAnid3qtFdPg": {}}, "dateOfBirth": "1974-11-03", "firstName": "vLeuEWFYiCrvf8aW", "language": "DXr_eqHg-348", "lastName": "wF0lqfrEhX2Y4YMC", "privateCustomAttributes": {"lkwvcIOzbbw487Fk": {}, "BVnUBO8TtJAQVz3q": {}, "lKKuaAf8SVKaQvGm": {}}, "timeZone": "HBbUh7D6ITr7walY"}' \
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
    --body '{"XBAb2DBCeKICK1RC": {}, "qIrxxfLhFzJ0LXBz": {}, "ayxMLNgvfiOlvhYS": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "q9U7w5NfHvDWBJTW"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId '6vq8OPqe7S0okCVO' \
    --category '2Rs99D0RL072JwSX' \
    --fileType '0Wim987Q9OEPXDta' \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'WMUJHZjs1ZzdR9Nh' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '8Z9NMPfftzsR5a17' \
    --body '{"avatarLargeUrl": "HA5dWxUbJmMAnfYw", "avatarSmallUrl": "P4sprFNaVw7eedgB", "avatarUrl": "FeQA3TEnSTykaoG9", "customAttributes": {"TcaHAB3pYrc0ojny": {}, "Zy872ox92FbBalJv": {}, "PcrANSfM8jMVc59C": {}}, "dateOfBirth": "1999-12-12", "firstName": "l3jkWYbKJewyeNS6", "language": "VzyV-IsJl", "lastName": "EHIe0CyChvLi9phH", "privateCustomAttributes": {"hi8Uj6vdnvkmqwIc": {}, "ezs9Gvmt0ftcnDF1": {}, "gYEVS3AaQrNpI8FA": {}}, "timeZone": "Cw3V06r9hRDsD4E9", "zipCode": "CIpwIyjEPL7HU98P"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'TnbXEKVWrXhlYqjx' \
    --body '{"avatarLargeUrl": "ZJy9Ctyws1hLgMxr", "avatarSmallUrl": "EPQOlUS5LMrNi9cT", "avatarUrl": "PN3Tw1DdrmFuljtA", "customAttributes": {"MOPIn8aSJJ1WF9Vk": {}, "EkDgGVsGAt6aMHrE": {}, "MJjgfoMtzqRcRxyO": {}}, "dateOfBirth": "1993-01-24", "firstName": "0wN5QBRCiciKfAX0", "language": "vefX", "lastName": "8QpdARbabTK8NaY6", "timeZone": "xU0GkbDFtxYUFDIO"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'A72YDNV6rw24M8D9' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'BfC8hlp2MstkoWrM' \
    --body '{"LE33BPBjs5Iv9vXX": {}, "QrYw5P6kM4i02r4m": {}, "rQMMySvZOz5FBKNs": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'djBV4prrjrsl6dSA' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'KcW1l15ftKWN2oun' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE