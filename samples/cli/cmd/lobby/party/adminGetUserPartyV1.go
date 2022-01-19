// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/party"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetUserPartyV1Cmd represents the adminGetUserPartyV1 command
var adminGetUserPartyV1Cmd = &cobra.Command{
	Use:   "adminGetUserPartyV1",
	Short: "Admin get user party V1",
	Long:  `Admin get user party V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &lobby.PartyService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &party.AdminGetUserPartyV1Params{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := partyService.AdminGetUserPartyV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetUserPartyV1Cmd)
	adminGetUserPartyV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetUserPartyV1Cmd.MarkFlagRequired("namespace")
	adminGetUserPartyV1Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminGetUserPartyV1Cmd.MarkFlagRequired("userId")
}
