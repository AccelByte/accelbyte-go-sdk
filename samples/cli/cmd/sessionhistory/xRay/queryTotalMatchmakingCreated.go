// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package xRay

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionhistory"
	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclient/x_ray"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryTotalMatchmakingCreatedCmd represents the QueryTotalMatchmakingCreated command
var QueryTotalMatchmakingCreatedCmd = &cobra.Command{
	Use:   "queryTotalMatchmakingCreated",
	Short: "Query total matchmaking created",
	Long:  `Query total matchmaking created`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endDate, _ := cmd.Flags().GetString("endDate")
		startDate, _ := cmd.Flags().GetString("startDate")
		matchPoolString := cmd.Flag("matchPool").Value.String()
		var matchPool []string
		errMatchPool := json.Unmarshal([]byte(matchPoolString), &matchPool)
		if errMatchPool != nil {
			return errMatchPool
		}
		input := &x_ray.QueryTotalMatchmakingCreatedParams{
			Namespace: namespace,
			MatchPool: matchPool,
			EndDate:   endDate,
			StartDate: startDate,
		}
		ok, errOK := xRayService.QueryTotalMatchmakingCreatedShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryTotalMatchmakingCreatedCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryTotalMatchmakingCreatedCmd.MarkFlagRequired("namespace")
	QueryTotalMatchmakingCreatedCmd.Flags().String("matchPool", "", "Match pool")
	QueryTotalMatchmakingCreatedCmd.Flags().String("endDate", "", "End date")
	_ = QueryTotalMatchmakingCreatedCmd.MarkFlagRequired("endDate")
	QueryTotalMatchmakingCreatedCmd.Flags().String("startDate", "", "Start date")
	_ = QueryTotalMatchmakingCreatedCmd.MarkFlagRequired("startDate")
}
