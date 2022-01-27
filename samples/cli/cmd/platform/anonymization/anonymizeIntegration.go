// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package anonymization

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/anonymization"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AnonymizeIntegrationCmd represents the AnonymizeIntegration command
var AnonymizeIntegrationCmd = &cobra.Command{
	Use:   "AnonymizeIntegration",
	Short: "Anonymize integration",
	Long:  `Anonymize integration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &platform.AnonymizationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AnonymizeIntegrationParams{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := anonymizationService.AnonymizeIntegration(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AnonymizeIntegrationCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AnonymizeIntegrationCmd.MarkFlagRequired("namespace")
	AnonymizeIntegrationCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = AnonymizeIntegrationCmd.MarkFlagRequired("userId")
}
