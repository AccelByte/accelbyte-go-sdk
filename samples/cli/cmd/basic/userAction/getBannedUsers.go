// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package userAction

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_action"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetBannedUsersCmd represents the GetBannedUsers command
var GetBannedUsersCmd = &cobra.Command{
	Use:   "GetBannedUsers",
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
	GetBannedUsersCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetBannedUsersCmd.MarkFlagRequired("namespace")
	GetBannedUsersCmd.Flags().StringP("userIds", "us", " ", "User ids")
	_ = GetBannedUsersCmd.MarkFlagRequired("userIds")
}
