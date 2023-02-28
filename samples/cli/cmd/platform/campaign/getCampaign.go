// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package campaign

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/campaign"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetCampaignCmd represents the GetCampaign command
var GetCampaignCmd = &cobra.Command{
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
		ok, errOK := campaignService.GetCampaignShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetCampaignCmd.Flags().String("campaignId", "", "Campaign id")
	_ = GetCampaignCmd.MarkFlagRequired("campaignId")
	GetCampaignCmd.Flags().String("namespace", "", "Namespace")
	_ = GetCampaignCmd.MarkFlagRequired("namespace")
}
