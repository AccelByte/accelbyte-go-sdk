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

// BulkEnableCodesCmd represents the BulkEnableCodes command
var BulkEnableCodesCmd = &cobra.Command{
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
		ok, err := campaignService.BulkEnableCodesShort(input, nil)
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
	BulkEnableCodesCmd.Flags().StringP("campaignId", "", "", "Campaign id")
	_ = BulkEnableCodesCmd.MarkFlagRequired("campaignId")
	BulkEnableCodesCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = BulkEnableCodesCmd.MarkFlagRequired("namespace")
	BulkEnableCodesCmd.Flags().Int32P("batchNo", "", 0, "Batch no")
}
