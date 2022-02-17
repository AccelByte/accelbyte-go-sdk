// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/admin_user_eligibilities"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type AdminUserEligibilitiesService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminRetrieveEligibilitiesShort instead
func (a *AdminUserEligibilitiesService) AdminRetrieveEligibilities(input *admin_user_eligibilities.AdminRetrieveEligibilitiesParams) (*legalclientmodels.RetrieveUserEligibilitiesIndirectResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := a.Client.AdminUserEligibilities.AdminRetrieveEligibilities(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminUserEligibilitiesService) AdminRetrieveEligibilitiesShort(input *admin_user_eligibilities.AdminRetrieveEligibilitiesParams) (*legalclientmodels.RetrieveUserEligibilitiesIndirectResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := a.Client.AdminUserEligibilities.AdminRetrieveEligibilitiesShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
