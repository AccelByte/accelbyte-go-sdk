package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/eligibilities"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type EligibilitiesService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// RetrieveEligibilitiesPublic is used to check user legal eligibility
func (e *EligibilitiesService) RetrieveEligibilitiesPublic(input *eligibilities.RetrieveEligibilitiesPublicParams) ([]*legalclientmodels.RetrieveUserEligibilitiesResponse, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := e.Client.Eligibilities.RetrieveEligibilitiesPublic(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveEligibilitiesPublicIndirect is used to check user legal eligibility
func (e *EligibilitiesService) RetrieveEligibilitiesPublicIndirect(input *eligibilities.RetrieveEligibilitiesPublicIndirectParams) (*legalclientmodels.RetrieveUserEligibilitiesIndirectResponse, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := e.Client.Eligibilities.RetrieveEligibilitiesPublicIndirect(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}
