package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/utility"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type UtilityService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// CheckReadiness is used to check legal data readiness
func (u *UtilityService) CheckReadiness() (*legalclientmodels.LegalReadinessStatusResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &utility.CheckReadinessParams{}
	ok, err := u.Client.Utility.CheckReadiness(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}
