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

// AdminGetMatchmakingDetailByTicketIDCmd represents the AdminGetMatchmakingDetailByTicketID command
var AdminGetMatchmakingDetailByTicketIDCmd = &cobra.Command{
	Use:   "adminGetMatchmakingDetailByTicketID",
	Short: "Admin get matchmaking detail by ticket ID",
	Long:  `Admin get matchmaking detail by ticket ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionDetailService := &sessionhistory.GameSessionDetailService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ticketId, _ := cmd.Flags().GetString("ticketId")
		input := &game_session_detail.AdminGetMatchmakingDetailByTicketIDParams{
			Namespace: namespace,
			TicketID:  ticketId,
		}
		ok, errOK := gameSessionDetailService.AdminGetMatchmakingDetailByTicketIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetMatchmakingDetailByTicketIDCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetMatchmakingDetailByTicketIDCmd.MarkFlagRequired("namespace")
	AdminGetMatchmakingDetailByTicketIDCmd.Flags().String("ticketId", "", "Ticket id")
	_ = AdminGetMatchmakingDetailByTicketIDCmd.MarkFlagRequired("ticketId")
}
