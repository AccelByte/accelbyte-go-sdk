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
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// addFriendsWithoutConfirmationCmd represents the addFriendsWithoutConfirmation command
var addFriendsWithoutConfirmationCmd = &cobra.Command{
	Use:   "addFriendsWithoutConfirmation",
	Short: "Add friends without confirmation",
	Long:  `Add friends without confirmation`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelBulkAddFriendsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &friends.AddFriendsWithoutConfirmationParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := friendsService.AddFriendsWithoutConfirmation(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(addFriendsWithoutConfirmationCmd)
	addFriendsWithoutConfirmationCmd.Flags().StringP("body", "by", " ", "Body")
	_ = addFriendsWithoutConfirmationCmd.MarkFlagRequired("body")
	addFriendsWithoutConfirmationCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = addFriendsWithoutConfirmationCmd.MarkFlagRequired("namespace")
	addFriendsWithoutConfirmationCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = addFriendsWithoutConfirmationCmd.MarkFlagRequired("userId")
}
