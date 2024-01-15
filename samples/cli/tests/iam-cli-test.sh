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
echo "1..367"

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
    --body '[{"field": "NyNgD8peS5pDe1nN", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["JzelOxlTQ24X2kXV", "NXj4dQeiOOHIlaTu", "53CaKHkXvqUhZDxH"], "preferRegex": false, "regex": "Gz8y1BHkPVI3qcwh"}, "blockedWord": ["ctjFkQCz5hTv0G2E", "GxCXLa4UZNtTwQqu", "HV4rc2aoAQDLR5yv"], "description": [{"language": "1jghQP7EIjILvIK4", "message": ["8GBEXaf7W5dLTRyn", "UztFAsJP7uyW5iMK", "7dSPGcM0zPXkvNt1"]}, {"language": "wgFSiSwyGcDW5zP3", "message": ["6RRSCBshV7MOtTjm", "z0i4jQ68ic7VxG2b", "g9XpI3Uv1CTgOix9"]}, {"language": "v1B0JKj7IjoYW6hD", "message": ["UVtuY8xqLg1OzuVv", "GC0fooJoDPeCsiCh", "87LiVLr1MBKhbehW"]}], "isCustomRegex": false, "letterCase": "OLs0KVnltlbrGTij", "maxLength": 91, "maxRepeatingAlphaNum": 64, "maxRepeatingSpecialCharacter": 77, "minCharType": 57, "minLength": 36, "regex": "cH3ImxIxKer4Ofk4", "specialCharacterLocation": "JC61x9URyGytaII5", "specialCharacters": ["FcnsO2WWOaRZyZi7", "rIjPrB8bNa5ImTie", "XfSpIfRzsV9HL601"]}}, {"field": "VlgwiXnA7mpTiyLU", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["ow3hOXcf8yGgNwfP", "z4ccp0NwPuwcMTsK", "3nCjj6pIAQXmCSFw"], "preferRegex": false, "regex": "RdjSNcEO84YsMBj3"}, "blockedWord": ["mCT4CZ4iaOI5sOKD", "f4ePSsRcNlz7KfLB", "gA5fg0EMad7uRbnG"], "description": [{"language": "v8PUk39e63oQ7HXB", "message": ["EgUleSTBvMGeIPue", "cHyrv2fHsJEcJOhQ", "pszDPnNc83vuGANT"]}, {"language": "RSs7YotYYQLZrBy5", "message": ["3kxNhLBtWkZlXbi2", "K1cHRSO1f162ChZh", "ANI5rNg8NqMYgqrJ"]}, {"language": "kDr26VMOZ7HLJwE3", "message": ["22vYbsgPnkUCLcSg", "KZ0Tdmn80izQNX2y", "QKyQDJE5YD92fPc5"]}], "isCustomRegex": true, "letterCase": "gSsByjFFqKLFv5ux", "maxLength": 23, "maxRepeatingAlphaNum": 2, "maxRepeatingSpecialCharacter": 85, "minCharType": 50, "minLength": 18, "regex": "uB608wzCfklpvvQR", "specialCharacterLocation": "nnNAdagxsOiAB3MH", "specialCharacters": ["ture0TARt6WAA3HG", "8otX2yfH2JJ5dZlH", "w70Ty4Mkp1I0XJGZ"]}}, {"field": "pe0jv6qCrhZgoRyL", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["jWWkkefrKRd9vVJd", "5OyltezVlPoYrwdE", "TJe5cyWipiIPvGDB"], "preferRegex": false, "regex": "AaPYKxYV0UQxt6WC"}, "blockedWord": ["kjAwqBRWS8dcJvIR", "A1ReSClLWfCdvWTz", "UzUcGStw3sG96usQ"], "description": [{"language": "xGuRoV4eeeJcaN9d", "message": ["xTDl3C03MPKuQMpK", "KhirXzkv6Syl8URF", "PEdEKKICuwbSCxzx"]}, {"language": "ftb6VXAk6CKRHcZT", "message": ["yKTjCs1vrfo88WSs", "B6Ilq2MWnM1TvKgJ", "Xblo5KEh4XslEFQ1"]}, {"language": "YUs1YXuJ3gNnvc8p", "message": ["bltslv7j2hFNjfmk", "SWy9q4KN30pepC4P", "iTlHV5uL1yC2l8fo"]}], "isCustomRegex": false, "letterCase": "YrglKgGalIxdHK3u", "maxLength": 93, "maxRepeatingAlphaNum": 96, "maxRepeatingSpecialCharacter": 98, "minCharType": 62, "minLength": 34, "regex": "KsRU2ik4roEqU4Pa", "specialCharacterLocation": "V0T1TXJdenLKxkB6", "specialCharacters": ["kKNPQjgKik0megND", "XQCkiXVlVq170VQQ", "RzsBQvsaUF0mLjb5"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'X46uweVAmzNZFJ3i' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after '7HntjTKbUh30BL1W' \
    --before '5VtfeIrXLzxsyr7t' \
    --limit '43' \
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
    --countryCode 'itwcy7u6IqA5iyJN' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 92}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'nrjC4NuevOFGM8vA' \
    --limit '33' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "hxxNEEuk4lewfDLl", "comment": "D0wfsDBQ5Vih0Mcm", "endDate": "iUckpFRd1A2WiTHU", "reason": "obeWdn4vhpIygpXj", "skipNotif": true, "userIds": ["VsRbv2ma5hLumCOe", "pV6USG0HJaRKUvBU", "ty01or2sXKiYkXml"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "dGirKgBB2HCnhDpT", "userId": "SZDCI1WQ3kIe2TGS"}, {"banId": "QwVchPlkm9abW8dA", "userId": "zHEufGJTOsJREEFg"}, {"banId": "EfjUwVaWDQSgNluV", "userId": "xzCoZw6kveTjksRB"}]}' \
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
    --clientId 'SkYxV6vNZTKtfMAN' \
    --clientName 'vwpxeE7a43RsASYz' \
    --clientType 'tzkgnl6DVbNpkzO0' \
    --limit '83' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["6OUVvYewrBiOevav", "qAibpOyKM94LwrkO", "ypucrFEFagdKJLh4"], "baseUri": "9M6HoldZQvgKurfa", "clientId": "SL1U4uQ1izd6VFFw", "clientName": "mWDTQDSwlFg14xXk", "clientPermissions": [{"action": 47, "resource": "yRwielVyZl3ZinAP", "schedAction": 0, "schedCron": "GicKmi1n8qQzblrD", "schedRange": ["kRS9y0zQq7CDLO2i", "S08OvCqPBmKsinqc", "rdiMBoVNffTJSZb7"]}, {"action": 51, "resource": "AcRp6jRCCwnij9fo", "schedAction": 70, "schedCron": "makHn6x8TrvVo1Yw", "schedRange": ["xKuk2ucdoHviKGzg", "gkBn2uQHPW7svXKc", "u2ukJB0kNP6NRYQk"]}, {"action": 61, "resource": "bUXRZvwwLOF9UbvR", "schedAction": 41, "schedCron": "dYnuHbkMy0LUDtI9", "schedRange": ["fGHG8XS18QvFe7nf", "d96QSaHuKWZrpEs8", "fS4eTHQo5tFOWhmp"]}], "clientPlatform": "DywJv7uwg0yk0eQ9", "deletable": false, "description": "avy3UOuRlXVxtVds", "namespace": "pvvUL0ZzWZXeKFqK", "oauthAccessTokenExpiration": 75, "oauthAccessTokenExpirationTimeUnit": "Yfo0E9RfbcY8iFDN", "oauthClientType": "zAB7dXANwUcRH485", "oauthRefreshTokenExpiration": 66, "oauthRefreshTokenExpirationTimeUnit": "JO5OqBg76yajSfiP", "parentNamespace": "wNyH3yBFqjpL4WSk", "redirectUri": "UT0e1WX5NoeDHqQP", "scopes": ["wOhAgSqOLvVdbCCk", "BRh7cUxLIsynuo0W", "INCapIfTaVle4O8Q"], "secret": "MfwtZPhtgFcd5FwK", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'RwCc8vEbYx9BnkTf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'XoW6vN7YrnFwUagb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'jH8eNOK5E9AAcekV' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["X1BRuf8HQJCH4HMg", "PUafL0DsFx1lSSeA", "C4kX2plsUUB5lQ6B"], "baseUri": "3rAxhaBgHXvjrcJI", "clientName": "tRueV8d45Hx9zYnw", "clientPermissions": [{"action": 100, "resource": "eyEPbZ1S9CXqPwTX", "schedAction": 40, "schedCron": "K3dW8iIeV5L3LrIF", "schedRange": ["TF354pdqyWv61KnG", "S02KtMQBzbKFYqVz", "zL02knAqvwOttKOs"]}, {"action": 100, "resource": "d60mdQz5cZ38IgWe", "schedAction": 75, "schedCron": "kLcGwpWN05G5Px9x", "schedRange": ["EHZfVUJ6IicEYS0z", "pHDxSWQdHLAOgxlY", "nadksAx5ZNhgBr38"]}, {"action": 7, "resource": "0zS6sERgveTpkCgA", "schedAction": 98, "schedCron": "75HuLiA1OhRYvKMU", "schedRange": ["Qo6NdAKF6XBNfPR1", "PUCWUBwi8IRgfI1o", "rmUspgnucFKmvaHg"]}], "clientPlatform": "qPsxQFbM4rwp3GzR", "deletable": false, "description": "m4otMWEoG266YNmy", "namespace": "o83bwOnXhb85PQXM", "oauthAccessTokenExpiration": 73, "oauthAccessTokenExpirationTimeUnit": "DbBPbRQMYNKEF4Ip", "oauthRefreshTokenExpiration": 15, "oauthRefreshTokenExpirationTimeUnit": "zx3EKWKftY9JMOEj", "redirectUri": "k8IFnrl4fIUZ1ThC", "scopes": ["Iqkpl47QRE1C2kZ4", "OzFFdNGJfPp9i7EG", "bT3k3dBahxLLabqF"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'wDvpbdXtTAiarFxl' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 21, "resource": "vVOfBdALIbVtWiAw"}, {"action": 84, "resource": "EU5454VaQkOr7Uj1"}, {"action": 96, "resource": "IacCCP3z1ueMagYQ"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '82836rIq6eM2sDHK' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 94, "resource": "EzhOKHwUHBXJf4r4"}, {"action": 65, "resource": "HfRPtGwgmea94H59"}, {"action": 84, "resource": "daIVjrHkPC00v7A0"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '38' \
    --clientId 'bGEZ2XFK7yU9FVqC' \
    --namespace $AB_NAMESPACE \
    --resource 'OuWjlCoMCAhzLLmc' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'false' \
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
    --body '{"blacklist": ["WBDm2PbXD9keDm10", "b9w1cbxintdLVo3b", "Tblz3MCt6YRn40jT"]}' \
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
    --limit '32' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ug8S7BTbHyLJ376x' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Jhthx3bKPwh7svkC' \
    --body '{"ACSURL": "XqcIHI7gLOmFhbdG", "AWSCognitoRegion": "tQI7ymEvv05ntV4C", "AWSCognitoUserPool": "xznls5vU7HKF9eNR", "AllowedClients": ["MaLtShT43ZybvSjM", "CXwonAOz1fh80ILZ", "kUP7AETOErmHW0Su"], "AppId": "uITKygejU1UKVGXe", "AuthorizationEndpoint": "3wp58OmXb2rohem9", "ClientId": "IgBFd5SymvjiykJv", "Environment": "yLv6mshMowuwS89F", "FederationMetadataURL": "8BeK5GdfTkUaymL3", "GenericOauthFlow": false, "IsActive": false, "Issuer": "tDWezTbzDHNXQDn3", "JWKSEndpoint": "fFGfxVJIxzUUyMsl", "KeyID": "FGCYTdVs5G6KpxnV", "NetflixCertificates": {"encryptedPrivateKey": "w7JI5VM45MuzMmpa", "encryptedPrivateKeyName": "WaGSfScit2rGiJ0b", "publicCertificate": "3bd5XUy1hzdN05dG", "publicCertificateName": "RR0HDStZf4Nb7ZRR", "rootCertificate": "JGGbP5edvyNWhyjJ", "rootCertificateName": "HFeaA49E5PLqU5Bw"}, "OrganizationId": "sDbLa7ZR52eoEmb9", "PlatformName": "BP05s3qQCidCZ7qi", "RedirectUri": "d8SiuA5Z0yELy4d1", "RegisteredDomains": [{"affectedClientIDs": ["CPMXZtcGdZ5Hkcmu", "7stlBV5uiLV4gNBy", "b5SzY0rC6Y2DImiM"], "domain": "RJdBTkAZjnIg55gb", "namespaces": ["Gy5GfijDiChyn90s", "pqyV2gOaJz6PfhtS", "PpaB0IxGaX3DLU2n"], "roleId": "66WaZqusixyHASwT"}, {"affectedClientIDs": ["OfZjSq25VswoBqcP", "GUGTx568vtQAZDXk", "Y7PJbUzjVNa5ahuV"], "domain": "tmYrAICpIwEjikLN", "namespaces": ["sDMLPkGjwWjpSWOc", "I1Cv0TNn8ytY9AGU", "Zh1GKOijP6RtciI2"], "roleId": "Pr3uruqLaazf5PDn"}, {"affectedClientIDs": ["rg5aNGHV8KuGIsPY", "iYaR7Q2qsrOIEbjd", "GuayZoZj2a2mGUFI"], "domain": "scmacizizUOptQu8", "namespaces": ["alLVXitUH5GvTKxn", "5KXroYq7dFPPcUnJ", "5dvELHjTfVuZXuFi"], "roleId": "7rQsUAbJqIBZLbLA"}], "Secret": "WUzMdhBH3KkIZWWm", "TeamID": "PhGFL28exTJIjT8U", "TokenAuthenticationType": "QE5jgGCFnzfbZHC3", "TokenClaimsMapping": {"scP069i67ICUoFNW": "oPPkz9WfVSbgqeFB", "m7cN8xPvF4VzK8Y8": "VmGb10nPhn5NQHsK", "RKUeSQbshMEgDGlT": "KXcur5heXaEZ46jM"}, "TokenEndpoint": "HQ4t7K2KZYlVFR2N", "UserInfoEndpoint": "KVDV2EKZySfubafI", "UserInfoHTTPMethod": "9tlTDmtWVOtJuVwz", "scopes": ["VSKuNcixOR5MAl0j", "Abbdon3p0nNWZz04", "mVo1rX3We25ozEgU"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'J0WV2ZpgUpsHRjw8' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Uy8Lk78xuLIRtRrY' \
    --body '{"ACSURL": "OP3vcMemFRXL3vv6", "AWSCognitoRegion": "sDFTn7zI4IkTeYNl", "AWSCognitoUserPool": "Z61L9E5QwgoEH4hQ", "AllowedClients": ["yiUJP8NRVShrgLcs", "Au1dkuMdWH4A1Ttl", "ZTLil7bk6KYSYH9m"], "AppId": "uepZjbu0f3DOwMp7", "AuthorizationEndpoint": "TVuxw0FMJ4KSkcma", "ClientId": "5zMO6uQ2KZnJrKqM", "Environment": "raESjLH2ZV4XLo7n", "FederationMetadataURL": "4W1Q4TGxcKbRC0j9", "GenericOauthFlow": false, "IsActive": false, "Issuer": "tXZ4fMdZ8Fvz2Lko", "JWKSEndpoint": "Y37TGv1BYLnwuNVY", "KeyID": "4LOh6phBRWfLu4J3", "NetflixCertificates": {"encryptedPrivateKey": "4RIa1TxhnwxfMxdK", "encryptedPrivateKeyName": "oNEj007JXJkodLGZ", "publicCertificate": "CdYdy0Fim3i2GkBe", "publicCertificateName": "kJ9XKTDTB78XlENw", "rootCertificate": "MiNacXd6gtOArAf3", "rootCertificateName": "B7P30H6IWies3pa0"}, "OrganizationId": "Y6AZGCsdHBMb48rp", "PlatformName": "0uB6KfsQypGpx94L", "RedirectUri": "On47rkf6ekzbJrga", "RegisteredDomains": [{"affectedClientIDs": ["DdbaHW1tVt7uxOMv", "pPUMi2ovnuowwtaL", "KuuZPla9C45iQMjX"], "domain": "7zA3tUktm64BQoS6", "namespaces": ["dOWHyM31Jd49Et3h", "ozdUgFWu6I3bCHqQ", "D2jWf1cffbZrvSHJ"], "roleId": "xeLeOgYorIb1F1qN"}, {"affectedClientIDs": ["ZkBLzqwgOOgEfj1h", "NyyD5XMWULCdzvTI", "1RH2VSiRI4fOJWs3"], "domain": "8BXLBXfc3WxsyFtM", "namespaces": ["kTaHHgSdwDJDkS0Y", "1Yez0f08mp5fokpO", "k059MsjYnRXtBhNh"], "roleId": "WvDKAwTxOhUjaUCr"}, {"affectedClientIDs": ["CFH01mqnkVioI9UB", "f8FuijPify5JhZ2d", "oXztfrsupGxq09qy"], "domain": "hpCQfokkCXlmxJud", "namespaces": ["8V5KiwDUsN29WTeD", "LtwBnhPRDdBFCkUJ", "wtFVsORqbHDXSYWe"], "roleId": "RYBO6tQgoi10FRek"}], "Secret": "4tfhw9XJx9c9An1m", "TeamID": "CdaGZbteAjoXJx5D", "TokenAuthenticationType": "nYUtMqvZADw1pJ9v", "TokenClaimsMapping": {"woyraN91GO6hI99L": "z6mWkCwnjBRwTSn3", "RMV528csnqYFIt62": "huQsxe85upGVaPDR", "YV7fkJ2G4NNAKTtd": "BqEw5dYrskpjFBXe"}, "TokenEndpoint": "KnECxSXT4oY2Y2Qv", "UserInfoEndpoint": "FC0dprArCTxqY7Gr", "UserInfoHTTPMethod": "M1gCUxrdFbTmF750", "scopes": ["iuxWnIL4KRpTG7LX", "kpUiTdT6dWzO6E70", "bqT0WbENHCehdau8"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RvK3YvM5UUo7idYq' \
    --body '{"affectedClientIDs": ["Q9Hxi2I0DkppX4sX", "XuTdwT19fi577RFt", "vYO71zwPzLfzfbWm"], "assignedNamespaces": ["BQAxlxPAzRfwUFa0", "SAb3Xwph4D4yxnPw", "ZbVUzM6dn2sWbhcJ"], "domain": "lF1mYEQssugiJnkR", "roleId": "wh4PL9Q4vj3NmYHJ"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bHFJFkXqR4gIFOr4' \
    --body '{"domain": "feKpRkoASNfe3sFG"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '6fQhj6IjKyLRongy' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'zpmuqDp2l7NNKIer' \
    --body '{"acsUrl": "m5QJkw9Mxo6qAIxL", "apiKey": "JDhcBFY7PC0AJmbE", "appId": "B1iTgp0VTBjU6Zyr", "federationMetadataUrl": "Knya13znxaNyIxjL", "isActive": true, "redirectUri": "SWunFS3DLDiBgxHr", "secret": "TJUKTvA2rePp2wij", "ssoUrl": "G3tnfJMP387MaBn4"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0HG13KW8bhkb1ZHZ' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '5LfM0tbWjqQJibVe' \
    --body '{"acsUrl": "JGunEJLUS3aWm9LE", "apiKey": "X7o1WguF2UwhCOop", "appId": "dJWjW7HAe3EqLjLQ", "federationMetadataUrl": "hTdfOfwHOuqiujHc", "isActive": true, "redirectUri": "oL1d76KG4BlWqiAv", "secret": "pK8TKLjFRWNQKXjB", "ssoUrl": "1G365YGQVSZ7sy0E"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'M0waKw96H0XzTTkO' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["XQvoNv6k2Pgi43Sx", "leCbENS7C1Vf5cJk", "5Iw0ckqSCR5TalC2"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'L5bEMCLTPGukZ1xx' \
    --platformUserId 'fRFuC0nSZo4b5nTe' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'X2gwNEMwPv9TR9dN' \
    --after '59' \
    --before '58' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress '2X3yapmczpZa8HeX' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'hFZ76RKMUnTFzjZS' \
    --body '{"bulkUserId": ["NO7h72kwYclBicCO", "0e3HR02uu3yNX8oM", "d96h95ur89HuWGSw"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["dXMy0A5jBHYTjLSg", "N7ncDkBrK1lo8X1I", "ZJkR5pz35niMYkEq"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["51qZzgLObHh0hYti", "tVES4Sxh2dFHwUNu", "QqWpQIIF4CHkGVbo"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["yrN3fGhB5JFBKU27", "u8m86u2bZE1APj5K", "eQLGHvw9ngLgIOy2"], "isAdmin": false, "namespace": "S1uUBexkBpd4736h", "roles": ["Jpsot5yFJuVr91JM", "ZQriwhRVdjrHYq6G", "StCFYdikm93Yz5Nn"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '27' \
    --platformUserId 'oIWuzd6Q0R05mZvM' \
    --platformId '6wyVth0AAbL6H2iO' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'LwAg3DWDIVIyR01m' \
    --endDate 'zPbfLIbeM3FWuur0' \
    --includeTotal 'true' \
    --limit '79' \
    --offset '42' \
    --platformBy 'WHZLyBIGEiQvxfyl' \
    --platformId 'oiGMZaVnhNFyYEHF' \
    --query 'RXTzWfJDdJej8EMB' \
    --startDate 'cbgLPQra6F6F7PF3' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["rzahkveJMgGGUhbL", "6SxFPDbSqaQFrmCy", "G6Da7kxZMAGtj4l9"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eixGcTZR4QdssSF3' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SeyfCdLQFukhZpNq' \
    --body '{"avatarUrl": "jWUTYVLDIqavX0G8", "country": "Jrmo1xyZKXA58ZDO", "dateOfBirth": "6FNqnunoG8PjS9Zo", "displayName": "g5wobQMu22EtCAh2", "languageTag": "2gU4HafjZvCxAbYz", "userName": "5acHQDmiRWZIi7Yx"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId '8uJBSXzNnS4mZKIv' \
    --activeOnly 'false' \
    --after '1mQqVlGXF5S6m7UY' \
    --before 'kQlxPUmUby3EhB8L' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BpcWmFju9knaOO1Q' \
    --body '{"ban": "ahKMGnTaLbooHXCU", "comment": "jKaJjQyTJg1PIQJB", "endDate": "SI2Q2Co3KoUMX1Sn", "reason": "H861BnERgutR6KTv", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'wUvHCZlM5M2dun6M' \
    --namespace $AB_NAMESPACE \
    --userId 'zp00UzfKMYA98jli' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'N5HxfbMjyNRx0wo1' \
    --body '{"context": "O8Vg8AJkEdULAcrr", "emailAddress": "TOLDazmFOuvh19ET", "languageTag": "cpwBkJi4DFNRgimW"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Tf2dKOQcFx18LMKD' \
    --body '{"Code": "HcUWQoi30PzQiLl8", "ContactType": "vpRNDo4Fv7Gw6ba1", "LanguageTag": "L2jGRUF9KT2JoWVd", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'lgkI5NyVDUDe2rfS' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kEvpQphjvqpfoCup' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZR0PFm3SqkDFbDFW' \
    --body '{"deletionDate": 46, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'apMXMxmsDjN7mcOJ' \
    --body '{"code": "9UdgmUbL5614S5oY", "country": "Q9tXWk8MpbTqsc8z", "dateOfBirth": "hr69aJv2RdOxXeaC", "displayName": "5kSXnmTQJioB1E8i", "emailAddress": "JCDekAk2XFxL4dEV", "password": "Xh3oHzD77XwtBfnR", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '4zuqCHSHkEFELchG' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pY0tIXvZS8ceLujR' \
    --after '0.43097822059481405' \
    --before '0.3992166647707237' \
    --limit '95' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZzaoLly98zJ9lhDM' \
    --body '{"languageTag": "H5qpFh3yln1JLBFH", "newPassword": "OO7o0gdFmWAsOCf6", "oldPassword": "WjcSpUAwOWLGDaoC"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aGpBv5nU5QljaItG' \
    --body '{"Permissions": [{"Action": 96, "Resource": "8neGZP3OUhQKWNQd", "SchedAction": 75, "SchedCron": "B2BcZ6mcE8cpvapq", "SchedRange": ["MdyU5rmwkC5AQyHg", "zjocccYYDlskvlbq", "svpdwOtuDqx7HBMQ"]}, {"Action": 70, "Resource": "DbTdWeJOhn5mcNj9", "SchedAction": 89, "SchedCron": "mnr5tahr0Rmjommp", "SchedRange": ["UvPUW1FzV16Vt6z0", "bpLk1bhVV0llQvMA", "kD9FYhS8SS0E4ofe"]}, {"Action": 86, "Resource": "76RKJVby0NJYtLwi", "SchedAction": 59, "SchedCron": "m7Qk7a4v5KptySNV", "SchedRange": ["m6IsZacYPMKWhsH0", "stks3GqSzHkH5a7o", "nRxRhlf4aCUEcBz7"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GUh4HqB7mWhz2zlJ' \
    --body '{"Permissions": [{"Action": 51, "Resource": "Hn5B0j3K6wtFSrgz", "SchedAction": 15, "SchedCron": "dYtriKu9418BFFYp", "SchedRange": ["tzb4OEM3Lvhe172P", "AQ5jAVK8Q6rnsvGF", "X65JjprOJX6YdTKU"]}, {"Action": 77, "Resource": "fBX5NY95ayZAy9gS", "SchedAction": 61, "SchedCron": "QQgdIx83vQ07fzSS", "SchedRange": ["RGiTOwY8FdhY6pKj", "ZQwYiuPKwC5Mckgt", "AuR4ovAiRHYIE9aE"]}, {"Action": 25, "Resource": "uZ664ajxR125T7KM", "SchedAction": 96, "SchedCron": "EW3TPo75RjiyfhYX", "SchedRange": ["zjElbiu96q8pcpBE", "F7qY8eqTFH6I8ZQs", "tjagZMllw97EC8U3"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zgtLckcFHarEi0vf' \
    --body '[{"Action": 93, "Resource": "iWa2bqjniBV2iACU"}, {"Action": 44, "Resource": "YCdIZQP7xyF8CTeZ"}, {"Action": 22, "Resource": "Z2jE3U6nzDDnyilp"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '97' \
    --namespace $AB_NAMESPACE \
    --resource 'Y9cRufYuItzT80go' \
    --userId 'wfZwgB9CYxyxBnQo' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iNwuM1qZam07RZF5' \
    --after 'HACos9WbpGSxMZ1B' \
    --before 'eYmpnOdKPTR92hD6' \
    --limit '70' \
    --platformId 'l8h0TsTDrGCxo1aQ' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'W0RgG7oEJaQreMKV' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'EgZQudBebH9At7Zx' \
    --userId 'E335868iCHO9JBH1' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'j5Jz8k4lQZ78n5Mf' \
    --userId 'KAeFUYXQyttEhxkW' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'nPPHLsz8vBtu2S9C' \
    --skipConflict 'false' \
    --body '{"platformId": "aYuNlI78Jh4dJXwD", "platformUserId": "Hmr4CKuKF8hHUsKn"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'X0fNiKw3jZXnQscV' \
    --userId 'oiFQjndgu4CbyIUv' \
    --body '{"platformNamespace": "cd1sMcIluepgLZrj"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xLeCu6hQjoIcRMTq' \
    --userId '8eyfTqzm5aNNxgq0' \
    --ticket 'I0UAXif2MmJ6ldEz' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wVTd6gdiJYhvRtz4' \
    --userId '7rLvg0TIaQfLYrr4' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 182 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jkcbFiTUm3haQjVw' \
    --userId '5rD8wcHKgKhYvJ6N' \
    --platformToken 'JEbdBLJ2hVbDxxs6' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 183 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'VA76vxVyPTqwMGu9' \
    --userId 'G08S9BmTyv6URy19' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserSinglePlatformAccount' test.out

#- 184 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FUOf41cnzwdAD8Ip' \
    --body '["BHqMmA6p7Evfm7eB", "NI5mPPsAGshtS74W", "UMfN7F1mrWSn2MRH"]' \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteUserRolesV3' test.out

#- 185 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wosDHLwQ5p6hgPiY' \
    --body '[{"namespace": "ZKHoKOn7fv4KRvu6", "roleId": "YYjcvpKZ0YT6aSG9"}, {"namespace": "8AdrZXJA8Vr127cU", "roleId": "zevf4wZjyabbEK2s"}, {"namespace": "srUNQw316m0kcdGZ", "roleId": "4gygNh1JShtcqfFl"}]' \
    > test.out 2>&1
eval_tap $? 185 'AdminSaveUserRoleV3' test.out

#- 186 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'dpLZs8zNzPBcxZAi' \
    --userId 'JK57aMnLxNV3Isei' \
    > test.out 2>&1
eval_tap $? 186 'AdminAddUserRoleV3' test.out

#- 187 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'FZj9evMdEiyaYD8D' \
    --userId 'YqAJI6aLqCGobr4Q' \
    > test.out 2>&1
eval_tap $? 187 'AdminDeleteUserRoleV3' test.out

#- 188 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 't7m1WQhDo3ZtiWtC' \
    --body '{"enabled": true, "reason": "jQ5Si3KktmV56zJA"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserStatusV3' test.out

#- 189 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'SxRDqZKR1fHbrXMw' \
    --body '{"emailAddress": "RuaEvCnr4pJsDp23", "password": "OGW1mjBN3BYx4xRJ"}' \
    > test.out 2>&1
eval_tap $? 189 'AdminTrustlyUpdateUserIdentity' test.out

#- 190 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QuBF98LEjsug0re6' \
    > test.out 2>&1
eval_tap $? 190 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 191 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'OJkNVnu6O5hCCqLl' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "XQjTBCn3PC8EN1ko"}' \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateClientSecretV3' test.out

#- 192 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'EsOltaeQgpyXmkJ7' \
    --before 'qRZ9d2vuYm00TM65' \
    --isWildcard 'false' \
    --limit '17' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRolesV3' test.out

#- 193 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "w3kPhaxRhzLElBSW", "namespace": "u8qWfiovj1nonWAj", "userId": "urgBJ7b7UchYnBch"}, {"displayName": "KclAnZzWJ2g4mzua", "namespace": "qjPiLsaKPhZPwY8D", "userId": "TR80siinZGW9oVjc"}, {"displayName": "c2Rp5LJcWxHUkDpY", "namespace": "0mQl87Yn0HMRg1s7", "userId": "YuYEoAVRdmRusQFG"}], "members": [{"displayName": "JE1pRVvOnoHXi0oB", "namespace": "nho6oZYnDi2spWRW", "userId": "trqti4GHIsQGpAii"}, {"displayName": "ip5uD4ZaDXzYqS9R", "namespace": "X9fpQusSWk7kfDSV", "userId": "11kkwcOUi6mvnXxY"}, {"displayName": "zvwDxMEXtCcb1skN", "namespace": "z39NcMK1CKJjXeNe", "userId": "uWkGc4yfFPO8U9UE"}], "permissions": [{"action": 45, "resource": "RYLBUNAjP8p5nW6c", "schedAction": 82, "schedCron": "9TpGB4uMkvtdWNCV", "schedRange": ["oxEWVGDkYNN6RdTD", "VzXI9X88YQEu112I", "zhcMPScVWMck1J8A"]}, {"action": 55, "resource": "J1mc6zZIZP7Z2vHA", "schedAction": 13, "schedCron": "Gu1MUTqbxF5A1XLv", "schedRange": ["I1QKxL236r9AIfzp", "vD9fsC4aSMvhf3Lx", "pijRE5YC9gBdxuIX"]}, {"action": 93, "resource": "nr6VTQanaayBmPNu", "schedAction": 20, "schedCron": "ADAO5KPsf0JiSz8U", "schedRange": ["dmzCAiWOgb80vk3u", "86w1ipkzfc6A7DGp", "42tw2ATGjyeR8TYo"]}], "roleName": "jKKtK11gitr9RahL"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminCreateRoleV3' test.out

#- 194 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'JoCwJiXQugElYOMw' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleV3' test.out

#- 195 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '7H2VSfnjWdtbvMnN' \
    > test.out 2>&1
eval_tap $? 195 'AdminDeleteRoleV3' test.out

#- 196 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'zFPcjxLQtmedlWj9' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "DN1VEBaXT9NZ9zbN"}' \
    > test.out 2>&1
eval_tap $? 196 'AdminUpdateRoleV3' test.out

#- 197 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'qvyVsFy4qRwFHsSN' \
    > test.out 2>&1
eval_tap $? 197 'AdminGetRoleAdminStatusV3' test.out

#- 198 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'lixbcGKyCdxUbJIi' \
    > test.out 2>&1
eval_tap $? 198 'AdminUpdateAdminRoleStatusV3' test.out

#- 199 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'f0gGcej5lTe2DY6C' \
    > test.out 2>&1
eval_tap $? 199 'AdminRemoveRoleAdminV3' test.out

#- 200 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'VmHkeGSbgN7CFoFB' \
    --after 'gqOTPCGZe4wm5lVK' \
    --before 'gzniX1pXimD0O0R1' \
    --limit '84' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetRoleManagersV3' test.out

#- 201 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'uAw31yxBfnjQRRrY' \
    --body '{"managers": [{"displayName": "xVyytkC0FU5vOKw7", "namespace": "Gu8oLOUpzpYf5SfT", "userId": "PuxBPojZyRz6UB9k"}, {"displayName": "IARPwpgvH9TDaZqC", "namespace": "wZPofCGkhttZ4wQQ", "userId": "qvoOKql7d0oh8ZyC"}, {"displayName": "pv2tzdZDi1yEoYXz", "namespace": "SbRFGUCmYMjMdU19", "userId": "DOeG5sKRGhUji8I7"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminAddRoleManagersV3' test.out

#- 202 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'PXhZ4DUyK2BgGYXs' \
    --body '{"managers": [{"displayName": "AZ91VggyFJfDPW9m", "namespace": "3ltOBuesqza9XmNB", "userId": "TZRRmQzHOeg2oxsI"}, {"displayName": "VQlr8uvbWeb6IjX6", "namespace": "RZ6SVixR50YxXgyS", "userId": "RgTZVJQYfDySSmg2"}, {"displayName": "7aeYHe9pNwYIfFD5", "namespace": "PS7q5xxUR79V7DFI", "userId": "MHXcxwZHoCh4mmz5"}]}' \
    > test.out 2>&1
eval_tap $? 202 'AdminRemoveRoleManagersV3' test.out

#- 203 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'vpzftSp8ilKzSAM5' \
    --after '9q79b7XaTURGm22j' \
    --before 'T8ft6JNZUjjc3C1E' \
    --limit '52' \
    > test.out 2>&1
eval_tap $? 203 'AdminGetRoleMembersV3' test.out

#- 204 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'YbELk0AlvNhfjkVW' \
    --body '{"members": [{"displayName": "Fd0fQChDawBynB45", "namespace": "eOfT1q3oyohTIiY1", "userId": "6KJaX24g4sJbWMhs"}, {"displayName": "vVYOMUqPC12BHE8Y", "namespace": "Vq1P0ULjfBN0DAI8", "userId": "hRjNy9XPs1FhPGl9"}, {"displayName": "fx6fYF3rnDtFmsHK", "namespace": "xiPcK2qTjU1zUa3p", "userId": "67WTDOjYHax70G2R"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminAddRoleMembersV3' test.out

#- 205 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'AgfGvpUWWCCNoDvD' \
    --body '{"members": [{"displayName": "xI6xyOK0XJ3WPA5C", "namespace": "lr5ebeMZm5vMZYsn", "userId": "gUtvpipiNxKZ8HVi"}, {"displayName": "mGtT8uzog0eYhhFu", "namespace": "kvueAhFelY5mc1w8", "userId": "iks3FQJozsrcYfEb"}, {"displayName": "9m7LnTIr0aGvBsHK", "namespace": "ihzLGhkmeEeUY85L", "userId": "DFFqEavQRbwB0O9S"}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminRemoveRoleMembersV3' test.out

#- 206 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'LkrnYOYily4AlcAZ' \
    --body '{"permissions": [{"action": 36, "resource": "umQ0ltoipOjYZGHT", "schedAction": 53, "schedCron": "l8KKZPxDCglOfv15", "schedRange": ["2t2KxN90UJFXYCPT", "M7tjmeEc2k3LanZu", "GScAUUhF1vveQFtv"]}, {"action": 11, "resource": "yqRobGVvZDIQoCCT", "schedAction": 59, "schedCron": "zu6XIJMVVQ6EP8bf", "schedRange": ["rH37pszF5m5PqYts", "duW6deoAx8ihl3mU", "TGo5QVASFEWoYrS4"]}, {"action": 58, "resource": "xZi7aDd2pZsuk7Zm", "schedAction": 69, "schedCron": "r9SI9Ze20qKzPDYs", "schedRange": ["jFAcAI6wtwN9q42Z", "vaaT3pX4n8EP49eH", "eZql00jkXgf5cAPu"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminUpdateRolePermissionsV3' test.out

#- 207 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'jfpSK7AxKDrN8FLo' \
    --body '{"permissions": [{"action": 17, "resource": "H1eQECRr2SvspKJ4", "schedAction": 17, "schedCron": "TvAMR2DipR6Vyejo", "schedRange": ["Z7k07F6C3E8tScNJ", "AgeBKqSuvYZ9l7si", "X6JDsMNXnM69pGny"]}, {"action": 27, "resource": "G2G2jjDhB67JguU1", "schedAction": 100, "schedCron": "pKUUT5fWz2KMXE7z", "schedRange": ["GLS26e0HA0VstdOU", "wdILkWu1kksnDovB", "2R1RaOqXCzSBrLPq"]}, {"action": 97, "resource": "EyZioS0d1VyCaCam", "schedAction": 91, "schedCron": "TZotF7ENL6SY6Ei8", "schedRange": ["av4ViiG10BKmKTgh", "N2CIORis7eLCBPBl", "UIKls3RfWiIhQIIn"]}]}' \
    > test.out 2>&1
eval_tap $? 207 'AdminAddRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'Dv0t3mipNBkCvBvn' \
    --body '["ARnT18jczgOuBIbV", "0R5SdIkxfGPofm9J", "Moq9cn48g5jt3zJj"]' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionsV3' test.out

#- 209 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '51' \
    --resource 'yTfPSKDiX72g46Sn' \
    --roleId 'F92S3qMLpHsDdXQg' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteRolePermissionV3' test.out

#- 210 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 210 'AdminGetMyUserV3' test.out

#- 211 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'AtfcAek2j93nJAfN' \
    --extendExp 'true' \
    --redirectUri 'ExZnAanHKSQZLzB3' \
    --password 'F0cRCc7KHg76QwVg' \
    --requestId 'YXm1sKJVL1LCQAjO' \
    --userName 'unYKrg8wz9bWoEs1' \
    > test.out 2>&1
eval_tap $? 211 'UserAuthenticationV3' test.out

#- 212 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'JauvPCMX72wV2p2J' \
    --linkingToken 'qsJqFiRETP87FfCJ' \
    --password 'VdKEpI85t3WCoPLK' \
    --username 'rzpFy4eUL9wPmLSN' \
    > test.out 2>&1
eval_tap $? 212 'AuthenticationWithPlatformLinkV3' test.out

#- 213 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'Mp2hF0n7wb1fM6ES' \
    --extendExp 'false' \
    --linkingToken 'qSADxIqE8PAlfUWr' \
    > test.out 2>&1
eval_tap $? 213 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 214 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'KNRHWWj39myGCiJN' \
    > test.out 2>&1
eval_tap $? 214 'RequestOneTimeLinkingCodeV3' test.out

#- 215 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode '0joTSMUKI1K5uG4a' \
    > test.out 2>&1
eval_tap $? 215 'ValidateOneTimeLinkingCodeV3' test.out

#- 216 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'Xlo8fUzGxBfZvWlb' \
    --isTransient 'false' \
    --clientId 'tz17koH1UkeGh5rs' \
    --oneTimeLinkCode 'RHNu7krjKa8l3iWc' \
    > test.out 2>&1
eval_tap $? 216 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 217 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 217 'GetCountryLocationV3' test.out

#- 218 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 218 'Logout' test.out

#- 219 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'oltrwWA1PaxtpmMZ' \
    > test.out 2>&1
eval_tap $? 219 'RequestTokenExchangeCodeV3' test.out

#- 220 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'u01tqNmJMUKisCvr' \
    --userId '3reOMVsN1v7pfKIZ' \
    > test.out 2>&1
eval_tap $? 220 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 221 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'U8hNdZqU57SN6btT' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 221 'RevokeUserV3' test.out

#- 222 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'FIrq0IRM2YUlaXrb' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'isbv0oJTuGyVar0n' \
    --redirectUri 'mfxobqn51p3bfpVe' \
    --scope 'RjEdlAwSTWBJt1LL' \
    --state 'ydCV1pwHizKo1uat' \
    --targetAuthPage 'JyOu9R0NRgOdiSf8' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'c2TyC7B2ZFTwylJd' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 222 'AuthorizeV3' test.out

#- 223 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '4F8sJMzRNv6FitcM' \
    > test.out 2>&1
eval_tap $? 223 'TokenIntrospectionV3' test.out

#- 224 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 224 'GetJWKSV3' test.out

#- 225 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'EFnRSg6FYxobL6nO' \
    --factor 'CuVbtwO29c7omQVF' \
    --mfaToken '7KNoIlX8q2NEV0JQ' \
    > test.out 2>&1
eval_tap $? 225 'SendMFAAuthenticationCode' test.out

#- 226 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'XeWYUbrZ1shZL1rP' \
    --mfaToken 'N589Y4JeEq0LahRy' \
    > test.out 2>&1
eval_tap $? 226 'Change2faMethod' test.out

#- 227 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'BG9UT3aXZ9EoFE8g' \
    --factor 'TwyUlyeTNBc0CUFs' \
    --mfaToken 'Pf2HuY8PVMOFBHQe' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 227 'Verify2faCode' test.out

#- 228 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ytVTPShCcFigij8l' \
    --userId 'NP7BV8xVnaDNsPHt' \
    > test.out 2>&1
eval_tap $? 228 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 229 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'RwXmTAryZZ4ujILs' \
    --clientId 'geVebmwwTnun0Fab' \
    --redirectUri 'hop5sQOYE7Q4ADWz' \
    --requestId 'WCLk0lvxDFQSrAJK' \
    > test.out 2>&1
eval_tap $? 229 'AuthCodeRequestV3' test.out

#- 230 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'dHRaZT3DXpACeKf9' \
    --additionalData 'B17zMhmeT0tS3W8J' \
    --clientId 'JDdBQ7WhTEcsTWDW' \
    --createHeadless 'false' \
    --deviceId 'mpStmRD8MhFcbwRQ' \
    --macAddress '1vbJ8fhmWHkVhuZV' \
    --platformToken 'UdPH5Ye0m48CkCde' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 230 'PlatformTokenGrantV3' test.out

#- 231 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 231 'GetRevocationListV3' test.out

#- 232 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'pvXO6IWJzPP4MHhh' \
    > test.out 2>&1
eval_tap $? 232 'TokenRevocationV3' test.out

#- 233 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'pspc' \
    --simultaneousTicket '1exBc4CPgYQ5lLuD' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket '7cIaSss1DJDLPON7' \
    > test.out 2>&1
eval_tap $? 233 'SimultaneousLoginV3' test.out

#- 234 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'Izh3aShddkwYrejj' \
    --clientId 'G1je37pcdIvngaLC' \
    --code 'BtWdF2I0gfIVBoFU' \
    --codeVerifier '1NMw8nMmEDJR2uRQ' \
    --extendNamespace 'cB9vRLdcuz2v3sDF' \
    --extendExp 'true' \
    --password 'YcMt9DMRl4FMY1EH' \
    --redirectUri '9fxFgoXCGgXtNv0k' \
    --refreshToken 'NguIELYj6O1dDSDm' \
    --username 'hGRcf6jZ22w198IJ' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 234 'TokenGrantV3' test.out

#- 235 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'zibaRah0QepMNJrP' \
    > test.out 2>&1
eval_tap $? 235 'VerifyTokenV3' test.out

#- 236 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'nuHN7YSxEox4uRa2' \
    --code 'UPhWGSNikuDGHj7X' \
    --error 'J2ibqj06xzdNPGyf' \
    --openidAssocHandle '9pOAvhpwDtP2OPLO' \
    --openidClaimedId 'B5cx1ZSiiy0kF6Ge' \
    --openidIdentity 'wYktWy17SmzyiXsu' \
    --openidMode '74SCwWOb7w7DamYL' \
    --openidNs 'w6VS3UrlDJngADNy' \
    --openidOpEndpoint 'SNJAdBvi0WANuuA0' \
    --openidResponseNonce 'LusTolFyH3KYORbU' \
    --openidReturnTo '4qQMdDMokRTpcJRk' \
    --openidSig 'KAZ0WsY8iIX7U4XH' \
    --openidSigned 'jWP36bLdruRTNQZE' \
    --state 'rCDw8Gb5NBWnZYNE' \
    > test.out 2>&1
eval_tap $? 236 'PlatformAuthenticationV3' test.out

#- 237 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'Y9hCQhFzYAaMDsg2' \
    --platformToken 'GlafEMnmDWEUXhh2' \
    > test.out 2>&1
eval_tap $? 237 'PlatformTokenRefreshV3' test.out

#- 238 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'o7SxW09Bl3LzFbrm' \
    > test.out 2>&1
eval_tap $? 238 'PublicGetInputValidations' test.out

#- 239 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'SgZB4V0moOT0Fnjr' \
    > test.out 2>&1
eval_tap $? 239 'PublicGetInputValidationByField' test.out

#- 240 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'PqSubZ24Gwi0BZuI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 240 'PublicGetCountryAgeRestrictionV3' test.out

#- 241 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'PublicGetCountryListV3' test.out

#- 242 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 242 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 243 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'RZD9IvrexRwVL6fZ' \
    > test.out 2>&1
eval_tap $? 243 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 244 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XEYTY00KsePPATdY' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["SqIN9y4mVDBlply6", "fHVYyPIB11VCjHK7", "BFB5w8TTue7eySMe"]}' \
    > test.out 2>&1
eval_tap $? 244 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 245 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WtoHTZjMo5ZFnTb5' \
    --platformUserId '0JUo7nyqUJ0GXyGY' \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserByPlatformUserIDV3' test.out

#- 246 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'OlkL6qftO7zcps4U' \
    > test.out 2>&1
eval_tap $? 246 'PublicGetAsyncStatus' test.out

#- 247 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'HgoQjrB3NiLolizL' \
    --limit '8' \
    --offset '39' \
    --platformBy 'iPFt55CPxCjwBpye' \
    --platformId '5gvpRfXg6NBKkbNN' \
    --query 'r6HUXDGkKZwYQRjW' \
    > test.out 2>&1
eval_tap $? 247 'PublicSearchUserV3' test.out

#- 248 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "xAiVwWJhFSihWaiJ", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "5SppnZRimiTp0VRJ", "policyId": "mEZsYNzOtu3q5CO6", "policyVersionId": "zFPqYy04AUSnLQxN"}, {"isAccepted": false, "localizedPolicyVersionId": "AykTgFwSxLnxhhvw", "policyId": "abziNPG4QJx5IKYY", "policyVersionId": "G7M42IkLxFQxdCxM"}, {"isAccepted": true, "localizedPolicyVersionId": "bqPTaJy1qrET0PtR", "policyId": "BmHWhW6bCf5P2wW7", "policyVersionId": "cwmdGm9tPKkQ4dkd"}], "authType": "nZLd52nnebIH5bGB", "code": "y3EM1g9u0nwj6j8M", "country": "eVhZLZ3ZBswrU23z", "dateOfBirth": "6amuHRj7ri2OHqdR", "displayName": "zsMqJ2CrdArdrq3h", "emailAddress": "unzoC2MhUCrywx4W", "password": "saotPJsdFoc6xX7u", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 248 'PublicCreateUserV3' test.out

#- 249 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field '5GZT7NjaXYJzMBr4' \
    --query 'c4HSXBVIIY65DisO' \
    > test.out 2>&1
eval_tap $? 249 'CheckUserAvailability' test.out

#- 250 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["lr5gFEJhrVuOpC7m", "ENfRjJqgdFRHJFkc", "4E3KWY4ai8T6rBb5"]}' \
    > test.out 2>&1
eval_tap $? 250 'PublicBulkGetUsers' test.out

#- 251 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "1fmSoxjMpUyYzLjL", "languageTag": "5TD6kEqnN4Mi3GGO"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicSendRegistrationCode' test.out

#- 252 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "mJShABVUP2wYwbcO", "emailAddress": "eBNBjghrnO9DiW4T"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicVerifyRegistrationCode' test.out

#- 253 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "H2gUJdixr9xVuene", "languageTag": "NNtCcc3ORs0k0Y1y"}' \
    > test.out 2>&1
eval_tap $? 253 'PublicForgotPasswordV3' test.out

#- 254 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '9VVlPtNfEfytnVYG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 254 'GetAdminInvitationV3' test.out

#- 255 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'ygGLz78eksAEVXBt' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "wdGKVm3bRmyEuV2E", "policyId": "uMhRsjKvwG49AZFQ", "policyVersionId": "1WhBzhCcjuDqkKda"}, {"isAccepted": true, "localizedPolicyVersionId": "6xutDcvLAbNc8D4v", "policyId": "DjFyMCi01aKipDwj", "policyVersionId": "1ZCHSqnLQ3FNYvkj"}, {"isAccepted": true, "localizedPolicyVersionId": "OyxBpE73jrW6MrLz", "policyId": "0gCHY31ZoMRY2Nmn", "policyVersionId": "FGbjGViO5A65sCVj"}], "authType": "EMAILPASSWD", "country": "rzMOcmjC9vfiPhFQ", "dateOfBirth": "TjRldcGOcULLvStw", "displayName": "RmyBoEtSVttIkU2H", "password": "tayiBsGJaNKMdFYR", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 255 'CreateUserFromInvitationV3' test.out

#- 256 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "OLBPniwQ8mJrJYdd", "country": "nK4ONIoonxh8Ktbk", "dateOfBirth": "1oIK4jW99kJuNTEI", "displayName": "bpTni5xhw5suUiPq", "languageTag": "Uh25ULRASagVkBvd", "userName": "xV9cjfLFVcJ32YlB"}' \
    > test.out 2>&1
eval_tap $? 256 'UpdateUserV3' test.out

#- 257 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "wOzumWiyNLWurdBb", "country": "WITLsgdmhzkjAg7Y", "dateOfBirth": "qrnRirzPIuBb3OWr", "displayName": "jeF4WHUTtcD3nE2t", "languageTag": "BjvCj5H69S12gA0A", "userName": "mYeWPUz0TlL07rvS"}' \
    > test.out 2>&1
eval_tap $? 257 'PublicPartialUpdateUserV3' test.out

#- 258 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "eQ9xWCeZl2s4UYzR", "emailAddress": "thYTZI5G8LeTjRya", "languageTag": "2Tu86RBGnP834TZV"}' \
    > test.out 2>&1
eval_tap $? 258 'PublicSendVerificationCodeV3' test.out

#- 259 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8EPvGuevUDNxKTLt", "contactType": "G0I6zp1Ld5sTXEML", "languageTag": "KIY8r3SMA4JJiJIt", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 259 'PublicUserVerificationV3' test.out

#- 260 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "0MOBWFrnjLjLl62f", "country": "qV21F3CYnJDfhjyX", "dateOfBirth": "sXrT27c8ogL9mH4g", "displayName": "Q7ouXKco0MZGoBng", "emailAddress": "8XTyLkOU3rerdaSI", "password": "zRsWdGG0CGcpMZRo", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 260 'PublicUpgradeHeadlessAccountV3' test.out

#- 261 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "ullx94GeO6EcB7dG", "password": "6VdgGXiKs4zkQtd9"}' \
    > test.out 2>&1
eval_tap $? 261 'PublicVerifyHeadlessAccountV3' test.out

#- 262 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "j4KxaB3G9kbO09cQ", "newPassword": "hJ082LC3FuXyRuww", "oldPassword": "or0PfsjG4Dg0CRg5"}' \
    > test.out 2>&1
eval_tap $? 262 'PublicUpdatePasswordV3' test.out

#- 263 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'KexsjoJ8BGnSGRk0' \
    > test.out 2>&1
eval_tap $? 263 'PublicCreateJusticeUser' test.out

#- 264 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qThKLaXQarXdIu7a' \
    --redirectUri '9RwOcDVcCTg8fKUr' \
    --ticket 'iK4TnuZwoa9QIVYR' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformLinkV3' test.out

#- 265 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SG5A2Z1429NS2hiq' \
    --body '{"platformNamespace": "9tusZNcCgNh3Bxvd"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicPlatformUnlinkV3' test.out

#- 266 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GfUMxQxmd9iDZZKx' \
    > test.out 2>&1
eval_tap $? 266 'PublicPlatformUnlinkAllV3' test.out

#- 267 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7JKrJQ2uRntOwTaU' \
    --ticket 'KydZIxio3uVxIrPD' \
    > test.out 2>&1
eval_tap $? 267 'PublicForcePlatformLinkV3' test.out

#- 268 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'xzNcXGbCB1QH7FsH' \
    --clientId 'tlKl1P4Po3lNvRPX' \
    --redirectUri 'HxKPITZvTdaYEcDH' \
    > test.out 2>&1
eval_tap $? 268 'PublicWebLinkPlatform' test.out

#- 269 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'ckpqsOQxhMuCZOVD' \
    --code '6QuPiYxG5j60xTaE' \
    --state 'w2azvON2DVKFXZ1k' \
    > test.out 2>&1
eval_tap $? 269 'PublicWebLinkPlatformEstablish' test.out

#- 270 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Tlu4o4wyeiYKixOa' \
    --code '4IQs2LqHzk7OxvRw' \
    --state '7Tt6bDTvudoPcQ7p' \
    > test.out 2>&1
eval_tap $? 270 'PublicProcessWebLinkPlatformV3' test.out

#- 271 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "UKrN6HorSEyqRX3L", "userIds": ["mZKkXx1SoUxL2VVt", "X8HcOwP1fhO51vBm", "As4yw5sA6uSV3LKf"]}' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUsersPlatformInfosV3' test.out

#- 272 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "5Up4dkSvrAUiQe6S", "emailAddress": "hgZfOjmGcDa6Xd3n", "newPassword": "zIFeZQS16ah0xQE2"}' \
    > test.out 2>&1
eval_tap $? 272 'ResetPasswordV3' test.out

#- 273 PublicGetUserByUserIdV3
eval_tap 0 273 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 274 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SIEwIev2UvtP97Yz' \
    --activeOnly 'false' \
    --after '5ytIZFRfH7cFrVJ7' \
    --before 'oBLI7A718yMh3BBL' \
    --limit '73' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserBanHistoryV3' test.out

#- 275 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KdNkpV210zqN9Ush' \
    > test.out 2>&1
eval_tap $? 275 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 276 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '3Do2pPj8ZEKmliZ3' \
    > test.out 2>&1
eval_tap $? 276 'PublicGetUserInformationV3' test.out

#- 277 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TQgjebRtEyLVEE0Y' \
    --after '0.5584876855257598' \
    --before '0.6496113726438177' \
    --limit '28' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetUserLoginHistoriesV3' test.out

#- 278 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iLUw9cuVOoea0M2K' \
    --after 'HZXZB4ZHkG4kbcKS' \
    --before '5EUtrsHEBxCxaypZ' \
    --limit '78' \
    --platformId 'NeyOjnJJPoqyPyNK' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetUserPlatformAccountsV3' test.out

#- 279 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JJjrTXETKqBMUW34' \
    > test.out 2>&1
eval_tap $? 279 'PublicListJusticePlatformAccountsV3' test.out

#- 280 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'myrxVCsTDT81se5N' \
    --body '{"platformId": "j5Fx4AEv9Fol3aVG", "platformUserId": "ZSVvr1RU4WHffiTi"}' \
    > test.out 2>&1
eval_tap $? 280 'PublicLinkPlatformAccount' test.out

#- 281 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'Uvc3mHD8cqCnHLTr' \
    --body '{"chosenNamespaces": ["jDeCLr1lQ0UJAgM4", "Xf5vjyplPQxLZwnh", "cqZZUOakck9RCwBc"], "requestId": "qBtUoxisDJW2alNh"}' \
    > test.out 2>&1
eval_tap $? 281 'PublicForceLinkPlatformWithProgression' test.out

#- 282 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qpaYPzbw7kmHjnpX' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetPublisherUserV3' test.out

#- 283 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '0ReMX4Zb1wWb9NPO' \
    --password 'GPT5lOmS8m34pKZU' \
    > test.out 2>&1
eval_tap $? 283 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 284 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'cp5gRS1t01PtUPhy' \
    --before 'sJ2diPsqpL9K5yaQ' \
    --isWildcard 'true' \
    --limit '44' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetRolesV3' test.out

#- 285 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'NprQ740Mg6l6rrCM' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetRoleV3' test.out

#- 286 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetMyUserV3' test.out

#- 287 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'YfRkx8iAAjQP5h9U' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 288 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["2YAYFNlrYsKztMpW", "SSndOGElX7eAlmMr", "Ru5giCSpeZ5cuZBL"], "oneTimeLinkCode": "9zep1fK93YzWDBmO"}' \
    > test.out 2>&1
eval_tap $? 288 'LinkHeadlessAccountToMyAccountV3' test.out

#- 289 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "EyEzjHqBz7DBtwhB"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicSendVerificationLinkV3' test.out

#- 290 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'DKM9cppNF8nwV0eg' \
    > test.out 2>&1
eval_tap $? 290 'PublicVerifyUserByLinkV3' test.out

#- 291 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'u9rtpKmFeGnzvsJr' \
    --code 'KlpHoy8aDm6E3xE2' \
    --error 'WKH0ncGIJOCDGbMT' \
    --state 'HdoLk7mIqw1l60Jk' \
    > test.out 2>&1
eval_tap $? 291 'PlatformAuthenticateSAMLV3Handler' test.out

#- 292 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'VmeRrvVcwXHZsDuH' \
    --payload 'F4sseUddmtD9we0p' \
    > test.out 2>&1
eval_tap $? 292 'LoginSSOClient' test.out

#- 293 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'aUyZ0YqikH59kUxt' \
    > test.out 2>&1
eval_tap $? 293 'LogoutSSOClient' test.out

#- 294 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData '0a9QGXCRpYq5jCgJ' \
    --code 'XZPffYvJ7cKYMAGC' \
    > test.out 2>&1
eval_tap $? 294 'RequestTargetTokenResponseV3' test.out

#- 295 PlatformTokenRefreshV3Deprecate
eval_tap 0 295 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 296 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'cQYGacSK7aS8RNX2' \
    > test.out 2>&1
eval_tap $? 296 'AdminGetDevicesByUserV4' test.out

#- 297 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'vjYOAk5UnRGFeyKJ' \
    --endDate 'VgwuhI3ClaeoRUe4' \
    --limit '8' \
    --offset '55' \
    --startDate 'eTVD57MYzvpD3Fig' \
    > test.out 2>&1
eval_tap $? 297 'AdminGetBannedDevicesV4' test.out

#- 298 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId '5douzlfKrVKu3SfW' \
    > test.out 2>&1
eval_tap $? 298 'AdminGetUserDeviceBansV4' test.out

#- 299 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "A066LFDswYnMEmUq", "deviceId": "jLGlWzbfb2rceKVz", "deviceType": "60vmOGwriXD1nHJT", "enabled": true, "endDate": "FiKXz8KJL06DhaVt", "ext": {"LkejjGRwGuZjENus": {}, "qxd7m4U5Xdwel7Ri": {}, "esFx6Yek3AmwIXhv": {}}, "reason": "4mgN2KpwKwXSWpkC"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminBanDeviceV4' test.out

#- 300 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'ZK2SMAFIR4QLtIyT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceBanV4' test.out

#- 301 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'fotgJaGIMWsux5Ap' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 301 'AdminUpdateDeviceBanV4' test.out

#- 302 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '2ogsDpKRSXqdcLw8' \
    --startDate 'EyItab4TItlqx8Wv' \
    --deviceType 'QXxLCbNTxlR9bTpJ' \
    > test.out 2>&1
eval_tap $? 302 'AdminGenerateReportV4' test.out

#- 303 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminGetDeviceTypesV4' test.out

#- 304 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'xOqgPSdJnwy7kirx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminGetDeviceBansV4' test.out

#- 305 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 's8KIb9zv7dAUjVXk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 305 'AdminDecryptDeviceV4' test.out

#- 306 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId '2H5x7Bh4vRODUhx3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 306 'AdminUnbanDeviceV4' test.out

#- 307 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'zr9O6Bg6UCbPOaCe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 307 'AdminGetUsersByDeviceV4' test.out

#- 308 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 77}' \
    > test.out 2>&1
eval_tap $? 308 'AdminCreateTestUsersV4' test.out

#- 309 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["kpgnG7vzbrseKeFM", "NhHdq2Sh09ONfCMm", "u5p5JJ2WkyAllYHo"]}' \
    > test.out 2>&1
eval_tap $? 309 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 310 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["1tzJGjbv6Odu7TU4", "JYMXQmkA9jecqGro", "NO5paDsLa9IDV2Yd"]}' \
    > test.out 2>&1
eval_tap $? 310 'AdminBulkCheckValidUserIDV4' test.out

#- 311 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'FRZskNt09bHCofZb' \
    --body '{"avatarUrl": "Pw5QKxEKxoF72h6g", "country": "ItRLHOiHF95kXk53", "dateOfBirth": "xC5IkXlbG2ayNNdE", "displayName": "2fCkUNzBp5UW3kJD", "languageTag": "ocYn7zhKdD0zXnyD", "userName": "JB5nyQJCv8SOa2fu"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserV4' test.out

#- 312 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId '9WoYRQkz5V41dHnx' \
    --body '{"code": "xu0fSwVTJ2eDDA2P", "emailAddress": "FAyXYAaHYVNjuuNI"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateUserEmailAddressV4' test.out

#- 313 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'rnvGhlIwbHR73DMc' \
    > test.out 2>&1
eval_tap $? 313 'AdminDisableUserMFAV4' test.out

#- 314 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'tzsXtxwWFwJ4wf4p' \
    > test.out 2>&1
eval_tap $? 314 'AdminListUserRolesV4' test.out

#- 315 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'r6IAEx10yXQOcPo8' \
    --body '{"assignedNamespaces": ["yT2AzOOBuIkzJMPk", "GTyG026XGZrGnp1T", "IFiicvZZXtYTbeOF"], "roleId": "bD51WC987M0NSs2I"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminUpdateUserRoleV4' test.out

#- 316 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '8aUyjsC7fGpXGfVZ' \
    --body '{"assignedNamespaces": ["mmSJYN8ArMw8fv0w", "359UJXVH35r29GoA", "jJxfgbASMB4sU8Qx"], "roleId": "T4Q6kBGy9NIvtTEW"}' \
    > test.out 2>&1
eval_tap $? 316 'AdminAddUserRoleV4' test.out

#- 317 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 't6aLhLR5zNcXqiUA' \
    --body '{"assignedNamespaces": ["lF1flUywxAKFf6s9", "NJwpAKrKfNLLuREU", "PMUyWEFaoY6ruxmr"], "roleId": "M3dkWLhbLKjETg8X"}' \
    > test.out 2>&1
eval_tap $? 317 'AdminRemoveUserRoleV4' test.out

#- 318 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '14' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 318 'AdminGetRolesV4' test.out

#- 319 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "daULobFVbT2GXEGs"}' \
    > test.out 2>&1
eval_tap $? 319 'AdminCreateRoleV4' test.out

#- 320 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '9TpKdthqlUdp7BWa' \
    > test.out 2>&1
eval_tap $? 320 'AdminGetRoleV4' test.out

#- 321 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'vyxJkaXJYhO8503p' \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRoleV4' test.out

#- 322 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'tKXJqtcjujWchGbe' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "3eZBZHdzKaxEg4jn"}' \
    > test.out 2>&1
eval_tap $? 322 'AdminUpdateRoleV4' test.out

#- 323 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'boDR8y7fBTHJSSSB' \
    --body '{"permissions": [{"action": 46, "resource": "PyZanCVuhJoXxqQK", "schedAction": 38, "schedCron": "45UtD82mcuoPbxWd", "schedRange": ["8b0eLuwIJ4FhzPP2", "U7PudZIv8u7pJRSt", "MlNe6tbY3lEZ0ykp"]}, {"action": 19, "resource": "3LxmHmCJ8bxbNvq8", "schedAction": 78, "schedCron": "0PDMkF7xPEIChcgb", "schedRange": ["hDVABghDtmWBy4CL", "MrYXi67hg9dBulUO", "NsAWZb1e01MNrwcA"]}, {"action": 94, "resource": "TSZFqyTfD7GuXSnH", "schedAction": 53, "schedCron": "5oCXNyCOeLDo4xPb", "schedRange": ["fsxShb3o41uYscWQ", "p8mSi3eXilMv5Wwl", "7dvjsHk2MhhTIhXI"]}]}' \
    > test.out 2>&1
eval_tap $? 323 'AdminUpdateRolePermissionsV4' test.out

#- 324 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId '7evb3XyGcOsBnliq' \
    --body '{"permissions": [{"action": 23, "resource": "JZ2KGSATcsuvrYdi", "schedAction": 64, "schedCron": "Lhyi6QwyB5oCti8w", "schedRange": ["hRGIMiyBhMLl9Omy", "WAHUCojBA8sJyPWk", "Bo6eMghzxMcBkBBI"]}, {"action": 93, "resource": "FJKEKFBTDmqGNMM4", "schedAction": 91, "schedCron": "PLxwioUpDkMuqjjE", "schedRange": ["qcLHjqddUkr1Vg2N", "GzGdevwhcECVO4WI", "TFLvGVlIWyDMjzDB"]}, {"action": 15, "resource": "jo9NlklC4lfjpzwS", "schedAction": 46, "schedCron": "tJrcvVU0Grj1KeP1", "schedRange": ["YEKsx3RSql86Haj9", "pu1JVGh6QVXXABBf", "KSmTW1YNe9WHczgo"]}]}' \
    > test.out 2>&1
eval_tap $? 324 'AdminAddRolePermissionsV4' test.out

#- 325 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'Vaj3uOqF6R3bNrUj' \
    --body '["DHZ2mfQ2msr7fduM", "t47jUn1e09wWV5Tw", "e5BiZeTYSitsTscv"]' \
    > test.out 2>&1
eval_tap $? 325 'AdminDeleteRolePermissionsV4' test.out

#- 326 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'j7LCzcJzNJ3DbxIw' \
    --after 'VuYzLM9xtU87wq0t' \
    --before 'VUl2naidmExsqwrL' \
    --limit '56' \
    > test.out 2>&1
eval_tap $? 326 'AdminListAssignedUsersV4' test.out

#- 327 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId '2oJMVBBdqIQM7Dca' \
    --body '{"assignedNamespaces": ["oYtJIPEUO9qdJ44r", "QCFPWlXmgFTzVvB7", "7PEPouwLTRsaebEW"], "namespace": "Z781WikLr5nGJ8zJ", "userId": "yeUNdF1tXUCV75bd"}' \
    > test.out 2>&1
eval_tap $? 327 'AdminAssignUserToRoleV4' test.out

#- 328 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'CqNgZjDFNTaoeTkF' \
    --body '{"namespace": "yB1I4bQvDsnl6Qix", "userId": "qqPiu7fjEYtrqdbj"}' \
    > test.out 2>&1
eval_tap $? 328 'AdminRevokeUserFromRoleV4' test.out

#- 329 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["QyPzhzeVDGTEQFvE", "fM4JN3gGEUptT1Rc", "ALDhrAW0sZEc0izG"], "emailAddresses": ["z1wlnoaKmDCcj4NQ", "aXOM5IXkSShUUo1i", "jSKY6NKhbnbHXNTT"], "isAdmin": false, "namespace": "ZHbnVgWl2mnIJfvb", "roleId": "vOQVYPH9PE1aZGkQ"}' \
    > test.out 2>&1
eval_tap $? 329 'AdminInviteUserNewV4' test.out

#- 330 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "GYWAXKCpI4dpgJb0", "country": "h7Jmwqs2J9sb3v5o", "dateOfBirth": "M9oFKey6gTROCm7K", "displayName": "FTJRi1suzzVQhxs7", "languageTag": "qq7AnE6wqzhlrHG6", "userName": "ky3T6pylfGuudFG1"}' \
    > test.out 2>&1
eval_tap $? 330 'AdminUpdateMyUserV4' test.out

#- 331 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 331 'AdminDisableMyAuthenticatorV4' test.out

#- 332 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'Hr7lX9yWCJ0EJ3aS' \
    > test.out 2>&1
eval_tap $? 332 'AdminEnableMyAuthenticatorV4' test.out

#- 333 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 333 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 334 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 334 'AdminGetMyBackupCodesV4' test.out

#- 335 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 335 'AdminGenerateMyBackupCodesV4' test.out

#- 336 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 336 'AdminDisableMyBackupCodesV4' test.out

#- 337 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 337 'AdminDownloadMyBackupCodesV4' test.out

#- 338 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminEnableMyBackupCodesV4' test.out

#- 339 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 339 'AdminSendMyMFAEmailCodeV4' test.out

#- 340 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 340 'AdminDisableMyEmailV4' test.out

#- 341 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '99B1f0Q268D9eoS5' \
    > test.out 2>&1
eval_tap $? 341 'AdminEnableMyEmailV4' test.out

#- 342 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 342 'AdminGetMyEnabledFactorsV4' test.out

#- 343 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'anaNlFW9jzMOfUqF' \
    > test.out 2>&1
eval_tap $? 343 'AdminMakeFactorMyDefaultV4' test.out

#- 344 AdminInviteUserV4
eval_tap 0 344 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 345 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "3tEIi0HKz82IYdCi", "policyId": "EzH0btb0S8AuIE0k", "policyVersionId": "z48ZexuU1LaHjAo5"}, {"isAccepted": false, "localizedPolicyVersionId": "Y6ms0dhjSeHclKfC", "policyId": "w9d5Aw2CI2X3khki", "policyVersionId": "zwHObS6MZsz4xMUL"}, {"isAccepted": true, "localizedPolicyVersionId": "BjM3dXnuKiULF5jD", "policyId": "y6ZbeBdsZtTZmLRc", "policyVersionId": "e8mkojQjcFGigeBF"}], "authType": "EMAILPASSWD", "country": "yNxrHetEKjr1sJYF", "dateOfBirth": "3SZ3UnwD9z3l3NcU", "displayName": "ndMFKMbWoIgfsBBV", "emailAddress": "chD42IHHpSppsfIg", "password": "JI6kjKUu0UawUHYw", "passwordMD5Sum": "PuCfEinxZeVKvrKc", "username": "VNPZBo64mOsR47eK", "verified": true}' \
    > test.out 2>&1
eval_tap $? 345 'PublicCreateTestUserV4' test.out

#- 346 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "jLF9mu1V3WvOHnxd", "policyId": "6OquxViXZ84eRsaV", "policyVersionId": "a3fL3h1hX5RBkJBX"}, {"isAccepted": true, "localizedPolicyVersionId": "Z3CwJGLpktLHDGlt", "policyId": "IevwnNfP3Pf2yWPo", "policyVersionId": "7v1DqDAA69OYe12r"}, {"isAccepted": false, "localizedPolicyVersionId": "T5R0P7PAncdRznPT", "policyId": "SW8kojg6YAeamtrm", "policyVersionId": "7BU9AwBNnK9mqOtg"}], "authType": "EMAILPASSWD", "code": "t3t4eapiA4yStLIl", "country": "yIGwjZ3ntn3AJGqU", "dateOfBirth": "XCoTgxsQJRYiXEo0", "displayName": "yn8HwxMtAZjk82FJ", "emailAddress": "BQj9cO3bjqHawEmJ", "password": "FWws6szFvZHlMUci", "passwordMD5Sum": "IGYqu6Du1rkFzDkC", "reachMinimumAge": true, "username": "9kvwndTHtbKkBLE5"}' \
    > test.out 2>&1
eval_tap $? 346 'PublicCreateUserV4' test.out

#- 347 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'BgFzl8jAPzepbWwL' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "jPkxwx6i8ODzs8jQ", "policyId": "2UtnhfhkgvVwXh3R", "policyVersionId": "YHs6BP3jykvJyh0l"}, {"isAccepted": false, "localizedPolicyVersionId": "yNTqWQVbB38JVan7", "policyId": "TGOKQtjY5COhDuEm", "policyVersionId": "SJUJDKvgGRq41saj"}, {"isAccepted": false, "localizedPolicyVersionId": "LXBAQHNWZ8KU1cqr", "policyId": "sZoc9YY2yOx9IM9S", "policyVersionId": "IOmF9pC5wwlXbiqF"}], "authType": "EMAILPASSWD", "country": "d6viidMzaVgDyvGs", "dateOfBirth": "hWbxyLfF1M3ZYORo", "displayName": "SovHNwWkRbftwwiw", "password": "na9rA5L0x20xSuMu", "reachMinimumAge": true, "username": "IOzT3QzuAtWxjyIn"}' \
    > test.out 2>&1
eval_tap $? 347 'CreateUserFromInvitationV4' test.out

#- 348 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "XWPJBHmUBdxcDNT3", "country": "T6ABNQidhsDpkPFH", "dateOfBirth": "ZlsjAwJXSAUV6wO5", "displayName": "mntUhZBXCODX1MVx", "languageTag": "y5LljxX0WhYcIYhd", "userName": "iTq8NgxiQYd7fuBt"}' \
    > test.out 2>&1
eval_tap $? 348 'PublicUpdateUserV4' test.out

#- 349 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "en6xrSj8QLBdzetS", "emailAddress": "GjQ2YH9tHmLOTL5b"}' \
    > test.out 2>&1
eval_tap $? 349 'PublicUpdateUserEmailAddressV4' test.out

#- 350 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "rsGZ16uhwbdJ5wy0", "country": "QnEzS1aGe2zOjjDk", "dateOfBirth": "K2prZoiNShCPzCv1", "displayName": "MVJZZbVV1kBQngnI", "emailAddress": "5oD3HugINVfRlzie", "password": "BQWVycgUojMsaSMH", "reachMinimumAge": true, "username": "PtypDUHbRXtsgqRz", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 350 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 351 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "flHe4sA3DTshKRwv", "password": "Q7C16dgInSQVPeZh", "username": "NSN2DuIFc1r7IlH5"}' \
    > test.out 2>&1
eval_tap $? 351 'PublicUpgradeHeadlessAccountV4' test.out

#- 352 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 352 'PublicDisableMyAuthenticatorV4' test.out

#- 353 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'wE8wbXRRMg4KoTS5' \
    > test.out 2>&1
eval_tap $? 353 'PublicEnableMyAuthenticatorV4' test.out

#- 354 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 355 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 355 'PublicGetMyBackupCodesV4' test.out

#- 356 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 356 'PublicGenerateMyBackupCodesV4' test.out

#- 357 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'PublicDisableMyBackupCodesV4' test.out

#- 358 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'PublicDownloadMyBackupCodesV4' test.out

#- 359 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 359 'PublicEnableMyBackupCodesV4' test.out

#- 360 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 360 'PublicRemoveTrustedDeviceV4' test.out

#- 361 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 361 'PublicSendMyMFAEmailCodeV4' test.out

#- 362 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 362 'PublicDisableMyEmailV4' test.out

#- 363 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'Acd8mbcIXM3wMkXu' \
    > test.out 2>&1
eval_tap $? 363 'PublicEnableMyEmailV4' test.out

#- 364 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 364 'PublicGetMyEnabledFactorsV4' test.out

#- 365 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'EfwQEn6zFZvJMQz7' \
    > test.out 2>&1
eval_tap $? 365 'PublicMakeFactorMyDefaultV4' test.out

#- 366 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'YFBkrqSQ7dXlDGiC' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 367 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "eEYCKuNzKVM9ctNc", "emailAddress": "KrO75AOKwXRnmBiR", "namespace": "lg5zbewuwuznBWMx", "namespaceDisplayName": "1BbN3cE09vxSy14u"}' \
    > test.out 2>&1
eval_tap $? 367 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE