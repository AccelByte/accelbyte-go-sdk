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

// QueryXrayTimelineByUserIDCmd represents the QueryXrayTimelineByUserID command
var QueryXrayTimelineByUserIDCmd = &cobra.Command{
	Use:   "queryXrayTimelineByUserID",
	Short: "Query xray timeline by user ID",
	Long:  `Query xray timeline by user ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		endDate, _ := cmd.Flags().GetString("endDate")
		startDate, _ := cmd.Flags().GetString("startDate")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &x_ray.QueryXrayTimelineByUserIDParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
			EndDate:   endDate,
			StartDate: startDate,
		}
		ok, errOK := xRayService.QueryXrayTimelineByUserIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryXrayTimelineByUserIDCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryXrayTimelineByUserIDCmd.MarkFlagRequired("namespace")
	QueryXrayTimelineByUserIDCmd.Flags().String("userId", "", "User id")
	_ = QueryXrayTimelineByUserIDCmd.MarkFlagRequired("userId")
	QueryXrayTimelineByUserIDCmd.Flags().Int64("limit", 20, "Limit")
	QueryXrayTimelineByUserIDCmd.Flags().Int64("offset", 0, "Offset")
	QueryXrayTimelineByUserIDCmd.Flags().String("endDate", "", "End date")
	_ = QueryXrayTimelineByUserIDCmd.MarkFlagRequired("endDate")
	QueryXrayTimelineByUserIDCmd.Flags().String("startDate", "", "Start date")
	_ = QueryXrayTimelineByUserIDCmd.MarkFlagRequired("startDate")
}
