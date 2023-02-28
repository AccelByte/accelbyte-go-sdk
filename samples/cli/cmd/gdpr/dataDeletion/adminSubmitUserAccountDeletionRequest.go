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

// AdminSubmitUserAccountDeletionRequestCmd represents the AdminSubmitUserAccountDeletionRequest command
var AdminSubmitUserAccountDeletionRequestCmd = &cobra.Command{
	Use:   "adminSubmitUserAccountDeletionRequest",
	Short: "Admin submit user account deletion request",
	Long:  `Admin submit user account deletion request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataDeletionService := &gdpr.DataDeletionService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &data_deletion.AdminSubmitUserAccountDeletionRequestParams{
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := dataDeletionService.AdminSubmitUserAccountDeletionRequestShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminSubmitUserAccountDeletionRequestCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSubmitUserAccountDeletionRequestCmd.MarkFlagRequired("namespace")
	AdminSubmitUserAccountDeletionRequestCmd.Flags().String("userId", "", "User id")
	_ = AdminSubmitUserAccountDeletionRequestCmd.MarkFlagRequired("userId")
}
