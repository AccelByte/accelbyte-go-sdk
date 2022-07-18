// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles_deprecated"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type RolesDeprecatedService struct {
	Client                 *iamclient.JusticeIamService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (r *RolesDeprecatedService) GetAuthSession() auth.Session {
	if r.RefreshTokenRepository != nil {
		return auth.Session{
			r.TokenRepository,
			r.ConfigRepository,
			r.RefreshTokenRepository,
		}
	}

	return auth.Session{
		r.TokenRepository,
		r.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: Use GetRolesShort instead
func (r *RolesDeprecatedService) GetRoles(input *roles_deprecated.GetRolesParams) ([]*iamclientmodels.ModelRoleResponseWithManagers, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, err := r.Client.RolesDeprecated.GetRoles(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateRoleShort instead
func (r *RolesDeprecatedService) CreateRole(input *roles_deprecated.CreateRoleParams) (*iamclientmodels.AccountcommonRole, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, err := r.Client.RolesDeprecated.CreateRole(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use GetRoleShort instead
func (r *RolesDeprecatedService) GetRole(input *roles_deprecated.GetRoleParams) (*iamclientmodels.ModelRoleResponse, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := r.Client.RolesDeprecated.GetRole(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateRoleShort instead
func (r *RolesDeprecatedService) UpdateRole(input *roles_deprecated.UpdateRoleParams) (*iamclientmodels.ModelRoleResponse, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := r.Client.RolesDeprecated.UpdateRole(input, client.BearerToken(*token.AccessToken))
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
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteRoleShort instead
func (r *RolesDeprecatedService) DeleteRole(input *roles_deprecated.DeleteRoleParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := r.Client.RolesDeprecated.DeleteRole(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetRoleAdminStatusShort instead
func (r *RolesDeprecatedService) GetRoleAdminStatus(input *roles_deprecated.GetRoleAdminStatusParams) (*iamclientmodels.ModelRoleAdminStatusResponse, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := r.Client.RolesDeprecated.GetRoleAdminStatus(input, client.BearerToken(*token.AccessToken))
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
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use SetRoleAsAdminShort instead
func (r *RolesDeprecatedService) SetRoleAsAdmin(input *roles_deprecated.SetRoleAsAdminParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.RolesDeprecated.SetRoleAsAdmin(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use RemoveRoleAdminShort instead
func (r *RolesDeprecatedService) RemoveRoleAdmin(input *roles_deprecated.RemoveRoleAdminParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.RolesDeprecated.RemoveRoleAdmin(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetRoleManagersShort instead
func (r *RolesDeprecatedService) GetRoleManagers(input *roles_deprecated.GetRoleManagersParams) (*iamclientmodels.ModelRoleManagersResponse, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := r.Client.RolesDeprecated.GetRoleManagers(input, client.BearerToken(*token.AccessToken))
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
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AddRoleManagersShort instead
func (r *RolesDeprecatedService) AddRoleManagers(input *roles_deprecated.AddRoleManagersParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.RolesDeprecated.AddRoleManagers(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use RemoveRoleManagersShort instead
func (r *RolesDeprecatedService) RemoveRoleManagers(input *roles_deprecated.RemoveRoleManagersParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.RolesDeprecated.RemoveRoleManagers(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetRoleMembersShort instead
func (r *RolesDeprecatedService) GetRoleMembers(input *roles_deprecated.GetRoleMembersParams) (*iamclientmodels.ModelRoleMembersResponse, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := r.Client.RolesDeprecated.GetRoleMembers(input, client.BearerToken(*token.AccessToken))
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
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AddRoleMembersShort instead
func (r *RolesDeprecatedService) AddRoleMembers(input *roles_deprecated.AddRoleMembersParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.RolesDeprecated.AddRoleMembers(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use RemoveRoleMembersShort instead
func (r *RolesDeprecatedService) RemoveRoleMembers(input *roles_deprecated.RemoveRoleMembersParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.RolesDeprecated.RemoveRoleMembers(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use UpdateRolePermissionsShort instead
func (r *RolesDeprecatedService) UpdateRolePermissions(input *roles_deprecated.UpdateRolePermissionsParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.RolesDeprecated.UpdateRolePermissions(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AddRolePermissionShort instead
func (r *RolesDeprecatedService) AddRolePermission(input *roles_deprecated.AddRolePermissionParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.RolesDeprecated.AddRolePermission(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use DeleteRolePermissionShort instead
func (r *RolesDeprecatedService) DeleteRolePermission(input *roles_deprecated.DeleteRolePermissionParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.RolesDeprecated.DeleteRolePermission(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesDeprecatedService) GetRolesShort(input *roles_deprecated.GetRolesParams) ([]*iamclientmodels.ModelRoleResponseWithManagers, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(r.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  r.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := r.Client.RolesDeprecated.GetRolesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesDeprecatedService) CreateRoleShort(input *roles_deprecated.CreateRoleParams) (*iamclientmodels.AccountcommonRole, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(r.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  r.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := r.Client.RolesDeprecated.CreateRoleShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (r *RolesDeprecatedService) GetRoleShort(input *roles_deprecated.GetRoleParams) (*iamclientmodels.ModelRoleResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(r.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  r.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := r.Client.RolesDeprecated.GetRoleShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesDeprecatedService) UpdateRoleShort(input *roles_deprecated.UpdateRoleParams) (*iamclientmodels.ModelRoleResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(r.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  r.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := r.Client.RolesDeprecated.UpdateRoleShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesDeprecatedService) DeleteRoleShort(input *roles_deprecated.DeleteRoleParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(r.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  r.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := r.Client.RolesDeprecated.DeleteRoleShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesDeprecatedService) GetRoleAdminStatusShort(input *roles_deprecated.GetRoleAdminStatusParams) (*iamclientmodels.ModelRoleAdminStatusResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(r.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  r.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := r.Client.RolesDeprecated.GetRoleAdminStatusShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesDeprecatedService) SetRoleAsAdminShort(input *roles_deprecated.SetRoleAsAdminParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(r.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  r.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := r.Client.RolesDeprecated.SetRoleAsAdminShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesDeprecatedService) RemoveRoleAdminShort(input *roles_deprecated.RemoveRoleAdminParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(r.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  r.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := r.Client.RolesDeprecated.RemoveRoleAdminShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesDeprecatedService) GetRoleManagersShort(input *roles_deprecated.GetRoleManagersParams) (*iamclientmodels.ModelRoleManagersResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(r.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  r.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := r.Client.RolesDeprecated.GetRoleManagersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesDeprecatedService) AddRoleManagersShort(input *roles_deprecated.AddRoleManagersParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(r.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  r.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := r.Client.RolesDeprecated.AddRoleManagersShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesDeprecatedService) RemoveRoleManagersShort(input *roles_deprecated.RemoveRoleManagersParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(r.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  r.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := r.Client.RolesDeprecated.RemoveRoleManagersShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesDeprecatedService) GetRoleMembersShort(input *roles_deprecated.GetRoleMembersParams) (*iamclientmodels.ModelRoleMembersResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(r.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  r.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := r.Client.RolesDeprecated.GetRoleMembersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesDeprecatedService) AddRoleMembersShort(input *roles_deprecated.AddRoleMembersParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(r.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  r.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := r.Client.RolesDeprecated.AddRoleMembersShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesDeprecatedService) RemoveRoleMembersShort(input *roles_deprecated.RemoveRoleMembersParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(r.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  r.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := r.Client.RolesDeprecated.RemoveRoleMembersShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesDeprecatedService) UpdateRolePermissionsShort(input *roles_deprecated.UpdateRolePermissionsParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(r.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  r.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := r.Client.RolesDeprecated.UpdateRolePermissionsShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesDeprecatedService) AddRolePermissionShort(input *roles_deprecated.AddRolePermissionParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(r.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  r.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := r.Client.RolesDeprecated.AddRolePermissionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesDeprecatedService) DeleteRolePermissionShort(input *roles_deprecated.DeleteRolePermissionParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(r.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  r.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := r.Client.RolesDeprecated.DeleteRolePermissionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
