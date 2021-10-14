package legal

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type AgreementService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// AcceptVersionedPolicy is used to accept a policy version
func (a *AgreementService) AcceptVersionedPolicy(input *agreement.AcceptVersionedPolicyParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = a.Client.Agreement.AcceptVersionedPolicy(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// BulkAcceptVersionedPolicy is used to bulk accept policy versions
func (a *AgreementService) BulkAcceptVersionedPolicy(input *agreement.BulkAcceptVersionedPolicyParams) (*legalclientmodels.AcceptAgreementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	created, err := a.Client.Agreement.BulkAcceptVersionedPolicy(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

// ChangePreferenceConsent is used to accept revoke marketing preference consent
func (a *AgreementService) ChangePreferenceConsent(input *agreement.ChangePreferenceConsentParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, badRequest, err := a.Client.Agreement.ChangePreferenceConsent(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// IndirectBulkAcceptVersionedPolicy is used to bulk accept policy versions indirect
func (a *AgreementService) IndirectBulkAcceptVersionedPolicy(input *agreement.IndirectBulkAcceptVersionedPolicyParams) (*legalclientmodels.AcceptAgreementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	created, err := a.Client.Agreement.IndirectBulkAcceptVersionedPolicy(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

// IndirectBulkAcceptVersionedPolicyV2 is used to bulk accept policy versions indirect
func (a *AgreementService) IndirectBulkAcceptVersionedPolicyV2(input *agreement.IndirectBulkAcceptVersionedPolicyV2Params) (*legalclientmodels.AcceptAgreementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	created, err := a.Client.Agreement.IndirectBulkAcceptVersionedPolicyV2(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

// RetrieveAcceptedAgreements is used to retrieve accepted legal agreements
func (a *AgreementService) RetrieveAcceptedAgreements(input *agreement.RetrieveAcceptedAgreementsParams) ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := a.Client.Agreement.RetrieveAcceptedAgreements(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveAgreementsPublic is used to retrieve the accepted legal agreements
func (a *AgreementService) RetrieveAgreementsPublic() ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &agreement.RetrieveAgreementsPublicParams{}
	ok, err := a.Client.Agreement.RetrieveAgreementsPublic(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveAllUsersByPolicyVersion is used to retrieve all users accepting legal agreements
func (a *AgreementService) RetrieveAllUsersByPolicyVersion(input *agreement.RetrieveAllUsersByPolicyVersionParams) ([]*legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, notFound, err := a.Client.Agreement.RetrieveAllUsersByPolicyVersion(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}
