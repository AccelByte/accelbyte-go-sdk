// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package ugc

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_admin_group"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type AdminGroupService struct {
	Client          *ugcclient.JusticeUgcService
	TokenRepository repository.TokenRepository
}

// AdminCreateGroup creates groups
func (u *AdminGroupService) AdminCreateGroup(input *nr_admin_group.AdminCreateGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	created, badRequest, unauthorized, internalServer, err := u.Client.NrAdminGroup.AdminCreateGroup(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

// AdminDeleteGroup deletes group
func (u *AdminGroupService) AdminDeleteGroup(input *nr_admin_group.AdminDeleteGroupParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, badRequest, unauthorized, internalServer, err := u.Client.NrAdminGroup.AdminDeleteGroup(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminGetAllGroups gets all user groups
func (u *AdminGroupService) AdminGetAllGroups(input *nr_admin_group.AdminGetAllGroupsParams) (*ugcclientmodels.ModelsPaginatedGroupResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unauthorized, notFound, internalServer, err := u.Client.NrAdminGroup.AdminGetAllGroups(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// AdminGetGroup gets specific user group
func (u *AdminGroupService) AdminGetGroup(input *nr_admin_group.AdminGetGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unauthorized, notFound, internalServer, err := u.Client.NrAdminGroup.AdminGetGroup(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// AdminGetGroupContents gets contents belong to a group
func (u *AdminGroupService) AdminGetGroupContents(input *nr_admin_group.AdminGetGroupContentsParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unauthorized, notFound, internalServer, err := u.Client.NrAdminGroup.AdminGetGroupContents(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// AdminUpdateGroup updates group
func (u *AdminGroupService) AdminUpdateGroup(input *nr_admin_group.AdminUpdateGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServer, err := u.Client.NrAdminGroup.AdminUpdateGroup(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// SingleAdminDeleteGroup deletes group
func (u *AdminGroupService) SingleAdminDeleteGroup(input *nr_admin_group.SingleAdminDeleteGroupParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, unauthorized, notFound, internalServer, err := u.Client.NrAdminGroup.SingleAdminDeleteGroup(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// SingleAdminGetAllGroups gets all user groups
func (u *AdminGroupService) SingleAdminGetAllGroups(input *nr_admin_group.SingleAdminGetAllGroupsParams) (*ugcclientmodels.ModelsPaginatedGroupResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unauthorized, notFound, internalServer, err := u.Client.NrAdminGroup.SingleAdminGetAllGroups(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// SingleAdminGetGroup gets specific user group
func (u *AdminGroupService) SingleAdminGetGroup(input *nr_admin_group.SingleAdminGetGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unauthorized, notFound, internalServer, err := u.Client.NrAdminGroup.SingleAdminGetGroup(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// SingleAdminGetGroupContents gets contents belong to a group
func (u *AdminGroupService) SingleAdminGetGroupContents(input *nr_admin_group.SingleAdminGetGroupContentsParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unauthorized, notFound, internalServer, err := u.Client.NrAdminGroup.SingleAdminGetGroupContents(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// SingleAdminUpdateGroup updates group
func (u *AdminGroupService) SingleAdminUpdateGroup(input *nr_admin_group.SingleAdminUpdateGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServer, err := u.Client.NrAdminGroup.SingleAdminUpdateGroup(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}
