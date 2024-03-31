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

// AdminQueryTicketDetailCmd represents the AdminQueryTicketDetail command
var AdminQueryTicketDetailCmd = &cobra.Command{
	Use:   "adminQueryTicketDetail",
	Short: "Admin query ticket detail",
	Long:  `Admin query ticket detail`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionDetailService := &sessionhistory.GameSessionDetailService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endDate, _ := cmd.Flags().GetString("endDate")
		gameMode, _ := cmd.Flags().GetString("gameMode")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		order, _ := cmd.Flags().GetString("order")
		partyID, _ := cmd.Flags().GetString("partyID")
		region, _ := cmd.Flags().GetString("region")
		startDate, _ := cmd.Flags().GetString("startDate")
		userIDs, _ := cmd.Flags().GetString("userIDs")
		input := &game_session_detail.AdminQueryTicketDetailParams{
			Namespace: namespace,
			EndDate:   &endDate,
			GameMode:  &gameMode,
			Limit:     &limit,
			Offset:    &offset,
			Order:     &order,
			PartyID:   &partyID,
			Region:    &region,
			StartDate: &startDate,
			UserIDs:   &userIDs,
		}
		ok, errOK := gameSessionDetailService.AdminQueryTicketDetailShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminQueryTicketDetailCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminQueryTicketDetailCmd.MarkFlagRequired("namespace")
	AdminQueryTicketDetailCmd.Flags().String("endDate", "", "End date")
	AdminQueryTicketDetailCmd.Flags().String("gameMode", "", "Game mode")
	AdminQueryTicketDetailCmd.Flags().Int64("limit", 20, "Limit")
	AdminQueryTicketDetailCmd.Flags().Int64("offset", 0, "Offset")
	AdminQueryTicketDetailCmd.Flags().String("order", "", "Order")
	AdminQueryTicketDetailCmd.Flags().String("partyID", "", "Party ID")
	AdminQueryTicketDetailCmd.Flags().String("region", "", "Region")
	AdminQueryTicketDetailCmd.Flags().String("startDate", "", "Start date")
	AdminQueryTicketDetailCmd.Flags().String("userIDs", "", "User I ds")
}
