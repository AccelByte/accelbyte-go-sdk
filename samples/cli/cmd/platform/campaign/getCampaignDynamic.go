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

// GetCampaignDynamicCmd represents the GetCampaignDynamic command
var GetCampaignDynamicCmd = &cobra.Command{
	Use:   "getCampaignDynamic",
	Short: "Get campaign dynamic",
	Long:  `Get campaign dynamic`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		campaignId, _ := cmd.Flags().GetString("campaignId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &campaign.GetCampaignDynamicParams{
			CampaignID: campaignId,
			Namespace:  namespace,
		}
		ok, err := campaignService.GetCampaignDynamicShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetCampaignDynamicCmd.Flags().StringP("campaignId", "", "", "Campaign id")
	_ = GetCampaignDynamicCmd.MarkFlagRequired("campaignId")
	GetCampaignDynamicCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetCampaignDynamicCmd.MarkFlagRequired("namespace")
}
