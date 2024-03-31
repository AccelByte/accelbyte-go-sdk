// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package xRay

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionhistory"
	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclient/x_ray"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryTotalActiveSessionCmd represents the QueryTotalActiveSession command
var QueryTotalActiveSessionCmd = &cobra.Command{
	Use:   "queryTotalActiveSession",
	Short: "Query total active session",
	Long:  `Query total active session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endDate, _ := cmd.Flags().GetString("endDate")
		startDate, _ := cmd.Flags().GetString("startDate")
		region, _ := cmd.Flags().GetString("region")
		input := &x_ray.QueryTotalActiveSessionParams{
			Namespace: namespace,
			Region:    &region,
			EndDate:   endDate,
			StartDate: startDate,
		}
		ok, errOK := xRayService.QueryTotalActiveSessionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryTotalActiveSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryTotalActiveSessionCmd.MarkFlagRequired("namespace")
	QueryTotalActiveSessionCmd.Flags().String("region", "", "Region")
	QueryTotalActiveSessionCmd.Flags().String("endDate", "", "End date")
	_ = QueryTotalActiveSessionCmd.MarkFlagRequired("endDate")
	QueryTotalActiveSessionCmd.Flags().String("startDate", "", "Start date")
	_ = QueryTotalActiveSessionCmd.MarkFlagRequired("startDate")
}
