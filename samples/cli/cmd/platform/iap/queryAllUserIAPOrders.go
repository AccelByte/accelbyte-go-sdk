// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryAllUserIAPOrdersCmd represents the QueryAllUserIAPOrders command
var QueryAllUserIAPOrdersCmd = &cobra.Command{
	Use:   "queryAllUserIAPOrders",
	Short: "Query all user IAP orders",
	Long:  `Query all user IAP orders`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &i_a_p.QueryAllUserIAPOrdersParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := iapService.QueryAllUserIAPOrdersShort(input)
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
	QueryAllUserIAPOrdersCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryAllUserIAPOrdersCmd.MarkFlagRequired("namespace")
	QueryAllUserIAPOrdersCmd.Flags().String("userId", "", "User id")
	_ = QueryAllUserIAPOrdersCmd.MarkFlagRequired("userId")
}
