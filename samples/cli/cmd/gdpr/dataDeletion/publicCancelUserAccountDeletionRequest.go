// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_deletion"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicCancelUserAccountDeletionRequestCmd represents the publicCancelUserAccountDeletionRequest command
var publicCancelUserAccountDeletionRequestCmd = &cobra.Command{
	Use:   "publicCancelUserAccountDeletionRequest",
	Short: "Public cancel user account deletion request",
	Long:  `Public cancel user account deletion request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataDeletionService := &gdpr.DataDeletionService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &data_deletion.PublicCancelUserAccountDeletionRequestParams{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := dataDeletionService.PublicCancelUserAccountDeletionRequest(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicCancelUserAccountDeletionRequestCmd)
	publicCancelUserAccountDeletionRequestCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicCancelUserAccountDeletionRequestCmd.MarkFlagRequired("namespace")
	publicCancelUserAccountDeletionRequestCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicCancelUserAccountDeletionRequestCmd.MarkFlagRequired("userId")
}
