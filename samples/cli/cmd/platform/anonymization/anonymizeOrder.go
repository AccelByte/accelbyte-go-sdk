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

// AnonymizeOrderCmd represents the AnonymizeOrder command
var AnonymizeOrderCmd = &cobra.Command{
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
		errInput := anonymizationService.AnonymizeOrderShort(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AnonymizeOrderCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AnonymizeOrderCmd.MarkFlagRequired("namespace")
	AnonymizeOrderCmd.Flags().StringP("userId", "", "", "User id")
	_ = AnonymizeOrderCmd.MarkFlagRequired("userId")
}
