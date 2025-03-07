// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package campaign

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/campaign"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateCampaignCmd represents the UpdateCampaign command
var UpdateCampaignCmd = &cobra.Command{
	Use:   "updateCampaign",
	Short: "Update campaign",
	Long:  `Update campaign`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.CampaignUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		campaignId, _ := cmd.Flags().GetString("campaignId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &campaign.UpdateCampaignParams{
			Body:       body,
			CampaignID: campaignId,
			Namespace:  namespace,
		}
		ok, errOK := campaignService.UpdateCampaignShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateCampaignCmd.Flags().String("body", "", "Body")
	_ = UpdateCampaignCmd.MarkFlagRequired("body")
	UpdateCampaignCmd.Flags().String("campaignId", "", "Campaign id")
	_ = UpdateCampaignCmd.MarkFlagRequired("campaignId")
	UpdateCampaignCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateCampaignCmd.MarkFlagRequired("namespace")
}
