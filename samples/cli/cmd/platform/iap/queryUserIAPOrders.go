// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// queryUserIAPOrdersCmd represents the queryUserIAPOrders command
var queryUserIAPOrdersCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryUserIAPOrdersCmd)
	queryUserIAPOrdersCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = queryUserIAPOrdersCmd.MarkFlagRequired("namespace")
	queryUserIAPOrdersCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = queryUserIAPOrdersCmd.MarkFlagRequired("userId")
	queryUserIAPOrdersCmd.Flags().StringP("endTime", "e", " ", "End time")
	queryUserIAPOrdersCmd.Flags().Int32P("limit", "l", 20, "Limit")
	queryUserIAPOrdersCmd.Flags().Int32P("offset", "o", 0, "Offset")
	queryUserIAPOrdersCmd.Flags().StringP("productId", "p", " ", "Product id")
	queryUserIAPOrdersCmd.Flags().StringP("startTime", "s", " ", "Start time")
	queryUserIAPOrdersCmd.Flags().StringP("status", "s", " ", "Status")
	queryUserIAPOrdersCmd.Flags().StringP("type", "t", " ", "Type")
}
