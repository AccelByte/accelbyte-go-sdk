// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package friends

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/friends"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserIncomingFriendsWithTimeCmd represents the GetUserIncomingFriendsWithTime command
var GetUserIncomingFriendsWithTimeCmd = &cobra.Command{
	Use:   "getUserIncomingFriendsWithTime",
	Short: "Get user incoming friends with time",
	Long:  `Get user incoming friends with time`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &friends.GetUserIncomingFriendsWithTimeParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := friendsService.GetUserIncomingFriendsWithTimeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserIncomingFriendsWithTimeCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserIncomingFriendsWithTimeCmd.MarkFlagRequired("namespace")
	GetUserIncomingFriendsWithTimeCmd.Flags().Int64("limit", 20, "Limit")
	GetUserIncomingFriendsWithTimeCmd.Flags().Int64("offset", 0, "Offset")
}
