// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/anonymization"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type AnonymizationService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AnonymizeUserAgreementShort instead
func (a *AnonymizationService) AnonymizeUserAgreement(input *anonymization.AnonymizeUserAgreementParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, err := a.Client.Anonymization.AnonymizeUserAgreement(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}
	return nil
}

func (a *AnonymizationService) AnonymizeUserAgreementShort(input *anonymization.AnonymizeUserAgreementParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.Anonymization.AnonymizeUserAgreementShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}
