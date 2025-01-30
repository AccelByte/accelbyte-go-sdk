// Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"github.com/AccelByte/accelbyte-go-sdk/loginqueue-sdk/pkg/loginqueueclient/admin_v1"
	"github.com/AccelByte/accelbyte-go-sdk/loginqueue-sdk/pkg/loginqueueclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/loginqueue"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/stretchr/testify/assert"

	"strings"
	"testing"
)

var (
	loginQueueAdminV1Service = &loginqueue.AdminV1Service{
		Client:          factory.NewLoginQueueClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	updateMaxLoginRate = int32(100)
)

func TestIntegrationLoginQueue(t *testing.T) {
	if strings.Contains(configRepository.BaseUrl, "gamingservices.accelbyte.io") {
		t.Skip("skip for ags starter")
	}

	// Login User - Arrange
	Init()

	// CASE Admin Get Configuration
	get, errGet := loginQueueAdminV1Service.AdminGetConfigurationShort(&admin_v1.AdminGetConfigurationParams{
		Namespace: integration.NamespaceTest,
	})

	// ESAC

	// Assert
	assert.Nil(t, errGet, "should be nil")
	assert.NotNil(t, get, "should not be nil")

	//if updateMaxLoginRate == *get.MaxLoginRate {
	//	updateMaxLoginRate = int32(rand.Int())
	//}

	// CASE Admin Update Configuration
	update, errUpdate := loginQueueAdminV1Service.AdminUpdateConfigurationShort(&admin_v1.AdminUpdateConfigurationParams{
		Body: &loginqueueclientmodels.ApimodelsConfigurationRequest{
			MaxLoginRate: &updateMaxLoginRate,
		},
		Namespace: integration.NamespaceTest,
	})

	// ESAC

	// Assert
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	} else {
		assert.NotNil(t, update, "should not be nil")
		assert.Equal(t, *update.MaxLoginRate, updateMaxLoginRate)
	}
}
