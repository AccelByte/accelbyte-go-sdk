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
echo "1..363"

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

#- 2 GetBansType
eval_tap 0 2 'GetBansType # SKIP deprecated' test.out

#- 3 GetListBanReason
eval_tap 0 3 'GetListBanReason # SKIP deprecated' test.out

#- 4 GetClients
eval_tap 0 4 'GetClients # SKIP deprecated' test.out

#- 5 CreateClient
eval_tap 0 5 'CreateClient # SKIP deprecated' test.out

#- 6 GetClient
eval_tap 0 6 'GetClient # SKIP deprecated' test.out

#- 7 UpdateClient
eval_tap 0 7 'UpdateClient # SKIP deprecated' test.out

#- 8 DeleteClient
eval_tap 0 8 'DeleteClient # SKIP deprecated' test.out

#- 9 UpdateClientPermission
eval_tap 0 9 'UpdateClientPermission # SKIP deprecated' test.out

#- 10 AddClientPermission
eval_tap 0 10 'AddClientPermission # SKIP deprecated' test.out

#- 11 DeleteClientPermission
eval_tap 0 11 'DeleteClientPermission # SKIP deprecated' test.out

#- 12 UpdateClientSecret
eval_tap 0 12 'UpdateClientSecret # SKIP deprecated' test.out

#- 13 GetClientsbyNamespace
eval_tap 0 13 'GetClientsbyNamespace # SKIP deprecated' test.out

#- 14 CreateClientByNamespace
eval_tap 0 14 'CreateClientByNamespace # SKIP deprecated' test.out

#- 15 DeleteClientByNamespace
eval_tap 0 15 'DeleteClientByNamespace # SKIP deprecated' test.out

#- 16 CreateUser
eval_tap 0 16 'CreateUser # SKIP deprecated' test.out

#- 17 GetAdminUsersByRoleID
eval_tap 0 17 'GetAdminUsersByRoleID # SKIP deprecated' test.out

#- 18 GetUserByLoginID
eval_tap 0 18 'GetUserByLoginID # SKIP deprecated' test.out

#- 19 GetUserByPlatformUserID
eval_tap 0 19 'GetUserByPlatformUserID # SKIP deprecated' test.out

#- 20 ForgotPassword
eval_tap 0 20 'ForgotPassword # SKIP deprecated' test.out

#- 21 GetUsersByLoginIds
eval_tap 0 21 'GetUsersByLoginIds # SKIP deprecated' test.out

#- 22 ResetPassword
eval_tap 0 22 'ResetPassword # SKIP deprecated' test.out

#- 23 SearchUser
eval_tap 0 23 'SearchUser # SKIP deprecated' test.out

#- 24 GetUserByUserID
eval_tap 0 24 'GetUserByUserID # SKIP deprecated' test.out

#- 25 UpdateUser
eval_tap 0 25 'UpdateUser # SKIP deprecated' test.out

#- 26 DeleteUser
eval_tap 0 26 'DeleteUser # SKIP deprecated' test.out

#- 27 BanUser
eval_tap 0 27 'BanUser # SKIP deprecated' test.out

#- 28 GetUserBanHistory
eval_tap 0 28 'GetUserBanHistory # SKIP deprecated' test.out

#- 29 DisableUserBan
eval_tap 0 29 'DisableUserBan # SKIP deprecated' test.out

#- 30 EnableUserBan
eval_tap 0 30 'EnableUserBan # SKIP deprecated' test.out

#- 31 ListCrossNamespaceAccountLink
eval_tap 0 31 'ListCrossNamespaceAccountLink # SKIP deprecated' test.out

#- 32 DisableUser
eval_tap 0 32 'DisableUser # SKIP deprecated' test.out

#- 33 EnableUser
eval_tap 0 33 'EnableUser # SKIP deprecated' test.out

#- 34 GetUserInformation
eval_tap 0 34 'GetUserInformation # SKIP deprecated' test.out

#- 35 DeleteUserInformation
eval_tap 0 35 'DeleteUserInformation # SKIP deprecated' test.out

#- 36 GetUserLoginHistories
eval_tap 0 36 'GetUserLoginHistories # SKIP deprecated' test.out

#- 37 UpdatePassword
eval_tap 0 37 'UpdatePassword # SKIP deprecated' test.out

#- 38 SaveUserPermission
eval_tap 0 38 'SaveUserPermission # SKIP deprecated' test.out

#- 39 AddUserPermission
eval_tap 0 39 'AddUserPermission # SKIP deprecated' test.out

#- 40 DeleteUserPermission
eval_tap 0 40 'DeleteUserPermission # SKIP deprecated' test.out

#- 41 GetUserPlatformAccounts
eval_tap 0 41 'GetUserPlatformAccounts # SKIP deprecated' test.out

#- 42 GetUserMapping
eval_tap 0 42 'GetUserMapping # SKIP deprecated' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
eval_tap 0 44 'PlatformLink # SKIP deprecated' test.out

#- 45 PlatformUnlink
eval_tap 0 45 'PlatformUnlink # SKIP deprecated' test.out

#- 46 GetPublisherUser
eval_tap 0 46 'GetPublisherUser # SKIP deprecated' test.out

#- 47 SaveUserRoles
eval_tap 0 47 'SaveUserRoles # SKIP deprecated' test.out

#- 48 AddUserRole
eval_tap 0 48 'AddUserRole # SKIP deprecated' test.out

#- 49 DeleteUserRole
eval_tap 0 49 'DeleteUserRole # SKIP deprecated' test.out

#- 50 UpgradeHeadlessAccount
eval_tap 0 50 'UpgradeHeadlessAccount # SKIP deprecated' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
eval_tap 0 51 'UpgradeHeadlessAccountWithVerificationCode # SKIP deprecated' test.out

#- 52 UserVerification
eval_tap 0 52 'UserVerification # SKIP deprecated' test.out

#- 53 SendVerificationCode
eval_tap 0 53 'SendVerificationCode # SKIP deprecated' test.out

#- 54 Authorization
eval_tap 0 54 'Authorization # SKIP deprecated' test.out

#- 55 GetJWKS
eval_tap 0 55 'GetJWKS # SKIP deprecated' test.out

#- 56 PlatformTokenRequestHandler
eval_tap 0 56 'PlatformTokenRequestHandler # SKIP deprecated' test.out

#- 57 RevokeUser
eval_tap 0 57 'RevokeUser # SKIP deprecated' test.out

#- 58 GetRevocationList
eval_tap 0 58 'GetRevocationList # SKIP deprecated' test.out

#- 59 RevokeToken
eval_tap 0 59 'RevokeToken # SKIP deprecated' test.out

#- 60 RevokeAUser
eval_tap 0 60 'RevokeAUser # SKIP deprecated' test.out

#- 61 TokenGrant
eval_tap 0 61 'TokenGrant # SKIP deprecated' test.out

#- 62 VerifyToken
eval_tap 0 62 'VerifyToken # SKIP deprecated' test.out

#- 63 GetRoles
eval_tap 0 63 'GetRoles # SKIP deprecated' test.out

#- 64 CreateRole
eval_tap 0 64 'CreateRole # SKIP deprecated' test.out

#- 65 GetRole
eval_tap 0 65 'GetRole # SKIP deprecated' test.out

#- 66 UpdateRole
eval_tap 0 66 'UpdateRole # SKIP deprecated' test.out

#- 67 DeleteRole
eval_tap 0 67 'DeleteRole # SKIP deprecated' test.out

#- 68 GetRoleAdminStatus
eval_tap 0 68 'GetRoleAdminStatus # SKIP deprecated' test.out

#- 69 SetRoleAsAdmin
eval_tap 0 69 'SetRoleAsAdmin # SKIP deprecated' test.out

#- 70 RemoveRoleAdmin
eval_tap 0 70 'RemoveRoleAdmin # SKIP deprecated' test.out

#- 71 GetRoleManagers
eval_tap 0 71 'GetRoleManagers # SKIP deprecated' test.out

#- 72 AddRoleManagers
eval_tap 0 72 'AddRoleManagers # SKIP deprecated' test.out

#- 73 RemoveRoleManagers
eval_tap 0 73 'RemoveRoleManagers # SKIP deprecated' test.out

#- 74 GetRoleMembers
eval_tap 0 74 'GetRoleMembers # SKIP deprecated' test.out

#- 75 AddRoleMembers
eval_tap 0 75 'AddRoleMembers # SKIP deprecated' test.out

#- 76 RemoveRoleMembers
eval_tap 0 76 'RemoveRoleMembers # SKIP deprecated' test.out

#- 77 UpdateRolePermissions
eval_tap 0 77 'UpdateRolePermissions # SKIP deprecated' test.out

#- 78 AddRolePermission
eval_tap 0 78 'AddRolePermission # SKIP deprecated' test.out

#- 79 DeleteRolePermission
eval_tap 0 79 'DeleteRolePermission # SKIP deprecated' test.out

#- 80 AdminGetAgeRestrictionStatusV2
eval_tap 0 80 'AdminGetAgeRestrictionStatusV2 # SKIP deprecated' test.out

#- 81 AdminUpdateAgeRestrictionConfigV2
eval_tap 0 81 'AdminUpdateAgeRestrictionConfigV2 # SKIP deprecated' test.out

#- 82 GetListCountryAgeRestriction
eval_tap 0 82 'GetListCountryAgeRestriction # SKIP deprecated' test.out

#- 83 UpdateCountryAgeRestriction
eval_tap 0 83 'UpdateCountryAgeRestriction # SKIP deprecated' test.out

#- 84 AdminSearchUsersV2
eval_tap 0 84 'AdminSearchUsersV2 # SKIP deprecated' test.out

#- 85 AdminGetUserByUserIdV2
eval_tap 0 85 'AdminGetUserByUserIdV2 # SKIP deprecated' test.out

#- 86 AdminUpdateUserV2
eval_tap 0 86 'AdminUpdateUserV2 # SKIP deprecated' test.out

#- 87 AdminBanUserV2
eval_tap 0 87 'AdminBanUserV2 # SKIP deprecated' test.out

#- 88 AdminGetUserBanV2
eval_tap 0 88 'AdminGetUserBanV2 # SKIP deprecated' test.out

#- 89 AdminDisableUserV2
eval_tap 0 89 'AdminDisableUserV2 # SKIP deprecated' test.out

#- 90 AdminEnableUserV2
eval_tap 0 90 'AdminEnableUserV2 # SKIP deprecated' test.out

#- 91 AdminResetPasswordV2
eval_tap 0 91 'AdminResetPasswordV2 # SKIP deprecated' test.out

#- 92 AdminDeletePlatformLinkV2
eval_tap 0 92 'AdminDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 93 AdminPutUserRolesV2
eval_tap 0 93 'AdminPutUserRolesV2 # SKIP deprecated' test.out

#- 94 AdminCreateUserRolesV2
eval_tap 0 94 'AdminCreateUserRolesV2 # SKIP deprecated' test.out

#- 95 PublicGetCountryAgeRestriction
eval_tap 0 95 'PublicGetCountryAgeRestriction # SKIP deprecated' test.out

#- 96 PublicCreateUserV2
eval_tap 0 96 'PublicCreateUserV2 # SKIP deprecated' test.out

#- 97 PublicForgotPasswordV2
eval_tap 0 97 'PublicForgotPasswordV2 # SKIP deprecated' test.out

#- 98 PublicResetPasswordV2
eval_tap 0 98 'PublicResetPasswordV2 # SKIP deprecated' test.out

#- 99 PublicGetUserByUserIDV2
eval_tap 0 99 'PublicGetUserByUserIDV2 # SKIP deprecated' test.out

#- 100 PublicUpdateUserV2
eval_tap 0 100 'PublicUpdateUserV2 # SKIP deprecated' test.out

#- 101 PublicGetUserBan
eval_tap 0 101 'PublicGetUserBan # SKIP deprecated' test.out

#- 102 PublicUpdatePasswordV2
eval_tap 0 102 'PublicUpdatePasswordV2 # SKIP deprecated' test.out

#- 103 GetListJusticePlatformAccounts
eval_tap 0 103 'GetListJusticePlatformAccounts # SKIP deprecated' test.out

#- 104 PublicPlatformLinkV2
eval_tap 0 104 'PublicPlatformLinkV2 # SKIP deprecated' test.out

#- 105 PublicDeletePlatformLinkV2
eval_tap 0 105 'PublicDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 106 AdminGetBansTypeV3
samples/cli/sample-apps Iam adminGetBansTypeV3 \
    > test.out 2>&1
eval_tap $? 106 'AdminGetBansTypeV3' test.out

#- 107 AdminGetListBanReasonV3
samples/cli/sample-apps Iam adminGetListBanReasonV3 \
    > test.out 2>&1
eval_tap $? 107 'AdminGetListBanReasonV3' test.out

#- 108 AdminGetInputValidations
samples/cli/sample-apps Iam adminGetInputValidations \
    > test.out 2>&1
eval_tap $? 108 'AdminGetInputValidations' test.out

#- 109 AdminUpdateInputValidations
samples/cli/sample-apps Iam adminUpdateInputValidations \
    --body '[{"field": "DCU3h7iJ7kSRmRLz", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["fGbeqFV4SEJnlgd2", "PE7XoflDW4Z8NZOE", "4vBiLLfTlRjxNc4J"], "preferRegex": true, "regex": "dfPUx8GiTgVrp5iS"}, "blockedWord": ["RAyZkDHnDlgUw33q", "sPiZE2ijYcG75h8g", "m9l3qyVaszarp9JP"], "description": [{"language": "S3xspkdzIk7gvH5r", "message": ["rpAtt60WIsMZ7Spj", "r8lQE0iekOc2MtLX", "4jAYOnkNYN7qykM1"]}, {"language": "8GFC51Uk9eVDzUjJ", "message": ["5c7pKcDkrzGDbYUw", "0i2WKyUeZ0XTUSE8", "sdxXpGkYltvqiYZX"]}, {"language": "TfEAo2HtLEJMIsYP", "message": ["P8hzFqcutg3h2LPV", "llNDLI2SSl7EmFzs", "LKRkW7sS4zEZSH79"]}], "isCustomRegex": false, "letterCase": "B6d1cMmSkyjlRIgy", "maxLength": 48, "maxRepeatingAlphaNum": 2, "maxRepeatingSpecialCharacter": 76, "minCharType": 97, "minLength": 13, "regex": "jtDYuA3c87AWt29J", "specialCharacterLocation": "dX2egQ60sS6Y4K8X", "specialCharacters": ["c92rQV41OEEzm8wD", "JjtT0l4uQ9PIg4Jk", "DOl9ICJ9D3MQoNyK"]}}, {"field": "MGOmr5VfOw36d5rD", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["boQgaM6mIbTYatq2", "cJ2RmxvsPp5nEmdh", "pzwNChRo70h97e3X"], "preferRegex": false, "regex": "nwbaPUFxKvzRE7uA"}, "blockedWord": ["1QNU82Av1RX5QT2x", "G9rGvUj6ialtboCX", "5AJ8DrXd2sT6R4Io"], "description": [{"language": "rWPaYEU3Y4xl7KrP", "message": ["OVANQ3JZSWVt1zkG", "j8058AIyKOtvCJxr", "RAtYlZAMT3mcC45U"]}, {"language": "b3lxePVXk2TYR4zw", "message": ["W5Rw2tjDoMtDaJrI", "Aymu6xianCdS07Sf", "rakMT0X9sasw7Dhn"]}, {"language": "BRKuzV7JXR8gnP6a", "message": ["GxmHrEUaxzInjriE", "BCUsMCN4jCm4HdNL", "XLsCdTPNSqYxE4lm"]}], "isCustomRegex": true, "letterCase": "YEM0ez9CKWayOXqg", "maxLength": 15, "maxRepeatingAlphaNum": 71, "maxRepeatingSpecialCharacter": 92, "minCharType": 91, "minLength": 38, "regex": "F7e3aXKW3xxHxkdW", "specialCharacterLocation": "RVMJ4MdjdvsDjQkN", "specialCharacters": ["lyKoTtxWpjlrErUs", "DyK5JbH6hpv7daMr", "rGndpD4k61SJclko"]}}, {"field": "777M8FqAkFdEHx3h", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["mcuMncNlFuiyVtKd", "r9D0PGgSxahbEshx", "ORXSrUYXKeLop96a"], "preferRegex": true, "regex": "PIRqBJgkbkTCqciB"}, "blockedWord": ["hr2nWWCquFXyKLqV", "kKMvlWx2SQY2jIkL", "mU7WmJg4QkYPmrQ8"], "description": [{"language": "gwvjG8WMnX8ZY7Al", "message": ["U5SUnt18XnAIr3n1", "Jj5kbs80mUtsN4iR", "X3ema9TA3ZOR5ToU"]}, {"language": "HJNEKEbyNRJ1hR0A", "message": ["hs7q9XU77tFaMLH5", "LqxL2RkaBc6O9LWv", "M9FsMxh0BdqwuKjy"]}, {"language": "jbHfuxUfJgq6k5Kh", "message": ["FN0ow7QS3aemAgcs", "rpOiv2FUpsgKNitB", "wGGBgNg8LsR6208U"]}], "isCustomRegex": false, "letterCase": "acucr1LDFHdDVkyC", "maxLength": 78, "maxRepeatingAlphaNum": 37, "maxRepeatingSpecialCharacter": 88, "minCharType": 91, "minLength": 53, "regex": "t5vr5K3ezymFEfYJ", "specialCharacterLocation": "HiLOEjU6kPdr5c91", "specialCharacters": ["9iG21L5lvM6YbyOa", "CqRDaNhomI12V4Bo", "i7mHkYkK3cu2BweA"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'zpM1sk09XXtinqqu' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'dBumT7YcZ8gqdtDl' \
    --before 'mUKnDBtnMEhu2GdP' \
    --limit '31' \
    > test.out 2>&1
eval_tap $? 111 'ListAdminsV3' test.out

#- 112 AdminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'AdminGetAgeRestrictionStatusV3' test.out

#- 113 AdminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 15, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '3gkpTpZTwVsm6GIV' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 20}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'lSGKOUuvHwRMoSjU' \
    --limit '34' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "RZEdSTFrjDefG3L0", "comment": "2bGbT0JK12G7yVqR", "endDate": "cWWGcMDn5nIa9M27", "reason": "V3mPSgmQOJE1hmbe", "skipNotif": false, "userIds": ["EpRBwGWy823zQwGp", "lRdMu7yxk569c3lz", "p71Tw2vEDmaEmpNC"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "GfATHUVJctuxb9Fq", "userId": "0hmVcR1HvohtW5J0"}, {"banId": "2iTeaMxdIKB1l38H", "userId": "84xQgMuP3eTtXab8"}, {"banId": "590K3PaMVzVktCF4", "userId": "eg4fVB2ubqRtJsJL"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUnbanUserBulkV3' test.out

#- 119 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'AdminGetBansTypeWithNamespaceV3' test.out

#- 120 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'LZOUCDRkPjXF3BAC' \
    --clientName 'PLiSwTHL2cvskvXR' \
    --clientType 'PUVnyIsqWSCzXIiz' \
    --limit '92' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["YzKolNDMf2RReq4r", "xgsjTPEj3yQMKBAd", "RSsV3oifYUaxg5e9"], "baseUri": "0JiCs37A10zrruh5", "clientId": "2jiMceamqb6DFtbl", "clientName": "tGvPBd2C3Jd50ZsY", "clientPermissions": [{"action": 34, "resource": "hCXQ1eHS2jVReiuH", "schedAction": 41, "schedCron": "40Y8QhrL1WFOr7nP", "schedRange": ["8MOnfyTR3IlFMaSw", "XDTNaNuVq6VdE9Ej", "xPC75qtwXxShfEzp"]}, {"action": 80, "resource": "6KkvQnelabHAy6Th", "schedAction": 88, "schedCron": "c20reALq7i0OH425", "schedRange": ["m43CqJxx1lAOJhFC", "3MSH1RT1O9VJ05Td", "eqV1LiaKLZrcLr02"]}, {"action": 54, "resource": "A7HpjUyShqtnehTh", "schedAction": 19, "schedCron": "e9Y1jgK94ow3VHN3", "schedRange": ["K669oTtY4hE7Rlbt", "fxnGx0AWmFuz1iMW", "NbIu3IgkFTNtE0Uu"]}], "clientPlatform": "OFGmQ1tRkfvnmKTy", "deletable": true, "description": "LXCFWJaIBS6H3Zjo", "namespace": "3Csdt6h0BQSKasa4", "oauthAccessTokenExpiration": 68, "oauthAccessTokenExpirationTimeUnit": "DBykUs0D2HVgWS4n", "oauthClientType": "SZQjFDvIFD1moc5k", "oauthRefreshTokenExpiration": 8, "oauthRefreshTokenExpirationTimeUnit": "51yJKY9RDriD0Awf", "parentNamespace": "ynUvV6RLG5kZqJUW", "redirectUri": "CGVwbStNq5w8YLoF", "scopes": ["Qduz6dL5zQTl9uZw", "vaX3bkTFLrh9EFWf", "deexNPIHndgvEmx5"], "secret": "CUwpccsdVzyRO3wB", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'sIdhsHIxQCnyh9uM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'EIyJ3zLwtvbKjKsg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'ZMMoMLMC9Bar7IIX' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["N1Y6m9dZqqDJ9gdf", "DYIZYczI0CHntxqf", "sCfsS32fBK3scB0d"], "baseUri": "etrzdxa2tyHMOUjx", "clientName": "RBZDwzUT4W7WRMDr", "clientPermissions": [{"action": 14, "resource": "niOCYwL3Doonr8f2", "schedAction": 57, "schedCron": "oGNNA1duFGoEJ70O", "schedRange": ["SrqEKN9SePRjXdNp", "rTZJpoCpKJyWBAYN", "Jn4xCiZgmfkqpP0s"]}, {"action": 94, "resource": "Bp9EzhqEOb2hZLrp", "schedAction": 59, "schedCron": "9IyK1bks05EJj2Mr", "schedRange": ["OtspNkiEa6FcAQxP", "E17nVWC3vsE5P8S0", "0XUJBUDrtL4eRD8k"]}, {"action": 22, "resource": "Siqr20HZfyGBCeu2", "schedAction": 75, "schedCron": "Fh9jyESNfBLMTibb", "schedRange": ["U8G0QARmUhQNRCoB", "32QysTKydSWfB2gf", "khVK1BHGSVNT5otU"]}], "clientPlatform": "bx2dmR6MZYGK7v7J", "deletable": true, "description": "uOu3unMnLUWKGiiv", "namespace": "6Zfh4TtUYXE7kDYt", "oauthAccessTokenExpiration": 9, "oauthAccessTokenExpirationTimeUnit": "io0LEoYgBZb0zzxZ", "oauthRefreshTokenExpiration": 75, "oauthRefreshTokenExpirationTimeUnit": "SW0BGoKkUlrGHSJ4", "redirectUri": "OPlsLuTjEvo50wrK", "scopes": ["VEaRTBIbjWMhw5oV", "gXu9xfpSvRTItAhM", "qBbVUr3Ahb0FEJbH"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId '5pryRWaHjCW6Q8W7' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 35, "resource": "pgERQNlqGUbGY8CT"}, {"action": 67, "resource": "r4Wnni9SqvrBaboU"}, {"action": 85, "resource": "YF1FbkqqmU4a54d4"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '4klEqDaAoe7oSaE5' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 9, "resource": "eQJaYPPJ5rRV9uIO"}, {"action": 49, "resource": "cT1rstlDMNaJmucs"}, {"action": 3, "resource": "CcXjnW5ScjD0AEA9"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '68' \
    --clientId '1yd8fKyEXopxLqsh' \
    --namespace $AB_NAMESPACE \
    --resource 'lWraNEVkfqLFE2PT' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'true' \
    > test.out 2>&1
eval_tap $? 128 'AdminGetCountryListV3' test.out

#- 129 AdminGetCountryBlacklistV3
samples/cli/sample-apps Iam adminGetCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'AdminGetCountryBlacklistV3' test.out

#- 130 AdminAddCountryBlacklistV3
samples/cli/sample-apps Iam adminAddCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"blacklist": ["mpiZ8kDG4pENE1FB", "JIfIXAtK0rZxGAja", "nlOZhPXoKUSbjCLH"]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminAddCountryBlacklistV3' test.out

#- 131 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 131 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 132 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 132 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 133 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'sgw0EuZk4cFt1jS2' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'A4Yzam5t6Stddtz9' \
    --body '{"ACSURL": "GacgfyPKW67sLQP7", "AWSCognitoRegion": "BsXj6tZlUWBvtuyv", "AWSCognitoUserPool": "CUKC5jW85Sggh7je", "AllowedClients": ["GyGOBJhIPpEuMQiO", "ieXY8Us5xdwNyqEm", "ONInes8iDxjFQiBJ"], "AppId": "nViuTaJ61l2RoLv4", "AuthorizationEndpoint": "TwOFGY1WEGJD8RM4", "ClientId": "hFC5TWabQ9wBBzDn", "Environment": "s4TrrCeQ8Wf4y40t", "FederationMetadataURL": "zXZxkHQkx0gn3b88", "GenericOauthFlow": false, "IsActive": true, "Issuer": "GNitj02YGta2e2Na", "JWKSEndpoint": "VzAtfqmlD3u9ME80", "KeyID": "JSGC8FQDkdGqwzx3", "NetflixCertificates": {"encryptedPrivateKey": "P3i9WrT9C7vcEMPX", "encryptedPrivateKeyName": "iDBzTttTOS9n4F3V", "publicCertificate": "80u4ZmPiJSiFtx30", "publicCertificateName": "wZONOKpUXF7eKtVo", "rootCertificate": "AshmTuQYC9dSKMmR", "rootCertificateName": "r0M5x6PfPiVRapkM"}, "OrganizationId": "uxLEYfAbhvA9fqQb", "PlatformName": "53NJsiYc9rTXTfgr", "RedirectUri": "1p9sthh4yyZa4zyv", "RegisteredDomains": [{"affectedClientIDs": ["cCcXgglpJhtJklJn", "tIk7LHep93jqedzm", "EbxHIT2pbpvLgVb1"], "domain": "evYPRML7NhlMTnHK", "namespaces": ["tk3me4ZHG13Ny7L8", "voF6ffTujnL2nzYf", "DJiG4k6qTkvKWfJL"], "roleId": "PWYyautR5GvH6oAS"}, {"affectedClientIDs": ["MGdxyqKz6Ow2EM45", "ZFvO7FrazN6O5sHq", "lXwuv98Ofxl0iV5B"], "domain": "jDdIQPFIQIdHCn65", "namespaces": ["hSGvDFaWMCOy8NEF", "vjAeUutrVYu7rMk7", "N3QHdI0ZFT4bSiGj"], "roleId": "CMUqk0fgjMb1OEv5"}, {"affectedClientIDs": ["cdfwjFAeMyuFr3Yg", "LlAIUrkWEEdCLiqr", "iBSNPlnd7IQstrK9"], "domain": "5kt2mGpbyxCdVypr", "namespaces": ["8Ovax1r2fNNJnJiK", "WfxJ4rFLmm8lQ2Ck", "86uS0vG21ZXQr5tx"], "roleId": "I4J0xqqpPxniaJox"}], "Secret": "ANFJUILN9pZTHW47", "TeamID": "PP7DdzZuokNQL7cX", "TokenAuthenticationType": "1RfdMFAO264j67tx", "TokenClaimsMapping": {"GLvBBUlZpYvxrH8U": "E2jG5AlMvFExUh6Y", "C187xAv9Wn1I8k9G": "pnFD6R0dreSgFq5O", "E2OzMQm2ASGjnafy": "Q9fKZhqdDIURU7XE"}, "TokenEndpoint": "yLZAi2VfNMLCfCg8", "UserInfoEndpoint": "y2kGIiukr1MWhlO0", "UserInfoHTTPMethod": "Sa9LbPqYUmLSvVHj", "scopes": ["RuJ3H8P3Gk2fntky", "4lZBUOL8lworzzxh", "4pG0ymDRFyWFgg3E"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MKk2ukqfBKts35yQ' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'O7V1NTABZeCppu6q' \
    --body '{"ACSURL": "FG9Zl0uJWUZlWrAr", "AWSCognitoRegion": "VUmTjcXNpG4sYJds", "AWSCognitoUserPool": "d5vH8nBXWYEkoOiO", "AllowedClients": ["G0UZp2QsKtEuWrAU", "EuhNkcfhmyMnh9Ur", "4BWi39x2HLt1gWh0"], "AppId": "egBgKmf1syb0yNQg", "AuthorizationEndpoint": "D4sTTUyQeIQpTMGW", "ClientId": "wYW9XD0WkMkybAEr", "Environment": "76fsAijKMYqKSQky", "FederationMetadataURL": "SsmRHtiCmOQKhClT", "GenericOauthFlow": false, "IsActive": false, "Issuer": "uB3VB4qOZSx6efeq", "JWKSEndpoint": "tDZPuDTk7w06pejs", "KeyID": "JZQJo7sfgSgJnwLd", "NetflixCertificates": {"encryptedPrivateKey": "GBpckET0LdJZfUBW", "encryptedPrivateKeyName": "p9k7aN9cmO7SRDdf", "publicCertificate": "rH9EVm0OkgM2hcOo", "publicCertificateName": "dt8prk6afd6p5xFQ", "rootCertificate": "kKWWua8XHOjbNFqa", "rootCertificateName": "Nm3F2Gfy4Z8W5wil"}, "OrganizationId": "diGE4o3ChHy6hRgA", "PlatformName": "j14Tvm55CKerAJy9", "RedirectUri": "MiUkD6xP4pZxSFFn", "RegisteredDomains": [{"affectedClientIDs": ["pQAbZQT91nGMAPEA", "Urq0DEEB26pWJ4y7", "v0ptHDTCKLNyqFTw"], "domain": "I77XoZnglbkSVZcf", "namespaces": ["QbEsOZBmDy18sFcP", "JxC8rNGV4etwqF7G", "UOr5npRG5lC8Kupj"], "roleId": "fS7jGe3lBlskPCHE"}, {"affectedClientIDs": ["MatgpRdx5Eyyd9A3", "17UEOj2UNVvusv8B", "ifAaiDSUOk9abooF"], "domain": "qyGAhyX8wD3CjYEe", "namespaces": ["6g2fnyK4nvk0alNH", "Fxga5t3vcrjJHU9k", "TgOTdVntorI8hb59"], "roleId": "pxp1lPyGLLFaRXAz"}, {"affectedClientIDs": ["5MfTkkGOITr5HEO9", "Ytove9C5R2Y5BKtJ", "MCgtxpbeBdsJZHP2"], "domain": "X6aIS1Wa2YLNz8r6", "namespaces": ["lTN0UCKRQBVvPMZM", "XFrHCh2HHXCApWSp", "Jm11Lj1h6ocTXcHP"], "roleId": "ehRClcMW3DZBAMI6"}], "Secret": "X3wjkXHBufeMASmV", "TeamID": "D8Q4SHMarLhT9wv5", "TokenAuthenticationType": "ZDuKPFP65d4TJHr3", "TokenClaimsMapping": {"KuW3ApuNZb22Gzyg": "BJn9AymGMXgBM0XE", "9Ja1PUlK1Gv0iWMz": "8HBX2QtGSjVxa6Rc", "71RV7XOs377hxe6D": "81QUNpEKTB1p6IwD"}, "TokenEndpoint": "I8NzthbzCnGJYcNT", "UserInfoEndpoint": "KBujmpQx3z0OveFj", "UserInfoHTTPMethod": "PrFV8c8jWujS4dDt", "scopes": ["zL6RfIDTLK3LfAyu", "RwfHrGVLUqWYr6P2", "429I7P0HwSnKCYkh"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RUnBW8szcoia3k7s' \
    --body '{"affectedClientIDs": ["TU8oaJcA9ptnsWII", "5KaTmuhGlaF7mH9G", "bLe93pSjHN3djREx"], "assignedNamespaces": ["gJ0i6j0FaXc9GVzk", "WAzStzDf9PmjQBDP", "R3q5P4eMLGNyyt3f"], "domain": "lL2yEIPIKBA85kio", "roleId": "vcOXjCcahlC3YE74"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7fheXzjlRhbYC44i' \
    --body '{"domain": "5TpElQBpy47RlUGC"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'vZ1Ag36FpfQI3wns' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'sqIohszMwIvsjKGC' \
    --body '{"acsUrl": "aTwvHBZIYf3qAHUl", "apiKey": "1yayHXIMaTCOylaB", "appId": "RXvLGrJpZ3HalyPf", "federationMetadataUrl": "GIrkxsgz0reLzEPM", "isActive": false, "redirectUri": "yJeTMMphd7WiHgqP", "secret": "oyj7XNlEdLSurfUA", "ssoUrl": "KY5Y4qrvWY3whxcu"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QMHMUXEibXnm1LR0' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'q2I66WJF9kSs8b1K' \
    --body '{"acsUrl": "iC3hp0U3qqiLJf3s", "apiKey": "59LYgb1eROtermIo", "appId": "GGmbvu7UyZKJKT4z", "federationMetadataUrl": "fSM3lyAYdpeKqoMQ", "isActive": false, "redirectUri": "aHW09nIvfIVmlEnC", "secret": "eZB3sjIZnvAU09xX", "ssoUrl": "yyAnqZO07IWfmrp5"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6L3Umokx1e3f5gO9' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["Pq5fAiZ2eHW9gIsz", "mZkEOkjAruCQnPzr", "NVKN2wO4q5aDKKGp"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pytAxaVyy0BrA1jm' \
    --platformUserId 'VuW5bU6qmsiHNl08' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'r0mg17DXwwTaGeb6' \
    --after '70' \
    --before '100' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'TRbCtWg6SbKL50mW' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'FyeLdjIEFYUm6CIS' \
    --body '{"bulkUserId": ["YxPx1zoZE3SAQXaS", "gXe2MwzHXp8FReMz", "Y64zprRiNl66oxNa"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["T1z5nEHOwQQK2wwu", "b3ESa9AR2guvHzPJ", "ziV1Kez6Gg3X1nvu"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["e5O3ZyJkPAo6x5J4", "6Kgr3oBvZRtP36bq", "opQBPRYwLCYfff8t"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["fxwhiXKjsv05QTYI", "yXf6oNSDYNWI0rAI", "TodBzmiUq92bPFn6"], "isAdmin": false, "namespace": "BaHqu90HDGp4GCFC", "roles": ["OaIuKo5BK7BfxDDr", "ATYxLRjNQxAaHhKq", "iDhKjxrokwjptfmv"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '37' \
    --platformUserId 'FfdIYz1H3yFlEh3j' \
    --platformId 'Iw9Fj6Jq4nKhI8J0' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'Y2eXjqQQs2YkmrnE' \
    --endDate 'XKw5ZvlaqNqC7Xvx' \
    --limit '68' \
    --offset '45' \
    --platformBy 'jvF5teGdjmeythae' \
    --platformId 'RZN4nthyQnCm8k5k' \
    --query 'sFOotOrGwvqtEkcv' \
    --startDate 'CJvYwZhsNSolSRRE' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["yrz1XrBK5dn838J0", "oB2UZaTXDUYa2R6p", "XA1EA3VSLtgmnghz"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bsRHokV3NwP0p6Fg' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LtFsncDroBs3Tvo8' \
    --body '{"avatarUrl": "Ph3Dn9TZ2JJtrV8o", "country": "pze7mWa6ooGyqBZJ", "dateOfBirth": "pmtxd4fKzL4Tot5E", "displayName": "fmdfutmUmA6kW1S5", "languageTag": "0JVnhO10d4kuvbCm", "userName": "DuMXG0eGatN2E7Bg"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dQTdjFNJlV11T5Vl' \
    --activeOnly 'false' \
    --after 'LlFr3KRVn53wy7Gf' \
    --before 'TjhraAtiiTSjxIGu' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DJGShZYmpb2lfm5s' \
    --body '{"ban": "GvojOwUizAdbxuV8", "comment": "oOGMqluhJaRUyz4s", "endDate": "StRZTo4OIvrCQ4zx", "reason": "gLKdXZmOrvO3vsUH", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'uRTBRUOZCx776bxL' \
    --namespace $AB_NAMESPACE \
    --userId 'IBc7TMlFuBgIeGmp' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nTs9pUAG8MwabZBs' \
    --body '{"context": "5OPONlYYvhxdPU9Q", "emailAddress": "79soEY0t49LGxsr9", "languageTag": "4RMVDlCzOHlDuIgC"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hmOVm7AwVUjBIf2S' \
    --body '{"Code": "sojAM06Yx78TpDNa", "ContactType": "TVKntXLJ8ENBq9zu", "LanguageTag": "BbMOfCp5CRKlVmb1", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'i40gzJQ3SEKGwLM9' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '2BIT1JbCNhgEYBg3' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '4jP7YGyERFEcMf6w' \
    --body '{"deletionDate": 95, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '6Ci5q5E0XAf2taQJ' \
    --body '{"code": "WkYVZcxZqDqdEHD7", "country": "hdQzdOXA4L0gdzMX", "dateOfBirth": "327HMxbXWq1XtfQL", "displayName": "tl34771ZIvxRCb75", "emailAddress": "SEGRN15Int2IZiv8", "password": "FC69k00Al5ShZtFC", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tofJonsYsh5wDf50' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Bgf5t5vvDMh4RyAe' \
    --after '0.7005526031209273' \
    --before '0.43825505522007546' \
    --limit '33' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LgmbqiY8vEEKpe7U' \
    --body '{"languageTag": "0IRUWTRZkUOyJQig", "newPassword": "GJKYetUhWCxJ9Q6i", "oldPassword": "9nMhOKx923luNEcX"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'K09JS1qPGNFyFkLm' \
    --body '{"Permissions": [{"Action": 2, "Resource": "luZs0cjEiLL8Q3pW", "SchedAction": 36, "SchedCron": "8m8HYTcU0qbctcjv", "SchedRange": ["tGo8JCQCf3EPjFJu", "YIOQjWyhKQkV6u7h", "FbIZVxLmeoHuTF5Z"]}, {"Action": 15, "Resource": "fFuH8d1DDubc6B5F", "SchedAction": 35, "SchedCron": "jh7GJ1vCc7Z0Y6W5", "SchedRange": ["Ts6dTpBPwBebuHTY", "3NR3AI89DhBmQe7N", "l5IQZFwMeyyv2Lpr"]}, {"Action": 99, "Resource": "T15wkmw2l3f7USGb", "SchedAction": 18, "SchedCron": "W6UvuhEFRDdvT4CS", "SchedRange": ["FyYSQ5NlP5llrlJo", "byTTOElecfhEfNwE", "hnyLF4I3IF042rse"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WRXjI44Js0vCAv9Y' \
    --body '{"Permissions": [{"Action": 11, "Resource": "mw0GH3sIBtWORA2J", "SchedAction": 31, "SchedCron": "9SvesszjbtXG2dkJ", "SchedRange": ["tC4RIAQ0XWwDJniX", "7kRX1Xcms9dp5HL8", "gLu0Wfi5yGW6pzlC"]}, {"Action": 51, "Resource": "Ii3w6QE6Y4a9grBt", "SchedAction": 22, "SchedCron": "aoUPCD8o03OFtxHk", "SchedRange": ["Zh4a7hdhEtUsv6Ve", "LCGGI8FzAIt6iSVK", "Gcy1DZpKCZgMoZdT"]}, {"Action": 29, "Resource": "kgjgwLMAhagCfpzl", "SchedAction": 83, "SchedCron": "Luarnpobh1S0ApIx", "SchedRange": ["ZSvePorM6EY2hQgb", "HiX0wxRoK1KXJJxv", "MEuxpO1n35xahXHn"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qZhovb0AYgFZ7jRH' \
    --body '[{"Action": 86, "Resource": "0bZ1FAKLYXMtxEEt"}, {"Action": 47, "Resource": "hh7RF0hQsiG91kbR"}, {"Action": 52, "Resource": "BEi5TwZLLYMvpsjn"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '78' \
    --namespace $AB_NAMESPACE \
    --resource 'W3cd1aD0fscFYQuz' \
    --userId 'HaHzzsmI1AZ6fa9D' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LOoIQwXwQNOWeTxU' \
    --after 'BFHT8aIw88UNJV8u' \
    --before '8VIm9QMd6L4PvkOH' \
    --limit '43' \
    --platformId 'e3KaeT2FoToMmwUU' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '1Cw41iC5O9wZpcaz' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'seeyKb5XnrnikSsv' \
    --userId 'PsL887glliTdY0M1' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'xKW3YuotNOlJwTQv' \
    --userId 'rEvuSaSBA3VBqJjD' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'gQSHKsBSfjYC3fyw' \
    --skipConflict 'true' \
    --body '{"platformId": "zBwC5zHSw4dzOx28", "platformUserId": "KLhqMeo0sbRjNOaX"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yasoVOrEJxOZe9Fc' \
    --userId 'NaEHlKfRXRXg41VZ' \
    --body '{"platformNamespace": "1hUk7vbkBNg4aaZa"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7rWgA4yLmvCD7FFY' \
    --userId 'Fp2A9KA1rW3OlMci' \
    --ticket 'Khx5uItJXdAyh6Xm' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qSTDyEps6yzMPPX0' \
    --userId 'iJVfrnfsAKZVrmZC' \
    --platformToken '4LeDsQ6lF3LqrGcE' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 182 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'aYL5fl9gXk4H4PhZ' \
    --userId 'WIihWR2AVKTDPlXL' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserSinglePlatformAccount' test.out

#- 183 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rTF0A9moYD9eTcr4' \
    --body '["RxPRemqOUwK4QjXx", "ADnFT5pY0ERhx32T", "wVJhoBE7AcnE2diw"]' \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRolesV3' test.out

#- 184 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LPRHO6cCxRoz1MtK' \
    --body '[{"namespace": "pPW887ciCX43lQqd", "roleId": "thZ8BkFy7ECCA41T"}, {"namespace": "Nmbm9RWIoTAeWdPi", "roleId": "xsPJJaJBQn3GjsNf"}, {"namespace": "hSZTIQcFZhC8KV1O", "roleId": "BnyXZj4i06C1VIBp"}]' \
    > test.out 2>&1
eval_tap $? 184 'AdminSaveUserRoleV3' test.out

#- 185 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'T8iFMNNDWNDjPQ5N' \
    --userId 'kDLIrE9lCpls886w' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserRoleV3' test.out

#- 186 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'lWZ0KdtC2eJzsgzl' \
    --userId 'w6lmdhxoQVBXE9XR' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserRoleV3' test.out

#- 187 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '0lGBCeNgIEd6vtH2' \
    --body '{"enabled": true, "reason": "YImNjMdQDoqdUgoD"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserStatusV3' test.out

#- 188 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'R9PjxFE5R72axWqf' \
    --body '{"emailAddress": "YQ0HjCRCElrP7Ehh", "password": "jAVJYYI9UCrEShLy"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminTrustlyUpdateUserIdentity' test.out

#- 189 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iyADCsU6nTjztgUh' \
    > test.out 2>&1
eval_tap $? 189 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 190 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '3gtDUjgwJUPI2FPy' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "99fworOIo9qjQpLP"}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateClientSecretV3' test.out

#- 191 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after '51yfXh9OaHo5m84h' \
    --before 'ELhshjhMzkitXvkE' \
    --isWildcard 'true' \
    --limit '75' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRolesV3' test.out

#- 192 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "o8OoUsifYQezYR45", "namespace": "40AoTk7Dlqm1YeMZ", "userId": "eko1lci4TdJvccfL"}, {"displayName": "WeRmdB9b2zKMvbaj", "namespace": "u7BLvZKnEji8X4xa", "userId": "1dxhboPFvxFwqClU"}, {"displayName": "RtFbGoPaxkwhaA3x", "namespace": "JpwphFkDuPwRpKUZ", "userId": "Ymb1EwcFQbXgIRsB"}], "members": [{"displayName": "89L4Ob0k2j4i5EMU", "namespace": "orIkK7WBGETUQ4qJ", "userId": "lJIcvpuzVt7YvuuD"}, {"displayName": "D8YJiTZPmASrcqTc", "namespace": "zJFpSufObzuVFSkk", "userId": "M2zxO2VaVGgwb3a5"}, {"displayName": "0kgRZel0lKP48pVC", "namespace": "hV3YnR4vVdS9sGdo", "userId": "kCUjMpiy4pjBag9P"}], "permissions": [{"action": 70, "resource": "1ePzg57PPQoiTL8O", "schedAction": 29, "schedCron": "wIpZu1Azg0VqyOtL", "schedRange": ["EaGZWmlUHS92sHGB", "kLbbKLlxwpyFLC6T", "mOdco6mqx6afvBwb"]}, {"action": 54, "resource": "np9W9vOYMRdFdWjp", "schedAction": 80, "schedCron": "ck6xont5ruYZ8yz2", "schedRange": ["pnWDoiLklgmXx4aW", "2W7wOPT13EraukQ1", "8qSJUmgci7Sm50jh"]}, {"action": 22, "resource": "xT7DNfwfHaemxfbs", "schedAction": 60, "schedCron": "HXki0XZWJDZIoHmX", "schedRange": ["uRvbes2EvwqvdtYJ", "AzS805x3RacNuOkF", "rwBUXDnf2j3ToaR9"]}], "roleName": "sPZaXYbekinNblhE"}' \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateRoleV3' test.out

#- 193 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'fLeEScgAqf8ctaEL' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleV3' test.out

#- 194 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'DhrIo85dIMFfNoYP' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRoleV3' test.out

#- 195 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'ivaoC3grjlqslEDO' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "6GBuCG6HPfG1JzqD"}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRoleV3' test.out

#- 196 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'w9UldMAZJxNyUG4e' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleAdminStatusV3' test.out

#- 197 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'ACL4BGUrNRMd2joz' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateAdminRoleStatusV3' test.out

#- 198 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '4WwZfEa6gjjY1sLk' \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleAdminV3' test.out

#- 199 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '5TCtJxpBgyamqn9D' \
    --after 'VHCrDt9FC8jvuzfW' \
    --before '3DZdornWwu7S7HpR' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleManagersV3' test.out

#- 200 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'loUQh8olZt3vxM1f' \
    --body '{"managers": [{"displayName": "oUz4CER4mq0kN9Au", "namespace": "T20wwGpVByaL0uo4", "userId": "nNwQ6P4OLbJdA3Ns"}, {"displayName": "avFNTFFKFSKGAQpQ", "namespace": "u2kY7iBNBl58Et1Z", "userId": "ciIPsZ5t74KmpvMp"}, {"displayName": "OCPOuR17on4C9r9V", "namespace": "RADs0Xv1L4VxuhLZ", "userId": "zbxtmQhvuAXjZcMI"}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRoleManagersV3' test.out

#- 201 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId '9veLPzR8AkD0J6EX' \
    --body '{"managers": [{"displayName": "aDMmgKMZlcjdU3Fa", "namespace": "ynZXn7vuBFxrMIie", "userId": "4609vIjHImLKf7NS"}, {"displayName": "1MBEIw6L321uWjQ7", "namespace": "FmUUy30GyCK3qAIt", "userId": "mbG4kvjsAnjGPT5G"}, {"displayName": "FRwJbsEmgFRbm82V", "namespace": "OrnnYmdgE78BKabJ", "userId": "OrwXfO66RdXYYXF8"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminRemoveRoleManagersV3' test.out

#- 202 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'ByP8QZDjJu5SXVwJ' \
    --after 'Zm8pyfccmc6CbtzI' \
    --before 'wft92pA0MuKT1HH7' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleMembersV3' test.out

#- 203 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId '2t4t01eesv5G1tP9' \
    --body '{"members": [{"displayName": "Oh93DVnjC7cy6Ut7", "namespace": "de2IlxrZ6HbImYi2", "userId": "CiHMrxdJVAtWg6aU"}, {"displayName": "X92OdtAYe0VkxDaa", "namespace": "6Dc9U7i7duq2a25j", "userId": "e0aJkhQ3Nqxg5ef3"}, {"displayName": "pYvDyyAbH3qSMGTt", "namespace": "wFzyfQai6gkHE0qI", "userId": "nVvHidBR8H0TEhis"}]}' \
    > test.out 2>&1
eval_tap $? 203 'AdminAddRoleMembersV3' test.out

#- 204 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'effC6g9KhjedhX8x' \
    --body '{"members": [{"displayName": "7pR1rLMvHZ0Rsf3j", "namespace": "moAkz3YYpE5edr5M", "userId": "6w6VPUF4fHJsnaEA"}, {"displayName": "8YbqNt9Q6CHH1WQt", "namespace": "vG0giYuMLcFWhnHU", "userId": "cAmwxCSm5h6YV9Sq"}, {"displayName": "nQMlx9iIKPfpuwJU", "namespace": "zcalEpb95nXSHyAb", "userId": "3sJ3XCtNxgv0XKU8"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleMembersV3' test.out

#- 205 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId '3Kj4QqnLNujIBS10' \
    --body '{"permissions": [{"action": 84, "resource": "UxwVbJNPlYrWQk8g", "schedAction": 8, "schedCron": "pASH5AOqvkYvdnTf", "schedRange": ["lOsQHZjTUyr5WcLR", "78YEribLftR21jg7", "0b0JpIbdSAQjyzht"]}, {"action": 94, "resource": "WE5dJXOGdwfQzuOi", "schedAction": 45, "schedCron": "vORxdsLS8FZblBoU", "schedRange": ["6XP8Q1REcHC7KQgs", "IEiXlxP6x1efz7i5", "42jouFdEwu71x2T9"]}, {"action": 54, "resource": "MUCaX6PXiObMobT7", "schedAction": 31, "schedCron": "fqFdceGxqFPCg9IE", "schedRange": ["co8iTYoeONAGJDnY", "oxPPDjL4NgMwmRGe", "w5eXjwa2CMW8umWv"]}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminUpdateRolePermissionsV3' test.out

#- 206 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'D8BjaLqi2YK6Upt4' \
    --body '{"permissions": [{"action": 95, "resource": "M2HbhDIeKMWmhqbR", "schedAction": 22, "schedCron": "hmpQm8bwIOqBdXAx", "schedRange": ["iBldjRzBDgzkDbCN", "x3cG91sB5HEHzP6f", "tmB4ZoOjYcAvfGqd"]}, {"action": 4, "resource": "13aqDPWROHv71Lfi", "schedAction": 12, "schedCron": "8mYiVaWtqS28xux9", "schedRange": ["LIstr5W0cwMQREcQ", "1XlJ80TlqAlmcEW5", "NK8BZV8wjUQtlBsM"]}, {"action": 14, "resource": "HTbnVzcvOf9OzPlz", "schedAction": 84, "schedCron": "WspfbNSWEBUhi7L4", "schedRange": ["0O66NeCd4DowMvbN", "VJQz2MLtm73GaIAP", "a9Elpt8iZqP4menD"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRolePermissionsV3' test.out

#- 207 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'GraNQpkfyHTzMfoF' \
    --body '["NVjFYo4x6B10FcA5", "LkESs1DtN9p1wFn6", "T768U1zP1U3kbo2N"]' \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '4' \
    --resource 'nUExy81hPSqABMRo' \
    --roleId 'E7bXVLKAZkfd5ouk' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionV3' test.out

#- 209 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 209 'AdminGetMyUserV3' test.out

#- 210 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'Ch687PPdgD5v8Yu9' \
    --extendExp 'false' \
    --redirectUri 'PMfv657WY0TvoYSi' \
    --password 'zw6SBY8bTNinDeAh' \
    --requestId 'n22u5HkTv9MZydoy' \
    --userName 'GbjZ02Cw4wDR1OJ4' \
    > test.out 2>&1
eval_tap $? 210 'UserAuthenticationV3' test.out

#- 211 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'uUd0KhgQkQPC7Z99' \
    --linkingToken 'MKOzispIC0VGoTMQ' \
    --password 'nvAZ8pvZAtNsflYT' \
    --username 'trCJ1YtBUQrUPxXS' \
    > test.out 2>&1
eval_tap $? 211 'AuthenticationWithPlatformLinkV3' test.out

#- 212 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'rkx0emDPaS77qKVP' \
    --extendExp 'true' \
    --linkingToken 'pd1qh4btsLOx1e8e' \
    > test.out 2>&1
eval_tap $? 212 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 213 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'z0U76hWnQ2snSHGP' \
    > test.out 2>&1
eval_tap $? 213 'RequestOneTimeLinkingCodeV3' test.out

#- 214 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode '3B1QU37LyC9ARxZC' \
    > test.out 2>&1
eval_tap $? 214 'ValidateOneTimeLinkingCodeV3' test.out

#- 215 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'yMrwxW5VKkIKt6bK' \
    --isTransient 'true' \
    --clientId 'fXdxv7oRbt2WCrBq' \
    --oneTimeLinkCode 'CwLgtEzjPImrRfea' \
    > test.out 2>&1
eval_tap $? 215 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 216 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 216 'GetCountryLocationV3' test.out

#- 217 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 217 'Logout' test.out

#- 218 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId '6SR4xkEHlmC7vR4L' \
    > test.out 2>&1
eval_tap $? 218 'RequestGameTokenCodeResponseV3' test.out

#- 219 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dVy86sVg4RqQueEJ' \
    --userId 'stoQZI1U7PwcqPra' \
    > test.out 2>&1
eval_tap $? 219 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pMMiD5k7qqsSyYbX' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserV3' test.out

#- 221 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'BEGf9ZoQnfel72BJ' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'r0gawcYslMrlI6lG' \
    --redirectUri 'OmF3lwR9YY7NxuqB' \
    --scope 'M2ZeQ8fFpb7llfrC' \
    --state 'hl0kSxpUwzjpZEXk' \
    --targetAuthPage 'H3px23k4Go4YtWQW' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'xT4rqB38t3VWQqLP' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 221 'AuthorizeV3' test.out

#- 222 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'lICUDHokCJtp0coJ' \
    > test.out 2>&1
eval_tap $? 222 'TokenIntrospectionV3' test.out

#- 223 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 223 'GetJWKSV3' test.out

#- 224 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'PLxkHJhFJ3BqJ0pL' \
    --factor 'wdhDZ5m5gHIjkuak' \
    --mfaToken 'qxcmPUL0uoTNyJld' \
    > test.out 2>&1
eval_tap $? 224 'SendMFAAuthenticationCode' test.out

#- 225 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'Cabr10QNmi6Hm06z' \
    --mfaToken 'MQs6QPCX0oiaSWNH' \
    > test.out 2>&1
eval_tap $? 225 'Change2faMethod' test.out

#- 226 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'kOkXa2AKM3XawWpi' \
    --factor 'BCxZ3HRcB2lVEQl4' \
    --mfaToken 'XnU5Kqf0C9hoP0EN' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 226 'Verify2faCode' test.out

#- 227 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eGTZsWFyWcTEtR1E' \
    --userId 'ow3tmvhBcIgB5Jff' \
    > test.out 2>&1
eval_tap $? 227 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 228 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '30GJW1QoniPoMiYH' \
    --clientId 'b0rbCnEDSaN2JmT7' \
    --redirectUri 'J6UKhaXglrA97hXW' \
    --requestId 'nwpPQPwRc87T56QM' \
    > test.out 2>&1
eval_tap $? 228 'AuthCodeRequestV3' test.out

#- 229 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'ocPjsECmM4vT2xjw' \
    --additionalData '5QWNPsDiZZwdIwV4' \
    --clientId 'qfvoswEiKeXZQMUK' \
    --createHeadless 'false' \
    --deviceId 'V1BGLU8a38qDCHbx' \
    --macAddress 'J2JsL998aSDhlFgv' \
    --platformToken 'J7iDa56TVZOWqTjB' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 229 'PlatformTokenGrantV3' test.out

#- 230 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 230 'GetRevocationListV3' test.out

#- 231 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'nQuE8TVrwBEjqkbz' \
    > test.out 2>&1
eval_tap $? 231 'TokenRevocationV3' test.out

#- 232 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'EWaWAYvbwDokmEbV' \
    --clientId 'WYX3SJU9A44AUvyn' \
    --code 'p8uXDWjtjSfgUpNT' \
    --codeVerifier 'yDkXPbM53CmRDpEu' \
    --extendExp 'true' \
    --password 'h2qlbQZueEzLkUQ7' \
    --redirectUri 'xYNdcCeainlFYjxY' \
    --refreshToken 'jBOgZeUsiDce26Ro' \
    --username '6a7FqfYkzfcwvClB' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 232 'TokenGrantV3' test.out

#- 233 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token '6tqQa0Yu4rhgLgbv' \
    > test.out 2>&1
eval_tap $? 233 'VerifyTokenV3' test.out

#- 234 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'uYQTPiN4NZIdbPIA' \
    --code 'gSdJPhJNYToLAKyx' \
    --error 'inNgTum3LBpIfCeL' \
    --openidAssocHandle 'do1y9jfj8g3b1xjm' \
    --openidClaimedId 'poZVVeY9Mpm0X85G' \
    --openidIdentity 'uHt02kaiK6lODflg' \
    --openidMode 'sgZCv3b6ZmyfP0pK' \
    --openidNs 'ghRm2Awh5t5RtB2k' \
    --openidOpEndpoint 'EIeF11tgv03PIHxK' \
    --openidResponseNonce 'Z5meAE1I2tvTBeUC' \
    --openidReturnTo '25blCXoymIIHRRDD' \
    --openidSig '2iWvF4rSqPTEYag1' \
    --openidSigned 'PWSzpseKpVkyyOjJ' \
    --state 'uGLYB5eChenmWtwA' \
    > test.out 2>&1
eval_tap $? 234 'PlatformAuthenticationV3' test.out

#- 235 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId '8t77Hw4TwFPl8hvq' \
    --platformToken '1jXCpcxh4p59aY4l' \
    > test.out 2>&1
eval_tap $? 235 'PlatformTokenRefreshV3' test.out

#- 236 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'YbgPJq84DJV3rcJi' \
    > test.out 2>&1
eval_tap $? 236 'PublicGetInputValidations' test.out

#- 237 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'ixLAynrxHLaiCQza' \
    > test.out 2>&1
eval_tap $? 237 'PublicGetInputValidationByField' test.out

#- 238 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'XFNBjkOFsIGEW9Gk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 238 'PublicGetCountryAgeRestrictionV3' test.out

#- 239 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 239 'PublicGetCountryListV3' test.out

#- 240 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 240 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 241 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'Wcvag8LfnXFE1cg1' \
    > test.out 2>&1
eval_tap $? 241 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 242 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Ox26J5uGjXugIH8P' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["OsiUpvBnMbbOa5oB", "KGmFlSNDaDgxbBFg", "3ZsTHrQ58tP1GSmG"]}' \
    > test.out 2>&1
eval_tap $? 242 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 243 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5Isdz8LpTzhXM4V3' \
    --platformUserId 'BpX5kpctSU85jhht' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserByPlatformUserIDV3' test.out

#- 244 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'lOmjBiJ6dCABVyZu' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetAsyncStatus' test.out

#- 245 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'rXOUAG1tyssMITbH' \
    --limit '21' \
    --offset '58' \
    --query 'NrMnD8K0g7OvEHCl' \
    > test.out 2>&1
eval_tap $? 245 'PublicSearchUserV3' test.out

#- 246 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "iNRUjbXuazCHLjV1", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "0E3BBmYRhdmbB0RX", "policyId": "EU9hkGCIlZz4bJrb", "policyVersionId": "By0HfdMuP1yAzGSK"}, {"isAccepted": false, "localizedPolicyVersionId": "TEqAJKX8YcO9O3Vz", "policyId": "7v3JwldplFb188Ar", "policyVersionId": "YsDKyAVLV6ymVcBv"}, {"isAccepted": true, "localizedPolicyVersionId": "o2eOVU9aIP5UKFXr", "policyId": "w0SUwxBPBN8kytuu", "policyVersionId": "9tM37zjkCnDkQSYJ"}], "authType": "dvSoTVSuFasUN8l8", "code": "rruG7Rgp2Ek5lVdp", "country": "53S6SdcWAS4DPoaW", "dateOfBirth": "UIZxfZbglRfUCNdX", "displayName": "F5sa6YupPbB7iD8N", "emailAddress": "DSDnFvXOhobajJoF", "password": "2rMftPCcmrrotaaj", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 246 'PublicCreateUserV3' test.out

#- 247 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'I5AnFcAn3YKKUKXq' \
    --query '1HoObSvkq10V4IxP' \
    > test.out 2>&1
eval_tap $? 247 'CheckUserAvailability' test.out

#- 248 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["lUTCte2u4T5b7tSN", "JlaY35w6uu56S4Z7", "sP0XloBzTOeQbMHn"]}' \
    > test.out 2>&1
eval_tap $? 248 'PublicBulkGetUsers' test.out

#- 249 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "3qmihHQIMabDqgcR", "languageTag": "PbNmlkqBFiNtTOo3"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicSendRegistrationCode' test.out

#- 250 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "nlgvq7US4NXfwfRQ", "emailAddress": "4wUecxphnOfL5qSr"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicVerifyRegistrationCode' test.out

#- 251 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "2PlKt2TFa0khAxHE", "languageTag": "rJ4yISzvTnXXkuMY"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicForgotPasswordV3' test.out

#- 252 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'KxQyoVdy6PhBPgO8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 252 'GetAdminInvitationV3' test.out

#- 253 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'rpopHS3viJEqbfxP' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "C3emYj9XpGAF0mPn", "policyId": "3TKS3YU1CkLtbpcy", "policyVersionId": "zwnUzEaS7wOquH8u"}, {"isAccepted": false, "localizedPolicyVersionId": "qKIqaiQdiTdSpYN2", "policyId": "tdwangkplfQ0mnT0", "policyVersionId": "v66VR3t1wshoFRpf"}, {"isAccepted": true, "localizedPolicyVersionId": "HZal1AztKJ8ZcRIZ", "policyId": "UNRd311Ph8tsyFB2", "policyVersionId": "14mXxjAPMyyTJ5yh"}], "authType": "EMAILPASSWD", "country": "ZUmJnRVw0srPE3tE", "dateOfBirth": "lcMN3t3poBTP0HYx", "displayName": "gK7WlspyBbLiLnnt", "password": "6BIVq13X1ZLflVnc", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 253 'CreateUserFromInvitationV3' test.out

#- 254 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "7vb5IOy9ngR0jX7L", "country": "zJlrawdgyuav1Dbn", "dateOfBirth": "qh7gM87GMoB9hxdq", "displayName": "MwLcQOjjOApV2QVF", "languageTag": "oIbLWZTywsp9wdg8", "userName": "axGcym2NjimYQfE8"}' \
    > test.out 2>&1
eval_tap $? 254 'UpdateUserV3' test.out

#- 255 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "QnxUOhsT8klHb8s5", "country": "99uHkXV2gU15wUwY", "dateOfBirth": "gTNrmhi35hjc5m0V", "displayName": "9Xx9dFgeDy6IAiOZ", "languageTag": "fp1TcNmyigllxXAi", "userName": "jATwzTkGzTEjYsAn"}' \
    > test.out 2>&1
eval_tap $? 255 'PublicPartialUpdateUserV3' test.out

#- 256 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "f9gKcyZQaHQP2cCR", "emailAddress": "nlednKVgadO6hbTZ", "languageTag": "B9H6xoWmWd6ylCts"}' \
    > test.out 2>&1
eval_tap $? 256 'PublicSendVerificationCodeV3' test.out

#- 257 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "9WizYmXz6Y1nu3Ny", "contactType": "1xa0GazxF61MwsLy", "languageTag": "KbhxaBkrORhJipO6", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 257 'PublicUserVerificationV3' test.out

#- 258 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "tszVWu9pPl92UYOL", "country": "jpPXwjL5m37J059f", "dateOfBirth": "ivYGhRZo2csLx5Df", "displayName": "9K86rWKvtjPp7lR0", "emailAddress": "QonT7aZ04E5bwwH2", "password": "Qpig28PkHSrkH6np", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 258 'PublicUpgradeHeadlessAccountV3' test.out

#- 259 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "pMB9V0eUcNl2JvWx", "password": "xq9dZvQ5GmFUMPT4"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicVerifyHeadlessAccountV3' test.out

#- 260 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "dj9G0Qi44aY3sruh", "newPassword": "p1Ceua5teTX7sevo", "oldPassword": "LCR0BuN5mtf3y0eg"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicUpdatePasswordV3' test.out

#- 261 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'DJLt5S0WhsKnSbxN' \
    > test.out 2>&1
eval_tap $? 261 'PublicCreateJusticeUser' test.out

#- 262 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TUsY08rxOl7qQGbH' \
    --redirectUri 'F5SOwp5Ofjw4orEE' \
    --ticket 'Ao8MO5q7BU7RVotL' \
    > test.out 2>&1
eval_tap $? 262 'PublicPlatformLinkV3' test.out

#- 263 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6AA4d9IFTlI7eY2P' \
    --body '{"platformNamespace": "8lg8Z9xYkTbr0fXH"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicPlatformUnlinkV3' test.out

#- 264 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qK48ZZbnfjcCHnLC' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformUnlinkAllV3' test.out

#- 265 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DhNa4t2AweBD6mEr' \
    --ticket '6iuBcODCIpX4SJwO' \
    > test.out 2>&1
eval_tap $? 265 'PublicForcePlatformLinkV3' test.out

#- 266 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'QHus5E1qoMLv4Zz4' \
    --clientId 'ltenIXVmhBSeCbMb' \
    --redirectUri 'SXtQ1UEFeVmO5cRr' \
    > test.out 2>&1
eval_tap $? 266 'PublicWebLinkPlatform' test.out

#- 267 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'M8KbTL5CrE5JlqcI' \
    --code 'yfumbuQ73hWuswO0' \
    --state 'MG1HFgrB0nDiuSs1' \
    > test.out 2>&1
eval_tap $? 267 'PublicWebLinkPlatformEstablish' test.out

#- 268 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rOWPUVpGjbSUVQyb' \
    --code 'OAcMZiXE4iqNW25E' \
    --state 'pTDC5QwDwBM4J3z6' \
    > test.out 2>&1
eval_tap $? 268 'PublicProcessWebLinkPlatformV3' test.out

#- 269 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "bXdWKp2CvLDEsfl5", "emailAddress": "Vw8MXC4w56AO7eO5", "newPassword": "ytdRYw5iVogE3t42"}' \
    > test.out 2>&1
eval_tap $? 269 'ResetPasswordV3' test.out

#- 270 PublicGetUserByUserIdV3
eval_tap 0 270 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 271 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'j8LuB9jmdhYXWGRO' \
    --activeOnly 'true' \
    --after '4BqybhQvlp8iy1la' \
    --before 'psFFjmoukhoTdeOx' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUserBanHistoryV3' test.out

#- 272 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pWUPe8bjaU0shvDX' \
    > test.out 2>&1
eval_tap $? 272 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 273 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sA4t5eI8eQXUcehH' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUserInformationV3' test.out

#- 274 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iIsKCHQjcsRTLvAo' \
    --after '0.3718135389020538' \
    --before '0.23669070740354414' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserLoginHistoriesV3' test.out

#- 275 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IsrWlXhMieHSXMzP' \
    --after '8bS4XWM5S2VSXumR' \
    --before '6N28lzwsMQq7KN9m' \
    --limit '26' \
    --platformId 'OLAw4aOzUDU3GcfZ' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetUserPlatformAccountsV3' test.out

#- 276 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CgdoOpRxU7iCC9ib' \
    > test.out 2>&1
eval_tap $? 276 'PublicListJusticePlatformAccountsV3' test.out

#- 277 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'SUSKpZndXo55wbE2' \
    --body '{"platformId": "lwVvMsuETMNch8Km", "platformUserId": "u8kAzl9le70opJSw"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicLinkPlatformAccount' test.out

#- 278 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'ooJ0z1b2nHKNYvTw' \
    --body '{"chosenNamespaces": ["k8ftitTlJzuoOBF2", "Bztw7iWvzkE7hE7o", "ZACfT6In9WrM5hV3"], "requestId": "GUwg5ett7vCijqZ2"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicForceLinkPlatformWithProgression' test.out

#- 279 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RUcUqtA3PgHhBAiO' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetPublisherUserV3' test.out

#- 280 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eVUNXoHmw8mqmJRU' \
    --password 'nyk6ZdpUzvYfrakj' \
    > test.out 2>&1
eval_tap $? 280 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 281 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'ZkbSORdiU5bviE2q' \
    --before 'dYUrNXgNShX17YF7' \
    --isWildcard 'false' \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetRolesV3' test.out

#- 282 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'mvcsTGalDvqBU6Lo' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetRoleV3' test.out

#- 283 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 283 'PublicGetMyUserV3' test.out

#- 284 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'dBQfFbXfpa3ob7vh' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 285 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["BfrQqatFfE46Jef2", "DkLU0elxx5lR84aA", "ygmLuDINR1E4IeOv"], "oneTimeLinkCode": "WGlyFikSmCGkTOi6"}' \
    > test.out 2>&1
eval_tap $? 285 'LinkHeadlessAccountToMyAccountV3' test.out

#- 286 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "54wwrLPhWyFMfaPk"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendVerificationLinkV3' test.out

#- 287 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'sFGsGEKu7tF8ZAcq' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyUserByLinkV3' test.out

#- 288 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'e7v1Mp1U2pf9MRwC' \
    --code 'WNrJcSmdWM7eerq5' \
    --error 'b8FIGIybrEhmDBwm' \
    --state 'yWSnyxCoKvPpomjN' \
    > test.out 2>&1
eval_tap $? 288 'PlatformAuthenticateSAMLV3Handler' test.out

#- 289 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'nMAxeQFv5fZUopg4' \
    --payload 'W0BU4J9sBbGQRGe0' \
    > test.out 2>&1
eval_tap $? 289 'LoginSSOClient' test.out

#- 290 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'fC6OCILFHnPOTYya' \
    > test.out 2>&1
eval_tap $? 290 'LogoutSSOClient' test.out

#- 291 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --additionalData 'Gh47FFVPRNqdRqRO' \
    --code 'zLT8XJwEFDXcP81H' \
    > test.out 2>&1
eval_tap $? 291 'RequestGameTokenResponseV3' test.out

#- 292 PlatformTokenRefreshV3Deprecate
eval_tap 0 292 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 293 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'kYb1mWQsEcNgQlmU' \
    > test.out 2>&1
eval_tap $? 293 'AdminGetDevicesByUserV4' test.out

#- 294 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'zTJdP81SUqyxfmwi' \
    --endDate 'TN9nQIqyTjzhTJof' \
    --limit '37' \
    --offset '4' \
    --startDate 'v7kUXmOLnADsWJrR' \
    > test.out 2>&1
eval_tap $? 294 'AdminGetBannedDevicesV4' test.out

#- 295 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'JJn1hlhwClBaRN9t' \
    > test.out 2>&1
eval_tap $? 295 'AdminGetUserDeviceBansV4' test.out

#- 296 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "i5u7qCl40EaSUCw8", "deviceId": "tB5IRX8JcSbh6qZu", "deviceType": "PZiiuXO2JvFAVXxO", "enabled": false, "endDate": "OCh8AKJyquht93qv", "ext": {"UMN5LyclZiZrdm9F": {}, "Ub7LS6uXB76vSCLc": {}, "2jqKBuu9xf2ZX64n": {}}, "reason": "sodoyiLclGiupx0x"}' \
    > test.out 2>&1
eval_tap $? 296 'AdminBanDeviceV4' test.out

#- 297 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'XrSLvLC4YlqhFeLl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 297 'AdminGetDeviceBanV4' test.out

#- 298 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'RRRDqy9QdJEUcKeu' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateDeviceBanV4' test.out

#- 299 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '7OSHdWJvmE5GMSw0' \
    --startDate 'MbFFQTuC5rvlOFwe' \
    --deviceType 'tVgqiN991t7gQP6P' \
    > test.out 2>&1
eval_tap $? 299 'AdminGenerateReportV4' test.out

#- 300 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceTypesV4' test.out

#- 301 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'q4yjryaYmtgWw1yd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 301 'AdminGetDeviceBansV4' test.out

#- 302 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'e5TNe6QobMkOFXDo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 302 'AdminDecryptDeviceV4' test.out

#- 303 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'KfwucynJd13HTriZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminUnbanDeviceV4' test.out

#- 304 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'vaZMh12CZHLOL77i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminGetUsersByDeviceV4' test.out

#- 305 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 58}' \
    > test.out 2>&1
eval_tap $? 305 'AdminCreateTestUsersV4' test.out

#- 306 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["9Nqh0IvC2IZhC1FG", "9vnZyCj1UKYcs6E3", "Gq4KObYWvtyWO5JP"]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminBulkCheckValidUserIDV4' test.out

#- 307 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '8x023ZhZ8yOdKLY4' \
    --body '{"avatarUrl": "VBhSUNTStle7GEQI", "country": "58QKkN7CsF9ku9Xp", "dateOfBirth": "d1MmNvBp5CUc7URI", "displayName": "WE5FuvRBvMOmKILI", "languageTag": "vS0rQfITS0qf9oXq", "userName": "iUSoT9Ql2JXrEqur"}' \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateUserV4' test.out

#- 308 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'O7r7DvxYrAQgAQrG' \
    --body '{"code": "0b2uZgxhHwrNdfme", "emailAddress": "Sh4eJTDd0iHuMzwU"}' \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateUserEmailAddressV4' test.out

#- 309 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'kQNTMDl2vMSlSTJT' \
    > test.out 2>&1
eval_tap $? 309 'AdminDisableUserMFAV4' test.out

#- 310 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'tXuzOOpv2kraxCb8' \
    > test.out 2>&1
eval_tap $? 310 'AdminListUserRolesV4' test.out

#- 311 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'd6HTqOypsBUKLeR9' \
    --body '{"assignedNamespaces": ["5ZVADHy2V87W7D0p", "o75MmFACI9I8dIKE", "r3ykaabY5T35ZvLg"], "roleId": "Df42HMNP3zlhbvPR"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserRoleV4' test.out

#- 312 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'y2YFYJd0fqFCbTVa' \
    --body '{"assignedNamespaces": ["jl7wjAlnvgjqh1XA", "g2FnOhANh4c6u8OZ", "XN5Ej7WkKmSopxBi"], "roleId": "EZ1liT6R9muYWH5b"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminAddUserRoleV4' test.out

#- 313 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'c498rtfPXKr48WlB' \
    --body '{"assignedNamespaces": ["3rpAEhOQ7Izo38Sm", "gCbRg7DRPkoqycwZ", "9lK9gYuc9pLS61Gc"], "roleId": "c0LXgW982pmfrvCB"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminRemoveUserRoleV4' test.out

#- 314 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '57' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 314 'AdminGetRolesV4' test.out

#- 315 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "0wtBVqORHYiKB629"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminCreateRoleV4' test.out

#- 316 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'k7430xXHR3m9higz' \
    > test.out 2>&1
eval_tap $? 316 'AdminGetRoleV4' test.out

#- 317 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'yS80niYsGGJvIzeS' \
    > test.out 2>&1
eval_tap $? 317 'AdminDeleteRoleV4' test.out

#- 318 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'zjedhwtYtGLOcBkp' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "C9q6wjGBf19NXb15"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateRoleV4' test.out

#- 319 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'WH28TGZdytlrzbGP' \
    --body '{"permissions": [{"action": 13, "resource": "6Yohx3ezA7zAXROA", "schedAction": 9, "schedCron": "K5OSzNCxl6uqZWoQ", "schedRange": ["NfiBhj5GL8lm0Da8", "6c6T1rlhu5f1m3Cu", "o1xWb3pXoOdLE6hn"]}, {"action": 97, "resource": "c0zNIC7cZvo2ruCH", "schedAction": 21, "schedCron": "SbpT6jGkqMk3sKyw", "schedRange": ["uNWgFEyArAVKCZUN", "x9zDJZDStQu3OVe2", "H0ZOnLPec2106EpZ"]}, {"action": 79, "resource": "1C2PxePEdj8MiXU7", "schedAction": 10, "schedCron": "gP8IzNdzPUvxQvvo", "schedRange": ["x1kneLS4HdRc3N07", "niCOgvsCM80qC8vW", "5cmGKiujCBoDgaPz"]}]}' \
    > test.out 2>&1
eval_tap $? 319 'AdminUpdateRolePermissionsV4' test.out

#- 320 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'nI8Z2Cqs9zdkQ54L' \
    --body '{"permissions": [{"action": 44, "resource": "dEq6fz2s1ivGverG", "schedAction": 100, "schedCron": "uThMqlSlsnABASNO", "schedRange": ["lqYzbYCOg5sl0q84", "iI9hwSwJOd5Dt7ZB", "8EawXNZSEKP7Jyv7"]}, {"action": 80, "resource": "wSNPoyhTSxCSOo4L", "schedAction": 21, "schedCron": "t5sUB8iAT6Vk62Kr", "schedRange": ["Nkx0fhytmskYOrji", "JRyGQLLGu6z27DwN", "cEAwl6qp564BWMKt"]}, {"action": 81, "resource": "XCAt2PPdIgtMz5He", "schedAction": 57, "schedCron": "BsgL5qTyDnZRpZAM", "schedRange": ["QYPqgg44SgDitS37", "MXEXOiTAq538wbZs", "xB2311i4yr2RypYm"]}]}' \
    > test.out 2>&1
eval_tap $? 320 'AdminAddRolePermissionsV4' test.out

#- 321 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId '2YhXlZggFzVA5pSC' \
    --body '["mKvozqJmBtEiqVRF", "ILMCP5VBR6bhUg8y", "LL1vdn4B6RntJyxw"]' \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRolePermissionsV4' test.out

#- 322 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '69sJId8Igl70LkAf' \
    --after 'NU7i6aDliyaBtKZz' \
    --before 'KsKdrFNplIdMACqE' \
    --limit '28' \
    > test.out 2>&1
eval_tap $? 322 'AdminListAssignedUsersV4' test.out

#- 323 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'dsyiaZ4CTMkhZkvD' \
    --body '{"assignedNamespaces": ["awZIWsvRGRQKLb2X", "AuTMOKIm60Xa8LEL", "82HdVADhElZLmY3M"], "namespace": "UMQeveiJLm0iDiD6", "userId": "mJKrDBa7yjXTISZ7"}' \
    > test.out 2>&1
eval_tap $? 323 'AdminAssignUserToRoleV4' test.out

#- 324 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'aFcZQkKMsV0dhVdW' \
    --body '{"namespace": "jmw4f0PvieIgxZVH", "userId": "QfxHFuwihkxrkUFB"}' \
    > test.out 2>&1
eval_tap $? 324 'AdminRevokeUserFromRoleV4' test.out

#- 325 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["fiQ9FU84IEesaBTB", "jIpnJYrRlf0A7jpa", "XSJdwl2l22IrFsNi"], "emailAddresses": ["BtfCXZ2e4kYRdGqd", "hooWB3C74NnLbUri", "eBnflO3Y286GcTl7"], "isAdmin": true, "namespace": "tAp4il9DJaW9l9jo", "roleId": "oXkiHzjqssDtwD4S"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminInviteUserNewV4' test.out

#- 326 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "pNIkixjIP6WR9JvI", "country": "NRE7PVosVF0exPJA", "dateOfBirth": "pvx0yOq5JqOc2vlm", "displayName": "ioTCUeTvhUovSigF", "languageTag": "1S5iqG4kwcnlnzLv", "userName": "lEDGrRzdMXKD08rF"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateMyUserV4' test.out

#- 327 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableMyAuthenticatorV4' test.out

#- 328 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'RNcFBW20dk08MKaw' \
    > test.out 2>&1
eval_tap $? 328 'AdminEnableMyAuthenticatorV4' test.out

#- 329 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 329 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 330 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 330 'AdminGetMyBackupCodesV4' test.out

#- 331 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 331 'AdminGenerateMyBackupCodesV4' test.out

#- 332 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 332 'AdminDisableMyBackupCodesV4' test.out

#- 333 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 333 'AdminDownloadMyBackupCodesV4' test.out

#- 334 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 334 'AdminEnableMyBackupCodesV4' test.out

#- 335 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 335 'AdminSendMyMFAEmailCodeV4' test.out

#- 336 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 336 'AdminDisableMyEmailV4' test.out

#- 337 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'Few4Vc1p2xZVMU5I' \
    > test.out 2>&1
eval_tap $? 337 'AdminEnableMyEmailV4' test.out

#- 338 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminGetMyEnabledFactorsV4' test.out

#- 339 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'qVMBlHLzVLyVARXZ' \
    > test.out 2>&1
eval_tap $? 339 'AdminMakeFactorMyDefaultV4' test.out

#- 340 AdminInviteUserV4
eval_tap 0 340 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 341 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "BZWwAJDinwhDOMsb", "policyId": "cHcHPN1PoP773XCr", "policyVersionId": "bCZRbxanqTyIDUSG"}, {"isAccepted": true, "localizedPolicyVersionId": "lQcSFZSaJju79f48", "policyId": "jCK7JLKeGjVsuPt7", "policyVersionId": "KqeiDBFGE3AshrYl"}, {"isAccepted": true, "localizedPolicyVersionId": "062LG6mbxJU50hyh", "policyId": "eVVcoVSgxgmS28b2", "policyVersionId": "ahr9EmI37VlFKt9p"}], "authType": "EMAILPASSWD", "country": "GzdgaQNKxnJerGrg", "dateOfBirth": "nUXEf69aQZFfWuMy", "displayName": "aJ2jEB1egJQzAR9a", "emailAddress": "87BGMOl9Tr1hFR8A", "password": "g3qwvYytFccxapl6", "passwordMD5Sum": "QNK9B5ArnNZf9Ddc", "username": "iML4k8AeoYXYnYt5", "verified": true}' \
    > test.out 2>&1
eval_tap $? 341 'PublicCreateTestUserV4' test.out

#- 342 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "k1Ck13yPYCVTKaKu", "policyId": "cPsL5uY9vy9FJlaL", "policyVersionId": "RAW4CBE0mRL1FtsU"}, {"isAccepted": true, "localizedPolicyVersionId": "v4LzqsIyMrIO1Hc6", "policyId": "BwqZPP04HHeYp2QG", "policyVersionId": "mTFrumpvJeweht7b"}, {"isAccepted": true, "localizedPolicyVersionId": "DcxV3vmimxUWIZHM", "policyId": "Dw3Cy975zTKjdBTN", "policyVersionId": "UPla4vzb0yrkFIje"}], "authType": "EMAILPASSWD", "code": "aFgurehfJ5ghe9Ld", "country": "ugM588VbmP3qSulL", "dateOfBirth": "0RIlr5twF8iKoWzg", "displayName": "wOGZkwyWyz52DzM8", "emailAddress": "503Z3vvvehPIMwlz", "password": "oG6HchnQQk6aXg8L", "passwordMD5Sum": "VzvBYk7eUJX8Yb0k", "reachMinimumAge": true, "username": "b0y8tOnlPd6RqIQ5"}' \
    > test.out 2>&1
eval_tap $? 342 'PublicCreateUserV4' test.out

#- 343 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'PsmEelrqETwWULPE' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "PGmTvmicqVo5PLFA", "policyId": "e64RWUGWHPY8YYgK", "policyVersionId": "n4dMlv3Pf2RR31vc"}, {"isAccepted": true, "localizedPolicyVersionId": "VwEkZedzMOxOYgKv", "policyId": "5KdwTzQJAgbGYAjW", "policyVersionId": "L6bMl5hReYZAnsgO"}, {"isAccepted": true, "localizedPolicyVersionId": "t08C4oadKoqC29v1", "policyId": "9qmpMkgtoZZ3GsDX", "policyVersionId": "UPADwJjgEu1eGlrV"}], "authType": "EMAILPASSWD", "country": "5Y4j630BlMqC6TEv", "dateOfBirth": "qPOMqYWY5TO79NDb", "displayName": "QM1QB7DRWMSujQar", "password": "t4m0z98gdZL1zgXi", "reachMinimumAge": false, "username": "oipmoVvLhrhBs4p8"}' \
    > test.out 2>&1
eval_tap $? 343 'CreateUserFromInvitationV4' test.out

#- 344 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "KqAcrzjMKJeCP1Ws", "country": "fbSXndGcsdoRq5Rb", "dateOfBirth": "JI1vbXL1QtBLTmP4", "displayName": "t9tAWbJKnWkD7v9v", "languageTag": "w9uVdrHGuE183W0o", "userName": "XuKIsPNIiicmgXn7"}' \
    > test.out 2>&1
eval_tap $? 344 'PublicUpdateUserV4' test.out

#- 345 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "x8JGyNBp7HPg0aQz", "emailAddress": "XFHfEKjKMEHImcPt"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicUpdateUserEmailAddressV4' test.out

#- 346 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JN0jf03Kr8vWuJkZ", "country": "NalYZNgCEx8DzIHI", "dateOfBirth": "te74V85pHzbbLwLb", "displayName": "JouEKFo7w4i7Bx3g", "emailAddress": "LS45cxGZ5FfgcICS", "password": "bYJFQaPEoqrO2tDW", "reachMinimumAge": false, "username": "d9CPtV2Nkqdq9m1Z", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 346 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 347 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "1eqIdFMgGSx96Ony", "password": "tFuFEvcRPA4bhBw7", "username": "bp3eRV9dy3zWs8RH"}' \
    > test.out 2>&1
eval_tap $? 347 'PublicUpgradeHeadlessAccountV4' test.out

#- 348 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicDisableMyAuthenticatorV4' test.out

#- 349 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'LHzoxScCGDkhkvim' \
    > test.out 2>&1
eval_tap $? 349 'PublicEnableMyAuthenticatorV4' test.out

#- 350 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 350 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 351 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 351 'PublicGetMyBackupCodesV4' test.out

#- 352 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 352 'PublicGenerateMyBackupCodesV4' test.out

#- 353 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 353 'PublicDisableMyBackupCodesV4' test.out

#- 354 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'PublicDownloadMyBackupCodesV4' test.out

#- 355 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 355 'PublicEnableMyBackupCodesV4' test.out

#- 356 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 356 'PublicRemoveTrustedDeviceV4' test.out

#- 357 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'PublicSendMyMFAEmailCodeV4' test.out

#- 358 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'PublicDisableMyEmailV4' test.out

#- 359 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'CmVEBcCkg59LgQUb' \
    > test.out 2>&1
eval_tap $? 359 'PublicEnableMyEmailV4' test.out

#- 360 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 360 'PublicGetMyEnabledFactorsV4' test.out

#- 361 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor '6ClsgCNOS3c9bz4j' \
    > test.out 2>&1
eval_tap $? 361 'PublicMakeFactorMyDefaultV4' test.out

#- 362 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'HvUfx4sl7BR0tjrF' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 363 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "Ca0Kkm2rMY1lQyXT", "namespace": "godTt7Li6CygA3fj", "namespaceDisplayName": "ImJaDNSP8kI7OVTY"}' \
    > test.out 2>&1
eval_tap $? 363 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE