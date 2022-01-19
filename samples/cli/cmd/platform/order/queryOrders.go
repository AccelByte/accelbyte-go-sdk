// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// queryOrdersCmd represents the queryOrders command
var queryOrdersCmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(queryOrdersCmd)
	queryOrdersCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = queryOrdersCmd.MarkFlagRequired("namespace")
	queryOrdersCmd.Flags().StringP("endTime", "e", " ", "End time")
	queryOrdersCmd.Flags().Int32P("limit", "l", 20, "Limit")
	queryOrdersCmd.Flags().Int32P("offset", "o", 0, "Offset")
	queryOrdersCmd.Flags().StringP("orderNos", "o", " ", "Order nos")
	queryOrdersCmd.Flags().StringP("sortBy", "s", " ", "Sort by")
	queryOrdersCmd.Flags().StringP("startTime", "s", " ", "Start time")
	queryOrdersCmd.Flags().StringP("status", "s", " ", "Status")
	queryOrdersCmd.Flags().BoolP("withTotal", "w", false, "With total")
}
