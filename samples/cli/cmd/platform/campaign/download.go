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

// downloadCmd represents the download command
var downloadCmd = &cobra.Command{
	Use:   "download",
	Short: "Download",
	Long:  `Download`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		campaignId, _ := cmd.Flags().GetString("campaignId")
		namespace, _ := cmd.Flags().GetString("namespace")
		batchNo, _ := cmd.Flags().GetInt32("batchNo")
		input := &campaign.DownloadParams{
			CampaignID: campaignId,
			Namespace:  namespace,
			BatchNo:    &batchNo,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := campaignService.Download(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(downloadCmd)
	downloadCmd.Flags().StringP("campaignId", "cd", " ", "Campaign id")
	_ = downloadCmd.MarkFlagRequired("campaignId")
	downloadCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = downloadCmd.MarkFlagRequired("namespace")
	downloadCmd.Flags().Int32P("batchNo", "bo", 0, "Batch no")
}
