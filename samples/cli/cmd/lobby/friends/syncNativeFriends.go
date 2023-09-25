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

// SyncNativeFriendsCmd represents the SyncNativeFriends command
var SyncNativeFriendsCmd = &cobra.Command{
	Use:   "syncNativeFriends",
	Short: "Sync native friends",
	Long:  `Sync native friends`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*lobbyclientmodels.ModelNativeFriendRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &friends.SyncNativeFriendsParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := friendsService.SyncNativeFriendsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SyncNativeFriendsCmd.Flags().String("body", "", "Body")
	_ = SyncNativeFriendsCmd.MarkFlagRequired("body")
	SyncNativeFriendsCmd.Flags().String("namespace", "", "Namespace")
	_ = SyncNativeFriendsCmd.MarkFlagRequired("namespace")
}
