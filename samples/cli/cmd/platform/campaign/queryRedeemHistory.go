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

// queryRedeemHistoryCmd represents the queryRedeemHistory command
var queryRedeemHistoryCmd = &cobra.Command{
	Use:   "queryRedeemHistory",
	Short: "Query redeem history",
	Long:  `Query redeem history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		campaignId, _ := cmd.Flags().GetString("campaignId")
		namespace, _ := cmd.Flags().GetString("namespace")
		code, _ := cmd.Flags().GetString("code")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		userId, _ := cmd.Flags().GetString("userId")
		input := &campaign.QueryRedeemHistoryParams{
			CampaignID: campaignId,
			Namespace:  namespace,
			Code:       &code,
			Limit:      &limit,
			Offset:     &offset,
			UserID:     &userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := campaignService.QueryRedeemHistory(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryRedeemHistoryCmd)
	queryRedeemHistoryCmd.Flags().StringP("campaignId", "cd", " ", "Campaign id")
	_ = queryRedeemHistoryCmd.MarkFlagRequired("campaignId")
	queryRedeemHistoryCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = queryRedeemHistoryCmd.MarkFlagRequired("namespace")
	queryRedeemHistoryCmd.Flags().StringP("code", "ce", " ", "Code")
	queryRedeemHistoryCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	queryRedeemHistoryCmd.Flags().Int32P("offset", "ot", 0, "Offset")
	queryRedeemHistoryCmd.Flags().StringP("userId", "ud", " ", "User id")
}
