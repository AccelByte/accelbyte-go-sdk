// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/fulfillment_script"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type FulfillmentScriptService struct {
	Client                 *platformclient.JusticePlatformService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *FulfillmentScriptService) GetAuthSession() auth.Session {
	if aaa.RefreshTokenRepository != nil {
		return auth.Session{
			aaa.TokenRepository,
			aaa.ConfigRepository,
			aaa.RefreshTokenRepository,
		}
	}

	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: 2022-01-10 - please use ListFulfillmentScriptsShort instead.
func (aaa *FulfillmentScriptService) ListFulfillmentScripts(input *fulfillment_script.ListFulfillmentScriptsParams) ([]*platformclientmodels.FulfillmentScriptInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.FulfillmentScript.ListFulfillmentScripts(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use TestFulfillmentScriptEvalShort instead.
func (aaa *FulfillmentScriptService) TestFulfillmentScriptEval(input *fulfillment_script.TestFulfillmentScriptEvalParams) (*platformclientmodels.FulfillmentScriptEvalTestResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.FulfillmentScript.TestFulfillmentScriptEval(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use GetFulfillmentScriptShort instead.
func (aaa *FulfillmentScriptService) GetFulfillmentScript(input *fulfillment_script.GetFulfillmentScriptParams) (*platformclientmodels.FulfillmentScriptInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.FulfillmentScript.GetFulfillmentScript(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use CreateFulfillmentScriptShort instead.
func (aaa *FulfillmentScriptService) CreateFulfillmentScript(input *fulfillment_script.CreateFulfillmentScriptParams) (*platformclientmodels.FulfillmentScriptInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, conflict, err := aaa.Client.FulfillmentScript.CreateFulfillmentScript(input, client.BearerToken(*token.AccessToken))
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use DeleteFulfillmentScriptShort instead.
func (aaa *FulfillmentScriptService) DeleteFulfillmentScript(input *fulfillment_script.DeleteFulfillmentScriptParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = aaa.Client.FulfillmentScript.DeleteFulfillmentScript(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use UpdateFulfillmentScriptShort instead.
func (aaa *FulfillmentScriptService) UpdateFulfillmentScript(input *fulfillment_script.UpdateFulfillmentScriptParams) (*platformclientmodels.FulfillmentScriptInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := aaa.Client.FulfillmentScript.UpdateFulfillmentScript(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *FulfillmentScriptService) ListFulfillmentScriptsShort(input *fulfillment_script.ListFulfillmentScriptsParams) ([]*platformclientmodels.FulfillmentScriptInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.FulfillmentScript.ListFulfillmentScriptsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *FulfillmentScriptService) TestFulfillmentScriptEvalShort(input *fulfillment_script.TestFulfillmentScriptEvalParams) (*platformclientmodels.FulfillmentScriptEvalTestResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.FulfillmentScript.TestFulfillmentScriptEvalShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *FulfillmentScriptService) GetFulfillmentScriptShort(input *fulfillment_script.GetFulfillmentScriptParams) (*platformclientmodels.FulfillmentScriptInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.FulfillmentScript.GetFulfillmentScriptShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *FulfillmentScriptService) CreateFulfillmentScriptShort(input *fulfillment_script.CreateFulfillmentScriptParams) (*platformclientmodels.FulfillmentScriptInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := aaa.Client.FulfillmentScript.CreateFulfillmentScriptShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *FulfillmentScriptService) DeleteFulfillmentScriptShort(input *fulfillment_script.DeleteFulfillmentScriptParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.FulfillmentScript.DeleteFulfillmentScriptShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *FulfillmentScriptService) UpdateFulfillmentScriptShort(input *fulfillment_script.UpdateFulfillmentScriptParams) (*platformclientmodels.FulfillmentScriptInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.FulfillmentScript.UpdateFulfillmentScriptShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
