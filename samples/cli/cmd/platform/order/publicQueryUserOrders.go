// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package order

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicQueryUserOrdersCmd represents the publicQueryUserOrders command
var publicQueryUserOrdersCmd = &cobra.Command{
	Use:   "publicQueryUserOrders",
	Short: "Public query user orders",
	Long:  `Public query user orders`,
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
		input := &order.PublicQueryUserOrdersParams{
			Namespace: namespace,
			UserID:    userId,
			ItemID:    &itemId,
			Limit:     &limit,
			Offset:    &offset,
			Status:    &status,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := orderService.PublicQueryUserOrders(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicQueryUserOrdersCmd)
	publicQueryUserOrdersCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicQueryUserOrdersCmd.MarkFlagRequired("namespace")
	publicQueryUserOrdersCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicQueryUserOrdersCmd.MarkFlagRequired("userId")
	publicQueryUserOrdersCmd.Flags().StringP("itemId", "id", " ", "Item id")
	publicQueryUserOrdersCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	publicQueryUserOrdersCmd.Flags().Int32P("offset", "ot", 0, "Offset")
	publicQueryUserOrdersCmd.Flags().StringP("status", "ss", " ", "Status")
}
