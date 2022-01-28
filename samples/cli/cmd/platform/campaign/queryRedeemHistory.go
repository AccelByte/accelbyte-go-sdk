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

// QueryRedeemHistoryCmd represents the QueryRedeemHistory command
var QueryRedeemHistoryCmd = &cobra.Command{
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
	QueryRedeemHistoryCmd.Flags().StringP("campaignId", "", " ", "Campaign id")
	_ = QueryRedeemHistoryCmd.MarkFlagRequired("campaignId")
	QueryRedeemHistoryCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = QueryRedeemHistoryCmd.MarkFlagRequired("namespace")
	QueryRedeemHistoryCmd.Flags().StringP("code", "", " ", "Code")
	QueryRedeemHistoryCmd.Flags().Int32P("limit", "", 20, "Limit")
	QueryRedeemHistoryCmd.Flags().Int32P("offset", "", 0, "Offset")
	QueryRedeemHistoryCmd.Flags().StringP("userId", "", " ", "User id")
}
