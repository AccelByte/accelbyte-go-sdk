// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dataDeletion

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_deletion"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetUserAccountDeletionRequestCmd represents the AdminGetUserAccountDeletionRequest command
var AdminGetUserAccountDeletionRequestCmd = &cobra.Command{
	Use:   "adminGetUserAccountDeletionRequest",
	Short: "Admin get user account deletion request",
	Long:  `Admin get user account deletion request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataDeletionService := &gdpr.DataDeletionService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &data_deletion.AdminGetUserAccountDeletionRequestParams{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := dataDeletionService.AdminGetUserAccountDeletionRequest(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AdminGetUserAccountDeletionRequestCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = AdminGetUserAccountDeletionRequestCmd.MarkFlagRequired("namespace")
	AdminGetUserAccountDeletionRequestCmd.Flags().StringP("userId", "", " ", "User id")
	_ = AdminGetUserAccountDeletionRequestCmd.MarkFlagRequired("userId")
}
