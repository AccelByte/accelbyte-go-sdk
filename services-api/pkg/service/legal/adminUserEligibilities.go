// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/admin_user_eligibilities"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type AdminUserEligibilitiesService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminRetrieveEligibilitiesShort instead
func (a *AdminUserEligibilitiesService) AdminRetrieveEligibilities(input *admin_user_eligibilities.AdminRetrieveEligibilitiesParams) (*legalclientmodels.RetrieveUserEligibilitiesIndirectResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := a.Client.AdminUserEligibilities.AdminRetrieveEligibilities(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AdminUserEligibilitiesService) AdminRetrieveEligibilitiesShort(input *admin_user_eligibilities.AdminRetrieveEligibilitiesParams, authInfoWriter runtime.ClientAuthInfoWriter) (*legalclientmodels.RetrieveUserEligibilitiesIndirectResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.AdminUserEligibilities.AdminRetrieveEligibilitiesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
