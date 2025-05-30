// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package campaign

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/campaign"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// BulkDisableCodesCmd represents the BulkDisableCodes command
var BulkDisableCodesCmd = &cobra.Command{
	Use:   "bulkDisableCodes",
	Short: "Bulk disable codes",
	Long:  `Bulk disable codes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		campaignId, _ := cmd.Flags().GetString("campaignId")
		namespace, _ := cmd.Flags().GetString("namespace")
		batchName, _ := cmd.Flags().GetString("batchName")
		batchNoString := cmd.Flag("batchNo").Value.String()
		var batchNo []int32
		errBatchNo := json.Unmarshal([]byte(batchNoString), &batchNo)
		if errBatchNo != nil {
			return errBatchNo
		}
		input := &campaign.BulkDisableCodesParams{
			CampaignID: campaignId,
			Namespace:  namespace,
			BatchName:  &batchName,
			BatchNo:    batchNo,
		}
		ok, errOK := campaignService.BulkDisableCodesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkDisableCodesCmd.Flags().String("campaignId", "", "Campaign id")
	_ = BulkDisableCodesCmd.MarkFlagRequired("campaignId")
	BulkDisableCodesCmd.Flags().String("namespace", "", "Namespace")
	_ = BulkDisableCodesCmd.MarkFlagRequired("namespace")
	BulkDisableCodesCmd.Flags().String("batchName", "", "Batch name")
	BulkDisableCodesCmd.Flags().String("batchNo", "", "Batch no")
}
