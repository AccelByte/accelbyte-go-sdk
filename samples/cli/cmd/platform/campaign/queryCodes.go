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

// QueryCodesCmd represents the QueryCodes command
var QueryCodesCmd = &cobra.Command{
	Use:   "queryCodes",
	Short: "Query codes",
	Long:  `Query codes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		campaignId, _ := cmd.Flags().GetString("campaignId")
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		batchName, _ := cmd.Flags().GetString("batchName")
		batchNoString := cmd.Flag("batchNo").Value.String()
		var batchNo []int32
		errBatchNo := json.Unmarshal([]byte(batchNoString), &batchNo)
		if errBatchNo != nil {
			return errBatchNo
		}
		code, _ := cmd.Flags().GetString("code")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		withBatchName, _ := cmd.Flags().GetBool("withBatchName")
		input := &campaign.QueryCodesParams{
			CampaignID:    campaignId,
			Namespace:     namespace,
			ActiveOnly:    &activeOnly,
			BatchName:     &batchName,
			BatchNo:       batchNo,
			Code:          &code,
			Limit:         &limit,
			Offset:        &offset,
			WithBatchName: &withBatchName,
		}
		ok, errOK := campaignService.QueryCodesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryCodesCmd.Flags().String("campaignId", "", "Campaign id")
	_ = QueryCodesCmd.MarkFlagRequired("campaignId")
	QueryCodesCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryCodesCmd.MarkFlagRequired("namespace")
	QueryCodesCmd.Flags().Bool("activeOnly", false, "Active only")
	QueryCodesCmd.Flags().String("batchName", "", "Batch name")
	QueryCodesCmd.Flags().String("batchNo", "", "Batch no")
	QueryCodesCmd.Flags().String("code", "", "Code")
	QueryCodesCmd.Flags().Int32("limit", 20, "Limit")
	QueryCodesCmd.Flags().Int32("offset", 0, "Offset")
	QueryCodesCmd.Flags().Bool("withBatchName", false, "With batch name")
}
