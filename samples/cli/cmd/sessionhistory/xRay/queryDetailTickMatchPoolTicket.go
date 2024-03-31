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

// QueryDetailTickMatchPoolTicketCmd represents the QueryDetailTickMatchPoolTicket command
var QueryDetailTickMatchPoolTicketCmd = &cobra.Command{
	Use:   "queryDetailTickMatchPoolTicket",
	Short: "Query detail tick match pool ticket",
	Long:  `Query detail tick match pool ticket`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		podName, _ := cmd.Flags().GetString("podName")
		poolName, _ := cmd.Flags().GetString("poolName")
		tickId, _ := cmd.Flags().GetString("tickId")
		input := &x_ray.QueryDetailTickMatchPoolTicketParams{
			Namespace: namespace,
			PodName:   podName,
			PoolName:  poolName,
			TickID:    tickId,
		}
		ok, errOK := xRayService.QueryDetailTickMatchPoolTicketShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryDetailTickMatchPoolTicketCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryDetailTickMatchPoolTicketCmd.MarkFlagRequired("namespace")
	QueryDetailTickMatchPoolTicketCmd.Flags().String("podName", "", "Pod name")
	_ = QueryDetailTickMatchPoolTicketCmd.MarkFlagRequired("podName")
	QueryDetailTickMatchPoolTicketCmd.Flags().String("poolName", "", "Pool name")
	_ = QueryDetailTickMatchPoolTicketCmd.MarkFlagRequired("poolName")
	QueryDetailTickMatchPoolTicketCmd.Flags().String("tickId", "", "Tick id")
	_ = QueryDetailTickMatchPoolTicketCmd.MarkFlagRequired("tickId")
}
