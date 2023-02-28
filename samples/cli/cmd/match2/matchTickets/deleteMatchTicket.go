// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchTickets

import (
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/match_tickets"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteMatchTicketCmd represents the DeleteMatchTicket command
var DeleteMatchTicketCmd = &cobra.Command{
	Use:   "deleteMatchTicket",
	Short: "Delete match ticket",
	Long:  `Delete match ticket`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchTicketsService := &match2.MatchTicketsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ticketid, _ := cmd.Flags().GetString("ticketid")
		input := &match_tickets.DeleteMatchTicketParams{
			Namespace: namespace,
			Ticketid:  ticketid,
		}
		errNoContent := matchTicketsService.DeleteMatchTicketShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteMatchTicketCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteMatchTicketCmd.MarkFlagRequired("namespace")
	DeleteMatchTicketCmd.Flags().String("ticketid", "", "Ticketid")
	_ = DeleteMatchTicketCmd.MarkFlagRequired("ticketid")
}
