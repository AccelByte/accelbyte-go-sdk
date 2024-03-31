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

// QueryDetailTickMatchPoolCmd represents the QueryDetailTickMatchPool command
var QueryDetailTickMatchPoolCmd = &cobra.Command{
	Use:   "queryDetailTickMatchPool",
	Short: "Query detail tick match pool",
	Long:  `Query detail tick match pool`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		podName, _ := cmd.Flags().GetString("podName")
		poolName, _ := cmd.Flags().GetString("poolName")
		endDate, _ := cmd.Flags().GetString("endDate")
		startDate, _ := cmd.Flags().GetString("startDate")
		all, _ := cmd.Flags().GetBool("all")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &x_ray.QueryDetailTickMatchPoolParams{
			Namespace: namespace,
			PodName:   podName,
			PoolName:  poolName,
			All:       &all,
			Limit:     &limit,
			Offset:    &offset,
			EndDate:   endDate,
			StartDate: startDate,
		}
		ok, errOK := xRayService.QueryDetailTickMatchPoolShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryDetailTickMatchPoolCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryDetailTickMatchPoolCmd.MarkFlagRequired("namespace")
	QueryDetailTickMatchPoolCmd.Flags().String("podName", "", "Pod name")
	_ = QueryDetailTickMatchPoolCmd.MarkFlagRequired("podName")
	QueryDetailTickMatchPoolCmd.Flags().String("poolName", "", "Pool name")
	_ = QueryDetailTickMatchPoolCmd.MarkFlagRequired("poolName")
	QueryDetailTickMatchPoolCmd.Flags().Bool("all", false, "All")
	QueryDetailTickMatchPoolCmd.Flags().Int64("limit", 20, "Limit")
	QueryDetailTickMatchPoolCmd.Flags().Int64("offset", 0, "Offset")
	QueryDetailTickMatchPoolCmd.Flags().String("endDate", "", "End date")
	_ = QueryDetailTickMatchPoolCmd.MarkFlagRequired("endDate")
	QueryDetailTickMatchPoolCmd.Flags().String("startDate", "", "Start date")
	_ = QueryDetailTickMatchPoolCmd.MarkFlagRequired("startDate")
}
