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

var (
	qosmConfigRepo = auth.DefaultConfigRepositoryImpl()
	qosmTokenRepo  = auth.DefaultTokenRepositoryImpl()
	qosmClient     = factory.NewQosmClient(qosmConfigRepo)
	serverService  = &qosm.ServerService{
		Client:          qosmClient,
		TokenRepository: qosmTokenRepo,
	}
	publicService = &qosm.PublicService{
		Client:          qosmClient,
		TokenRepository: qosmTokenRepo,
	}
)

// ListServer + Heartbeat
func TestIntegrationListServerHeartbeat(t *testing.T) {
	// Login User - Arrange
	Init()

	// ListServer - Arrange
	inputListServer := &public.ListServerParams{}

	// ListServer - Act
	listServerOk, err := publicService.ListServerShort(inputListServer)

	// ListServer - Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, listServerOk, "response should not be nil")

	// Heartbeat - Arrange
	if len(listServerOk.Servers) == 0 {
		t.Skip("response 'Servers' is empty")
	}
	firstServer := listServerOk.Servers[0]
	heartbeatRequest := qosmclientmodels.ModelsHeartbeatRequest{
		IP:     firstServer.IP,
		Port:   firstServer.Port,
		Region: firstServer.Region,
	}
	inputHeartbeat := &server.HeartbeatParams{
		Body: &heartbeatRequest,
	}

	// Heartbeat - Act
	err = serverService.HeartbeatShort(inputHeartbeat)

	// Heartbeat - Assert
	assert.Nil(t, err, "err should be nil")
}
