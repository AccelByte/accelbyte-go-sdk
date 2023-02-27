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

// MatchPoolMetricCmd represents the MatchPoolMetric command
var MatchPoolMetricCmd = &cobra.Command{
	Use:   "matchPoolMetric",
	Short: "Match pool metric",
	Long:  `Match pool metric`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchPoolsService := &match2.MatchPoolsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		pool, _ := cmd.Flags().GetString("pool")
		input := &match_pools.MatchPoolMetricParams{
			Namespace: namespace,
			Pool:      pool,
		}
		ok, err := matchPoolsService.MatchPoolMetricShort(input)
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
	MatchPoolMetricCmd.Flags().String("namespace", "", "Namespace")
	_ = MatchPoolMetricCmd.MarkFlagRequired("namespace")
	MatchPoolMetricCmd.Flags().String("pool", "", "Pool")
	_ = MatchPoolMetricCmd.MarkFlagRequired("pool")
}
