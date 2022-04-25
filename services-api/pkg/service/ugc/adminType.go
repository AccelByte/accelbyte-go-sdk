// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ugc

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_type"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type AdminTypeService struct {
	Client          *ugcclient.JusticeUgcService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminGetTypeShort instead
func (a *AdminTypeService) AdminGetType(input *admin_type.AdminGetTypeParams) (*ugcclientmodels.ModelsPaginatedGetTypeResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminType.AdminGetType(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminCreateTypeShort instead
func (a *AdminTypeService) AdminCreateType(input *admin_type.AdminCreateTypeParams) (*ugcclientmodels.ModelsCreateTypeResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, conflict, internalServerError, err := a.Client.AdminType.AdminCreateType(input, client.BearerToken(*token.AccessToken))
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

	return created.GetPayload(), nil
}

// Deprecated: Use AdminUpdateTypeShort instead
func (a *AdminTypeService) AdminUpdateType(input *admin_type.AdminUpdateTypeParams) (*ugcclientmodels.ModelsCreateTypeResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, conflict, internalServerError, err := a.Client.AdminType.AdminUpdateType(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminDeleteTypeShort instead
func (a *AdminTypeService) AdminDeleteType(input *admin_type.AdminDeleteTypeParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.AdminType.AdminDeleteType(input, client.BearerToken(*token.AccessToken))
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

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:UGCCONFIG [READ]'], 'authorization': []}]
func (a *AdminTypeService) AdminGetTypeShort(input *admin_type.AdminGetTypeParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedGetTypeResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.AdminType.AdminGetTypeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:UGCCONFIG [CREATE]'], 'authorization': []}]
func (a *AdminTypeService) AdminCreateTypeShort(input *admin_type.AdminCreateTypeParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateTypeResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	created, err := a.Client.AdminType.AdminCreateTypeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:UGCCONFIG [UPDATE]'], 'authorization': []}]
func (a *AdminTypeService) AdminUpdateTypeShort(input *admin_type.AdminUpdateTypeParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateTypeResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.AdminType.AdminUpdateTypeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:UGCCONFIG [DELETE]'], 'authorization': []}]
func (a *AdminTypeService) AdminDeleteTypeShort(input *admin_type.AdminDeleteTypeParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	_, err := a.Client.AdminType.AdminDeleteTypeShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
