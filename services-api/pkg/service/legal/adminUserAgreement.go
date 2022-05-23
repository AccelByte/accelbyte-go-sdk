// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/admin_user_agreement"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type AdminUserAgreementService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use IndirectBulkAcceptVersionedPolicyShort instead
func (a *AdminUserAgreementService) IndirectBulkAcceptVersionedPolicy(input *admin_user_agreement.IndirectBulkAcceptVersionedPolicyParams) (*legalclientmodels.AcceptAgreementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := a.Client.AdminUserAgreement.IndirectBulkAcceptVersionedPolicy(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AdminUserAgreementService) IndirectBulkAcceptVersionedPolicyShort(input *admin_user_agreement.IndirectBulkAcceptVersionedPolicyParams) (*legalclientmodels.AcceptAgreementResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := a.Client.AdminUserAgreement.IndirectBulkAcceptVersionedPolicyShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
