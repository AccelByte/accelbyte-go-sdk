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

// QueryXrayTimelineByTicketIDCmd represents the QueryXrayTimelineByTicketID command
var QueryXrayTimelineByTicketIDCmd = &cobra.Command{
	Use:   "queryXrayTimelineByTicketID",
	Short: "Query xray timeline by ticket ID",
	Long:  `Query xray timeline by ticket ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ticketId, _ := cmd.Flags().GetString("ticketId")
		endDate, _ := cmd.Flags().GetString("endDate")
		startDate, _ := cmd.Flags().GetString("startDate")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &x_ray.QueryXrayTimelineByTicketIDParams{
			Namespace: namespace,
			TicketID:  ticketId,
			Limit:     &limit,
			Offset:    &offset,
			EndDate:   endDate,
			StartDate: startDate,
		}
		ok, errOK := xRayService.QueryXrayTimelineByTicketIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryXrayTimelineByTicketIDCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryXrayTimelineByTicketIDCmd.MarkFlagRequired("namespace")
	QueryXrayTimelineByTicketIDCmd.Flags().String("ticketId", "", "Ticket id")
	_ = QueryXrayTimelineByTicketIDCmd.MarkFlagRequired("ticketId")
	QueryXrayTimelineByTicketIDCmd.Flags().Int64("limit", 20, "Limit")
	QueryXrayTimelineByTicketIDCmd.Flags().Int64("offset", 0, "Offset")
	QueryXrayTimelineByTicketIDCmd.Flags().String("endDate", "", "End date")
	_ = QueryXrayTimelineByTicketIDCmd.MarkFlagRequired("endDate")
	QueryXrayTimelineByTicketIDCmd.Flags().String("startDate", "", "Start date")
	_ = QueryXrayTimelineByTicketIDCmd.MarkFlagRequired("startDate")
}
