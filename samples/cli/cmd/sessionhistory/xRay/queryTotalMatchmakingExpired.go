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

// QueryTotalMatchmakingExpiredCmd represents the QueryTotalMatchmakingExpired command
var QueryTotalMatchmakingExpiredCmd = &cobra.Command{
	Use:   "queryTotalMatchmakingExpired",
	Short: "Query total matchmaking expired",
	Long:  `Query total matchmaking expired`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endDate, _ := cmd.Flags().GetString("endDate")
		startDate, _ := cmd.Flags().GetString("startDate")
		matchPool, _ := cmd.Flags().GetString("matchPool")
		input := &x_ray.QueryTotalMatchmakingExpiredParams{
			Namespace: namespace,
			MatchPool: &matchPool,
			EndDate:   endDate,
			StartDate: startDate,
		}
		ok, errOK := xRayService.QueryTotalMatchmakingExpiredShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryTotalMatchmakingExpiredCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryTotalMatchmakingExpiredCmd.MarkFlagRequired("namespace")
	QueryTotalMatchmakingExpiredCmd.Flags().String("matchPool", "", "Match pool")
	QueryTotalMatchmakingExpiredCmd.Flags().String("endDate", "", "End date")
	_ = QueryTotalMatchmakingExpiredCmd.MarkFlagRequired("endDate")
	QueryTotalMatchmakingExpiredCmd.Flags().String("startDate", "", "Start date")
	_ = QueryTotalMatchmakingExpiredCmd.MarkFlagRequired("startDate")
}
