// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package operations

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/operations"
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
		operationsService := &lobby.OperationsService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &operations.AdminJoinPartyV1Params{
			Namespace: namespace,
			PartyID:   partyId,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := operationsService.AdminJoinPartyV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AdminJoinPartyV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminJoinPartyV1Cmd.MarkFlagRequired("namespace")
	AdminJoinPartyV1Cmd.Flags().StringP("partyId", "", "", "Party id")
	_ = AdminJoinPartyV1Cmd.MarkFlagRequired("partyId")
	AdminJoinPartyV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminJoinPartyV1Cmd.MarkFlagRequired("userId")
}
