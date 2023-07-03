// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataDeletion

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_deletion"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicSubmitMyAccountDeletionRequestCmd represents the PublicSubmitMyAccountDeletionRequest command
var PublicSubmitMyAccountDeletionRequestCmd = &cobra.Command{
	Use:   "publicSubmitMyAccountDeletionRequest",
	Short: "Public submit my account deletion request",
	Long:  `Public submit my account deletion request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataDeletionService := &gdpr.DataDeletionService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		platformId, _ := cmd.Flags().GetString("platformId")
		platformToken, _ := cmd.Flags().GetString("platformToken")
		input := &data_deletion.PublicSubmitMyAccountDeletionRequestParams{
			PlatformID:    platformId,
			PlatformToken: platformToken,
		}
		created, errCreated := dataDeletionService.PublicSubmitMyAccountDeletionRequestShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	PublicSubmitMyAccountDeletionRequestCmd.Flags().String("platformId", "", "Platform id")
	_ = PublicSubmitMyAccountDeletionRequestCmd.MarkFlagRequired("platformId")
	PublicSubmitMyAccountDeletionRequestCmd.Flags().String("platformToken", "", "Platform token")
	_ = PublicSubmitMyAccountDeletionRequestCmd.MarkFlagRequired("platformToken")
}
