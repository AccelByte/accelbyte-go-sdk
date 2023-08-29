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

// BulkDeleteFriendsCmd represents the BulkDeleteFriends command
var BulkDeleteFriendsCmd = &cobra.Command{
	Use:   "bulkDeleteFriends",
	Short: "Bulk delete friends",
	Long:  `Bulk delete friends`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelBulkFriendsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &friends.BulkDeleteFriendsParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := friendsService.BulkDeleteFriendsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkDeleteFriendsCmd.Flags().String("body", "", "Body")
	_ = BulkDeleteFriendsCmd.MarkFlagRequired("body")
	BulkDeleteFriendsCmd.Flags().String("namespace", "", "Namespace")
	_ = BulkDeleteFriendsCmd.MarkFlagRequired("namespace")
	BulkDeleteFriendsCmd.Flags().String("userId", "", "User id")
	_ = BulkDeleteFriendsCmd.MarkFlagRequired("userId")
}
