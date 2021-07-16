package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type RoleService struct {
	IamService      *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

func (roleService *RoleService) GetRoles() (*iamclientmodels.ModelRoleResponseWithManagersAndPaginationV3, error) {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &roles.AdminGetRolesV3Params{}
	roles, badRequest, unauthorized, forbidden, err := roleService.IamService.Roles.AdminGetRolesV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return roles.GetPayload(), nil
}
