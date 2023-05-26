// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/fleets"
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/images"
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/operations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
)

var (
	operationAmsService = &ams.OperationsService{
		Client:          factory.NewAmsClient(configRepo),
		TokenRepository: tokenRepository,
	}
	imagesService = &ams.ImagesService{
		Client:          factory.NewAmsClient(configRepo),
		TokenRepository: tokenRepository,
	}
	fleetService = &ams.FleetsService{
		Client:          factory.NewAmsClient(configRepo),
		TokenRepository: tokenRepository,
	}
	fleetName       = "GoSDKFleet"
	fleetNameUpdate = "GoSDKFleetUpdate"
	bufferSize      = int32(10)
	regionConfig    = "us-test-1"
	claimKeys       = []string{"beta"}
	fleetRegions    []*amsclientmodels.APIRegionConfig
	fleetRegion     = &amsclientmodels.APIRegionConfig{
		BufferSize: &bufferSize,
		Region:     &regionConfig,
	}
	imageId = "imageId"
)

func TestIntegrationAmsBasicHealthCheck(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Basic Health check
	input := &operations.BasicHealthCheckParams{}
	err := operationAmsService.BasicHealthCheckShort(input)
	if err != nil {
		assert.FailNow(t, err.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
}

func TestIntegrationAmsImageList(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Image List
	inputGet := &images.ImageListParams{
		Namespace: integration.NamespaceTest,
	}
	get, errGet := imagesService.ImageListShort(inputGet)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())

		return
	}
	// ESAC

	// Assert
	assert.NotNil(t, get, "should not be nil")
	assert.Nil(t, errGet, "err should be nil")
}

func TestIntegrationAmsFleet(t *testing.T) {
	// Login User - Arrange
	Init()

	fleetRegions = append(fleetRegions, fleetRegion)

	// CASE Create Fleet
	inputCreate := &fleets.FleetCreateParams{
		Body: &amsclientmodels.APIFleetParameters{
			Active:    &defaultBool,
			ClaimKeys: claimKeys,
			ImageDeploymentProfile: &amsclientmodels.APIImageDeploymentProfile{
				ImageID: &imageId,
			},
			Name:    &fleetName,
			Regions: fleetRegions,
		},
		Namespace: integration.NamespaceTest,
	}
	created, errCreated := fleetService.FleetCreateShort(inputCreate)
	if errCreated != nil {
		t.Skip("not using the real image Id")
		assert.FailNow(t, errCreated.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errCreated, "err should be nil")
	assert.NotNil(t, created, "should not be nil")
	t.Logf("fleetId: %v", *created.ID)

	// CASE Get Fleet
	inputGet := &fleets.FleetGetParams{
		FleetID:   *created.ID,
		Namespace: integration.NamespaceTest,
	}
	get, errGet := fleetService.FleetGetShort(inputGet)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "should not be nil")

	// CASE Update Fleet
	inputUpdate := &fleets.FleetUpdateParams{
		Body: &amsclientmodels.APIFleetParameters{
			Active:    &defaultBool,
			ClaimKeys: claimKeys,
			ImageDeploymentProfile: &amsclientmodels.APIImageDeploymentProfile{
				ImageID: &imageId,
			},
			Name:    &fleetNameUpdate,
			Regions: fleetRegions,
		},
		FleetID:   *created.ID,
		Namespace: integration.NamespaceTest,
	}
	errUpdated := fleetService.FleetUpdateShort(inputUpdate)
	if errUpdated != nil {
		assert.FailNow(t, errUpdated.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errUpdated, "err should be nil")

	// CASE Delete Fleet
	inputDelete := &fleets.FleetDeleteParams{
		FleetID:   *created.ID,
		Namespace: integration.NamespaceTest,
	}
	errDelete := fleetService.FleetDeleteShort(inputDelete)
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errDelete, "err should be nil")
}
