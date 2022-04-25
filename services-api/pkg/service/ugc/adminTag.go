// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ugc

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_tag"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type AdminTagService struct {
	Client          *ugcclient.JusticeUgcService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminGetTagShort instead
func (a *AdminTagService) AdminGetTag(input *admin_tag.AdminGetTagParams) (*ugcclientmodels.ModelsPaginatedGetTagResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminTag.AdminGetTag(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminCreateTagShort instead
func (a *AdminTagService) AdminCreateTag(input *admin_tag.AdminCreateTagParams) (*ugcclientmodels.ModelsCreateTagResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, conflict, internalServerError, err := a.Client.AdminTag.AdminCreateTag(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminUpdateTagShort instead
func (a *AdminTagService) AdminUpdateTag(input *admin_tag.AdminUpdateTagParams) (*ugcclientmodels.ModelsCreateTagResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, conflict, internalServerError, err := a.Client.AdminTag.AdminUpdateTag(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminDeleteTagShort instead
func (a *AdminTagService) AdminDeleteTag(input *admin_tag.AdminDeleteTagParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.AdminTag.AdminDeleteTag(input, client.BearerToken(*token.AccessToken))
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

func (a *AdminTagService) AdminGetTagShort(input *admin_tag.AdminGetTagParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedGetTagResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.AdminTag.AdminGetTagShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AdminTagService) AdminCreateTagShort(input *admin_tag.AdminCreateTagParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateTagResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	created, err := a.Client.AdminTag.AdminCreateTagShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (a *AdminTagService) AdminUpdateTagShort(input *admin_tag.AdminUpdateTagParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateTagResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.AdminTag.AdminUpdateTagShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AdminTagService) AdminDeleteTagShort(input *admin_tag.AdminDeleteTagParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	_, err := a.Client.AdminTag.AdminDeleteTagShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
