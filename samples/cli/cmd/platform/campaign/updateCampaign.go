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
		campaignId, _ := cmd.Flags().GetString("campaignId")
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.CampaignUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &campaign.UpdateCampaignParams{
			Body:       body,
			CampaignID: campaignId,
			Namespace:  namespace,
		}
		ok, err := campaignService.UpdateCampaignShort(input)
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
	UpdateCampaignCmd.Flags().StringP("body", "", "", "Body")
	UpdateCampaignCmd.Flags().StringP("campaignId", "", "", "Campaign id")
	_ = UpdateCampaignCmd.MarkFlagRequired("campaignId")
	UpdateCampaignCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateCampaignCmd.MarkFlagRequired("namespace")
}
