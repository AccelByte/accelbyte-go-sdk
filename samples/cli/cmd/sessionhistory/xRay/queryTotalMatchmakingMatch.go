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

// QueryTotalMatchmakingMatchCmd represents the QueryTotalMatchmakingMatch command
var QueryTotalMatchmakingMatchCmd = &cobra.Command{
	Use:   "queryTotalMatchmakingMatch",
	Short: "Query total matchmaking match",
	Long:  `Query total matchmaking match`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endDate, _ := cmd.Flags().GetString("endDate")
		startDate, _ := cmd.Flags().GetString("startDate")
		matchPool, _ := cmd.Flags().GetString("matchPool")
		input := &x_ray.QueryTotalMatchmakingMatchParams{
			Namespace: namespace,
			MatchPool: &matchPool,
			EndDate:   endDate,
			StartDate: startDate,
		}
		ok, errOK := xRayService.QueryTotalMatchmakingMatchShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryTotalMatchmakingMatchCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryTotalMatchmakingMatchCmd.MarkFlagRequired("namespace")
	QueryTotalMatchmakingMatchCmd.Flags().String("matchPool", "", "Match pool")
	QueryTotalMatchmakingMatchCmd.Flags().String("endDate", "", "End date")
	_ = QueryTotalMatchmakingMatchCmd.MarkFlagRequired("endDate")
	QueryTotalMatchmakingMatchCmd.Flags().String("startDate", "", "Start date")
	_ = QueryTotalMatchmakingMatchCmd.MarkFlagRequired("startDate")
}
