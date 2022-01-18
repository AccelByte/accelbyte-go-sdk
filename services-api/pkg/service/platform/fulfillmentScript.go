// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/fulfillment_script"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type FulfillmentScriptService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (f *FulfillmentScriptService) ListFulfillmentScripts(input *fulfillment_script.ListFulfillmentScriptsParams)([]*platformclientmodels.FulfillmentScriptInfo, error) {
    accessToken, err := f.TokenRepository.GetToken()
    if err != nil {
		return nil, err
	}
ok, err := f.Client.FulfillmentScript.ListFulfillmentScripts(input, client.BearerToken(*accessToken.AccessToken))
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FulfillmentScriptService) TestFulfillmentScriptEval(input *fulfillment_script.TestFulfillmentScriptEvalParams)(*platformclientmodels.FulfillmentScriptEvalTestResult, error) {
    accessToken, err := f.TokenRepository.GetToken()
    if err != nil {
		return nil, err
	}
ok, err := f.Client.FulfillmentScript.TestFulfillmentScriptEval(input, client.BearerToken(*accessToken.AccessToken))
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FulfillmentScriptService) GetFulfillmentScript(input *fulfillment_script.GetFulfillmentScriptParams)(*platformclientmodels.FulfillmentScriptInfo, error) {
    accessToken, err := f.TokenRepository.GetToken()
    if err != nil {
		return nil, err
	}
ok, notFound, err := f.Client.FulfillmentScript.GetFulfillmentScript(input, client.BearerToken(*accessToken.AccessToken))
    if notFound != nil {
		return nil, notFound
    }
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FulfillmentScriptService) CreateFulfillmentScript(input *fulfillment_script.CreateFulfillmentScriptParams)(*platformclientmodels.FulfillmentScriptInfo, error) {
    accessToken, err := f.TokenRepository.GetToken()
    if err != nil {
		return nil, err
	}
created, conflict, err := f.Client.FulfillmentScript.CreateFulfillmentScript(input, client.BearerToken(*accessToken.AccessToken))
    if conflict != nil {
		return nil, conflict
    }
    if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (f *FulfillmentScriptService) DeleteFulfillmentScript(input *fulfillment_script.DeleteFulfillmentScriptParams) error {
	accessToken, err := f.TokenRepository.GetToken()
    if err != nil {
		return err
	}
    _, err = f.Client.FulfillmentScript.DeleteFulfillmentScript(input, client.BearerToken(*accessToken.AccessToken))
    if err != nil {
		return err
	}
	return nil
}

func (f *FulfillmentScriptService) UpdateFulfillmentScript(input *fulfillment_script.UpdateFulfillmentScriptParams)(*platformclientmodels.FulfillmentScriptInfo, error) {
    accessToken, err := f.TokenRepository.GetToken()
    if err != nil {
		return nil, err
	}
ok, badRequest, err := f.Client.FulfillmentScript.UpdateFulfillmentScript(input, client.BearerToken(*accessToken.AccessToken))
    if badRequest != nil {
		return nil, badRequest
    }
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FulfillmentScriptService) ListFulfillmentScriptsShort(input *fulfillment_script.ListFulfillmentScriptsParams, authInfo runtime.ClientAuthInfoWriter)([]*platformclientmodels.FulfillmentScriptInfo, error) {
    ok, err := f.Client.FulfillmentScript.ListFulfillmentScriptsShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FulfillmentScriptService) TestFulfillmentScriptEvalShort(input *fulfillment_script.TestFulfillmentScriptEvalParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.FulfillmentScriptEvalTestResult, error) {
    ok, err := f.Client.FulfillmentScript.TestFulfillmentScriptEvalShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FulfillmentScriptService) GetFulfillmentScriptShort(input *fulfillment_script.GetFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.FulfillmentScriptInfo, error) {
    ok, err := f.Client.FulfillmentScript.GetFulfillmentScriptShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FulfillmentScriptService) CreateFulfillmentScriptShort(input *fulfillment_script.CreateFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.FulfillmentScriptInfo, error) {
    created, err := f.Client.FulfillmentScript.CreateFulfillmentScriptShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (f *FulfillmentScriptService) DeleteFulfillmentScriptShort(input *fulfillment_script.DeleteFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) error {
    _, err := f.Client.FulfillmentScript.DeleteFulfillmentScriptShort(input, authInfo)
    if err != nil {
		return err
	}
	return nil
}

func (f *FulfillmentScriptService) UpdateFulfillmentScriptShort(input *fulfillment_script.UpdateFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.FulfillmentScriptInfo, error) {
    ok, err := f.Client.FulfillmentScript.UpdateFulfillmentScriptShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

