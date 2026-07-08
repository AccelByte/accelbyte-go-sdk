// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataDeletionHeadless

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_deletion_headless"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicSubmitMyHeadlessDeletionRequestCmd represents the PublicSubmitMyHeadlessDeletionRequest command
var PublicSubmitMyHeadlessDeletionRequestCmd = &cobra.Command{
	Use:   "publicSubmitMyHeadlessDeletionRequest",
	Short: "Public submit my headless deletion request",
	Long:  `Public submit my headless deletion request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataDeletionHeadlessService := &gdpr.DataDeletionHeadlessService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &data_deletion_headless.PublicSubmitMyHeadlessDeletionRequestParams{}
		created, errCreated := dataDeletionHeadlessService.PublicSubmitMyHeadlessDeletionRequestShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
}
