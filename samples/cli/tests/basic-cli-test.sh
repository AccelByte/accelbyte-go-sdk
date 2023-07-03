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
    --body '{"displayName": "rr7d7Iuy2dhrjwpI", "namespace": "deMvbpfksYsZy32p"}' \
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
    --body '{"actionId": 82, "comment": "9ADLLjPEoAw8z8Hg", "userIds": ["LOhMFcWAjnlc4Q9R", "oSaRBR9CAmo1f4Iv", "Nbyhy2ktFFYy9cL2"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["QuJaNrblZLqNLjpA", "Y5ycqtZJaYLf5L87", "gApwILciE78KMYHv"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "4wUkzYmlJlUZofyo", "description": "YkfIbO3j5PfUo8zC", "gameSessionId": "20tM6a0cj4JEwnDG", "subcategory": "0PaviRNRySiPwEeu", "userId": "YjfWM7dDBou0iuPF"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'a4jJ3m9SxXf019uh' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "gEnC4DZO6OEE4CWl", "userIds": ["HcaGOKoBNcQAQCfv", "VesPZXrVjv9Bul4y", "ktOY9SSYeW7KHaWq"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "rLwSnel2yxCsiT7z"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "hNf33jC6dAmBZeva", "value": "UKTEaYph9FkEtbCd"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'Q6e9gAv6z72x1gJx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'gkmayYnfDDPOmRKh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'aYSVP9anEEJSqiqZ' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "aSdfp005bGVwney9"}' \
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
    --body '{"apiKey": "wjr62oHQyChoz56G"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'cQB2zU3ojAtuLMbd' \
    --namespace $AB_NAMESPACE \
    --fileType 'HNOw4Pxxzw3p6dht' \
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
    --lang 'relXxEsEGf9KGSH5' \
    > test.out 2>&1
eval_tap $? 22 'GetCountries' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode '8Di4uO9z6p1jMsth' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "3rlXK2Suy5EfEYQ3", "name": "RNjzSkUAcSY8aAPR"}, {"code": "fyTjko7Oijwu6Zn2", "name": "kPkIWfLIAzUtKpej"}, {"code": "LcU7zckqd2Jajv0C", "name": "9F61HgnQTNFb8wVw"}], "countryGroupCode": "Ury9PJ9yEZc17ZSG", "countryGroupName": "eIqBsfoG9ZM2OLmv"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'yS4EMQy83P7MIkJd' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "orznfqhzKqoi0Bt4", "name": "4EKnJSvkSIIphoy5"}, {"code": "ff695k7SH0ru8fmA", "name": "NrX3JYku2W6zGu5K"}, {"code": "S6SVOkvaace5EjlD", "name": "JucKAR0a1ypBoj6T"}], "countryGroupName": "BBUNQvkZKeILofoC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'Cejclfp6WcKtaAs4' \
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
    --publicId 'NBv2pp0clUayLD9U' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["UgmBCZXpeTlAD7hM", "Z1OUghE6W8Dr4hwE", "N7GaSIDaFAthGwJs"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'Rj60D1B1wL5DtTyA' \
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
    --userId 'CrWXDWdhrlPA2MFM' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'NPUeac7p3cmBHL6v' \
    --category '0VnzoX9jNdGFSCiM' \
    --fileType 'Pi0kom8xQwHbx9Oj' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId '9ZeRWKRb2mCviFdJ' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'g87iBdxqNR3p3sb9' \
    --body '{"avatarLargeUrl": "F18oiLsAU7q7Z5fC", "avatarSmallUrl": "9Z8JVOsgGEhebvDh", "avatarUrl": "eUG9CG0Pv46MBYDT", "customAttributes": {"yzvOXSSqHpzf7uFk": {}, "VmEPG6cGbnDoWRoe": {}, "glJMNpWKKwB6vIUm": {}}, "dateOfBirth": "1976-06-27", "firstName": "kV5hlW0YtusToS03", "language": "Qaa", "lastName": "QRKNUG3AdGloozHb", "privateCustomAttributes": {"JXd95QSZfLn7lPnJ": {}, "HGiEti4cvM7SD68N": {}, "Jupjk5JhMgU8gc3O": {}}, "status": "ACTIVE", "timeZone": "yJuRk6Vjc2LpDazU", "zipCode": "hvVuZy4ikqjAo6rU"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'TqrlF8aa4CehrQ7l' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'cCJpcBvOZoizGfRL' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'Rp5mPsDKWa9Q3lmN' \
    --body '{"iCneffmcMGfVvN12": {}, "mDUvZ9JvqQsMpaLM": {}, "zEDYverWp0zyolqS": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'PmZlkYgvz7MNJWAC' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'rsz2HvYp7uR7ONBr' \
    --body '{"3Uo6otDe1lgYtX0S": {}, "NbylxncGaQl46PKJ": {}, "MWw8sMEj1i4fv5PC": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'irn5w4ZkQzBCZAhf' \
    --body '{"status": "ACTIVE"}' \
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
    --folder 'mt6iUhfHJxD2GN2g' \
    --namespace $AB_NAMESPACE \
    --fileType 'uDTxcdFmQl8FnaR9' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratedUploadUrl' test.out

#- 47 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang 'XRh8E2PPVip7pUcw' \
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
    --userIds '49KpqVIYus9Pk1ZL' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'gR3W5XXVwWPvHyIh' \
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
    --body '{"avatarLargeUrl": "EZ9F4ElPVRJglKpd", "avatarSmallUrl": "Xt4dbzDy5XgRgbHf", "avatarUrl": "x13svFxbRrMNu0y0", "customAttributes": {"0wKBIGRkZjfKQMt6": {}, "2aYdfRsOZzt8gz4A": {}, "Dlp7wnyiSY9fSPF3": {}}, "dateOfBirth": "1984-11-08", "firstName": "3Jl8e7Mj9tZzcUx0", "language": "bbuZ", "lastName": "qtbpZ8wZvN2om4ng", "privateCustomAttributes": {"FhLIeoTKq7xM9vGS": {}, "zbz6LZBdddxuvxNE": {}, "Fg3GvxZdnewUi1nB": {}}, "timeZone": "qBo4BTm6CxmoWmtr", "zipCode": "RW8Q8FwGEK1g8GjZ"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "WpdDCkiT3icnVSia", "avatarSmallUrl": "caWvBI0xMnyLfy10", "avatarUrl": "QTweQqZnGfexl5ep", "customAttributes": {"SfUfRYJPExNd2kJ9": {}, "1eM9yxIvVLh97IQZ": {}, "91ThHiryF0MarB17": {}}, "dateOfBirth": "1976-01-23", "firstName": "4UHPGlvXeYqk8oEM", "language": "FJr-WigQ_oF", "lastName": "nxs8AW3NZx7qgtbx", "privateCustomAttributes": {"lRCDLJG3dZWunO08": {}, "MHEygheyIjY7wIB0": {}, "HxV72GsQp5brk2Ir": {}}, "timeZone": "I8mS972NHPiE2WIr"}' \
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
    --body '{"rmrhpFNhDZJko4za": {}, "JqNxhyaQKd2JoZHV": {}, "zyRRaiMVXnQlnQPC": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "ByHGxk04ZQzRralf"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'TqdOMremNvrPx1Ox' \
    --body '{"category": "9XQHp3SDExhjDbtS", "description": "wmdzjDKGi38PyT2N", "gameSessionId": "WX69qqN1mc9JuEEf", "subcategory": "Guum86YEm3NQyo5s", "userId": "ZLL7L0L70V1bYoWo"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'JP9kMeazKgMuERbC' \
    --category 'R1Dj6kqJ52DdY8sF' \
    --fileType 'NRtZPzTzz3ZLUxLc' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'V68o5WXKyPxJPBb8' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'CZQeMDJFBunt0ZoS' \
    --body '{"avatarLargeUrl": "hHaZEhvorDOKcflR", "avatarSmallUrl": "HKw34ULJWFGtasdl", "avatarUrl": "21roclbcEKf0jgbP", "customAttributes": {"RRGVLoRmcRgLo3TT": {}, "Gt8HS8AD2CeF4hwj": {}, "aD8YKkkNdwpTzjYQ": {}}, "dateOfBirth": "1993-09-25", "firstName": "OsuhfCKGwXVoT1Js", "language": "fd-Wihv", "lastName": "oNBtTJnmL9AXW1vQ", "privateCustomAttributes": {"OyvOkrLANK8spynq": {}, "1aO24PRZE4phY1Ta": {}, "aaBbAL9GsIFUhlJu": {}}, "timeZone": "d63ayp1EklwMuElw", "zipCode": "SU5LKf7kE6uE5SNs"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'f1GRLIfRbRihhG4w' \
    --body '{"avatarLargeUrl": "118VEV4aKLwLhDyE", "avatarSmallUrl": "VoqQKgAW39G4rwog", "avatarUrl": "hS9hfoyN33mD1b0E", "customAttributes": {"hBsgzhjmmwTYQn4Q": {}, "ix1FLO7QNgnnuAWj": {}, "77mh6UG961PANn1b": {}}, "dateOfBirth": "1987-09-05", "firstName": "7aJAv92dafu6Pu1t", "language": "Nug_Hv", "lastName": "acQS7QL5wBIwLV9B", "timeZone": "CgaFkNnqa99npvhq"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'pWQIaUectePOY0Fg' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'KpfSg3WPoB5Ig0KH' \
    --body '{"tFb6VeB52IiEHRLe": {}, "TsWOCtDUSwgzbJav": {}, "lt2wWCrAptF27z0F": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'C1PwnsdA30WWK5yH' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'SIZJRtsixWGxo5OI' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE