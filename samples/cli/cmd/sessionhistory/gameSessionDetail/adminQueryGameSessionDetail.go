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

// AdminQueryGameSessionDetailCmd represents the AdminQueryGameSessionDetail command
var AdminQueryGameSessionDetailCmd = &cobra.Command{
	Use:   "adminQueryGameSessionDetail",
	Short: "Admin query game session detail",
	Long:  `Admin query game session detail`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionDetailService := &sessionhistory.GameSessionDetailService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		completedOnly, _ := cmd.Flags().GetString("completedOnly")
		configurationName, _ := cmd.Flags().GetString("configurationName")
		dsPodName, _ := cmd.Flags().GetString("dsPodName")
		endDate, _ := cmd.Flags().GetString("endDate")
		gameSessionID, _ := cmd.Flags().GetString("gameSessionID")
		isPersistent, _ := cmd.Flags().GetString("isPersistent")
		joinability, _ := cmd.Flags().GetString("joinability")
		limit, _ := cmd.Flags().GetInt64("limit")
		matchPool, _ := cmd.Flags().GetString("matchPool")
		offset, _ := cmd.Flags().GetInt64("offset")
		order, _ := cmd.Flags().GetString("order")
		orderBy, _ := cmd.Flags().GetString("orderBy")
		startDate, _ := cmd.Flags().GetString("startDate")
		statusV2, _ := cmd.Flags().GetString("statusV2")
		userID, _ := cmd.Flags().GetString("userID")
		input := &game_session_detail.AdminQueryGameSessionDetailParams{
			Namespace:         namespace,
			CompletedOnly:     &completedOnly,
			ConfigurationName: &configurationName,
			DsPodName:         &dsPodName,
			EndDate:           &endDate,
			GameSessionID:     &gameSessionID,
			IsPersistent:      &isPersistent,
			Joinability:       &joinability,
			Limit:             &limit,
			MatchPool:         &matchPool,
			Offset:            &offset,
			Order:             &order,
			OrderBy:           &orderBy,
			StartDate:         &startDate,
			StatusV2:          &statusV2,
			UserID:            &userID,
		}
		ok, errOK := gameSessionDetailService.AdminQueryGameSessionDetailShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminQueryGameSessionDetailCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminQueryGameSessionDetailCmd.MarkFlagRequired("namespace")
	AdminQueryGameSessionDetailCmd.Flags().String("completedOnly", "", "Completed only")
	AdminQueryGameSessionDetailCmd.Flags().String("configurationName", "", "Configuration name")
	AdminQueryGameSessionDetailCmd.Flags().String("dsPodName", "", "Ds pod name")
	AdminQueryGameSessionDetailCmd.Flags().String("endDate", "", "End date")
	AdminQueryGameSessionDetailCmd.Flags().String("gameSessionID", "", "Game session ID")
	AdminQueryGameSessionDetailCmd.Flags().String("isPersistent", "", "Is persistent")
	AdminQueryGameSessionDetailCmd.Flags().String("joinability", "", "Joinability")
	AdminQueryGameSessionDetailCmd.Flags().Int64("limit", 20, "Limit")
	AdminQueryGameSessionDetailCmd.Flags().String("matchPool", "", "Match pool")
	AdminQueryGameSessionDetailCmd.Flags().Int64("offset", 0, "Offset")
	AdminQueryGameSessionDetailCmd.Flags().String("order", "", "Order")
	AdminQueryGameSessionDetailCmd.Flags().String("orderBy", "", "Order by")
	AdminQueryGameSessionDetailCmd.Flags().String("startDate", "", "Start date")
	AdminQueryGameSessionDetailCmd.Flags().String("statusV2", "", "Status V2")
	AdminQueryGameSessionDetailCmd.Flags().String("userID", "", "User ID")
}
