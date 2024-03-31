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

// AdminQueryPartyDetailCmd represents the AdminQueryPartyDetail command
var AdminQueryPartyDetailCmd = &cobra.Command{
	Use:   "adminQueryPartyDetail",
	Short: "Admin query party detail",
	Long:  `Admin query party detail`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionDetailService := &sessionhistory.GameSessionDetailService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		order, _ := cmd.Flags().GetString("order")
		orderBy, _ := cmd.Flags().GetString("orderBy")
		partyID, _ := cmd.Flags().GetString("partyID")
		userID, _ := cmd.Flags().GetString("userID")
		input := &game_session_detail.AdminQueryPartyDetailParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Order:     &order,
			OrderBy:   &orderBy,
			PartyID:   &partyID,
			UserID:    &userID,
		}
		ok, errOK := gameSessionDetailService.AdminQueryPartyDetailShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminQueryPartyDetailCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminQueryPartyDetailCmd.MarkFlagRequired("namespace")
	AdminQueryPartyDetailCmd.Flags().Int64("limit", 20, "Limit")
	AdminQueryPartyDetailCmd.Flags().Int64("offset", 0, "Offset")
	AdminQueryPartyDetailCmd.Flags().String("order", "", "Order")
	AdminQueryPartyDetailCmd.Flags().String("orderBy", "", "Order by")
	AdminQueryPartyDetailCmd.Flags().String("partyID", "", "Party ID")
	AdminQueryPartyDetailCmd.Flags().String("userID", "", "User ID")
}
