// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// queryUserOrdersCmd represents the queryUserOrders command
var queryUserOrdersCmd = &cobra.Command{
	Use:   "queryUserOrders",
	Short: "Query user orders",
	Long:  `Query user orders`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		itemId, _ := cmd.Flags().GetString("itemId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		status, _ := cmd.Flags().GetString("status")
		input := &order.QueryUserOrdersParams{
			Namespace: namespace,
			UserID:    userId,
			ItemID:    &itemId,
			Limit:     &limit,
			Offset:    &offset,
			Status:    &status,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := orderService.QueryUserOrders(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryUserOrdersCmd)
	queryUserOrdersCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = queryUserOrdersCmd.MarkFlagRequired("namespace")
	queryUserOrdersCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = queryUserOrdersCmd.MarkFlagRequired("userId")
	queryUserOrdersCmd.Flags().StringP("itemId", "i", " ", "Item id")
	queryUserOrdersCmd.Flags().Int32P("limit", "l", 20, "Limit")
	queryUserOrdersCmd.Flags().Int32P("offset", "o", 0, "Offset")
	queryUserOrdersCmd.Flags().StringP("status", "s", " ", "Status")
}
