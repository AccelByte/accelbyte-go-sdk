// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type UsersV4Service struct {
	Client          *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

func (u *UsersV4Service) AdminUpdateUserV4(input *users_v4.AdminUpdateUserV4Params) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := u.Client.UsersV4.AdminUpdateUserV4(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminUpdateUserEmailAddressV4(input *users_v4.AdminUpdateUserEmailAddressV4Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, conflict, internalServerError, err := u.Client.UsersV4.AdminUpdateUserEmailAddressV4(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

func (u *UsersV4Service) AdminListUserRolesV4(input *users_v4.AdminListUserRolesV4Params) (*iamclientmodels.ModelListUserRolesV4Response, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminListUserRolesV4(input, client.BearerToken(*accessToken.AccessToken))
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminUpdateUserRoleV4(input *users_v4.AdminUpdateUserRoleV4Params) (*iamclientmodels.ModelListUserRolesV4Response, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, forbidden, notFound, unprocessableEntity, internalServerError, err := u.Client.UsersV4.AdminUpdateUserRoleV4(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminAddUserRoleV4(input *users_v4.AdminAddUserRoleV4Params) (*iamclientmodels.ModelListUserRolesV4Response, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, forbidden, notFound, unprocessableEntity, internalServerError, err := u.Client.UsersV4.AdminAddUserRoleV4(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminRemoveUserRoleV4(input *users_v4.AdminRemoveUserRoleV4Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, forbidden, notFound, unprocessableEntity, internalServerError, err := u.Client.UsersV4.AdminRemoveUserRoleV4(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

func (u *UsersV4Service) AdminUpdateMyUserV4(input *users_v4.AdminUpdateMyUserV4Params) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, conflict, internalServerError, err := u.Client.UsersV4.AdminUpdateMyUserV4(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminInviteUserV4(input *users_v4.AdminInviteUserV4Params) (*iamclientmodels.ModelInviteUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, conflict, unprocessableEntity, internalServerError, err := u.Client.UsersV4.AdminInviteUserV4(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (u *UsersV4Service) PublicCreateTestUserV4(input *users_v4.PublicCreateTestUserV4Params) (*iamclientmodels.AccountCreateUserResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicCreateTestUserV4(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (u *UsersV4Service) PublicCreateUserV4(input *users_v4.PublicCreateUserV4Params) (*iamclientmodels.AccountCreateUserResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicCreateUserV4(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (u *UsersV4Service) CreateUserFromInvitationV4(input *users_v4.CreateUserFromInvitationV4Params) (*iamclientmodels.AccountCreateUserResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, internalServerError, err := u.Client.UsersV4.CreateUserFromInvitationV4(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (u *UsersV4Service) PublicUpdateUserV4(input *users_v4.PublicUpdateUserV4Params) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, conflict, internalServerError, err := u.Client.UsersV4.PublicUpdateUserV4(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UsersV4Service) PublicUpdateUserEmailAddressV4(input *users_v4.PublicUpdateUserEmailAddressV4Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicUpdateUserEmailAddressV4(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

func (u *UsersV4Service) PublicUpgradeHeadlessAccountWithVerificationCodeV4(input *users_v4.PublicUpgradeHeadlessAccountWithVerificationCodeV4Params) (*iamclientmodels.AccountUserResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicUpgradeHeadlessAccountWithVerificationCodeV4(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UsersV4Service) PublicUpgradeHeadlessAccountV4(input *users_v4.PublicUpgradeHeadlessAccountV4Params) (*iamclientmodels.AccountUserResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicUpgradeHeadlessAccountV4(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminUpdateUserV4Short(input *users_v4.AdminUpdateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelUserResponseV3, error) {
	ok, err := u.Client.UsersV4.AdminUpdateUserV4Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminUpdateUserEmailAddressV4Short(input *users_v4.AdminUpdateUserEmailAddressV4Params, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := u.Client.UsersV4.AdminUpdateUserEmailAddressV4Short(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (u *UsersV4Service) AdminListUserRolesV4Short(input *users_v4.AdminListUserRolesV4Params, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelListUserRolesV4Response, error) {
	ok, err := u.Client.UsersV4.AdminListUserRolesV4Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminUpdateUserRoleV4Short(input *users_v4.AdminUpdateUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelListUserRolesV4Response, error) {
	ok, err := u.Client.UsersV4.AdminUpdateUserRoleV4Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminAddUserRoleV4Short(input *users_v4.AdminAddUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelListUserRolesV4Response, error) {
	ok, err := u.Client.UsersV4.AdminAddUserRoleV4Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminRemoveUserRoleV4Short(input *users_v4.AdminRemoveUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := u.Client.UsersV4.AdminRemoveUserRoleV4Short(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (u *UsersV4Service) AdminUpdateMyUserV4Short(input *users_v4.AdminUpdateMyUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelUserResponseV3, error) {
	ok, err := u.Client.UsersV4.AdminUpdateMyUserV4Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminInviteUserV4Short(input *users_v4.AdminInviteUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelInviteUserResponseV3, error) {
	created, err := u.Client.UsersV4.AdminInviteUserV4Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (u *UsersV4Service) PublicCreateTestUserV4Short(input *users_v4.PublicCreateTestUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.AccountCreateUserResponseV4, error) {
	created, err := u.Client.UsersV4.PublicCreateTestUserV4Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (u *UsersV4Service) PublicCreateUserV4Short(input *users_v4.PublicCreateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.AccountCreateUserResponseV4, error) {
	created, err := u.Client.UsersV4.PublicCreateUserV4Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (u *UsersV4Service) CreateUserFromInvitationV4Short(input *users_v4.CreateUserFromInvitationV4Params, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.AccountCreateUserResponseV4, error) {
	created, err := u.Client.UsersV4.CreateUserFromInvitationV4Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (u *UsersV4Service) PublicUpdateUserV4Short(input *users_v4.PublicUpdateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelUserResponseV3, error) {
	ok, err := u.Client.UsersV4.PublicUpdateUserV4Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UsersV4Service) PublicUpdateUserEmailAddressV4Short(input *users_v4.PublicUpdateUserEmailAddressV4Params, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := u.Client.UsersV4.PublicUpdateUserEmailAddressV4Short(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (u *UsersV4Service) PublicUpgradeHeadlessAccountWithVerificationCodeV4Short(input *users_v4.PublicUpgradeHeadlessAccountWithVerificationCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.AccountUserResponseV4, error) {
	ok, err := u.Client.UsersV4.PublicUpgradeHeadlessAccountWithVerificationCodeV4Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UsersV4Service) PublicUpgradeHeadlessAccountV4Short(input *users_v4.PublicUpgradeHeadlessAccountV4Params, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.AccountUserResponseV4, error) {
	ok, err := u.Client.UsersV4.PublicUpgradeHeadlessAccountV4Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
