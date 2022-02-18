// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
		batchNo, _ := cmd.Flags().GetInt32("batchNo")
		input := &campaign.BulkDisableCodesParams{
			CampaignID: campaignId,
			Namespace:  namespace,
			BatchNo:    &batchNo,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := campaignService.BulkDisableCodes(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	BulkDisableCodesCmd.Flags().StringP("campaignId", "", "", "Campaign id")
	_ = BulkDisableCodesCmd.MarkFlagRequired("campaignId")
	BulkDisableCodesCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = BulkDisableCodesCmd.MarkFlagRequired("namespace")
	BulkDisableCodesCmd.Flags().Int32P("batchNo", "", 0, "Batch no")
}
