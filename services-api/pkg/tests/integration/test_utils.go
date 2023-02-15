package integration

import (
	"fmt"
	"os"
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
)

func LoginUser(t *testing.T) *iam.OAuth20Service {
	t.Helper()

	oAuth20Service := &iam.OAuth20Service{
		Client:           factory.NewIamClient(auth.DefaultConfigRepositoryImpl()),
		ConfigRepository: auth.DefaultConfigRepositoryImpl(),
		TokenRepository:  auth.DefaultTokenRepositoryImpl(),
	}
	username := os.Getenv("AB_USERNAME")
	password := os.Getenv("AB_PASSWORD")

	input := &o_auth2_0.TokenGrantV3Params{
		Password:  &password,
		Username:  &username,
		GrantType: o_auth2_0.TokenGrantV3PasswordConstant,
	}
	accessToken, err := oAuth20Service.TokenGrantV3Short(input)
	if err != nil {
		t.Fatal(fmt.Errorf("login failed: %w", err))
	} else if accessToken == nil { //lint:ignore SA5011 possible nil pointer dereference
		t.Fatal(fmt.Errorf("empty access token: %w", err))
	} else {
		errStore := oAuth20Service.TokenRepository.Store(*accessToken)
		if errStore != nil {
			t.Fatal(fmt.Errorf("store token failed: %w", err))
		}
	}

	return oAuth20Service
}
