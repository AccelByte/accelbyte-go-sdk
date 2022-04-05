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

// AnonymizeFulfillmentCmd represents the AnonymizeFulfillment command
var AnonymizeFulfillmentCmd = &cobra.Command{
	Use:   "anonymizeFulfillment",
	Short: "Anonymize fulfillment",
	Long:  `Anonymize fulfillment`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &platform.AnonymizationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AnonymizeFulfillmentParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := anonymizationService.AnonymizeFulfillmentShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AnonymizeFulfillmentCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AnonymizeFulfillmentCmd.MarkFlagRequired("namespace")
	AnonymizeFulfillmentCmd.Flags().StringP("userId", "", "", "User id")
	_ = AnonymizeFulfillmentCmd.MarkFlagRequired("userId")
}
