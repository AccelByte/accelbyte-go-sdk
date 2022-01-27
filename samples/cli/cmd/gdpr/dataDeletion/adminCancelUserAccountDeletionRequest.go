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

// AdminCancelUserAccountDeletionRequestCmd represents the AdminCancelUserAccountDeletionRequest command
var AdminCancelUserAccountDeletionRequestCmd = &cobra.Command{
	Use:   "AdminCancelUserAccountDeletionRequest",
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := dataDeletionService.AdminCancelUserAccountDeletionRequest(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AdminCancelUserAccountDeletionRequestCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AdminCancelUserAccountDeletionRequestCmd.MarkFlagRequired("namespace")
	AdminCancelUserAccountDeletionRequestCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = AdminCancelUserAccountDeletionRequestCmd.MarkFlagRequired("userId")
}
