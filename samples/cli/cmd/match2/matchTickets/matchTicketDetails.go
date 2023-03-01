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

// MatchTicketDetailsCmd represents the MatchTicketDetails command
var MatchTicketDetailsCmd = &cobra.Command{
	Use:   "matchTicketDetails",
	Short: "Match ticket details",
	Long:  `Match ticket details`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchTicketsService := &match2.MatchTicketsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ticketid, _ := cmd.Flags().GetString("ticketid")
		input := &match_tickets.MatchTicketDetailsParams{
			Namespace: namespace,
			Ticketid:  ticketid,
		}
		ok, errOK := matchTicketsService.MatchTicketDetailsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	MatchTicketDetailsCmd.Flags().String("namespace", "", "Namespace")
	_ = MatchTicketDetailsCmd.MarkFlagRequired("namespace")
	MatchTicketDetailsCmd.Flags().String("ticketid", "", "Ticketid")
	_ = MatchTicketDetailsCmd.MarkFlagRequired("ticketid")
}
