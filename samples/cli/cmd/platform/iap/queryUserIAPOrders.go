// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iap

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryUserIAPOrdersCmd represents the QueryUserIAPOrders command
var QueryUserIAPOrdersCmd = &cobra.Command{
	Use:   "queryUserIAPOrders",
	Short: "Query user IAP orders",
	Long:  `Query user IAP orders`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		endTime, _ := cmd.Flags().GetString("endTime")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		productId, _ := cmd.Flags().GetString("productId")
		startTime, _ := cmd.Flags().GetString("startTime")
		status, _ := cmd.Flags().GetString("status")
		type_, _ := cmd.Flags().GetString("type")
		input := &i_a_p.QueryUserIAPOrdersParams{
			Namespace: namespace,
			UserID:    userId,
			EndTime:   &endTime,
			Limit:     &limit,
			Offset:    &offset,
			ProductID: &productId,
			StartTime: &startTime,
			Status:    &status,
			Type:      &type_,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := iapService.QueryUserIAPOrders(input)
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
	QueryUserIAPOrdersCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = QueryUserIAPOrdersCmd.MarkFlagRequired("namespace")
	QueryUserIAPOrdersCmd.Flags().StringP("userId", "", "", "User id")
	_ = QueryUserIAPOrdersCmd.MarkFlagRequired("userId")
	QueryUserIAPOrdersCmd.Flags().StringP("endTime", "", "", "End time")
	QueryUserIAPOrdersCmd.Flags().Int32P("limit", "", 20, "Limit")
	QueryUserIAPOrdersCmd.Flags().Int32P("offset", "", 0, "Offset")
	QueryUserIAPOrdersCmd.Flags().StringP("productId", "", "", "Product id")
	QueryUserIAPOrdersCmd.Flags().StringP("startTime", "", "", "Start time")
	QueryUserIAPOrdersCmd.Flags().StringP("status", "", "", "Status")
	QueryUserIAPOrdersCmd.Flags().StringP("type", "", "", "Type")
}
