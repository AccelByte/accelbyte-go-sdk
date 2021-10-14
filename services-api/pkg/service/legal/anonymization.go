package legal

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/anonymization"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type AnonymizationService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// AnonymizeUserAgreement is used to anonymize user s agreement record
func (a *AnonymizationService) AnonymizeUserAgreement(input *anonymization.AnonymizeUserAgreementParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, notFound, err := a.Client.Anonymization.AnonymizeUserAgreement(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}
