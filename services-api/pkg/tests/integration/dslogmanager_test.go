// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/terminated_servers"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dslogmanager"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	terminatedServersService = &dslogmanager.TerminatedServersService{
		Client:          factory.NewDslogmanagerClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
	limit                 = int64(20)
	inputTerminatedServer = &terminated_servers.ListTerminatedServersParams{
		Namespace: integration.NamespaceTest,
		Limit:     &limit,
	}
)

// Getting all terminated servers
func TestIntegrationListTerminatedServers(t *testing.T) {
	t.Parallel()
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := terminatedServersService.ListTerminatedServers(inputTerminatedServer)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}
