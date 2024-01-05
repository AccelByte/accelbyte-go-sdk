// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient/public"
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient/server"
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/qosm"
)

// ListServer + Heartbeat
func TestIntegrationListServerHeartbeat(t *testing.T) {
	t.Skipf("temporarily disabled") // Armada is deprecated

	// Login User - Arrange
	Init()

	qosmConfigRepo := auth.DefaultConfigRepositoryImpl()
	qosmClient := factory.NewQosmClient(qosmConfigRepo)
	qosmTokenRepo := tokenRepository

	publicService := &qosm.PublicService{
		Client:          qosmClient,
		TokenRepository: qosmTokenRepo,
	}

	inputListServer := &public.ListServerParams{}

	listServerOk, errListSertver := publicService.ListServerShort(inputListServer)

	// Assert
	assert.Nil(t, errListSertver, "err should be nil")

	if len(listServerOk.Servers) == 0 {
		t.Skip("response 'Servers' is empty")
	}

	firstServer := listServerOk.Servers[0]
	heartbeatRequest := qosmclientmodels.ModelsHeartbeatRequest{
		IP:     firstServer.IP,
		Port:   firstServer.Port,
		Region: firstServer.Region,
	}

	serverService := &qosm.ServerService{
		Client:          qosmClient,
		TokenRepository: qosmTokenRepo,
	}

	inputHeartbeat := &server.HeartbeatParams{
		Body: &heartbeatRequest,
	}

	err := serverService.HeartbeatShort(inputHeartbeat)

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, listServerOk, "response should not be nil")
}
