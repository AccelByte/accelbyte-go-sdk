// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/campaign"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type CampaignService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use QueryCampaignsShort instead
func (c *CampaignService) QueryCampaigns(input *campaign.QueryCampaignsParams) (*platformclientmodels.CampaignPagingSlicedResult, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := c.Client.Campaign.QueryCampaigns(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use CreateCampaignShort instead
func (c *CampaignService) CreateCampaign(input *campaign.CreateCampaignParams) (*platformclientmodels.CampaignInfo, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, conflict, unprocessableEntity, err := c.Client.Campaign.CreateCampaign(input, client.BearerToken(*accessToken.AccessToken))
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

// Deprecated: Use GetCampaignShort instead
func (c *CampaignService) GetCampaign(input *campaign.GetCampaignParams) (*platformclientmodels.CampaignInfo, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := c.Client.Campaign.GetCampaign(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateCampaignShort instead
func (c *CampaignService) UpdateCampaign(input *campaign.UpdateCampaignParams) (*platformclientmodels.CampaignInfo, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := c.Client.Campaign.UpdateCampaign(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetCampaignDynamicShort instead
func (c *CampaignService) GetCampaignDynamic(input *campaign.GetCampaignDynamicParams) (*platformclientmodels.CampaignDynamicInfo, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := c.Client.Campaign.GetCampaignDynamic(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use QueryCodesShort instead
func (c *CampaignService) QueryCodes(input *campaign.QueryCodesParams) (*platformclientmodels.CodeInfoPagingSlicedResult, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := c.Client.Campaign.QueryCodes(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use CreateCodesShort instead
func (c *CampaignService) CreateCodes(input *campaign.CreateCodesParams) (*platformclientmodels.CodeCreateResult, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, notFound, unprocessableEntity, err := c.Client.Campaign.CreateCodes(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

// Deprecated: Use DownloadShort instead
func (c *CampaignService) Download(input *campaign.DownloadParams) error {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = c.Client.Campaign.Download(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use BulkDisableCodesShort instead
func (c *CampaignService) BulkDisableCodes(input *campaign.BulkDisableCodesParams) (*platformclientmodels.BulkOperationResult, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := c.Client.Campaign.BulkDisableCodes(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use BulkEnableCodesShort instead
func (c *CampaignService) BulkEnableCodes(input *campaign.BulkEnableCodesParams) (*platformclientmodels.BulkOperationResult, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := c.Client.Campaign.BulkEnableCodes(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use QueryRedeemHistoryShort instead
func (c *CampaignService) QueryRedeemHistory(input *campaign.QueryRedeemHistoryParams) (*platformclientmodels.RedeemHistoryPagingSlicedResult, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := c.Client.Campaign.QueryRedeemHistory(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetCodeShort instead
func (c *CampaignService) GetCode(input *campaign.GetCodeParams) (*platformclientmodels.CodeInfo, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := c.Client.Campaign.GetCode(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use DisableCodeShort instead
func (c *CampaignService) DisableCode(input *campaign.DisableCodeParams) (*platformclientmodels.CodeInfo, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := c.Client.Campaign.DisableCode(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use EnableCodeShort instead
func (c *CampaignService) EnableCode(input *campaign.EnableCodeParams) (*platformclientmodels.CodeInfo, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := c.Client.Campaign.EnableCode(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use ApplyUserRedemptionShort instead
func (c *CampaignService) ApplyUserRedemption(input *campaign.ApplyUserRedemptionParams) (*platformclientmodels.RedeemResult, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := c.Client.Campaign.ApplyUserRedemption(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CampaignService) QueryCampaignsShort(input *campaign.QueryCampaignsParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.CampaignPagingSlicedResult, error) {
	ok, err := c.Client.Campaign.QueryCampaignsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CampaignService) CreateCampaignShort(input *campaign.CreateCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.CampaignInfo, error) {
	created, err := c.Client.Campaign.CreateCampaignShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (c *CampaignService) GetCampaignShort(input *campaign.GetCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.CampaignInfo, error) {
	ok, err := c.Client.Campaign.GetCampaignShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CampaignService) UpdateCampaignShort(input *campaign.UpdateCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.CampaignInfo, error) {
	ok, err := c.Client.Campaign.UpdateCampaignShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CampaignService) GetCampaignDynamicShort(input *campaign.GetCampaignDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.CampaignDynamicInfo, error) {
	ok, err := c.Client.Campaign.GetCampaignDynamicShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CampaignService) QueryCodesShort(input *campaign.QueryCodesParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.CodeInfoPagingSlicedResult, error) {
	ok, err := c.Client.Campaign.QueryCodesShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CampaignService) CreateCodesShort(input *campaign.CreateCodesParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.CodeCreateResult, error) {
	created, err := c.Client.Campaign.CreateCodesShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (c *CampaignService) DownloadShort(input *campaign.DownloadParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := c.Client.Campaign.DownloadShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (c *CampaignService) BulkDisableCodesShort(input *campaign.BulkDisableCodesParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.BulkOperationResult, error) {
	ok, err := c.Client.Campaign.BulkDisableCodesShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CampaignService) BulkEnableCodesShort(input *campaign.BulkEnableCodesParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.BulkOperationResult, error) {
	ok, err := c.Client.Campaign.BulkEnableCodesShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CampaignService) QueryRedeemHistoryShort(input *campaign.QueryRedeemHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.RedeemHistoryPagingSlicedResult, error) {
	ok, err := c.Client.Campaign.QueryRedeemHistoryShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CampaignService) GetCodeShort(input *campaign.GetCodeParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.CodeInfo, error) {
	ok, err := c.Client.Campaign.GetCodeShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CampaignService) DisableCodeShort(input *campaign.DisableCodeParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.CodeInfo, error) {
	ok, err := c.Client.Campaign.DisableCodeShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CampaignService) EnableCodeShort(input *campaign.EnableCodeParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.CodeInfo, error) {
	ok, err := c.Client.Campaign.EnableCodeShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CampaignService) ApplyUserRedemptionShort(input *campaign.ApplyUserRedemptionParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.RedeemResult, error) {
	ok, err := c.Client.Campaign.ApplyUserRedemptionShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
