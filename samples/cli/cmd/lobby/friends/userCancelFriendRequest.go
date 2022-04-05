// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// UserCancelFriendRequestCmd represents the UserCancelFriendRequest command
var UserCancelFriendRequestCmd = &cobra.Command{
	Use:   "userCancelFriendRequest",
	Short: "User cancel friend request",
	Long:  `User cancel friend request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelUserCancelFriendRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &friends.UserCancelFriendRequestParams{
			Body:      body,
			Namespace: namespace,
		}
		errInput := friendsService.UserCancelFriendRequestShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	UserCancelFriendRequestCmd.Flags().StringP("body", "", "", "Body")
	_ = UserCancelFriendRequestCmd.MarkFlagRequired("body")
	UserCancelFriendRequestCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UserCancelFriendRequestCmd.MarkFlagRequired("namespace")
}
