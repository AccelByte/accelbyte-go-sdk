// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package gdpr

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient"
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_deletion"
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type DataDeletionService struct {
	Client          *gdprclient.JusticeGdprService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminGetListDeletionDataRequestShort instead
func (d *DataDeletionService) AdminGetListDeletionDataRequest(input *data_deletion.AdminGetListDeletionDataRequestParams) (*gdprclientmodels.ModelsListDeletionDataResponse, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := d.Client.DataDeletion.AdminGetListDeletionDataRequest(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use AdminGetUserAccountDeletionRequestShort instead
func (d *DataDeletionService) AdminGetUserAccountDeletionRequest(input *data_deletion.AdminGetUserAccountDeletionRequestParams) (*gdprclientmodels.ModelsDeletionData, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := d.Client.DataDeletion.AdminGetUserAccountDeletionRequest(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use AdminSubmitUserAccountDeletionRequestShort instead
func (d *DataDeletionService) AdminSubmitUserAccountDeletionRequest(input *data_deletion.AdminSubmitUserAccountDeletionRequestParams) (*gdprclientmodels.ModelsRequestDeleteResponse, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, unauthorized, forbidden, notFound, conflict, internalServerError, err := d.Client.DataDeletion.AdminSubmitUserAccountDeletionRequest(input, client.BearerToken(*accessToken.AccessToken))
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
	return created.GetPayload(), nil
}

// Deprecated: Use AdminCancelUserAccountDeletionRequestShort instead
func (d *DataDeletionService) AdminCancelUserAccountDeletionRequest(input *data_deletion.AdminCancelUserAccountDeletionRequestParams) error {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := d.Client.DataDeletion.AdminCancelUserAccountDeletionRequest(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use PublicSubmitUserAccountDeletionRequestShort instead
func (d *DataDeletionService) PublicSubmitUserAccountDeletionRequest(input *data_deletion.PublicSubmitUserAccountDeletionRequestParams) (*gdprclientmodels.ModelsRequestDeleteResponse, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, notFound, internalServerError, err := d.Client.DataDeletion.PublicSubmitUserAccountDeletionRequest(input, client.BearerToken(*accessToken.AccessToken))
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
	return created.GetPayload(), nil
}

// Deprecated: Use PublicCancelUserAccountDeletionRequestShort instead
func (d *DataDeletionService) PublicCancelUserAccountDeletionRequest(input *data_deletion.PublicCancelUserAccountDeletionRequestParams) error {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := d.Client.DataDeletion.PublicCancelUserAccountDeletionRequest(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use PublicGetUserAccountDeletionStatusShort instead
func (d *DataDeletionService) PublicGetUserAccountDeletionStatus(input *data_deletion.PublicGetUserAccountDeletionStatusParams) (*gdprclientmodels.ModelsDeletionStatus, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, internalServerError, err := d.Client.DataDeletion.PublicGetUserAccountDeletionStatus(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (d *DataDeletionService) AdminGetListDeletionDataRequestShort(input *data_deletion.AdminGetListDeletionDataRequestParams) (*gdprclientmodels.ModelsListDeletionDataResponse, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := d.Client.DataDeletion.AdminGetListDeletionDataRequestShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (d *DataDeletionService) AdminGetUserAccountDeletionRequestShort(input *data_deletion.AdminGetUserAccountDeletionRequestParams) (*gdprclientmodels.ModelsDeletionData, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := d.Client.DataDeletion.AdminGetUserAccountDeletionRequestShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (d *DataDeletionService) AdminSubmitUserAccountDeletionRequestShort(input *data_deletion.AdminSubmitUserAccountDeletionRequestParams) (*gdprclientmodels.ModelsRequestDeleteResponse, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := d.Client.DataDeletion.AdminSubmitUserAccountDeletionRequestShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (d *DataDeletionService) AdminCancelUserAccountDeletionRequestShort(input *data_deletion.AdminCancelUserAccountDeletionRequestParams) error {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = d.Client.DataDeletion.AdminCancelUserAccountDeletionRequestShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (d *DataDeletionService) PublicSubmitUserAccountDeletionRequestShort(input *data_deletion.PublicSubmitUserAccountDeletionRequestParams) (*gdprclientmodels.ModelsRequestDeleteResponse, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := d.Client.DataDeletion.PublicSubmitUserAccountDeletionRequestShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (d *DataDeletionService) PublicCancelUserAccountDeletionRequestShort(input *data_deletion.PublicCancelUserAccountDeletionRequestParams) error {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = d.Client.DataDeletion.PublicCancelUserAccountDeletionRequestShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (d *DataDeletionService) PublicGetUserAccountDeletionStatusShort(input *data_deletion.PublicGetUserAccountDeletionStatusParams) (*gdprclientmodels.ModelsDeletionStatus, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := d.Client.DataDeletion.PublicGetUserAccountDeletionStatusShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
