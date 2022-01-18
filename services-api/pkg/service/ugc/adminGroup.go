// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package ugc

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
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

func (a *AdminGroupService) SingleAdminGetAllGroups(input *admin_group.SingleAdminGetAllGroupsParams) (*ugcclientmodels.ModelsPaginatedGroupResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.SingleAdminGetAllGroups(input, client.BearerToken(*accessToken.AccessToken))
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

func (a *AdminGroupService) AdminCreateGroup(input *admin_group.AdminCreateGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, internalServerError, err := a.Client.AdminGroup.AdminCreateGroup(input, client.BearerToken(*accessToken.AccessToken))
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

func (a *AdminGroupService) SingleAdminGetGroup(input *admin_group.SingleAdminGetGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.SingleAdminGetGroup(input, client.BearerToken(*accessToken.AccessToken))
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

func (a *AdminGroupService) SingleAdminUpdateGroup(input *admin_group.SingleAdminUpdateGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.SingleAdminUpdateGroup(input, client.BearerToken(*accessToken.AccessToken))
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

func (a *AdminGroupService) SingleAdminDeleteGroup(input *admin_group.SingleAdminDeleteGroupParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.SingleAdminDeleteGroup(input, client.BearerToken(*accessToken.AccessToken))
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

func (a *AdminGroupService) SingleAdminGetGroupContents(input *admin_group.SingleAdminGetGroupContentsParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.SingleAdminGetGroupContents(input, client.BearerToken(*accessToken.AccessToken))
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

func (a *AdminGroupService) AdminGetAllGroups(input *admin_group.AdminGetAllGroupsParams) (*ugcclientmodels.ModelsPaginatedGroupResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.AdminGetAllGroups(input, client.BearerToken(*accessToken.AccessToken))
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

func (a *AdminGroupService) AdminGetGroup(input *admin_group.AdminGetGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.AdminGetGroup(input, client.BearerToken(*accessToken.AccessToken))
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

func (a *AdminGroupService) AdminUpdateGroup(input *admin_group.AdminUpdateGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.AdminUpdateGroup(input, client.BearerToken(*accessToken.AccessToken))
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

func (a *AdminGroupService) AdminDeleteGroup(input *admin_group.AdminDeleteGroupParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.AdminDeleteGroup(input, client.BearerToken(*accessToken.AccessToken))
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

func (a *AdminGroupService) AdminGetGroupContents(input *admin_group.AdminGetGroupContentsParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminGroup.AdminGetGroupContents(input, client.BearerToken(*accessToken.AccessToken))
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

func (a *AdminGroupService) SingleAdminGetAllGroupsShort(input *admin_group.SingleAdminGetAllGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedGroupResponse, error) {
	ok, err := a.Client.AdminGroup.SingleAdminGetAllGroupsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminGroupService) AdminCreateGroupShort(input *admin_group.AdminCreateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	created, err := a.Client.AdminGroup.AdminCreateGroupShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (a *AdminGroupService) SingleAdminGetGroupShort(input *admin_group.SingleAdminGetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	ok, err := a.Client.AdminGroup.SingleAdminGetGroupShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminGroupService) SingleAdminUpdateGroupShort(input *admin_group.SingleAdminUpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	ok, err := a.Client.AdminGroup.SingleAdminUpdateGroupShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminGroupService) SingleAdminDeleteGroupShort(input *admin_group.SingleAdminDeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.AdminGroup.SingleAdminDeleteGroupShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (a *AdminGroupService) SingleAdminGetGroupContentsShort(input *admin_group.SingleAdminGetGroupContentsParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	ok, err := a.Client.AdminGroup.SingleAdminGetGroupContentsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminGroupService) AdminGetAllGroupsShort(input *admin_group.AdminGetAllGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedGroupResponse, error) {
	ok, err := a.Client.AdminGroup.AdminGetAllGroupsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminGroupService) AdminGetGroupShort(input *admin_group.AdminGetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	ok, err := a.Client.AdminGroup.AdminGetGroupShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminGroupService) AdminUpdateGroupShort(input *admin_group.AdminUpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	ok, err := a.Client.AdminGroup.AdminUpdateGroupShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminGroupService) AdminDeleteGroupShort(input *admin_group.AdminDeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.AdminGroup.AdminDeleteGroupShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (a *AdminGroupService) AdminGetGroupContentsShort(input *admin_group.AdminGetGroupContentsParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	ok, err := a.Client.AdminGroup.AdminGetGroupContentsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
