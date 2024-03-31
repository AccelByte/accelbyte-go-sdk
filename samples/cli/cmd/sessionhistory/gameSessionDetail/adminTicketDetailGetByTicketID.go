// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gameSessionDetail

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionhistory"
	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclient/game_session_detail"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminTicketDetailGetByTicketIDCmd represents the AdminTicketDetailGetByTicketID command
var AdminTicketDetailGetByTicketIDCmd = &cobra.Command{
	Use:   "adminTicketDetailGetByTicketID",
	Short: "Admin ticket detail get by ticket ID",
	Long:  `Admin ticket detail get by ticket ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionDetailService := &sessionhistory.GameSessionDetailService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ticketId, _ := cmd.Flags().GetString("ticketId")
		input := &game_session_detail.AdminTicketDetailGetByTicketIDParams{
			Namespace: namespace,
			TicketID:  ticketId,
		}
		ok, errOK := gameSessionDetailService.AdminTicketDetailGetByTicketIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminTicketDetailGetByTicketIDCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminTicketDetailGetByTicketIDCmd.MarkFlagRequired("namespace")
	AdminTicketDetailGetByTicketIDCmd.Flags().String("ticketId", "", "Ticket id")
	_ = AdminTicketDetailGetByTicketIDCmd.MarkFlagRequired("ticketId")
}
