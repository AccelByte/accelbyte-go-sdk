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
echo "1..376"

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
    --body '[{"field": "Jek5GuUSfK8QKOgh", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["jdlYleJXZQslAMtX", "X8eEfioMux8FEAYP", "oaKrwad5jo7ibh7U"], "preferRegex": true, "regex": "D7kkHHpVgvzhREOZ"}, "blockedWord": ["pdXq5csUYkT0I30Y", "aPEAOpi9VJheVNI4", "38txgtkOzHx9rAxT"], "description": [{"language": "M5tROX2Z4qwAR7rM", "message": ["cPadAPu3rD9MbCph", "ewHeqeGTsNtvmxrh", "wZ2QoDmyyiZVZuBA"]}, {"language": "aazUTuVFwkjrvLX7", "message": ["rtmVmGHO3JwX1sDo", "n1HjzXbGErDYY4et", "t5PS5jQPbEIfdRCg"]}, {"language": "WQCrwG2SxX4axWXv", "message": ["t2QhysX7XXlQZGqV", "vLMDFHuHtEn8ZNSH", "Xmbr0uhZ5RYHqFKm"]}], "isCustomRegex": true, "letterCase": "Smc7HdRc4IZc6msJ", "maxLength": 8, "maxRepeatingAlphaNum": 78, "maxRepeatingSpecialCharacter": 31, "minCharType": 82, "minLength": 21, "regex": "k8jQY3gK8MdiKOBB", "specialCharacterLocation": "Fd0pEYkgg1Z87vSr", "specialCharacters": ["a3szHkcgOVM6lekP", "ilLkRAIyDolKhBwl", "6TTJgfMN72TqFTnA"]}}, {"field": "RkUd9Uoy5W3naFTF", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["UfDlJvquXdY6PzZ8", "XKA2OrM1dK5CxQt3", "aLJCnkVsxSuQgkzW"], "preferRegex": false, "regex": "y8iUiwmmdQHjkn1H"}, "blockedWord": ["OUxsMQ0d96A3qke6", "PfhZd6HcAVXKHplY", "7okuTv3sFBBZGDtQ"], "description": [{"language": "hxA6xCupyVXEvU7I", "message": ["cSfV8MvCotXeQfaF", "GA89YVFgoQlWd0RH", "VYQfc7BQzpNscnlp"]}, {"language": "guwAljxFoPOLEzti", "message": ["DKX2he7mcEpSN9Tm", "zFrNQacpZdzuyV6v", "rzGc0IHz8DNmtd5O"]}, {"language": "tIlLMk0ityFdPLOZ", "message": ["raztOUN1Mr7f3cbJ", "wImBww3DH8e6h27A", "BobP98Dsz1ozUuDT"]}], "isCustomRegex": true, "letterCase": "p9BfjM7v6K0JGkGD", "maxLength": 89, "maxRepeatingAlphaNum": 99, "maxRepeatingSpecialCharacter": 98, "minCharType": 35, "minLength": 35, "regex": "1zsAQmxxsW8c65yy", "specialCharacterLocation": "auAT2rj845DSTTRY", "specialCharacters": ["1oQwQmVC0LOoGs3P", "svlCcxSpwfdcxjUD", "qvSxbyBhE8AbRTj9"]}}, {"field": "7j2UvPBvQA5hy8rq", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["1Garcq1DtVhp4N6i", "R6agN6prRHCsDT8R", "ISuQKNT2s3fL7DHQ"], "preferRegex": true, "regex": "xjePZNsHFcCU5PQC"}, "blockedWord": ["zrM8rSvbIZRGulxv", "QwJmdJOioN4OTNQE", "VytBmVzbinax7jBy"], "description": [{"language": "qGaUQkPHCiyORUqO", "message": ["rrAx9xmrpiOszb4A", "Dfu69cWVnBYhkpy1", "srrLKZr5iF5FlqYY"]}, {"language": "ucJrcZx1OAfkFhGu", "message": ["rj2cdQz4vfbYrzNy", "oX037hMLfxC1oI1g", "gKIHJc2KEMNm91xd"]}, {"language": "pPdAUR16FA15uPc9", "message": ["jkqFGHbqzbajQPiK", "x06u3kGaR6IocT5p", "RwyLcGKBN4LLBvLB"]}], "isCustomRegex": true, "letterCase": "HE5IhfSkbCdc2fs6", "maxLength": 15, "maxRepeatingAlphaNum": 53, "maxRepeatingSpecialCharacter": 29, "minCharType": 51, "minLength": 20, "regex": "XPbVQ9mjYac7V5cL", "specialCharacterLocation": "s4sIHqTWiK3GIATO", "specialCharacters": ["xa8zDa44xuLLbGo4", "63bwbwOyqMOV6j2m", "8rz6I3VC3ifBc89g"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'dQxkdvm3VNXsnvrq' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'CHNlLWHQvwH4DCtO' \
    --before 'cGbz1gyEuyLBVsyV' \
    --limit '90' \
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
    --body '{"ageRestriction": 83, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'SJNytCb3bzOda85h' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 80}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'O8rDX2rSu6mZXtbR' \
    --limit '50' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "kOlXK2VpDRqUxbBc", "comment": "6Gh7UNUzJA3EPph4", "endDate": "uiNBYSsSYUxPz6UX", "reason": "FSge03JDB3XeABoE", "skipNotif": true, "userIds": ["BAkgmXF75ZvOVjtX", "89RfLA2JJADAbevm", "ebJkvnRgOkR2u1Uy"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "RsguZvXK0vfHF44M", "userId": "6K08qTOUhRKrdjOi"}, {"banId": "6024eH4cVQhyf54q", "userId": "toI0gZWlpfmEqzDl"}, {"banId": "qLEUnTXVxweC63Ym", "userId": "R8ZqQTa4aWuGVeQE"}]}' \
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
    --clientId 'ubLcjiKOgfyin1Qm' \
    --clientName 'm495qHlUyTNw2vtb' \
    --clientType 'uBPs9KCLuuZguzvL' \
    --limit '20' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["tGaQUYOhhyf1WZ46", "pofWdGtcpDhGcvv6", "PNQuYAwmQyB9LJnI"], "baseUri": "ZIwkczQux4bPd4o6", "clientId": "bujs5wSEai5F9d45", "clientName": "LJo4HY2jZI4OmGTz", "clientPermissions": [{"action": 43, "resource": "u24MsBAlehWHCzYC", "schedAction": 25, "schedCron": "zxjX8uQ8j4PjOtXI", "schedRange": ["BV3WZO2QMNBebXhn", "Sjt1UrsoIZoRSDDo", "pgjHLNNAh98zGTu9"]}, {"action": 99, "resource": "DkehX96cYkPRwnst", "schedAction": 1, "schedCron": "QhDVSxq2vOKrho0u", "schedRange": ["fRI9pQkFFTIyt2Ko", "hkHbVemWqwTxzLSK", "60Jpfqp4SqroqZJv"]}, {"action": 73, "resource": "7Xv3nlouV1A1Gott", "schedAction": 0, "schedCron": "vCwbfR2FJnznGpnE", "schedRange": ["ZLV6qKhHLoIV9bFv", "ZMFWJvHB7eDGky4e", "8EHD0R7X8QiraYcy"]}], "clientPlatform": "bjYsJAdsnh4pY8Lg", "deletable": false, "description": "fXnb3c57bxbfpU0g", "namespace": "If8lskQW0b29IQ4K", "oauthAccessTokenExpiration": 46, "oauthAccessTokenExpirationTimeUnit": "LxuOOm1i7wfr19qv", "oauthClientType": "QaT2uh3vPsLiPCSv", "oauthRefreshTokenExpiration": 2, "oauthRefreshTokenExpirationTimeUnit": "SBB5J6XAmiAPCW8e", "parentNamespace": "YxFOICSe0HWeHn5w", "redirectUri": "gxrBZAZeO2uu6D9s", "scopes": ["bUFpnBbKqvmtHZQf", "scVFTzhU8x6QQ7UI", "R2ndAa3Hn9t44hxV"], "secret": "8P9lnjNkM86sqzwO", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'wqGmDid1qoOdfGg8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'YTIImVkBLOJAal0Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'gyze9uJf0H7krk4g' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["zNotitREeZTO0emI", "9D9JssGlrRviybos", "uD27Ud6yd6dAUCDi"], "baseUri": "9rnJ8UUz3T6FjBSn", "clientName": "e0glmjYSlfes651d", "clientPermissions": [{"action": 16, "resource": "HXOX9F3ZeqVPmDgu", "schedAction": 60, "schedCron": "8MBm59iTU5trD7N1", "schedRange": ["QanZGyffyp0buvvk", "U1VLHyC2Ll7UBG2d", "xOTuBID9enjW7uKt"]}, {"action": 87, "resource": "JelHFes4VbI3UbMN", "schedAction": 31, "schedCron": "FW4HHHSvlRREFTqj", "schedRange": ["czmNmNGSkJaDXfRg", "dTnyQT8qMTqRxrum", "CBd2x5Yj1U088I2w"]}, {"action": 70, "resource": "XDv1j07IStAd0FsC", "schedAction": 18, "schedCron": "Z2osYeB0yfq6Nt2F", "schedRange": ["RyR3W1W58L2csJti", "F578E3CzENEDLB0G", "0qaCH52DoAhJLiby"]}], "clientPlatform": "IlMKiXUKM1Ivifnw", "deletable": false, "description": "aMMezzlovyqZhHaI", "namespace": "Pt38Fuu3gWXvtXj6", "oauthAccessTokenExpiration": 86, "oauthAccessTokenExpirationTimeUnit": "dA4WlWSU2GO12jx5", "oauthRefreshTokenExpiration": 59, "oauthRefreshTokenExpirationTimeUnit": "4EUqDSbpaEPUxvtL", "redirectUri": "ff4I2TmP5JwFUTzs", "scopes": ["Dw5lNLampzJRr41i", "fVilbyCoSfSzCqob", "G2M0GV1ybfphERA8"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId '9bMHWij2ZN1Igojc' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 55, "resource": "xuIDPYWHAcIzmu26"}, {"action": 75, "resource": "KolwY3V05ekUcUzD"}, {"action": 87, "resource": "TQX6zDZSvh2EXVDI"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'FwgkYaBAque9Zuai' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 85, "resource": "qRfDHdtYhdjQomHD"}, {"action": 5, "resource": "nF7aTF5PTJmSHLh5"}, {"action": 26, "resource": "CZC4a39Wtnxvt44E"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '19' \
    --clientId 'VZ6T2d1Z3Ceyoxhu' \
    --namespace $AB_NAMESPACE \
    --resource 'rE95YtBKrJWueg2w' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'yKHrTBRc8jqf2odX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminGetConfigValueV3' test.out

#- 129 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'true' \
    > test.out 2>&1
eval_tap $? 129 'AdminGetCountryListV3' test.out

#- 130 AdminGetCountryBlacklistV3
samples/cli/sample-apps Iam adminGetCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 130 'AdminGetCountryBlacklistV3' test.out

#- 131 AdminAddCountryBlacklistV3
samples/cli/sample-apps Iam adminAddCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"blacklist": ["W7wR2zSURh6aGugS", "Fj8DJzHLm6nwbNzJ", "Mn7wABwbJqZ8Phky"]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddCountryBlacklistV3' test.out

#- 132 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 132 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 133 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 134 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 135 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7ZVG6FZu26ndFngD' \
    > test.out 2>&1
eval_tap $? 135 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 136 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Wpa2zEc6SNajt861' \
    --body '{"ACSURL": "UeruCPjXoJuny9O2", "AWSCognitoRegion": "LNjtGj2vrsnLhXsU", "AWSCognitoUserPool": "PoX1r76evNFEMHGK", "AllowedClients": ["pyl5QFS5IhORUUzs", "UJTVOWwXlWCegY7Z", "vgGe25BPDJ07rKPB"], "AppId": "qb0sV7LPshiTgkEp", "AuthorizationEndpoint": "4ewKoTApOSy0nDrg", "ClientId": "0B5kjlMmKYenyLDl", "Environment": "zB3nt7JBfJAdWy8K", "FederationMetadataURL": "UXGbBFZeOYOCfVza", "GenericOauthFlow": false, "IsActive": false, "Issuer": "PelgsnVN5thZo0Mm", "JWKSEndpoint": "zVWMLtstIhhv3T4u", "KeyID": "lPnhR0JUPJDXJn6e", "NetflixCertificates": {"encryptedPrivateKey": "9VYGQphhpnAJnIth", "encryptedPrivateKeyName": "Tg23FiKHhGSAvPBA", "publicCertificate": "0XgzM8wvp4iWvkqf", "publicCertificateName": "eFgw5mW506NfC4yL", "rootCertificate": "26sYr3i4pzDR2LsJ", "rootCertificateName": "omYURiozLT9evV2z"}, "OrganizationId": "5SmMQd7L2KDL0juW", "PlatformName": "DHsj75qCMgm9ice3", "RedirectUri": "4x6J2gUAYe2VLgLH", "RegisteredDomains": [{"affectedClientIDs": ["MPcSsINP2hkuZwVY", "I3akQTeAWmTDcAvF", "2pdSMv2h90zEvEIk"], "domain": "4WWnD9IFOQ1nXLWg", "namespaces": ["Vs8jHE9vbmGI567j", "7jhhwzAcYjGBbmy0", "BWN0AWbdiOYNyIJV"], "roleId": "6KJ1mXeW0iyBcE96"}, {"affectedClientIDs": ["h5geTK8A8H7ihhtB", "qDL1wGPKhpBJAG63", "H7MUqRHflfunciBT"], "domain": "WpFz7mep1ZxErDi5", "namespaces": ["1AxZ7GHJNnyhaJaR", "eZ8UVk1EmaIBpE5f", "0Hgx3Ch5nQORUbUH"], "roleId": "Ah7sbbqva67E9ejr"}, {"affectedClientIDs": ["w3vyWUweTWW6jw3M", "jVu6zuIh764DKbdC", "24ekWX1Jp4BKCLuo"], "domain": "LcN6UbXLIcGUFZuD", "namespaces": ["TgmURRKLqd9eY5MG", "CI9EZLeLq7DFKCEb", "i6arx3SsbrDIc8hI"], "roleId": "igiEqjvqI3RsLQ0a"}], "Secret": "tpETMdMzYR4GKrIk", "TeamID": "ViJpJieKZ7Wo38jj", "TokenAuthenticationType": "FO2s0bt7sbfE3R7S", "TokenClaimsMapping": {"c7BkI2sD01Dom2kN": "gGeAwvHWAN3WHWrq", "Py53pMdjNf3AwGL7": "BxWsgieVo6prKUy9", "RQVMDpgBtkeSDy70": "u4JWHqqwrMdRu9eW"}, "TokenEndpoint": "ukUO8DAIyyBaq3Q2", "UserInfoEndpoint": "8tPjLPzaqj7Gkcs0", "UserInfoHTTPMethod": "MMTzoTwiTcD4iMrl", "scopes": ["aG5xxYd3fMg46wDR", "zCKcVca3c2fNke9B", "HVIgmP7ClMBvEq0j"]}' \
    > test.out 2>&1
eval_tap $? 136 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 137 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DTxTKd1mxikWzJYl' \
    > test.out 2>&1
eval_tap $? 137 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4aYJBfDt0zUE82A5' \
    --body '{"ACSURL": "k8awml35avP5XjNR", "AWSCognitoRegion": "J1ULVjMGYE7CAzDm", "AWSCognitoUserPool": "5NktyUB0xZQQQJPm", "AllowedClients": ["6NO3mhPrOPpj519R", "73bDRpk0nWyBNmNA", "VzWpTVjxfPn3JQJs"], "AppId": "lMOOD2k37QcYVrcO", "AuthorizationEndpoint": "5smpPVo7Q6OBdcem", "ClientId": "G9r83kNFusA02CEn", "Environment": "e6YhHJqtZyDV6Y7u", "FederationMetadataURL": "RNYAIxN5mPRnJSZF", "GenericOauthFlow": true, "IsActive": false, "Issuer": "Zs4OHiZ8H724mvbN", "JWKSEndpoint": "Bqpn0CgDkFHvWPrz", "KeyID": "jkugPw4wTamBIGdF", "NetflixCertificates": {"encryptedPrivateKey": "6XglwQnvF7Dp2Qh5", "encryptedPrivateKeyName": "OlPhozAnaPhcQAaj", "publicCertificate": "dQjslURuPyy950k9", "publicCertificateName": "nSz2RNyxeiUFik74", "rootCertificate": "pUSWiphGucUOwYrT", "rootCertificateName": "mYLkDWE9qv6PLJnJ"}, "OrganizationId": "VqHIp6V9tpVbqymB", "PlatformName": "0FcjNWGLPnw6VQJw", "RedirectUri": "1TEuS6up4DjEYelh", "RegisteredDomains": [{"affectedClientIDs": ["O9KhTZo9StblqA4S", "ckHG5mVUtapF2OTO", "WwpXf7qoyWiOgxiz"], "domain": "sDzE2OldIqtNIMMM", "namespaces": ["jmRjer78OXUXc3xS", "DXR4BOaeiSWK7CiJ", "zJuUnBfaaTKFOOaC"], "roleId": "KD1lIgDJpfbY57a4"}, {"affectedClientIDs": ["GwiDMaoAc0xEjQSG", "f8Mp3WhMLuF7YeqF", "Y5YcxPZLvdQFLJNc"], "domain": "kJwk2XR1j6zmU5zf", "namespaces": ["kahCEQjTUaZ0ShbC", "TVTVcc1WizBNINXY", "PjSZ5aU5llVUCvGY"], "roleId": "5RcdQBIlcFyjYRux"}, {"affectedClientIDs": ["czYagAisXu19J5b9", "Ev1PEeKFMd2hYbHW", "QOFwhEpftBYF6Bt4"], "domain": "eBmkOvyTEKOa1ikJ", "namespaces": ["RFBid8pHYTbBgp8W", "GftbfhPEiEZL1ul2", "epJt6xpW1DEXo6TL"], "roleId": "IMdKqPqRZyfGLpU7"}], "Secret": "x0MlIl2yikeHcNnC", "TeamID": "1dxzem4a9U5q01LW", "TokenAuthenticationType": "A2mpmoSSdTDhwHiV", "TokenClaimsMapping": {"M52LvnG5CzAZD9jY": "Zkj1NWnHYvQzJB6X", "bramKsANeF4GTvpk": "3dmXgFzi3eiLimkI", "w2yY24bzDZ1LPBBw": "6XDeZ2HwoQYVGhiQ"}, "TokenEndpoint": "dBShXLIRGdwRAFjj", "UserInfoEndpoint": "RV0huuqeK6bpJnwG", "UserInfoHTTPMethod": "V5k8JFLCjF5TOcsJ", "scopes": ["gRmckEg8QEleIdGX", "Ty4rdHd1OKSwjcch", "orKwWwyJJcinrQ8p"]}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 139 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7E24JELykG0zn8zc' \
    --body '{"affectedClientIDs": ["3WV2tJ6mF8mmipdY", "vC5oIUUNrynb2LTE", "oBgn41QaKT352SPj"], "assignedNamespaces": ["mNPaCxW29aj8Yt25", "5QiodpWR6z2fGDhR", "uGHHpjZKpDlkJJOp"], "domain": "GCteQ8sAZNNzBVaL", "roleId": "2u9kFkAeKugpXlGC"}' \
    > test.out 2>&1
eval_tap $? 139 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 140 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZlVF0y406TCMHwCI' \
    --body '{"domain": "nzLp1YjSzrYzQZAA"}' \
    > test.out 2>&1
eval_tap $? 140 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 141 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'cpienZLigfThzxcT' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveSSOLoginPlatformCredential' test.out

#- 142 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'QRV5SzmxZqpUj6QW' \
    --body '{"acsUrl": "FkvO1TiEahzclIOK", "apiKey": "Q7demd5KgiRLOMQD", "appId": "9YEdIzcIUsYYUVdL", "federationMetadataUrl": "VxL9EtEokTBhSVy4", "isActive": true, "redirectUri": "F96tYlUe83Skuo9P", "secret": "pJcAQiBo9INMNtxG", "ssoUrl": "V9mBcT5hFJzYVbYw"}' \
    > test.out 2>&1
eval_tap $? 142 'AddSSOLoginPlatformCredential' test.out

#- 143 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'exlGrKIu1hjwyddI' \
    > test.out 2>&1
eval_tap $? 143 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 144 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'TYjK4aJubzhPC1Mq' \
    --body '{"acsUrl": "L5tSuPIcTD11xRll", "apiKey": "woP0XLiGVYrK30uX", "appId": "C5PKmKdxQMQrFzC5", "federationMetadataUrl": "NZFco3lopKxGdC5n", "isActive": true, "redirectUri": "vS6XBFCcs189R5ie", "secret": "Iqci2u2TPhuIh6tR", "ssoUrl": "c5XdaklctKHhHEB8"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateSSOPlatformCredential' test.out

#- 145 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kbH6c4KyxjE2SkOw' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["t106d4equGwyzlkH", "2hRRpCrnk691OgES", "Bd3YcCamx4o1bzbt"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 146 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'e4sRTwgh9og1JVuL' \
    --platformUserId 'noqYluFDGdQmdNTj' \
    > test.out 2>&1
eval_tap $? 146 'AdminGetUserByPlatformUserIDV3' test.out

#- 147 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'igT8DZk3IomwC2Ld' \
    --after '59' \
    --before '40' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 147 'GetAdminUsersByRoleIdV3' test.out

#- 148 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'wFI0ENNvJlfwiul5' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetUserByEmailAddressV3' test.out

#- 149 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'yeqKbQJsKvoRyMxQ' \
    --body '{"bulkUserId": ["0p5pK8gt7Dtt1T8s", "uQFm1FmsI8rkpBqS", "qLZPEm21CGSIjZe4"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserBanV3' test.out

#- 150 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["MWJAGhPb66TQmt8T", "8J7PEx6x39fWE9Sk", "0zN2uVFRIzRmWhZN"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminListUserIDByUserIDsV3' test.out

#- 151 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ACFBHVPQWCOCCQpi", "2xtahOIagf0hh81Q", "3pyRlIENFagmRdKf"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminBulkGetUsersPlatform' test.out

#- 152 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["2Zj9gNGTsS9dnOEQ", "biZckVtyuOUBacUl", "863fZDhiNZebMDYw"], "isAdmin": false, "namespace": "F2UX08lPAbwLzDFl", "roles": ["mxz8moPvfPJaOP3b", "HoC7iJnrlf1TVxjS", "ikwdLajzWaVB6zmZ"]}' \
    > test.out 2>&1
eval_tap $? 152 'AdminInviteUserV3' test.out

#- 153 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '40' \
    --platformUserId 'JrdRTnf4PZvLLQAw' \
    --platformId 'I6YWWtrUYWI58Oym' \
    > test.out 2>&1
eval_tap $? 153 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 154 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 154 'AdminListUsersV3' test.out

#- 155 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'aM941h28BtR5mxQc' \
    --endDate '9DunW7AHmhCQorTT' \
    --includeTotal 'false' \
    --limit '56' \
    --offset '78' \
    --platformBy 'DWq2m1MK8RvbHbCA' \
    --platformId '9zlfJeBNZ7sHWaeY' \
    --query 'O4jagsavVjROjaqW' \
    --startDate '0AWHqTJdgWh2b96G' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 155 'AdminSearchUserV3' test.out

#- 156 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["Fjf5OiYZFtAEUguV", "FlYTfbO71hcFxoku", "xroLymSftEOmpgzT"]}' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetBulkUserByEmailAddressV3' test.out

#- 157 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VXAJgkzYHk32sMq6' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetUserByUserIdV3' test.out

#- 158 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Xdb0WE74svJZixCO' \
    --body '{"avatarUrl": "dxfyGovFizJWLoCk", "country": "UyZsIVpNV4Mvwarp", "dateOfBirth": "3eiT5XuxcOgKRUzw", "displayName": "Uxyih3HAxUX3sJDh", "languageTag": "03zJMVRXuBfPRqaL", "uniqueDisplayName": "RYa3ufFmZRYNgHdi", "userName": "ePwZ66inWP6RYRZk"}' \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateUserV3' test.out

#- 159 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NSZvdvYbOcuNGvwL' \
    --activeOnly 'true' \
    --after 'iQ91FFxfLZFxv6FC' \
    --before 'pMlNVf3gymtdlCxF' \
    --limit '58' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserBanV3' test.out

#- 160 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'u7G50lqEvPBGBTIF' \
    --body '{"ban": "TFHrPCPM22NTFGV9", "comment": "gVy5iVE5TDoXxaqN", "endDate": "rPQkhrqGIOIQMlqe", "reason": "wjevXKnH3vRYXCri", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminBanUserV3' test.out

#- 161 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'ALNAtGx5OAIAekdF' \
    --namespace $AB_NAMESPACE \
    --userId 'f1FX8DeLR6It3KCB' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 161 'AdminUpdateUserBanV3' test.out

#- 162 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mwRw8wV1aJqLML9E' \
    --body '{"context": "GbRGoVYajpeWN2qJ", "emailAddress": "rV7tOZD8JyYsbIyl", "languageTag": "IyWN6o0LbKkQrlNE"}' \
    > test.out 2>&1
eval_tap $? 162 'AdminSendVerificationCodeV3' test.out

#- 163 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LbrRTtRHMxab81mo' \
    --body '{"Code": "1x8DNxO2puKJKxdD", "ContactType": "BrTdcSSTUdZydSBB", "LanguageTag": "gHV367JdxJUV0zoN", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 163 'AdminVerifyAccountV3' test.out

#- 164 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'fiUBrSA7vFfxpfKl' \
    > test.out 2>&1
eval_tap $? 164 'GetUserVerificationCode' test.out

#- 165 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '3NglWYYhj7dtWmgi' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetUserDeletionStatusV3' test.out

#- 166 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cvlJCfHcIDliuGlT' \
    --body '{"deletionDate": 38, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpdateUserDeletionStatusV3' test.out

#- 167 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XZheWmwERbHfiChQ' \
    --body '{"code": "Gec25yqbNjGA4v2D", "country": "0qRXYM6E8dPTXfpp", "dateOfBirth": "m6y4yKIWO38fDbDr", "displayName": "pRNUlU8DyRP9k2Uw", "emailAddress": "92diwGGgdaw6jsBL", "password": "5l7Y8gxsJB70Zmcn", "uniqueDisplayName": "Dmg2kDsUPyXceziI", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 167 'AdminUpgradeHeadlessAccountV3' test.out

#- 168 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '16tMamY7rvBKMLsS' \
    > test.out 2>&1
eval_tap $? 168 'AdminDeleteUserInformationV3' test.out

#- 169 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XbIH090OTMHNe2kf' \
    --after '0.5733463504782471' \
    --before '0.8170350367997304' \
    --limit '25' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserLoginHistoriesV3' test.out

#- 170 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GwWXbjuoZ54PrjMu' \
    --body '{"languageTag": "u0XB8UREY5EGo7UG", "newPassword": "CX888aQPvzmA1ot1", "oldPassword": "o1SbuiSycV1fZlMa"}' \
    > test.out 2>&1
eval_tap $? 170 'AdminResetPasswordV3' test.out

#- 171 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '6gLHErPGVE7IeY7k' \
    --body '{"Permissions": [{"Action": 44, "Resource": "sNA6ifMeWv9TrhrL", "SchedAction": 60, "SchedCron": "khPztNmsRHGugZCr", "SchedRange": ["ehc3co5aTiO4RBN1", "Qcr48tgyZyZWDBSy", "xGSQl6qFkaBtk6rq"]}, {"Action": 35, "Resource": "ikFXOqpjCXAskcsi", "SchedAction": 76, "SchedCron": "5RegsWdVcJkv78nb", "SchedRange": ["9CRFgZS9z6VkM6es", "ZOxnziq48I4q00Lr", "tLShn9IuGSGQLpuq"]}, {"Action": 78, "Resource": "tJWjgCI3Jdzrg8mI", "SchedAction": 41, "SchedCron": "C758UcdIcHPJMiX3", "SchedRange": ["U7E8DxpqNYeCxCdI", "7EbkZCmwOsoksocy", "gVwxCn7cDLZwoeX0"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminUpdateUserPermissionV3' test.out

#- 172 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kvbQrjRNqvsiFxJB' \
    --body '{"Permissions": [{"Action": 94, "Resource": "Fh4lvHWkGKdQrKxR", "SchedAction": 36, "SchedCron": "Vaze5sakeLNyb62C", "SchedRange": ["yzsrqBqMlAyv5XBZ", "ToPOg2M22I2GuVhn", "zH2iCRtOsAxmDaC9"]}, {"Action": 31, "Resource": "x0XPWA6ze8oRWfWn", "SchedAction": 73, "SchedCron": "DRJv9oW2uEs8CvrW", "SchedRange": ["zHWNmysZeKlKIW3Y", "ILIUJ0TBvqv3dAKq", "ivTuZPcpRCgBjYkI"]}, {"Action": 33, "Resource": "GncBSC0L8TH5Kb6U", "SchedAction": 16, "SchedCron": "yo40OXpbFxpD9SRW", "SchedRange": ["USkLNxhN6Zukow19", "Bl0EpteAkrjmt4GJ", "3SiHx5IjzcnrJFdy"]}]}' \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserPermissionsV3' test.out

#- 173 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uGUVhj0kQeABmVAG' \
    --body '[{"Action": 16, "Resource": "dVfOJqMjaatdCIwh"}, {"Action": 73, "Resource": "qo181aM21fzZPgZo"}, {"Action": 65, "Resource": "rvahCR3cRLSxsvW8"}]' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionBulkV3' test.out

#- 174 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '77' \
    --namespace $AB_NAMESPACE \
    --resource 'L8ndrikiKRaBawMV' \
    --userId 'JSeiwTWTtdm8RsMv' \
    > test.out 2>&1
eval_tap $? 174 'AdminDeleteUserPermissionV3' test.out

#- 175 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'I3Ib7k5ZVLAGWUD3' \
    --after 'ePGZLAtJvFAM2rnU' \
    --before 'WyTPRNlD6n96fRz1' \
    --limit '26' \
    --platformId 'qKMP73UtaaCpJvyE' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetUserPlatformAccountsV3' test.out

#- 176 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '76FjRtHjHKA3TbAr' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetListJusticePlatformAccounts' test.out

#- 177 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'PMydvRP820yE148B' \
    --userId '6UW9GxKhdNHneFxS' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserMapping' test.out

#- 178 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'OZS7U0Al3TPsZm1R' \
    --userId 'LOf8fEgtHwb5S5es' \
    > test.out 2>&1
eval_tap $? 178 'AdminCreateJusticeUser' test.out

#- 179 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '1yb2z0BjXvllcbQV' \
    --skipConflict 'true' \
    --body '{"platformId": "HnkF5oK7HVR0ETUG", "platformUserId": "hcjct8I90TgHgTGh"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminLinkPlatformAccount' test.out

#- 180 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5KiP0uxRWPDJbiAM' \
    --userId '1FkQzYc3zAEe7b6B' \
    --body '{"platformNamespace": "cgcGOvhALItAY4Qj"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformUnlinkV3' test.out

#- 181 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kHdHelW635Mvo1Uw' \
    --userId '4gtF5ju9wjsYV0c1' \
    --ticket 'aWioCgfPET7YkQl1' \
    > test.out 2>&1
eval_tap $? 181 'AdminPlatformLinkV3' test.out

#- 182 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZoXaco2KnRLC1JIS' \
    --userId 'KP55RcYObyITyfcL' \
    > test.out 2>&1
eval_tap $? 182 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 183 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hDY2xMBtTqCl6wqf' \
    --userId 'IUnU50Bsk5eL3zi1' \
    --platformToken 'GVX9FcqnqKx5Az9N' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 184 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'imIPp1HxfXvDm6Nc' \
    --userId 'akwwQbUVHoxSprLl' \
    > test.out 2>&1
eval_tap $? 184 'AdminGetUserSinglePlatformAccount' test.out

#- 185 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bFr6NOkGbccBbKeG' \
    --body '["ZK1FtpijNK9CXXXU", "9jBUNRAu1QbeLm4z", "7ffC7VxFEoay98NV"]' \
    > test.out 2>&1
eval_tap $? 185 'AdminDeleteUserRolesV3' test.out

#- 186 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nkl6l3OYuEeVXWlW' \
    --body '[{"namespace": "NPNc6b3GJ1lxlab9", "roleId": "chhijbHc7q72MztD"}, {"namespace": "4ngxPd6zeEE3d19I", "roleId": "9iJ258qjoyn8zmMr"}, {"namespace": "ivn3siMIJc2GYR6s", "roleId": "FRbQgITJDlmOsoiS"}]' \
    > test.out 2>&1
eval_tap $? 186 'AdminSaveUserRoleV3' test.out

#- 187 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '2PjF6Y4DgW1mc08D' \
    --userId 'Lzc3r1w4EaHfVP7B' \
    > test.out 2>&1
eval_tap $? 187 'AdminAddUserRoleV3' test.out

#- 188 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'NwvK959q4oXfwtnG' \
    --userId 'PZlsNwdatpscEA15' \
    > test.out 2>&1
eval_tap $? 188 'AdminDeleteUserRoleV3' test.out

#- 189 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'w62fIs0PiKGt0z0c' \
    --body '{"enabled": true, "reason": "gRx9hUF5ZxsPqBMD"}' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateUserStatusV3' test.out

#- 190 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'DnvcsiG4OE3VgJFY' \
    --body '{"emailAddress": "pRJdMMhNhutphxas", "password": "Ow9FWluvWu7sPNUW"}' \
    > test.out 2>&1
eval_tap $? 190 'AdminTrustlyUpdateUserIdentity' test.out

#- 191 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UWgjiB744e5KLird' \
    > test.out 2>&1
eval_tap $? 191 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 192 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'tp0VTK9PiK72rDi9' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "kyH19H9AxIeU8RsQ"}' \
    > test.out 2>&1
eval_tap $? 192 'AdminUpdateClientSecretV3' test.out

#- 193 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after '2Uy6QkphDS6437hl' \
    --before 'hi8r2nufCEEDPrBu' \
    --isWildcard 'false' \
    --limit '97' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRolesV3' test.out

#- 194 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "IN9uKcTsQmn9OxyP", "namespace": "7808asXUi7NNGsRJ", "userId": "mYRQ9Rs2gtbe601r"}, {"displayName": "Tm7rXdQmDfUJpH31", "namespace": "wDzKeQAMT17lynBn", "userId": "w9gxe85U1Bp9q4VB"}, {"displayName": "XhL4A90Q3dcgmH6Y", "namespace": "sEUP2Zr5iBUIOC9Z", "userId": "P2RSF4WxL8WIgeQ8"}], "members": [{"displayName": "XaRaBern4wcruWt9", "namespace": "CtXuKnmrK0Da9CO3", "userId": "LyuzOzMafNcyEasY"}, {"displayName": "6RdMRParS3vvqk0l", "namespace": "jKyoqVCX5Any005b", "userId": "I85VtyaMO4gpxpwB"}, {"displayName": "9xf9d94fgmFF2cjS", "namespace": "vSyvDM5CrMOGKWLN", "userId": "yBnF4PUT94lIDHIR"}], "permissions": [{"action": 23, "resource": "xI0EUzPDqtpUo27q", "schedAction": 14, "schedCron": "2YcEUAiqjLVuXcZY", "schedRange": ["qDiKLVI6UJLDJ47m", "vXWn2zlVttTJTFgu", "9KIFjA87YJxsi1ez"]}, {"action": 95, "resource": "mD08JbOMohEVGlqI", "schedAction": 19, "schedCron": "U7y0xSpytmloz1Ix", "schedRange": ["MSK2aIFST4IJgP3v", "702yhML7QkqnInLy", "axz2VM2bSQAatFtq"]}, {"action": 96, "resource": "ydGefJxbwMe1BM8U", "schedAction": 61, "schedCron": "CW1XAhY36D8I3YBY", "schedRange": ["uRWJzQFrgHiBFoMZ", "i5SUXIPykm0N3Ebt", "wzLFnFVkW1Z6cUED"]}], "roleName": "CglqGYiHsimb0Vev"}' \
    > test.out 2>&1
eval_tap $? 194 'AdminCreateRoleV3' test.out

#- 195 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'pVATapy8FrPTlk6o' \
    > test.out 2>&1
eval_tap $? 195 'AdminGetRoleV3' test.out

#- 196 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'YQmvUxvAkIK13LuU' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteRoleV3' test.out

#- 197 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'JC5kMPqvu4vmbd3C' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "9u2gdpBClTIuBAQC"}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRoleV3' test.out

#- 198 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'qPpzCPFWrFsEQdx3' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetRoleAdminStatusV3' test.out

#- 199 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'tJHbdpQoCKPvsZ8c' \
    > test.out 2>&1
eval_tap $? 199 'AdminUpdateAdminRoleStatusV3' test.out

#- 200 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'oJMJnE8bfOVrjDXf' \
    > test.out 2>&1
eval_tap $? 200 'AdminRemoveRoleAdminV3' test.out

#- 201 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'VPOgGKV5L60bYEBq' \
    --after 'P7hF1Wiumnmdmcr4' \
    --before 'S0dH1CWSn3bsGeEq' \
    --limit '38' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetRoleManagersV3' test.out

#- 202 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'cQFzLpY36mdHCx1b' \
    --body '{"managers": [{"displayName": "05tYrLZFisgQoISz", "namespace": "B9D0OUk5ygdG1FN8", "userId": "HgNdEFT69lskwgxH"}, {"displayName": "wvSlOKRXlGvOTLcE", "namespace": "QNi7NZLpwqxtVjJh", "userId": "cP6hQW9BuxxCWeix"}, {"displayName": "rb8qeEw0xttWYr3A", "namespace": "oocOXJp5ZJYhu4EW", "userId": "7VQDXZvruVR0Ynjr"}]}' \
    > test.out 2>&1
eval_tap $? 202 'AdminAddRoleManagersV3' test.out

#- 203 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'Q7Flv0zSAhvOGOht' \
    --body '{"managers": [{"displayName": "SPbGYGp2U3G7HQUa", "namespace": "3ob5aVmUoYnjYDPi", "userId": "e7vHXdLDwGVy8TAt"}, {"displayName": "RkaIc6jrhxQ2iK0S", "namespace": "s7EyZluwwYehP7XH", "userId": "m8vIFqexzMY51CWD"}, {"displayName": "mRZgdIIhimyxQRsc", "namespace": "rVvva4thPJGoIUaM", "userId": "gLOhhuIbqSXYp5GG"}]}' \
    > test.out 2>&1
eval_tap $? 203 'AdminRemoveRoleManagersV3' test.out

#- 204 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId '9tEV7t58gRNjkcSy' \
    --after 'TG6bQJ82TnI30iwF' \
    --before '4mJqcWJPZLcdzZZ4' \
    --limit '24' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetRoleMembersV3' test.out

#- 205 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'V8eB1aM7iNGD7Nbn' \
    --body '{"members": [{"displayName": "fvp8feffDAr6xf5k", "namespace": "vm5JVuRoxNyWlLPF", "userId": "qJUkTTxGHdAzHAAb"}, {"displayName": "qsumZUhBssmZJikp", "namespace": "Es6dW1vw1fG3jpSW", "userId": "WttM6xyVQ5BP94Jg"}, {"displayName": "3j0URgvVQgxKjleM", "namespace": "Bxf34sGaGxMblUQE", "userId": "a5wCCVZSlr4Y9kDB"}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminAddRoleMembersV3' test.out

#- 206 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'rWpAtE7s4OJN2mA0' \
    --body '{"members": [{"displayName": "mQQ4MELvsdZTMFse", "namespace": "9HqUrvqs71c0130A", "userId": "zcctoo9uIVb0B5qN"}, {"displayName": "v0CbwuR6ORa2VByS", "namespace": "eojHWpnhGP2wX23e", "userId": "GyujPCPLmM6X84ZO"}, {"displayName": "hyOxjtsqwtCIwAKH", "namespace": "sgT54rnrrPGXy0xi", "userId": "jQz4G1VCcaeYJt1N"}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminRemoveRoleMembersV3' test.out

#- 207 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'i9U1JhrccDWO0ajM' \
    --body '{"permissions": [{"action": 16, "resource": "rcRG68Kj75rVofcN", "schedAction": 7, "schedCron": "4VP4SQnf9cOpWNTE", "schedRange": ["cFkKJHbFDa69zeRZ", "7IGD1POUGnMrWGEs", "iLxRKI73yBB30JXV"]}, {"action": 21, "resource": "didf58qDzQrzB93y", "schedAction": 28, "schedCron": "Mgppi8TtkGfEWAOW", "schedRange": ["GMN3QTSysev9To5E", "LCbfFDUYkCE5H6oj", "aqbe5ancTsZI4djw"]}, {"action": 17, "resource": "lqrnpNaV3lthxy6d", "schedAction": 69, "schedCron": "h4QOpd3RnzEjFiiQ", "schedRange": ["XikilKFXadc4v4Cw", "KB8JbRO3n73gOlgO", "AjMKjA8qSjrBfTau"]}]}' \
    > test.out 2>&1
eval_tap $? 207 'AdminUpdateRolePermissionsV3' test.out

#- 208 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'rWlXUQz4wftSEr3O' \
    --body '{"permissions": [{"action": 54, "resource": "xIwsjyxoFyxR0F9g", "schedAction": 10, "schedCron": "D4xZ0MWvmukmLr59", "schedRange": ["sn1AfLAtf1rPjZDb", "16DuWLyT3mLtujlU", "Z6yyVyZ96vuR32Si"]}, {"action": 34, "resource": "EQy9Y7cRckoYnyOU", "schedAction": 31, "schedCron": "oJCWBkf0SZhGArn2", "schedRange": ["OeGGd41Vt1JHptQh", "PTTAA1V9THhBEh5I", "C4hzQY7owTEwMyEz"]}, {"action": 26, "resource": "svtPmshAToeGCz9R", "schedAction": 9, "schedCron": "vCgLsFdqTmAvUbKA", "schedRange": ["jdVVrjnmt8UfSd9J", "UrCMmMhyBMtP84JQ", "Soahd7ne5zCpan2i"]}]}' \
    > test.out 2>&1
eval_tap $? 208 'AdminAddRolePermissionsV3' test.out

#- 209 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'i9ataEClCT1T9gjX' \
    --body '["zA8dlxzqHuZcSNqF", "mEgXRyEyGblLDei1", "CvXENPBstjIJzCSK"]' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteRolePermissionsV3' test.out

#- 210 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '4' \
    --resource 'xBUA56JOTPJBJQua' \
    --roleId 'Bv906i94ac6Ul1JB' \
    > test.out 2>&1
eval_tap $? 210 'AdminDeleteRolePermissionV3' test.out

#- 211 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 211 'AdminGetMyUserV3' test.out

#- 212 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '91PiWbFgR62TfU3v' \
    --extendExp 'false' \
    --redirectUri 'DLmLyZ5FWGfcUrbA' \
    --password 'vwvdBL4TT1RX6IgH' \
    --requestId 'GTYk7rS8AXxi64TI' \
    --userName 'M9hMafOUvgTPvAWC' \
    > test.out 2>&1
eval_tap $? 212 'UserAuthenticationV3' test.out

#- 213 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'H7EXbjWzfv77ISBC' \
    --linkingToken 'P9yYmJaYopxaESyz' \
    --password 'XJ1xjWsb4zHP5HGK' \
    --username 'PhohxxLWQLeSX7dz' \
    > test.out 2>&1
eval_tap $? 213 'AuthenticationWithPlatformLinkV3' test.out

#- 214 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'kDoKu1nyRPo58uiU' \
    --extendExp 'false' \
    --linkingToken 'Z0qVcS5ienNbSDiw' \
    > test.out 2>&1
eval_tap $? 214 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 215 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'CtJOc3aje1sbPygD' \
    > test.out 2>&1
eval_tap $? 215 'RequestOneTimeLinkingCodeV3' test.out

#- 216 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'ShwH8QAORlRXvTOQ' \
    > test.out 2>&1
eval_tap $? 216 'ValidateOneTimeLinkingCodeV3' test.out

#- 217 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'Ln7K2ljfevrdMWcz' \
    --isTransient 'false' \
    --clientId 'MvmaeSPIeirryxp4' \
    --oneTimeLinkCode 'YdPOaT91QVivJy8z' \
    > test.out 2>&1
eval_tap $? 217 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 218 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 218 'GetCountryLocationV3' test.out

#- 219 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 219 'Logout' test.out

#- 220 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'OQOO6jLkeO9cvIQA' \
    > test.out 2>&1
eval_tap $? 220 'RequestTokenExchangeCodeV3' test.out

#- 221 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FTP6rM3opf9npJhS' \
    --userId '1rivaRZ7tU7Q0ud1' \
    > test.out 2>&1
eval_tap $? 221 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 222 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'r0gTmdSzqothBUj9' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 222 'RevokeUserV3' test.out

#- 223 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'wKqHfTNvXhvP9kGa' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'tqFxD51Kd5wE8zKr' \
    --redirectUri '40fN7PqV6LZSggmq' \
    --scope 'WTzwdnYBlOAmGfwN' \
    --state 'NBxaRpQRHIAbFiJZ' \
    --targetAuthPage 'PXV7U0o2OW0fZo5f' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'XyTg2W5Wlx9m6k0o' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 223 'AuthorizeV3' test.out

#- 224 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'pHkFaZ66ZHsuhwsr' \
    > test.out 2>&1
eval_tap $? 224 'TokenIntrospectionV3' test.out

#- 225 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 225 'GetJWKSV3' test.out

#- 226 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'dmSoHWretBs2JBcN' \
    --factor 'sfiXnUlXSN2VrRjf' \
    --mfaToken '8mZGCjo2YB3A7asp' \
    > test.out 2>&1
eval_tap $? 226 'SendMFAAuthenticationCode' test.out

#- 227 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'KaXxrrsFOEoxHM1D' \
    --mfaToken 'j7qDglX9909I4TeF' \
    > test.out 2>&1
eval_tap $? 227 'Change2faMethod' test.out

#- 228 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'B6gIyjGvaC8KsSIT' \
    --factor '11lsIgVwqm0OELvO' \
    --mfaToken 'mGP1ktayRQBEVYTG' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 228 'Verify2faCode' test.out

#- 229 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'adf8GQrZUUmIeNNA' \
    --userId 'HAyZafB0rzBPgcbi' \
    > test.out 2>&1
eval_tap $? 229 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 230 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'Den6cndLRcJGXCzw' \
    --clientId 'Doqn0ZDXLc3ii89s' \
    --redirectUri 'CQLwuIC6IPd8SLyH' \
    --requestId 'a8cZKN19AHup5RYx' \
    > test.out 2>&1
eval_tap $? 230 'AuthCodeRequestV3' test.out

#- 231 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 't2EHmpsFQfMhrgbU' \
    --additionalData 'Wi9pnhTpAaBgqK2G' \
    --clientId 'EXFLDkiqsB71x04y' \
    --createHeadless 'true' \
    --deviceId 'XAPxMAFtc2P0DlH6' \
    --macAddress 'yC8ZwQkfCQzwrLM9' \
    --platformToken 'gKsV5A22ACw3scPB' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 231 'PlatformTokenGrantV3' test.out

#- 232 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 232 'GetRevocationListV3' test.out

#- 233 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'mvkOXiuroNZ1RvSE' \
    > test.out 2>&1
eval_tap $? 233 'TokenRevocationV3' test.out

#- 234 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'pspc' \
    --simultaneousTicket '42kqjo7nQg0Yp5qf' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'eT1qsp6uwTvR2GI1' \
    > test.out 2>&1
eval_tap $? 234 'SimultaneousLoginV3' test.out

#- 235 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'HqmI6fItskvCXTpv' \
    --clientId 'j8VLBEpZlw85hdwf' \
    --code 'VHfqYjnVfBGM5ttz' \
    --codeVerifier 'KJIaIedgCMs83c83' \
    --extendNamespace 'FX7QAm8mbYkusjzW' \
    --extendExp 'false' \
    --password 'pyfGJ9lJWkyPebs4' \
    --redirectUri 'UR9Pxz4h1kJCl794' \
    --refreshToken '0APxy6CkZDIQQKpB' \
    --username 'DBpTs8MesEJCEPkx' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 235 'TokenGrantV3' test.out

#- 236 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'qAybAs3VpJYVcREQ' \
    > test.out 2>&1
eval_tap $? 236 'VerifyTokenV3' test.out

#- 237 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'fhnux377qyxAt9BU' \
    --code 'NRluVQZhehDZwHsl' \
    --error 'T9GdMnRnLvqskocB' \
    --openidAssocHandle 'QTt3Hvs4xgHaHwGp' \
    --openidClaimedId 'ocRkfErdAELMGiBE' \
    --openidIdentity 'PgOiqD6anOnFR2F8' \
    --openidMode 'W91RdIOaCvWJmZNR' \
    --openidNs 'N2lyB0C1dB8nB23j' \
    --openidOpEndpoint '12OHLWdMJoSKxQxX' \
    --openidResponseNonce 'qYvmN75AWuACB89c' \
    --openidReturnTo 'zE7jcGR1tQ9TZ5Yn' \
    --openidSig 'dge5VMyHtWjJzR3T' \
    --openidSigned 'QtE8Zl4RA5hoZKgA' \
    --state 'tQUqGav94HfiQaZm' \
    > test.out 2>&1
eval_tap $? 237 'PlatformAuthenticationV3' test.out

#- 238 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'Qo1C9Qn50qyZ6x0A' \
    --platformToken 'sO6VimxzmS3mVHWL' \
    > test.out 2>&1
eval_tap $? 238 'PlatformTokenRefreshV3' test.out

#- 239 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'LgvekkXTbJTYoANV' \
    > test.out 2>&1
eval_tap $? 239 'PublicGetInputValidations' test.out

#- 240 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field '4V3Ogy8f4YRQMdu4' \
    > test.out 2>&1
eval_tap $? 240 'PublicGetInputValidationByField' test.out

#- 241 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'DwD0FUGCtaaFNKDD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'PublicGetCountryAgeRestrictionV3' test.out

#- 242 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'EX6mlRv7hK0F2zHH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 242 'PublicGetConfigValueV3' test.out

#- 243 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 243 'PublicGetCountryListV3' test.out

#- 244 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 244 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 245 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'f8QYuWye2xDh3Hxf' \
    > test.out 2>&1
eval_tap $? 245 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 246 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'oM3A8pVxopSj8mWg' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["5uyjxb10lLadeVDl", "fqiUY3mWBQJQLe1N", "4L4XGYXV4psAJhHs"]}' \
    > test.out 2>&1
eval_tap $? 246 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 247 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yKbq36GptODHGRbB' \
    --platformUserId 'Mi8tBzuGY9gWGNga' \
    > test.out 2>&1
eval_tap $? 247 'PublicGetUserByPlatformUserIDV3' test.out

#- 248 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'Zl7uCG3RB7PI4Hse' \
    > test.out 2>&1
eval_tap $? 248 'PublicGetAsyncStatus' test.out

#- 249 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'wRoLZJHgUNbry3iI' \
    --limit '92' \
    --offset '0' \
    --platformBy '9H63jFayphLkzENk' \
    --platformId 'cmc3VZLbnnemXcsX' \
    --query 'bRzcjf0h29pc2Vn2' \
    > test.out 2>&1
eval_tap $? 249 'PublicSearchUserV3' test.out

#- 250 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "uz1rMjMt0QGTtvXX", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "8gRTHwNHsu9QYA23", "policyId": "at0bISZWAHbqRA68", "policyVersionId": "y3GUdbm1x2xNoMTV"}, {"isAccepted": true, "localizedPolicyVersionId": "cms6RHHuPxcfyt6u", "policyId": "VKfAHbluf1vmYjVn", "policyVersionId": "0YdvWLJldXtJ2Jpn"}, {"isAccepted": true, "localizedPolicyVersionId": "eLtCCfhHmPijwOLQ", "policyId": "VaFMJnyUFkoKSq2R", "policyVersionId": "ZENfSzr2ay9Rp43M"}], "authType": "HnrfxnNovqaO84xW", "code": "dze7hZGbLnuU8jG2", "country": "vub51dfReVt9pzWc", "dateOfBirth": "dVzYOMSpNDp2CmzX", "displayName": "wIxMAaBy2hxW3iRI", "emailAddress": "QMg8rFBfZWpdYzZJ", "password": "2jmTZ8xhval5cfXP", "reachMinimumAge": false, "uniqueDisplayName": "aAp7xPNdWKoPulXR"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateUserV3' test.out

#- 251 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'tKXzpNucSUO5tScZ' \
    --query 'yGINyyQG5HAemVaE' \
    > test.out 2>&1
eval_tap $? 251 'CheckUserAvailability' test.out

#- 252 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["whhXbAXkspivj3AK", "6DzIu1PLQ9Mpcqnr", "ugjqJyeR3y9ILF2C"]}' \
    > test.out 2>&1
eval_tap $? 252 'PublicBulkGetUsers' test.out

#- 253 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "GIZj9wHWVuW58ftb", "languageTag": "aV0Cx519WlB72yPW"}' \
    > test.out 2>&1
eval_tap $? 253 'PublicSendRegistrationCode' test.out

#- 254 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "5O9KcQ2no2EL4IEb", "emailAddress": "j65XsbG2dRSbuIMa"}' \
    > test.out 2>&1
eval_tap $? 254 'PublicVerifyRegistrationCode' test.out

#- 255 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "4XNjUFuNTSrbkwJO", "languageTag": "bS5a19PYb2KmCnfI"}' \
    > test.out 2>&1
eval_tap $? 255 'PublicForgotPasswordV3' test.out

#- 256 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'p5dPMMdVO2sLq6pA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 256 'GetAdminInvitationV3' test.out

#- 257 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'GBakZ8CtfR8H4dU1' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "ihmRy7p2rsOySjup", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "H0d05qae3oUNPRlO", "policyId": "hrcEX4YOFaB1eTrs", "policyVersionId": "Q0MHs0iFCXHigcxQ"}, {"isAccepted": false, "localizedPolicyVersionId": "F7TJ3cVGzUyOp5o9", "policyId": "Gh4h103Cv3iVOAGq", "policyVersionId": "d2SLMLBtjaY0Mfb2"}, {"isAccepted": false, "localizedPolicyVersionId": "VFlzVd9z8h5Q6qWJ", "policyId": "qdkNPIYJNhLeSlDO", "policyVersionId": "knPeSiqvYaO3PzlA"}], "authType": "MjXBg721c2zfQL3V", "code": "Y2QO0QyrkQvgYtcJ", "country": "E6IU2E1nE8eMd8GI", "dateOfBirth": "SZFW19rCXJgcgU17", "displayName": "fsaqRIFRHFtDeXoI", "emailAddress": "WfrhfNbJdOO8dz1M", "password": "xLtiTK45074wsyRX", "reachMinimumAge": true, "uniqueDisplayName": "GV9KXmSsrDNfIV31"}' \
    > test.out 2>&1
eval_tap $? 257 'CreateUserFromInvitationV3' test.out

#- 258 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "JD3d11Ah43iadC1Q", "country": "Sp8KwT32CC0oqfCU", "dateOfBirth": "EayztuVdiWc3awwZ", "displayName": "hRaMHoIDSqKFpuLp", "languageTag": "nWxzVhJdlbTIzMWt", "uniqueDisplayName": "ekc44o6HsLFFEs1s", "userName": "a32G05tZoXIA6jJe"}' \
    > test.out 2>&1
eval_tap $? 258 'UpdateUserV3' test.out

#- 259 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "xLEXkopTNy33WSvt", "country": "74cLFAsSPXuU1AJR", "dateOfBirth": "C4bv41RDTiWzAoLE", "displayName": "VOhruaUQP6IAZxPg", "languageTag": "vLEkSEMJACuJ3wIR", "uniqueDisplayName": "O55MUgOk3kNG5CRT", "userName": "eWISnKQZY2p7k4PB"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicPartialUpdateUserV3' test.out

#- 260 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "Ik57jWvTmFhqmajY", "emailAddress": "KBcscU9CAhHEEeNU", "languageTag": "Fq7BCGG7uHkhqpGE"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicSendVerificationCodeV3' test.out

#- 261 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "glbYnHHJOS4Z8Lwf", "contactType": "lde4Z7QpA7NdRnet", "languageTag": "ZskSqWPZ2ihTQ1iz", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 261 'PublicUserVerificationV3' test.out

#- 262 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "gz5scu9euG2gNncr", "country": "vAN6YNGKFGp77K48", "dateOfBirth": "vJJrUjzoOLvO3yAv", "displayName": "JlvCrpwl9KMfdBCV", "emailAddress": "MB5k6nUd6RMpfGSd", "password": "TWa602ewBbtTVuJo", "uniqueDisplayName": "oLT5PzYF2PZA4Xsq", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 262 'PublicUpgradeHeadlessAccountV3' test.out

#- 263 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "pc218zJVzGd0IH1T", "password": "McXR8pmTpIzCy6a9"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicVerifyHeadlessAccountV3' test.out

#- 264 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "u7TLKUpey0E6CMxV", "newPassword": "y1dkG1hjraHjWgts", "oldPassword": "71xGd3IcCHQbzdy5"}' \
    > test.out 2>&1
eval_tap $? 264 'PublicUpdatePasswordV3' test.out

#- 265 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'yLiLpN1Qbf2J1b5O' \
    > test.out 2>&1
eval_tap $? 265 'PublicCreateJusticeUser' test.out

#- 266 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IpUAbjQLK898q1J2' \
    --redirectUri 'PcHqyzGnlO1e4lnS' \
    --ticket 'qxnqf9C1f9LYpxKF' \
    > test.out 2>&1
eval_tap $? 266 'PublicPlatformLinkV3' test.out

#- 267 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GvXd7Z7zOBD1EklY' \
    --body '{"platformNamespace": "05qYTxtU11vgpDao"}' \
    > test.out 2>&1
eval_tap $? 267 'PublicPlatformUnlinkV3' test.out

#- 268 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eHUWLobH64w4Fci9' \
    > test.out 2>&1
eval_tap $? 268 'PublicPlatformUnlinkAllV3' test.out

#- 269 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'we4GHu4saCwH5HZj' \
    --ticket 'ac0wcEnWAATF3t1B' \
    > test.out 2>&1
eval_tap $? 269 'PublicForcePlatformLinkV3' test.out

#- 270 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'xY6EAxT2DEYLUgy0' \
    --clientId 'AIXok96Jx4S2MXHu' \
    --redirectUri 'qZX4Pyf82FAeOsSr' \
    > test.out 2>&1
eval_tap $? 270 'PublicWebLinkPlatform' test.out

#- 271 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'xgdTJlhmGFvr8uuw' \
    --code 'nPa28TmKVHqew6uy' \
    --state '2NcR5skc0qAsckyY' \
    > test.out 2>&1
eval_tap $? 271 'PublicWebLinkPlatformEstablish' test.out

#- 272 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'x21oqciB3xvBdcfE' \
    --code 'YAeDZUqUWUOjWDg2' \
    --state '7pp71i2Vsq5AfXye' \
    > test.out 2>&1
eval_tap $? 272 'PublicProcessWebLinkPlatformV3' test.out

#- 273 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "Rnio4SyqieK96xSZ", "userIds": ["pggl6WYmIAdSivHm", "mCVBUcqa6HmGgotX", "IdmEM3LbWx3Z7xwH"]}' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUsersPlatformInfosV3' test.out

#- 274 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "5F0kcyOBQLkCnTZW", "emailAddress": "bJAfPLCNH1lIZ1I0", "newPassword": "DEb83XbSJeGoYDO7"}' \
    > test.out 2>&1
eval_tap $? 274 'ResetPasswordV3' test.out

#- 275 PublicGetUserByUserIdV3
eval_tap 0 275 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 276 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LndySpwP6IlMn48a' \
    --activeOnly 'true' \
    --after '9kpoyI6buLQjfLSd' \
    --before 'N91jNOisNkP6sejd' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 276 'PublicGetUserBanHistoryV3' test.out

#- 277 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rImG5C1kLcEp4xY6' \
    > test.out 2>&1
eval_tap $? 277 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 278 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qbjmTwOZwSaj2g0i' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetUserInformationV3' test.out

#- 279 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZFy8SrkiGjcscx3K' \
    --after '0.3000891767226689' \
    --before '0.8813027348268974' \
    --limit '66' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetUserLoginHistoriesV3' test.out

#- 280 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FzUvz3UaI5wJIjDm' \
    --after 'r1oTHfTsu4ATJryu' \
    --before 'loM0cWNysbSZVsOb' \
    --limit '72' \
    --platformId 'fZMC0b5JKzpemS40' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetUserPlatformAccountsV3' test.out

#- 281 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '08vQAOtxXmU0FRi6' \
    > test.out 2>&1
eval_tap $? 281 'PublicListJusticePlatformAccountsV3' test.out

#- 282 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'd4Vv58WcMg3z89kA' \
    --body '{"platformId": "1ljtX34EyzoXB4GX", "platformUserId": "0vWOQ2q5R5RTOmbM"}' \
    > test.out 2>&1
eval_tap $? 282 'PublicLinkPlatformAccount' test.out

#- 283 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'wAgPK63uLtrsPPIy' \
    --body '{"chosenNamespaces": ["LKab6hyrzUJYdblF", "tR98wyLOpLDL13pD", "tV7dAVUgc8xkQ0F1"], "requestId": "XoC2SIZoAwJLysha"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicForceLinkPlatformWithProgression' test.out

#- 284 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xYyoQiqXC2rbhMkH' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetPublisherUserV3' test.out

#- 285 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uEUehqGWnBDXRQ23' \
    --password 'rs8BTXdtbNleffDP' \
    > test.out 2>&1
eval_tap $? 285 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 286 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '3P3jJUvv3OiBI2An' \
    --before '7C41k0Shfp1iYhQn' \
    --isWildcard 'true' \
    --limit '78' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetRolesV3' test.out

#- 287 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'XKHID0lRKXwXtKoj' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetRoleV3' test.out

#- 288 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetMyUserV3' test.out

#- 289 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode '57zf8sqXey7bbicW' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 290 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["V9ipRiOsCagsSJZw", "3ejirrJH75CReacR", "rGTaXI7o2OjMpiVO"], "oneTimeLinkCode": "PmVcGvL7kWp4WvS7"}' \
    > test.out 2>&1
eval_tap $? 290 'LinkHeadlessAccountToMyAccountV3' test.out

#- 291 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "jJL9MMc5lvOXe2ZT"}' \
    > test.out 2>&1
eval_tap $? 291 'PublicSendVerificationLinkV3' test.out

#- 292 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '40mRuwymvVuIUI4m' \
    > test.out 2>&1
eval_tap $? 292 'PublicVerifyUserByLinkV3' test.out

#- 293 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'r2zbyWtn9arIubHc' \
    --code '3nuQtZwCFbWS24H0' \
    --error 'prGVfPGxYsYiIYYb' \
    --state 'sWFYCvQcny70I94R' \
    > test.out 2>&1
eval_tap $? 293 'PlatformAuthenticateSAMLV3Handler' test.out

#- 294 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '0SGhnChSP1HmrIUm' \
    --payload '02WKpKOrhGJ4ZQVF' \
    > test.out 2>&1
eval_tap $? 294 'LoginSSOClient' test.out

#- 295 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'AEhuPlatkMcoTlvA' \
    > test.out 2>&1
eval_tap $? 295 'LogoutSSOClient' test.out

#- 296 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'FBx6rOQnN88pIXKE' \
    --code 'g5wEyjYkny6Gsx0Z' \
    > test.out 2>&1
eval_tap $? 296 'RequestTargetTokenResponseV3' test.out

#- 297 PlatformTokenRefreshV3Deprecate
eval_tap 0 297 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 298 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'O4Jh5OnMUImBQcRw' \
    > test.out 2>&1
eval_tap $? 298 'AdminGetDevicesByUserV4' test.out

#- 299 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'qO6aIO1LvlepeRDk' \
    --endDate 'xKTNtZjPvDaEJ9fW' \
    --limit '48' \
    --offset '99' \
    --startDate 'DpcheWa0RGV6CsDQ' \
    > test.out 2>&1
eval_tap $? 299 'AdminGetBannedDevicesV4' test.out

#- 300 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'd0MCF3qautcGeQIL' \
    > test.out 2>&1
eval_tap $? 300 'AdminGetUserDeviceBansV4' test.out

#- 301 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "qJAHpEiulgIwdsWh", "deviceId": "JO0akyDh0CUmLOpI", "deviceType": "ZvbnuZ7PgM9i0Qb8", "enabled": true, "endDate": "5qwCvObMch5ddge0", "ext": {"TlfiYKyvVqA5hmOf": {}, "Ss8Te9APJTPUjTkj": {}, "cD7XwBzrxw8Tcixg": {}}, "reason": "5ssMTSGgiZmX3ebL"}' \
    > test.out 2>&1
eval_tap $? 301 'AdminBanDeviceV4' test.out

#- 302 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'pnxWFIAuX5xwvKMP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 302 'AdminGetDeviceBanV4' test.out

#- 303 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'CpHsUOcGk2cK3jOe' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 303 'AdminUpdateDeviceBanV4' test.out

#- 304 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'rdnIVrsQzSZAkXVw' \
    --startDate 'WtPlRZRQnqJfQiFT' \
    --deviceType 'K6TAqsLxJZRKtWG5' \
    > test.out 2>&1
eval_tap $? 304 'AdminGenerateReportV4' test.out

#- 305 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 305 'AdminGetDeviceTypesV4' test.out

#- 306 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'rS88iGTrx6kw1876' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 306 'AdminGetDeviceBansV4' test.out

#- 307 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'uegFA4EOMtjWbThL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 307 'AdminDecryptDeviceV4' test.out

#- 308 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'yQpclJy3luLcfL1N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 308 'AdminUnbanDeviceV4' test.out

#- 309 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'lQAkmnugK2OGuTx9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 309 'AdminGetUsersByDeviceV4' test.out

#- 310 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 91}' \
    > test.out 2>&1
eval_tap $? 310 'AdminCreateTestUsersV4' test.out

#- 311 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "vP5bvq6u90d91wYN", "policyId": "m6qjgHI4D9Z1FZKy", "policyVersionId": "KT5pw3HJOFL8VsKI"}, {"isAccepted": true, "localizedPolicyVersionId": "vgehamb8YAfBkV9Q", "policyId": "JDCatfvlHIC8PDUO", "policyVersionId": "EyovIAHaVKfsrVIw"}, {"isAccepted": false, "localizedPolicyVersionId": "csGATgIk2xdc4JFW", "policyId": "uMRXrHGnjCxaTIfv", "policyVersionId": "mGqk5k7yLTrX28oM"}], "authType": "EMAILPASSWD", "code": "T0Mye0AIrBOKX9Gm", "country": "12J5bEQzSRRkdY2u", "dateOfBirth": "9RcCn1Iq9EpdboVD", "displayName": "3KxmAON33U2lmz37", "emailAddress": "EtXhwEQAu4XLNrxq", "password": "YVuarTi2YnQbwYYc", "passwordMD5Sum": "H5P8bPYr4qzNZwLo", "reachMinimumAge": false, "uniqueDisplayName": "IasAJfLroisCTwu0", "username": "BYQv6sS7PIv2Cdf8"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminCreateUserV4' test.out

#- 312 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["3Ok8zm88kcQXghDz", "RXtdebneKNI4IR7v", "7cfSPA17IlpBgzxr"]}' \
    > test.out 2>&1
eval_tap $? 312 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 313 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["c9gPsm0UrDm7A4qn", "ZWW7VMGlwHX3KNjO", "T2OTDqgNGvvNsA6g"]}' \
    > test.out 2>&1
eval_tap $? 313 'AdminBulkCheckValidUserIDV4' test.out

#- 314 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'uoCKa1F4LEK0sIkk' \
    --body '{"avatarUrl": "W2gdjxQWFBx2u4DU", "country": "alC40hSmFOiOj5GE", "dateOfBirth": "534GC84zoXgiIIBe", "displayName": "u9aIZ4fsBoMkzsD4", "languageTag": "hXqkwIrhzIhey3jY", "uniqueDisplayName": "4aE0NK2zTSYeO5ZF", "userName": "b0oZrhJ7rkLAq6hJ"}' \
    > test.out 2>&1
eval_tap $? 314 'AdminUpdateUserV4' test.out

#- 315 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'fDtf1vPcEOboMIKA' \
    --body '{"code": "lesBkXjLjn7cVEZY", "emailAddress": "I75G2Z1PHXo4OIxE"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminUpdateUserEmailAddressV4' test.out

#- 316 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'SNzCpTEoADocmPGO' \
    > test.out 2>&1
eval_tap $? 316 'AdminDisableUserMFAV4' test.out

#- 317 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'KZbCspCvSSMAkAwX' \
    > test.out 2>&1
eval_tap $? 317 'AdminListUserRolesV4' test.out

#- 318 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'WHudnlW3VTj4xbW9' \
    --body '{"assignedNamespaces": ["uv93T0UJLNLuZ38s", "cHFGbEcx0j4j4XdP", "kKhmihYg2IzF1OIv"], "roleId": "kHtXNK61uV7I69Je"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateUserRoleV4' test.out

#- 319 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'gHfKGuqQDhm2rtle' \
    --body '{"assignedNamespaces": ["LUJ6pmUqNEIY5Hb0", "p4L8G5e0NLT4deFD", "NDzO55jakQHWke6r"], "roleId": "6s4lJYFUaFAGmqMh"}' \
    > test.out 2>&1
eval_tap $? 319 'AdminAddUserRoleV4' test.out

#- 320 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'gMHt6sj499jcJ43e' \
    --body '{"assignedNamespaces": ["z6ni4tjMR1A5TrXs", "2lQJXZqp3cNLWR9a", "14DndrS6BzqfW6ZB"], "roleId": "ATg8nmgGbZ0G1qrw"}' \
    > test.out 2>&1
eval_tap $? 320 'AdminRemoveUserRoleV4' test.out

#- 321 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '72' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 321 'AdminGetRolesV4' test.out

#- 322 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "LRI6qWRsiVdxZtky"}' \
    > test.out 2>&1
eval_tap $? 322 'AdminCreateRoleV4' test.out

#- 323 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '2MlzrUpDMmLgZpTR' \
    > test.out 2>&1
eval_tap $? 323 'AdminGetRoleV4' test.out

#- 324 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '5wZRNzAXwmhgGwcP' \
    > test.out 2>&1
eval_tap $? 324 'AdminDeleteRoleV4' test.out

#- 325 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '5oy6At099W0Ab4ID' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "hwwCWpZy7K6bsZdi"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminUpdateRoleV4' test.out

#- 326 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'xK04HnSan7TxSWFC' \
    --body '{"permissions": [{"action": 74, "resource": "SZJA45a39Prg5Il1", "schedAction": 91, "schedCron": "aJaJga6WPl4ooynk", "schedRange": ["bMULmWAebsnoBa3G", "kOHYlUOC3XkPe9FJ", "w8VIaN2l4eIdYbJj"]}, {"action": 29, "resource": "VagjNQMXfkY83wcc", "schedAction": 59, "schedCron": "E2SJYEoNMcgoRFbC", "schedRange": ["SnnNy0TzZrqi4n9b", "HDs1Vu7NbKqE0U3f", "6mWIciysJ87DyYAk"]}, {"action": 95, "resource": "16zgyt7IhagSk6d8", "schedAction": 8, "schedCron": "L26yuP9t42UmAD30", "schedRange": ["yDF4va6KwTHI21WZ", "My8NgopqhN6AhlY5", "KB6ozdj8umrRbR15"]}]}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateRolePermissionsV4' test.out

#- 327 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'iRy2pABPKiUsyb0y' \
    --body '{"permissions": [{"action": 39, "resource": "EKhXSs3qtEGQyISP", "schedAction": 27, "schedCron": "uMHpip6aTxfcQJnA", "schedRange": ["Nd3U3vcM2ns6AdoC", "ZQXZsc9E5t5DQU4n", "PcyOw1pvQW3ENsDM"]}, {"action": 87, "resource": "bbNP1gW837JlL8qn", "schedAction": 71, "schedCron": "vPK0N9g026A7wzhe", "schedRange": ["G2Qp3LYzIC26EkuR", "OEWIwlfgOswEk6JP", "XSA0YZWaX4vShDS3"]}, {"action": 78, "resource": "4EoMtWFbFui8kDZY", "schedAction": 22, "schedCron": "5ZxWW8cPXb3xgFy7", "schedRange": ["excZvCWZzQZqHePf", "5ldQh76OwKA8rtdv", "NYqM7t0tMBQ1Fw5E"]}]}' \
    > test.out 2>&1
eval_tap $? 327 'AdminAddRolePermissionsV4' test.out

#- 328 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'YvRAVEgPy959Hab1' \
    --body '["i4MoMbOn8LaoaDy0", "JC36GfhB11ovGNhJ", "4e68ebdBBn8NuO3i"]' \
    > test.out 2>&1
eval_tap $? 328 'AdminDeleteRolePermissionsV4' test.out

#- 329 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'kYNKgeKoKPGTasu8' \
    --after 'QxTkR2e7MOzUtRoN' \
    --before 'ekHFYr36PAAcJvTX' \
    --limit '42' \
    > test.out 2>&1
eval_tap $? 329 'AdminListAssignedUsersV4' test.out

#- 330 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'hhMs7miEAeC2ZIod' \
    --body '{"assignedNamespaces": ["CUWXsLWPjPYa6rPP", "kbh1hDhYXF6u5U6g", "LVhXFR4MQHPRBavo"], "namespace": "1zgQJTdbfSvwudci", "userId": "LTwHtvJzdy5mSLjr"}' \
    > test.out 2>&1
eval_tap $? 330 'AdminAssignUserToRoleV4' test.out

#- 331 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'GbbcbcpYQlCHmG4E' \
    --body '{"namespace": "B7CAvbkNm596GUMy", "userId": "b7fG5KUdywW9rU8y"}' \
    > test.out 2>&1
eval_tap $? 331 'AdminRevokeUserFromRoleV4' test.out

#- 332 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["XPn2vOrVpAALWUMi", "vukxl6lPRmntLfJo", "JfZQtlWshFiFYoPF"], "emailAddresses": ["7LFRbyYlJhU9e6z2", "u5BNfTCUEjxxHRFm", "JFJ8r1kr4iyYv6dH"], "isAdmin": true, "isNewStudio": true, "namespace": "b9TxtJ7YyFKffJph", "roleId": "cNR4SVib91E4vyoy"}' \
    > test.out 2>&1
eval_tap $? 332 'AdminInviteUserNewV4' test.out

#- 333 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "ibFjoVe8MP8KCsfx", "country": "ZYTSh6LXjOt0hu5l", "dateOfBirth": "PDkKL0CECkMuGgyd", "displayName": "59FxrnLHZMJ3VKhe", "languageTag": "majrKbBafNs6YnKj", "uniqueDisplayName": "evNtFA6aMxJggjze", "userName": "muJ70TWLr6GSBAfT"}' \
    > test.out 2>&1
eval_tap $? 333 'AdminUpdateMyUserV4' test.out

#- 334 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 334 'AdminDisableMyAuthenticatorV4' test.out

#- 335 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'cwArVh64xQG3m4oO' \
    > test.out 2>&1
eval_tap $? 335 'AdminEnableMyAuthenticatorV4' test.out

#- 336 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 336 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 337 AdminGetMyBackupCodesV4
eval_tap 0 337 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 338 AdminGenerateMyBackupCodesV4
eval_tap 0 338 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 339 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 339 'AdminDisableMyBackupCodesV4' test.out

#- 340 AdminDownloadMyBackupCodesV4
eval_tap 0 340 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 341 AdminEnableMyBackupCodesV4
eval_tap 0 341 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 342 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 342 'AdminGetBackupCodesV4' test.out

#- 343 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 343 'AdminGenerateBackupCodesV4' test.out

#- 344 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 344 'AdminEnableBackupCodesV4' test.out

#- 345 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 345 'AdminSendMyMFAEmailCodeV4' test.out

#- 346 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 346 'AdminDisableMyEmailV4' test.out

#- 347 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'SFPYfvNUR67dJliG' \
    > test.out 2>&1
eval_tap $? 347 'AdminEnableMyEmailV4' test.out

#- 348 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 348 'AdminGetMyEnabledFactorsV4' test.out

#- 349 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '36yIEv6RtklHnLzj' \
    > test.out 2>&1
eval_tap $? 349 'AdminMakeFactorMyDefaultV4' test.out

#- 350 AdminInviteUserV4
eval_tap 0 350 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 351 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "seVlosXMvTTbk0Dj", "policyId": "yWItFVprE1fyjwF9", "policyVersionId": "ebOLuKSgo9u4W2eY"}, {"isAccepted": false, "localizedPolicyVersionId": "DA7eSm1kAro1Brfg", "policyId": "MW9O4ccdDYAQX2YH", "policyVersionId": "BSIebTgZ4U8z4e7B"}, {"isAccepted": true, "localizedPolicyVersionId": "67ym8BYYgt0mVrhY", "policyId": "SvGB2YQt17bSRQ5A", "policyVersionId": "Ke3bfIFwh0dL7ein"}], "authType": "EMAILPASSWD", "country": "bsZPvgVYBKNPxSyr", "dateOfBirth": "SODscRlDdcHVQVPH", "displayName": "ajSVmo1x39HDOGsn", "emailAddress": "RmOeco8ODHoNITNs", "password": "NiWRQQbnnNky4plz", "passwordMD5Sum": "yR8DT5NeuNfGImdn", "uniqueDisplayName": "WflmWyy2V07QF7ls", "username": "t7PvRba0214uTVtT", "verified": true}' \
    > test.out 2>&1
eval_tap $? 351 'PublicCreateTestUserV4' test.out

#- 352 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "FClYVzsyGueubBsD", "policyId": "ggyJFwksKCoK1Mz3", "policyVersionId": "huhFmVvGnzMSVzju"}, {"isAccepted": false, "localizedPolicyVersionId": "VZGsnrXhATNDwelj", "policyId": "6oiveB3ovIMJSbOe", "policyVersionId": "HuduHPRf8nf7qZ48"}, {"isAccepted": true, "localizedPolicyVersionId": "03ivkJNp7h0kw1a0", "policyId": "4G7VSGgzZTZpXfV7", "policyVersionId": "qh69obUi0J4Ar6RD"}], "authType": "EMAILPASSWD", "code": "QGmaYLpZDd52tbMt", "country": "eoRIvjXU427uPpdv", "dateOfBirth": "WpX4WkvG6NYCzpGN", "displayName": "Ir6RlfR9tNd0mp58", "emailAddress": "rDd3EDZeS2iSQeHO", "password": "9quHR1uJcPrrVn4H", "passwordMD5Sum": "Es7CzMXGX3vQSIDa", "reachMinimumAge": false, "uniqueDisplayName": "51hqxeiBGd5dsfq3", "username": "AvIA4XlOJbulgySJ"}' \
    > test.out 2>&1
eval_tap $? 352 'PublicCreateUserV4' test.out

#- 353 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'GthAA8BiI1rd1uH9' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "fcdj2KGWunFA3OEO", "policyId": "w3vbVcoQGyn7mYfq", "policyVersionId": "ueXkTtNxiSPwH0gj"}, {"isAccepted": false, "localizedPolicyVersionId": "E5wQqqgisCMeg9uv", "policyId": "7KZKnpfVmp7NsgW8", "policyVersionId": "GytotR0HynI51fVw"}, {"isAccepted": false, "localizedPolicyVersionId": "xVFYnfaUOXx86alc", "policyId": "7EPIc2qKOL6PY6Sy", "policyVersionId": "oCEqEXOIdRyiUlpm"}], "authType": "EMAILPASSWD", "code": "DJWUYaEiogN903Di", "country": "ZwnMVLQc6N7HrpnT", "dateOfBirth": "UdqDSLVih6gEfT07", "displayName": "wkWkiKrIffFi92Hk", "emailAddress": "z8fIyy7HrotjGJdF", "password": "PplPUPkK9IWYULH7", "passwordMD5Sum": "7b0E8HjjY8GoacW7", "reachMinimumAge": true, "uniqueDisplayName": "VH2O9rGKiwQ5Eejv", "username": "pLZtESD23PaEphFc"}' \
    > test.out 2>&1
eval_tap $? 353 'CreateUserFromInvitationV4' test.out

#- 354 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "ZawJqiS1I8fsq9cQ", "country": "GS5r7rvaZgtBn9Tr", "dateOfBirth": "QE61hNA31HWrJY7j", "displayName": "NdagYrEOauu1frqI", "languageTag": "F5qUw4JNGHNxdcBQ", "uniqueDisplayName": "hGAhVw2iEkRNphvm", "userName": "478SokBgrVINIgA7"}' \
    > test.out 2>&1
eval_tap $? 354 'PublicUpdateUserV4' test.out

#- 355 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "RlIhcOK6Km2k9ziE", "emailAddress": "cyTHS2hp4oFA7HB4"}' \
    > test.out 2>&1
eval_tap $? 355 'PublicUpdateUserEmailAddressV4' test.out

#- 356 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "rcCGctSJY78QRmLg", "country": "9fBelT72FXe1hyiJ", "dateOfBirth": "Ktx6Nbwum1wbqruL", "displayName": "K0oUH9sjWac2GbwF", "emailAddress": "V7SUcbry5jAcqvxo", "password": "OUKBInEEhQcFBKav", "reachMinimumAge": false, "uniqueDisplayName": "FhnyPdfYIt9851JM", "username": "Ss7315cSFFpljlCY", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 356 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 357 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "kL78S6o42rw8WAmq", "password": "YKj2DhddLfZRbZ7S", "username": "u1Lty6t2hz7nU07Q"}' \
    > test.out 2>&1
eval_tap $? 357 'PublicUpgradeHeadlessAccountV4' test.out

#- 358 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'PublicDisableMyAuthenticatorV4' test.out

#- 359 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'tfZY88aJoKvMX88m' \
    > test.out 2>&1
eval_tap $? 359 'PublicEnableMyAuthenticatorV4' test.out

#- 360 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 360 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 361 PublicGetMyBackupCodesV4
eval_tap 0 361 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 362 PublicGenerateMyBackupCodesV4
eval_tap 0 362 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 363 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 363 'PublicDisableMyBackupCodesV4' test.out

#- 364 PublicDownloadMyBackupCodesV4
eval_tap 0 364 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 365 PublicEnableMyBackupCodesV4
eval_tap 0 365 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 366 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 366 'PublicGetBackupCodesV4' test.out

#- 367 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 367 'PublicGenerateBackupCodesV4' test.out

#- 368 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 368 'PublicEnableBackupCodesV4' test.out

#- 369 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 369 'PublicRemoveTrustedDeviceV4' test.out

#- 370 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 370 'PublicSendMyMFAEmailCodeV4' test.out

#- 371 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 371 'PublicDisableMyEmailV4' test.out

#- 372 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '4HahJBdYvKnw9opQ' \
    > test.out 2>&1
eval_tap $? 372 'PublicEnableMyEmailV4' test.out

#- 373 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 373 'PublicGetMyEnabledFactorsV4' test.out

#- 374 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'KZQjmC0f4jrxXLCn' \
    > test.out 2>&1
eval_tap $? 374 'PublicMakeFactorMyDefaultV4' test.out

#- 375 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'pHrhCRnYIhuabmRu' \
    > test.out 2>&1
eval_tap $? 375 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 376 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "wTnU2HoeIQpsrgTd", "emailAddress": "OTNrBobjQCMnHQGw", "namespace": "w5QLq9we6P4PSPBm", "namespaceDisplayName": "ATSHdB88YmWVMPHh"}' \
    > test.out 2>&1
eval_tap $? 376 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE