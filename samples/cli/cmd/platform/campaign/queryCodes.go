// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package campaign

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/campaign"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryCodesCmd represents the QueryCodes command
var QueryCodesCmd = &cobra.Command{
	Use:   "QueryCodes",
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
		batchNo, _ := cmd.Flags().GetInt32("batchNo")
		code, _ := cmd.Flags().GetString("code")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &campaign.QueryCodesParams{
			CampaignID: campaignId,
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			BatchNo:    &batchNo,
			Code:       &code,
			Limit:      &limit,
			Offset:     &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := campaignService.QueryCodes(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	QueryCodesCmd.Flags().StringP("campaignId", "cd", " ", "Campaign id")
	_ = QueryCodesCmd.MarkFlagRequired("campaignId")
	QueryCodesCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = QueryCodesCmd.MarkFlagRequired("namespace")
	QueryCodesCmd.Flags().BoolP("activeOnly", "ay", false, "Active only")
	QueryCodesCmd.Flags().Int32P("batchNo", "bo", 0, "Batch no")
	QueryCodesCmd.Flags().StringP("code", "ce", " ", "Code")
	QueryCodesCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	QueryCodesCmd.Flags().Int32P("offset", "ot", 0, "Offset")
}
