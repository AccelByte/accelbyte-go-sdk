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

// GetTicketDetailCmd represents the GetTicketDetail command
var GetTicketDetailCmd = &cobra.Command{
	Use:   "getTicketDetail",
	Short: "Get ticket detail",
	Long:  `Get ticket detail`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTicketsService := &reporting.AdminTicketsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ticketId, _ := cmd.Flags().GetString("ticketId")
		input := &admin_tickets.GetTicketDetailParams{
			Namespace: namespace,
			TicketID:  ticketId,
		}
		ok, err := adminTicketsService.GetTicketDetailShort(input)
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
	GetTicketDetailCmd.Flags().String("namespace", "", "Namespace")
	_ = GetTicketDetailCmd.MarkFlagRequired("namespace")
	GetTicketDetailCmd.Flags().String("ticketId", "", "Ticket id")
	_ = GetTicketDetailCmd.MarkFlagRequired("ticketId")
}
