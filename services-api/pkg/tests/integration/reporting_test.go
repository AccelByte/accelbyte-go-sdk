// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_reasons"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/public_reports"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/reporting"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"
)

var (
	adminReasonsService = &reporting.AdminReasonsService{
		Client:          factory.NewReportingClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	publicReportsService = &reporting.PublicReportsService{
		Client:          factory.NewReportingClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository2ndPlayer,
	}
	reasonTitle = "reason_title_go" + RandStringBytes(4)
	categoryUGC = reportingclientmodels.RestapiReportResponseCategoryUGC
)

func TestIntegrationCreateReason(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Create Reason
	inputCreateReason := &admin_reasons.CreateReasonParams{
		Body: &reportingclientmodels.RestapiCreateReasonRequest{
			Description: &reasonTitle,
			GroupIds:    []string{},
			Title:       &reasonTitle,
		},
		Namespace: namespace,
	}

	created, errCreate := adminReasonsService.CreateReasonShort(inputCreateReason)
	// ESAC

	// Assert
	assert.Nil(t, errCreate, "should be nil")
	assert.NotNil(t, created, "should not be nil")

	// Cleanup
	deleteReason(*created.ID)
}

func TestIntegrationDeleteReason(t *testing.T) {
	// Login User - Arrange
	Init()

	// Get Reason ID
	reasonID, err := createReason()
	if err != nil {
		assert.Nil(t, err.Error(), "should be nil")
	}

	// CASE Delete Reason
	inputDeleteReason := &admin_reasons.DeleteReasonParams{
		Namespace: namespace,
		ReasonID:  reasonID,
	}

	errDelete := adminReasonsService.DeleteReasonShort(inputDeleteReason)
	// ESAC

	// Assert
	assert.Nil(t, errDelete, "err should be nil")
}

func TestIntegrationSubmitReport(t *testing.T) {
	// Create temp user and login - Arrange
	userID = createPlayer2()
	defer deletePlayer(userID)

	// Create reason - Arrange
	reasonID, err := createReason()
	if err != nil {
		assert.Nil(t, err.Error(), "should be nil")
	}

	// CASE Submit Report
	inputReport := &public_reports.SubmitReportParams{
		Body: &reportingclientmodels.RestapiSubmitReportRequest{
			AdditionalInfo:    emptyInterface,
			Category:          &categoryUGC,
			Comment:           reasonTitle,
			ExtensionCategory: categoryUGC,
			ObjectID:          utils.GenerateID(),
			ObjectType:        utils.GenerateID(),
			Reason:            &reasonTitle,
			UserID:            &userID,
		},
		Namespace: namespace,
	}

	created, errCreate := publicReportsService.SubmitReportShort(inputReport)
	// ESAC

	// Assert
	if errCreate != nil {
		assert.Nil(t, errCreate.Error(), "should be nil")
	}
	assert.NotNil(t, created, "should not be nil")

	// Cleanup
	deleteReason(reasonID)
}

func createReason() (string, error) {
	inputGetReason := &admin_reasons.AdminGetReasonsParams{
		Namespace: namespace,
		Title:     &reasonTitle,
	}
	get, errGet := adminReasonsService.AdminGetReasonsShort(inputGetReason)
	if errGet != nil {
		logrus.Error(errGet.Error())
	}
	for _, reason := range get.Data {
		if reason.Title != nil {
			return *reason.ID, nil
		}
	}

	inputCreateReason := &admin_reasons.CreateReasonParams{
		Body: &reportingclientmodels.RestapiCreateReasonRequest{
			Description: &reasonTitle,
			GroupIds:    []string{},
			Title:       &reasonTitle,
		},
		Namespace: namespace,
	}

	create, errCreate := adminReasonsService.CreateReasonShort(inputCreateReason)
	if errCreate != nil {
		logrus.Error(errCreate.Error())
	}

	return *create.ID, nil
}

func deleteReason(reasonID string) {
	inputDeleteReason := &admin_reasons.DeleteReasonParams{
		Namespace: namespace,
		ReasonID:  reasonID,
	}

	err := adminReasonsService.DeleteReasonShort(inputDeleteReason)
	if err != nil {
		logrus.Error(err.Error())
	}
}
