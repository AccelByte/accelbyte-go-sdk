// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminTickets

import (
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_tickets"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/reporting"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetReportsByTicketCmd represents the GetReportsByTicket command
var GetReportsByTicketCmd = &cobra.Command{
	Use:   "getReportsByTicket",
	Short: "Get reports by ticket",
	Long:  `Get reports by ticket`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTicketsService := &reporting.AdminTicketsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ticketId, _ := cmd.Flags().GetString("ticketId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &admin_tickets.GetReportsByTicketParams{
			Namespace: namespace,
			TicketID:  ticketId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, err := adminTicketsService.GetReportsByTicketShort(input)
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
	GetReportsByTicketCmd.Flags().String("namespace", "", "Namespace")
	_ = GetReportsByTicketCmd.MarkFlagRequired("namespace")
	GetReportsByTicketCmd.Flags().String("ticketId", "", "Ticket id")
	_ = GetReportsByTicketCmd.MarkFlagRequired("ticketId")
	GetReportsByTicketCmd.Flags().Int64("limit", 20, "Limit")
	GetReportsByTicketCmd.Flags().Int64("offset", 0, "Offset")
}
