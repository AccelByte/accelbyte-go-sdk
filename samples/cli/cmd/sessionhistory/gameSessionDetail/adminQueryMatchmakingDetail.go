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

// AdminQueryMatchmakingDetailCmd represents the AdminQueryMatchmakingDetail command
var AdminQueryMatchmakingDetailCmd = &cobra.Command{
	Use:   "adminQueryMatchmakingDetail",
	Short: "Admin query matchmaking detail",
	Long:  `Admin query matchmaking detail`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionDetailService := &sessionhistory.GameSessionDetailService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		gameSessionID, _ := cmd.Flags().GetString("gameSessionID")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		order, _ := cmd.Flags().GetString("order")
		orderBy, _ := cmd.Flags().GetString("orderBy")
		ticketID, _ := cmd.Flags().GetString("ticketID")
		userID, _ := cmd.Flags().GetString("userID")
		input := &game_session_detail.AdminQueryMatchmakingDetailParams{
			Namespace:     namespace,
			GameSessionID: &gameSessionID,
			Limit:         &limit,
			Offset:        &offset,
			Order:         &order,
			OrderBy:       &orderBy,
			TicketID:      &ticketID,
			UserID:        &userID,
		}
		ok, errOK := gameSessionDetailService.AdminQueryMatchmakingDetailShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminQueryMatchmakingDetailCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminQueryMatchmakingDetailCmd.MarkFlagRequired("namespace")
	AdminQueryMatchmakingDetailCmd.Flags().String("gameSessionID", "", "Game session ID")
	AdminQueryMatchmakingDetailCmd.Flags().Int64("limit", 20, "Limit")
	AdminQueryMatchmakingDetailCmd.Flags().Int64("offset", 0, "Offset")
	AdminQueryMatchmakingDetailCmd.Flags().String("order", "", "Order")
	AdminQueryMatchmakingDetailCmd.Flags().String("orderBy", "", "Order by")
	AdminQueryMatchmakingDetailCmd.Flags().String("ticketID", "", "Ticket ID")
	AdminQueryMatchmakingDetailCmd.Flags().String("userID", "", "User ID")
}
