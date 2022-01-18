// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package basic

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/anonymization"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type AnonymizationService struct {
	Client          *basicclient.JusticeBasicService
	TokenRepository repository.TokenRepository
}

func (a *AnonymizationService) AnonymizeUserProfile(input *anonymization.AnonymizeUserProfileParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, err := a.Client.Anonymization.AnonymizeUserProfile(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if err != nil {
		return err
	}
	return nil
}

func (a *AnonymizationService) AnonymizeUserProfileShort(input *anonymization.AnonymizeUserProfileParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.Anonymization.AnonymizeUserProfileShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}
