// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchPools

import (
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/match_pools"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPlayerMetricCmd represents the GetPlayerMetric command
var GetPlayerMetricCmd = &cobra.Command{
	Use:   "getPlayerMetric",
	Short: "Get player metric",
	Long:  `Get player metric`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchPoolsService := &match2.MatchPoolsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		pool, _ := cmd.Flags().GetString("pool")
		input := &match_pools.GetPlayerMetricParams{
			Namespace: namespace,
			Pool:      pool,
		}
		ok, errOK := matchPoolsService.GetPlayerMetricShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetPlayerMetricCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPlayerMetricCmd.MarkFlagRequired("namespace")
	GetPlayerMetricCmd.Flags().String("pool", "", "Pool")
	_ = GetPlayerMetricCmd.MarkFlagRequired("pool")
}
