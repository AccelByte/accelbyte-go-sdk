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

// anonymizeCampaignCmd represents the anonymizeCampaign command
var anonymizeCampaignCmd = &cobra.Command{
	Use:   "anonymizeCampaign",
	Short: "Anonymize campaign",
	Long:  `Anonymize campaign`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &platform.AnonymizationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AnonymizeCampaignParams{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := anonymizationService.AnonymizeCampaign(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(anonymizeCampaignCmd)
	anonymizeCampaignCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = anonymizeCampaignCmd.MarkFlagRequired("namespace")
	anonymizeCampaignCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = anonymizeCampaignCmd.MarkFlagRequired("userId")
}
