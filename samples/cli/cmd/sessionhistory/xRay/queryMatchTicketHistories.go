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

// QueryMatchTicketHistoriesCmd represents the QueryMatchTicketHistories command
var QueryMatchTicketHistoriesCmd = &cobra.Command{
	Use:   "queryMatchTicketHistories",
	Short: "Query match ticket histories",
	Long:  `Query match ticket histories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		matchId, _ := cmd.Flags().GetString("matchId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &x_ray.QueryMatchTicketHistoriesParams{
			MatchID:   matchId,
			Namespace: namespace,
		}
		ok, errOK := xRayService.QueryMatchTicketHistoriesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryMatchTicketHistoriesCmd.Flags().String("matchId", "", "Match id")
	_ = QueryMatchTicketHistoriesCmd.MarkFlagRequired("matchId")
	QueryMatchTicketHistoriesCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryMatchTicketHistoriesCmd.MarkFlagRequired("namespace")
}
