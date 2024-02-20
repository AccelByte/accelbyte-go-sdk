// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclient/all_terminated_servers"
	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclient/artifact_upload_process_queue"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsartifact"
)

var (
	artifactUploadProcessQueueService = &dsartifact.ArtifactUploadProcessQueueService{
		Client:          factory.NewDsartifactClient(configRepository),
		TokenRepository: tokenRepository,
	}
	allTerminatedServersService = &dsartifact.AllTerminatedServersService{
		Client:          factory.NewDsartifactClient(configRepository),
		TokenRepository: tokenRepository,
	}
)

func TestIntegrationListAllQueue(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE List all queue
	input := &artifact_upload_process_queue.ListAllQueueParams{
		Namespace: namespace,
		Limit:     &limit,
	}
	ok, err := artifactUploadProcessQueueService.ListAllQueueShort(input)
	if err != nil {
		t.Skipf("temporarily disabled") // Armada is deprecated
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

func TestIntegrationListTerminatedServersArtifact(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE List terminated servers
	input := &all_terminated_servers.ListTerminatedServersParams{
		Limit: &limit,
	}
	ok, err := allTerminatedServersService.ListTerminatedServersShort(input)
	if err != nil {
		t.Skipf("temporarily disabled") // Armada is deprecated
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}
