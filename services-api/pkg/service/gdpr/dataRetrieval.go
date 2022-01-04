// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package gdpr

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient"
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type DataRetrievalService struct {
	Client          *gdprclient.JusticeGdprService
	TokenRepository repository.TokenRepository
}

func (d *DataRetrievalService) GetAdminEmailConfiguration(input *data_retrieval.GetAdminEmailConfigurationParams) ([]string, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := d.Client.DataRetrieval.GetAdminEmailConfiguration(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (d *DataRetrievalService) UpdateAdminEmailConfiguration(input *data_retrieval.UpdateAdminEmailConfigurationParams) error {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, internalServerError, err := d.Client.DataRetrieval.UpdateAdminEmailConfiguration(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

func (d *DataRetrievalService) SaveAdminEmailConfiguration(input *data_retrieval.SaveAdminEmailConfigurationParams) error {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, internalServerError, err := d.Client.DataRetrieval.SaveAdminEmailConfiguration(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

func (d *DataRetrievalService) DeleteAdminEmailConfiguration(input *data_retrieval.DeleteAdminEmailConfigurationParams) error {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := d.Client.DataRetrieval.DeleteAdminEmailConfiguration(input, client.BearerToken(*accessToken.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

func (d *DataRetrievalService) AdminGetListPersonalDataRequest(input *data_retrieval.AdminGetListPersonalDataRequestParams) (*gdprclientmodels.ModelsListPersonalDataResponse, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := d.Client.DataRetrieval.AdminGetListPersonalDataRequest(input, client.BearerToken(*accessToken.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (d *DataRetrievalService) AdminGetUserPersonalDataRequests(input *data_retrieval.AdminGetUserPersonalDataRequestsParams) (*gdprclientmodels.ModelsUserPersonalDataResponse, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := d.Client.DataRetrieval.AdminGetUserPersonalDataRequests(input, client.BearerToken(*accessToken.AccessToken))
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
	return ok.GetPayload(), nil
}

func (d *DataRetrievalService) AdminRequestDataRetrieval(input *data_retrieval.AdminRequestDataRetrievalParams) (*gdprclientmodels.ModelsDataRetrievalResponse, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, internalServerError, err := d.Client.DataRetrieval.AdminRequestDataRetrieval(input, client.BearerToken(*accessToken.AccessToken))
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

func (d *DataRetrievalService) AdminCancelUserPersonalDataRequest(input *data_retrieval.AdminCancelUserPersonalDataRequestParams) error {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, conflict, internalServerError, err := d.Client.DataRetrieval.AdminCancelUserPersonalDataRequest(input, client.BearerToken(*accessToken.AccessToken))
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

func (d *DataRetrievalService) AdminGeneratePersonalDataURL(input *data_retrieval.AdminGeneratePersonalDataURLParams) (*gdprclientmodels.ModelsUserDataURL, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := d.Client.DataRetrieval.AdminGeneratePersonalDataURL(input, client.BearerToken(*accessToken.AccessToken))
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

func (d *DataRetrievalService) PublicGetUserPersonalDataRequests(input *data_retrieval.PublicGetUserPersonalDataRequestsParams) (*gdprclientmodels.ModelsUserPersonalDataResponse, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := d.Client.DataRetrieval.PublicGetUserPersonalDataRequests(input, client.BearerToken(*accessToken.AccessToken))
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
	return ok.GetPayload(), nil
}

func (d *DataRetrievalService) PublicRequestDataRetrieval(input *data_retrieval.PublicRequestDataRetrievalParams) (*gdprclientmodels.ModelsDataRetrievalResponse, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, internalServerError, err := d.Client.DataRetrieval.PublicRequestDataRetrieval(input, client.BearerToken(*accessToken.AccessToken))
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

func (d *DataRetrievalService) PublicCancelUserPersonalDataRequest(input *data_retrieval.PublicCancelUserPersonalDataRequestParams) (*gdprclientmodels.ModelsListPersonalDataResponse, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	noContent, unauthorized, notFound, conflict, internalServerError, err := d.Client.DataRetrieval.PublicCancelUserPersonalDataRequest(input, client.BearerToken(*accessToken.AccessToken))
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
	return noContent.GetPayload(), nil
}

func (d *DataRetrievalService) PublicGeneratePersonalDataURL(input *data_retrieval.PublicGeneratePersonalDataURLParams) (*gdprclientmodels.ModelsUserDataURL, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := d.Client.DataRetrieval.PublicGeneratePersonalDataURL(input, client.BearerToken(*accessToken.AccessToken))
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

func (d *DataRetrievalService) GetAdminEmailConfigurationShort(input *data_retrieval.GetAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) ([]string, error) {
	ok, err := d.Client.DataRetrieval.GetAdminEmailConfigurationShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (d *DataRetrievalService) UpdateAdminEmailConfigurationShort(input *data_retrieval.UpdateAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := d.Client.DataRetrieval.UpdateAdminEmailConfigurationShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (d *DataRetrievalService) SaveAdminEmailConfigurationShort(input *data_retrieval.SaveAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := d.Client.DataRetrieval.SaveAdminEmailConfigurationShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (d *DataRetrievalService) DeleteAdminEmailConfigurationShort(input *data_retrieval.DeleteAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := d.Client.DataRetrieval.DeleteAdminEmailConfigurationShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (d *DataRetrievalService) AdminGetListPersonalDataRequestShort(input *data_retrieval.AdminGetListPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*gdprclientmodels.ModelsListPersonalDataResponse, error) {
	ok, err := d.Client.DataRetrieval.AdminGetListPersonalDataRequestShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (d *DataRetrievalService) AdminGetUserPersonalDataRequestsShort(input *data_retrieval.AdminGetUserPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*gdprclientmodels.ModelsUserPersonalDataResponse, error) {
	ok, err := d.Client.DataRetrieval.AdminGetUserPersonalDataRequestsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (d *DataRetrievalService) AdminRequestDataRetrievalShort(input *data_retrieval.AdminRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*gdprclientmodels.ModelsDataRetrievalResponse, error) {
	created, err := d.Client.DataRetrieval.AdminRequestDataRetrievalShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (d *DataRetrievalService) AdminCancelUserPersonalDataRequestShort(input *data_retrieval.AdminCancelUserPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := d.Client.DataRetrieval.AdminCancelUserPersonalDataRequestShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (d *DataRetrievalService) AdminGeneratePersonalDataURLShort(input *data_retrieval.AdminGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*gdprclientmodels.ModelsUserDataURL, error) {
	ok, err := d.Client.DataRetrieval.AdminGeneratePersonalDataURLShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (d *DataRetrievalService) PublicGetUserPersonalDataRequestsShort(input *data_retrieval.PublicGetUserPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*gdprclientmodels.ModelsUserPersonalDataResponse, error) {
	ok, err := d.Client.DataRetrieval.PublicGetUserPersonalDataRequestsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (d *DataRetrievalService) PublicRequestDataRetrievalShort(input *data_retrieval.PublicRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*gdprclientmodels.ModelsDataRetrievalResponse, error) {
	created, err := d.Client.DataRetrieval.PublicRequestDataRetrievalShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (d *DataRetrievalService) PublicCancelUserPersonalDataRequestShort(input *data_retrieval.PublicCancelUserPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*gdprclientmodels.ModelsListPersonalDataResponse, error) {
	noContent, err := d.Client.DataRetrieval.PublicCancelUserPersonalDataRequestShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return noContent.GetPayload(), nil
}

func (d *DataRetrievalService) PublicGeneratePersonalDataURLShort(input *data_retrieval.PublicGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*gdprclientmodels.ModelsUserDataURL, error) {
	ok, err := d.Client.DataRetrieval.PublicGeneratePersonalDataURLShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
