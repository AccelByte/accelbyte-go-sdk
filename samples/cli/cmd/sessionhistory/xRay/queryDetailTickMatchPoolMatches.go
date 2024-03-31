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

// QueryDetailTickMatchPoolMatchesCmd represents the QueryDetailTickMatchPoolMatches command
var QueryDetailTickMatchPoolMatchesCmd = &cobra.Command{
	Use:   "queryDetailTickMatchPoolMatches",
	Short: "Query detail tick match pool matches",
	Long:  `Query detail tick match pool matches`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		podName, _ := cmd.Flags().GetString("podName")
		poolName, _ := cmd.Flags().GetString("poolName")
		tickId, _ := cmd.Flags().GetString("tickId")
		input := &x_ray.QueryDetailTickMatchPoolMatchesParams{
			Namespace: namespace,
			PodName:   podName,
			PoolName:  poolName,
			TickID:    tickId,
		}
		ok, errOK := xRayService.QueryDetailTickMatchPoolMatchesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryDetailTickMatchPoolMatchesCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryDetailTickMatchPoolMatchesCmd.MarkFlagRequired("namespace")
	QueryDetailTickMatchPoolMatchesCmd.Flags().String("podName", "", "Pod name")
	_ = QueryDetailTickMatchPoolMatchesCmd.MarkFlagRequired("podName")
	QueryDetailTickMatchPoolMatchesCmd.Flags().String("poolName", "", "Pool name")
	_ = QueryDetailTickMatchPoolMatchesCmd.MarkFlagRequired("poolName")
	QueryDetailTickMatchPoolMatchesCmd.Flags().String("tickId", "", "Tick id")
	_ = QueryDetailTickMatchPoolMatchesCmd.MarkFlagRequired("tickId")
}
