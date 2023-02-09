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

// TicketStatisticCmd represents the TicketStatistic command
var TicketStatisticCmd = &cobra.Command{
	Use:   "ticketStatistic",
	Short: "Ticket statistic",
	Long:  `Ticket statistic`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTicketsService := &reporting.AdminTicketsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		category, _ := cmd.Flags().GetString("category")
		extensionCategory, _ := cmd.Flags().GetString("extensionCategory")
		input := &admin_tickets.TicketStatisticParams{
			Namespace:         namespace,
			ExtensionCategory: &extensionCategory,
			Category:          category,
		}
		ok, err := adminTicketsService.TicketStatisticShort(input)
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
	TicketStatisticCmd.Flags().String("namespace", "", "Namespace")
	_ = TicketStatisticCmd.MarkFlagRequired("namespace")
	TicketStatisticCmd.Flags().String("extensionCategory", "", "Extension category")
	TicketStatisticCmd.Flags().String("category", "", "Category")
	_ = TicketStatisticCmd.MarkFlagRequired("category")
}
