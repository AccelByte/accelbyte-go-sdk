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

// RenameBatchCmd represents the RenameBatch command
var RenameBatchCmd = &cobra.Command{
	Use:   "renameBatch",
	Short: "Rename batch",
	Long:  `Rename batch`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.CampaignBatchNameChange
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		campaignId, _ := cmd.Flags().GetString("campaignId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &campaign.RenameBatchParams{
			Body:       body,
			CampaignID: campaignId,
			Namespace:  namespace,
		}
		errNoContent := campaignService.RenameBatchShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	RenameBatchCmd.Flags().String("body", "", "Body")
	_ = RenameBatchCmd.MarkFlagRequired("body")
	RenameBatchCmd.Flags().String("campaignId", "", "Campaign id")
	_ = RenameBatchCmd.MarkFlagRequired("campaignId")
	RenameBatchCmd.Flags().String("namespace", "", "Namespace")
	_ = RenameBatchCmd.MarkFlagRequired("namespace")
}
