// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
	Use:   "QueryOrders",
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := orderService.QueryOrders(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	QueryOrdersCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = QueryOrdersCmd.MarkFlagRequired("namespace")
	QueryOrdersCmd.Flags().StringP("endTime", "ee", " ", "End time")
	QueryOrdersCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	QueryOrdersCmd.Flags().Int32P("offset", "ot", 0, "Offset")
	QueryOrdersCmd.Flags().StringP("orderNos", "os", " ", "Order nos")
	QueryOrdersCmd.Flags().StringP("sortBy", "sy", " ", "Sort by")
	QueryOrdersCmd.Flags().StringP("startTime", "se", " ", "Start time")
	QueryOrdersCmd.Flags().StringP("status", "ss", " ", "Status")
	QueryOrdersCmd.Flags().BoolP("withTotal", "wl", false, "With total")
}
