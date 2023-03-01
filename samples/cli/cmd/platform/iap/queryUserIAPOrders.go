// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap"
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
		input := &iap.QueryUserIAPOrdersParams{
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
		ok, errOK := iapService.QueryUserIAPOrdersShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryUserIAPOrdersCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryUserIAPOrdersCmd.MarkFlagRequired("namespace")
	QueryUserIAPOrdersCmd.Flags().String("userId", "", "User id")
	_ = QueryUserIAPOrdersCmd.MarkFlagRequired("userId")
	QueryUserIAPOrdersCmd.Flags().String("endTime", "", "End time")
	QueryUserIAPOrdersCmd.Flags().Int32("limit", 20, "Limit")
	QueryUserIAPOrdersCmd.Flags().Int32("offset", 0, "Offset")
	QueryUserIAPOrdersCmd.Flags().String("productId", "", "Product id")
	QueryUserIAPOrdersCmd.Flags().String("startTime", "", "Start time")
	QueryUserIAPOrdersCmd.Flags().String("status", "", "Status")
	QueryUserIAPOrdersCmd.Flags().String("type", "", "Type")
}
