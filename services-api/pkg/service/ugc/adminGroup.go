// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ugc

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_group"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type AdminGroupService struct {
	Client          *ugcclient.JusticeUgcService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use SingleAdminGetAllGroupsShort instead
func (a *AdminGroupService) SingleAdminGetAllGroups(input *admin_group.SingleAdminGetAllGroupsParams) (*ugcclientmodels.ModelsPaginatedGroupResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.SingleAdminGetAllGroups(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: Use AdminCreateGroupShort instead
func (a *AdminGroupService) AdminCreateGroup(input *admin_group.AdminCreateGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, internalServerError, err := a.Client.AdminGroup.AdminCreateGroup(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use SingleAdminGetGroupShort instead
func (a *AdminGroupService) SingleAdminGetGroup(input *admin_group.SingleAdminGetGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.SingleAdminGetGroup(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: Use SingleAdminUpdateGroupShort instead
func (a *AdminGroupService) SingleAdminUpdateGroup(input *admin_group.SingleAdminUpdateGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.SingleAdminUpdateGroup(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: Use SingleAdminDeleteGroupShort instead
func (a *AdminGroupService) SingleAdminDeleteGroup(input *admin_group.SingleAdminDeleteGroupParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.SingleAdminDeleteGroup(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use SingleAdminGetGroupContentsShort instead
func (a *AdminGroupService) SingleAdminGetGroupContents(input *admin_group.SingleAdminGetGroupContentsParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.SingleAdminGetGroupContents(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: Use AdminGetAllGroupsShort instead
func (a *AdminGroupService) AdminGetAllGroups(input *admin_group.AdminGetAllGroupsParams) (*ugcclientmodels.ModelsPaginatedGroupResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.AdminGetAllGroups(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: Use AdminGetGroupShort instead
func (a *AdminGroupService) AdminGetGroup(input *admin_group.AdminGetGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.AdminGetGroup(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: Use AdminUpdateGroupShort instead
func (a *AdminGroupService) AdminUpdateGroup(input *admin_group.AdminUpdateGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.AdminUpdateGroup(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: Use AdminDeleteGroupShort instead
func (a *AdminGroupService) AdminDeleteGroup(input *admin_group.AdminDeleteGroupParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.AdminDeleteGroup(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminGetGroupContentsShort instead
func (a *AdminGroupService) AdminGetGroupContents(input *admin_group.AdminGetGroupContentsParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.AdminGetGroupContents(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
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

func (a *AdminGroupService) SingleAdminGetAllGroupsShort(input *admin_group.SingleAdminGetAllGroupsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedGroupResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.AdminGroup.SingleAdminGetAllGroupsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AdminGroupService) AdminCreateGroupShort(input *admin_group.AdminCreateGroupParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	created, err := a.Client.AdminGroup.AdminCreateGroupShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (a *AdminGroupService) SingleAdminGetGroupShort(input *admin_group.SingleAdminGetGroupParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.AdminGroup.SingleAdminGetGroupShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AdminGroupService) SingleAdminUpdateGroupShort(input *admin_group.SingleAdminUpdateGroupParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.AdminGroup.SingleAdminUpdateGroupShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AdminGroupService) SingleAdminDeleteGroupShort(input *admin_group.SingleAdminDeleteGroupParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	_, err := a.Client.AdminGroup.SingleAdminDeleteGroupShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AdminGroupService) SingleAdminGetGroupContentsShort(input *admin_group.SingleAdminGetGroupContentsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.AdminGroup.SingleAdminGetGroupContentsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AdminGroupService) AdminGetAllGroupsShort(input *admin_group.AdminGetAllGroupsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedGroupResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.AdminGroup.AdminGetAllGroupsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AdminGroupService) AdminGetGroupShort(input *admin_group.AdminGetGroupParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.AdminGroup.AdminGetGroupShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AdminGroupService) AdminUpdateGroupShort(input *admin_group.AdminUpdateGroupParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.AdminGroup.AdminUpdateGroupShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AdminGroupService) AdminDeleteGroupShort(input *admin_group.AdminDeleteGroupParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	_, err := a.Client.AdminGroup.AdminDeleteGroupShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AdminGroupService) AdminGetGroupContentsShort(input *admin_group.AdminGetGroupContentsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.AdminGroup.AdminGetGroupContentsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
