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

// AdminCancelUserAccountDeletionRequestCmd represents the AdminCancelUserAccountDeletionRequest command
var AdminCancelUserAccountDeletionRequestCmd = &cobra.Command{
	Use:   "adminCancelUserAccountDeletionRequest",
	Short: "Admin cancel user account deletion request",
	Long:  `Admin cancel user account deletion request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataDeletionService := &gdpr.DataDeletionService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &data_deletion.AdminCancelUserAccountDeletionRequestParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := dataDeletionService.AdminCancelUserAccountDeletionRequestShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminCancelUserAccountDeletionRequestCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCancelUserAccountDeletionRequestCmd.MarkFlagRequired("namespace")
	AdminCancelUserAccountDeletionRequestCmd.Flags().String("userId", "", "User id")
	_ = AdminCancelUserAccountDeletionRequestCmd.MarkFlagRequired("userId")
}
