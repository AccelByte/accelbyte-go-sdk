// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package anonymization

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/anonymization"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// anonymizeOrderCmd represents the anonymizeOrder command
var anonymizeOrderCmd = &cobra.Command{
	Use:   "anonymizeOrder",
	Short: "Anonymize order",
	Long:  `Anonymize order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &platform.AnonymizationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AnonymizeOrderParams{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := anonymizationService.AnonymizeOrder(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(anonymizeOrderCmd)
	anonymizeOrderCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = anonymizeOrderCmd.MarkFlagRequired("namespace")
	anonymizeOrderCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = anonymizeOrderCmd.MarkFlagRequired("userId")
}
