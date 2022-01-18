// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/admin_user_agreement"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type AdminUserAgreementService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

func (a *AdminUserAgreementService) IndirectBulkAcceptVersionedPolicy(input *admin_user_agreement.IndirectBulkAcceptVersionedPolicyParams) (*legalclientmodels.AcceptAgreementResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := a.Client.AdminUserAgreement.IndirectBulkAcceptVersionedPolicy(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminUserAgreementService) IndirectBulkAcceptVersionedPolicyShort(input *admin_user_agreement.IndirectBulkAcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*legalclientmodels.AcceptAgreementResponse, error) {
	ok, err := a.Client.AdminUserAgreement.IndirectBulkAcceptVersionedPolicyShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
