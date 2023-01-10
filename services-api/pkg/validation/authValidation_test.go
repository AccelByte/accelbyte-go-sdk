// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package validation_test

import (
	"fmt"
	"testing"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/validation"
	"github.com/stretchr/testify/assert"
)

type MyConfigRepo struct {
	baseUrl      string
	clientId     string
	clientSecret string
}

func (c *MyConfigRepo) GetClientId() string       { return c.clientId }
func (c *MyConfigRepo) GetClientSecret() string   { return c.clientSecret }
func (c *MyConfigRepo) GetJusticeBaseUrl() string { return c.baseUrl }

func TestTokenValidator_ValidateToken(t *testing.T) {
	// Arrange
	baseUrl := "https://development.accelbyte.io"
	clientId := "4eb9c4f862fe452e8d675c3030f25912" // TODO mock and remove hardcode
	clientSecret := ""
	configRepo := &MyConfigRepo{
		baseUrl:      baseUrl,
		clientId:     clientId,
		clientSecret: clientSecret,
	}
	tokenRepo := auth.DefaultTokenRepositoryImpl()
	authService := iam.OAuth20Service{
		Client:           factory.NewIamClient(configRepo),
		ConfigRepository: configRepo,
		TokenRepository:  tokenRepo,
	}

	err := authService.LoginClient(&clientId, &clientSecret)
	if err != nil {
		assert.Fail(t, err.Error())

		return
	}

	accessToken, err := authService.GetToken()
	if err != nil {
		assert.Fail(t, err.Error())

		return
	}

	namespace := "accelbyte"
	resourceName := "MMV2GRPCSERVICE"
	requiredPermission := validation.Permission{
		Action:   2,
		Resource: fmt.Sprintf("NAMESPACE:%s:%s", namespace, resourceName),
	}

	validator := validation.NewTokenValidator(authService, time.Hour)
	validator.Initialize()

	// Act
	err = validator.Validate(accessToken, &requiredPermission, &namespace, nil)

	// Assert
	assert.Nil(t, err)
}
