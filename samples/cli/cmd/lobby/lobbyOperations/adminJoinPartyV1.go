// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package lobbyOperations

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/lobby_operations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminJoinPartyV1Cmd represents the AdminJoinPartyV1 command
var AdminJoinPartyV1Cmd = &cobra.Command{
	Use:   "adminJoinPartyV1",
	Short: "Admin join party V1",
	Long:  `Admin join party V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		lobbyOperationsService := &lobby.LobbyOperationsService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &lobby_operations.AdminJoinPartyV1Params{
			Namespace: namespace,
			PartyID:   partyId,
			UserID:    userId,
		}
		errInput := lobbyOperationsService.AdminJoinPartyV1Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminJoinPartyV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminJoinPartyV1Cmd.MarkFlagRequired("namespace")
	AdminJoinPartyV1Cmd.Flags().String("partyId", "", "Party id")
	_ = AdminJoinPartyV1Cmd.MarkFlagRequired("partyId")
	AdminJoinPartyV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminJoinPartyV1Cmd.MarkFlagRequired("userId")
}
