// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package campaign

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/campaign"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getCampaignCmd represents the getCampaign command
var getCampaignCmd = &cobra.Command{
	Use:   "getCampaign",
	Short: "Get campaign",
	Long:  `Get campaign`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		campaignId, _ := cmd.Flags().GetString("campaignId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &campaign.GetCampaignParams{
			CampaignID: campaignId,
			Namespace:  namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := campaignService.GetCampaign(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getCampaignCmd)
	getCampaignCmd.Flags().StringP("campaignId", "cd", " ", "Campaign id")
	_ = getCampaignCmd.MarkFlagRequired("campaignId")
	getCampaignCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getCampaignCmd.MarkFlagRequired("namespace")
}
