// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package party

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/party"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetUserPartyV1Cmd represents the AdminGetUserPartyV1 command
var AdminGetUserPartyV1Cmd = &cobra.Command{
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
		ok, err := partyService.AdminGetUserPartyV1Short(input, nil)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	AdminGetUserPartyV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetUserPartyV1Cmd.MarkFlagRequired("namespace")
	AdminGetUserPartyV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminGetUserPartyV1Cmd.MarkFlagRequired("userId")
}
