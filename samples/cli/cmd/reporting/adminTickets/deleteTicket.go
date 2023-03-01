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

// DeleteTicketCmd represents the DeleteTicket command
var DeleteTicketCmd = &cobra.Command{
	Use:   "deleteTicket",
	Short: "Delete ticket",
	Long:  `Delete ticket`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTicketsService := &reporting.AdminTicketsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ticketId, _ := cmd.Flags().GetString("ticketId")
		input := &admin_tickets.DeleteTicketParams{
			Namespace: namespace,
			TicketID:  ticketId,
		}
		errNoContent := adminTicketsService.DeleteTicketShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteTicketCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteTicketCmd.MarkFlagRequired("namespace")
	DeleteTicketCmd.Flags().String("ticketId", "", "Ticket id")
	_ = DeleteTicketCmd.MarkFlagRequired("ticketId")
}
