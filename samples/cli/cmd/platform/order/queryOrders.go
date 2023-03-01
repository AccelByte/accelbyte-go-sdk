// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package order

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryOrdersCmd represents the QueryOrders command
var QueryOrdersCmd = &cobra.Command{
	Use:   "queryOrders",
	Short: "Query orders",
	Long:  `Query orders`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endTime, _ := cmd.Flags().GetString("endTime")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		orderNosString := cmd.Flag("orderNos").Value.String()
		var orderNos []string
		errOrderNos := json.Unmarshal([]byte(orderNosString), &orderNos)
		if errOrderNos != nil {
			return errOrderNos
		}
		sortBy, _ := cmd.Flags().GetString("sortBy")
		startTime, _ := cmd.Flags().GetString("startTime")
		status, _ := cmd.Flags().GetString("status")
		withTotal, _ := cmd.Flags().GetBool("withTotal")
		input := &order.QueryOrdersParams{
			Namespace: namespace,
			EndTime:   &endTime,
			Limit:     &limit,
			Offset:    &offset,
			OrderNos:  orderNos,
			SortBy:    &sortBy,
			StartTime: &startTime,
			Status:    &status,
			WithTotal: &withTotal,
		}
		ok, errOK := orderService.QueryOrdersShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryOrdersCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryOrdersCmd.MarkFlagRequired("namespace")
	QueryOrdersCmd.Flags().String("endTime", "", "End time")
	QueryOrdersCmd.Flags().Int32("limit", 20, "Limit")
	QueryOrdersCmd.Flags().Int32("offset", 0, "Offset")
	QueryOrdersCmd.Flags().String("orderNos", "", "Order nos")
	QueryOrdersCmd.Flags().String("sortBy", "", "Sort by")
	QueryOrdersCmd.Flags().String("startTime", "", "Start time")
	QueryOrdersCmd.Flags().String("status", "", "Status")
	QueryOrdersCmd.Flags().Bool("withTotal", false, "With total")
}
