// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package friends

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/friends"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UserRejectFriendRequestCmd represents the UserRejectFriendRequest command
var UserRejectFriendRequestCmd = &cobra.Command{
	Use:   "userRejectFriendRequest",
	Short: "User reject friend request",
	Long:  `User reject friend request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelUserRejectFriendRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &friends.UserRejectFriendRequestParams{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := friendsService.UserRejectFriendRequestShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	UserRejectFriendRequestCmd.Flags().String("body", "", "Body")
	_ = UserRejectFriendRequestCmd.MarkFlagRequired("body")
	UserRejectFriendRequestCmd.Flags().String("namespace", "", "Namespace")
	_ = UserRejectFriendRequestCmd.MarkFlagRequired("namespace")
}
