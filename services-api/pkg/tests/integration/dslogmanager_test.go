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
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
)

var (
	limit = int64(20)
)

func TestIntegrationListTerminatedServers(t *testing.T) {
	t.Skipf("temporarily disabled") // Armada is deprecated

	t.Parallel()

	// Login User - Arrange
	Init()

	terminatedServersService := &dslogmanager.TerminatedServersService{
		Client:          factory.NewDslogmanagerClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}

	inputTerminatedServer := &terminated_servers.ListTerminatedServersParams{
		Namespace: integration.NamespaceTest,
		Limit:     &limit,
	}

	ok, err := terminatedServersService.ListTerminatedServersShort(inputTerminatedServer)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}
