// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_action"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getBannedUsersCmd represents the getBannedUsers command
var getBannedUsersCmd = &cobra.Command{
	Use:   "getBannedUsers",
	Short: "Get banned users",
	Long:  `Get banned users`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userActionService := &basic.UserActionService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userIdsString := cmd.Flag("userIds").Value.String()
		var userIds []string
		errUserIds := json.Unmarshal([]byte(userIdsString), &userIds)
		if errUserIds != nil {
			return errUserIds
		}
		input := &user_action.GetBannedUsersParams{
			Namespace: namespace,
			UserIds:   userIds,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userActionService.GetBannedUsers(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getBannedUsersCmd)
	getBannedUsersCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getBannedUsersCmd.MarkFlagRequired("namespace")
	getBannedUsersCmd.Flags().StringP("userIds", "u", " ", "User ids")
	_ = getBannedUsersCmd.MarkFlagRequired("userIds")
}
