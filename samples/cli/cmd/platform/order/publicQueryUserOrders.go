// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package order

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicQueryUserOrdersCmd represents the PublicQueryUserOrders command
var PublicQueryUserOrdersCmd = &cobra.Command{
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
		ok, err := orderService.PublicQueryUserOrdersShort(input)
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
	PublicQueryUserOrdersCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicQueryUserOrdersCmd.MarkFlagRequired("namespace")
	PublicQueryUserOrdersCmd.Flags().String("userId", "", "User id")
	_ = PublicQueryUserOrdersCmd.MarkFlagRequired("userId")
	PublicQueryUserOrdersCmd.Flags().String("itemId", "", "Item id")
	PublicQueryUserOrdersCmd.Flags().Int32("limit", 20, "Limit")
	PublicQueryUserOrdersCmd.Flags().Int32("offset", 0, "Offset")
	PublicQueryUserOrdersCmd.Flags().String("status", "", "Status")
}
