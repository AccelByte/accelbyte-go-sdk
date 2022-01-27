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

// queryCodesCmd represents the queryCodes command
var queryCodesCmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(queryCodesCmd)
	queryCodesCmd.Flags().StringP("campaignId", "cd", " ", "Campaign id")
	_ = queryCodesCmd.MarkFlagRequired("campaignId")
	queryCodesCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = queryCodesCmd.MarkFlagRequired("namespace")
	queryCodesCmd.Flags().BoolP("activeOnly", "ay", false, "Active only")
	queryCodesCmd.Flags().Int32P("batchNo", "bo", 0, "Batch no")
	queryCodesCmd.Flags().StringP("code", "ce", " ", "Code")
	queryCodesCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	queryCodesCmd.Flags().Int32P("offset", "ot", 0, "Offset")
}
