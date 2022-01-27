// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dataDeletion

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_deletion"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicSubmitUserAccountDeletionRequestCmd represents the publicSubmitUserAccountDeletionRequest command
var publicSubmitUserAccountDeletionRequestCmd = &cobra.Command{
	Use:   "publicSubmitUserAccountDeletionRequest",
	Short: "Public submit user account deletion request",
	Long:  `Public submit user account deletion request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataDeletionService := &gdpr.DataDeletionService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		password, _ := cmd.Flags().GetString("password")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &data_deletion.PublicSubmitUserAccountDeletionRequestParams{
			Password:  password,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := dataDeletionService.PublicSubmitUserAccountDeletionRequest(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicSubmitUserAccountDeletionRequestCmd)
	publicSubmitUserAccountDeletionRequestCmd.Flags().StringP("password", "pd", " ", "Password")
	_ = publicSubmitUserAccountDeletionRequestCmd.MarkFlagRequired("password")
	publicSubmitUserAccountDeletionRequestCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicSubmitUserAccountDeletionRequestCmd.MarkFlagRequired("namespace")
	publicSubmitUserAccountDeletionRequestCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicSubmitUserAccountDeletionRequestCmd.MarkFlagRequired("userId")
}
