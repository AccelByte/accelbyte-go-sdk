// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package ugc

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
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

func (a *AdminTypeService) AdminGetType(input *admin_type.AdminGetTypeParams) (*ugcclientmodels.ModelsPaginatedGetTypeResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminType.AdminGetType(input, client.BearerToken(*accessToken.AccessToken))
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

func (a *AdminTypeService) AdminCreateType(input *admin_type.AdminCreateTypeParams) (*ugcclientmodels.ModelsCreateTypeResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, conflict, internalServerError, err := a.Client.AdminType.AdminCreateType(input, client.BearerToken(*accessToken.AccessToken))
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

func (a *AdminTypeService) AdminUpdateType(input *admin_type.AdminUpdateTypeParams) (*ugcclientmodels.ModelsCreateTypeResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, conflict, internalServerError, err := a.Client.AdminType.AdminUpdateType(input, client.BearerToken(*accessToken.AccessToken))
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

func (a *AdminTypeService) AdminDeleteType(input *admin_type.AdminDeleteTypeParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.AdminType.AdminDeleteType(input, client.BearerToken(*accessToken.AccessToken))
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

func (a *AdminTypeService) AdminGetTypeShort(input *admin_type.AdminGetTypeParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedGetTypeResponse, error) {
	ok, err := a.Client.AdminType.AdminGetTypeShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminTypeService) AdminCreateTypeShort(input *admin_type.AdminCreateTypeParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateTypeResponse, error) {
	created, err := a.Client.AdminType.AdminCreateTypeShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (a *AdminTypeService) AdminUpdateTypeShort(input *admin_type.AdminUpdateTypeParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateTypeResponse, error) {
	ok, err := a.Client.AdminType.AdminUpdateTypeShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminTypeService) AdminDeleteTypeShort(input *admin_type.AdminDeleteTypeParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.AdminType.AdminDeleteTypeShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}
