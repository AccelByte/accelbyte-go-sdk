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

// QueryTotalMatchmakingMatchTicketCmd represents the QueryTotalMatchmakingMatchTicket command
var QueryTotalMatchmakingMatchTicketCmd = &cobra.Command{
	Use:   "queryTotalMatchmakingMatchTicket",
	Short: "Query total matchmaking match ticket",
	Long:  `Query total matchmaking match ticket`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endDate, _ := cmd.Flags().GetString("endDate")
		startDate, _ := cmd.Flags().GetString("startDate")
		matchPool, _ := cmd.Flags().GetString("matchPool")
		input := &x_ray.QueryTotalMatchmakingMatchTicketParams{
			Namespace: namespace,
			MatchPool: &matchPool,
			EndDate:   endDate,
			StartDate: startDate,
		}
		ok, errOK := xRayService.QueryTotalMatchmakingMatchTicketShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryTotalMatchmakingMatchTicketCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryTotalMatchmakingMatchTicketCmd.MarkFlagRequired("namespace")
	QueryTotalMatchmakingMatchTicketCmd.Flags().String("matchPool", "", "Match pool")
	QueryTotalMatchmakingMatchTicketCmd.Flags().String("endDate", "", "End date")
	_ = QueryTotalMatchmakingMatchTicketCmd.MarkFlagRequired("endDate")
	QueryTotalMatchmakingMatchTicketCmd.Flags().String("startDate", "", "Start date")
	_ = QueryTotalMatchmakingMatchTicketCmd.MarkFlagRequired("startDate")
}
