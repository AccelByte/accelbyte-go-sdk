// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/campaign"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// bulkEnableCodesCmd represents the bulkEnableCodes command
var bulkEnableCodesCmd = &cobra.Command{
	Use:   "bulkEnableCodes",
	Short: "Bulk enable codes",
	Long:  `Bulk enable codes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		campaignId, _ := cmd.Flags().GetString("campaignId")
		namespace, _ := cmd.Flags().GetString("namespace")
		batchNo, _ := cmd.Flags().GetInt32("batchNo")
		input := &campaign.BulkEnableCodesParams{
			CampaignID: campaignId,
			Namespace:  namespace,
			BatchNo:    &batchNo,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := campaignService.BulkEnableCodes(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(bulkEnableCodesCmd)
	bulkEnableCodesCmd.Flags().StringP("campaignId", "c", " ", "Campaign id")
	_ = bulkEnableCodesCmd.MarkFlagRequired("campaignId")
	bulkEnableCodesCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = bulkEnableCodesCmd.MarkFlagRequired("namespace")
	bulkEnableCodesCmd.Flags().Int32P("batchNo", "b", 0, "Batch no")
}
