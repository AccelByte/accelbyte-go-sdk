// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetUserBanCmd represents the publicGetUserBan command
var publicGetUserBanCmd = &cobra.Command{
	Use:   "publicGetUserBan",
	Short: "Public get user ban",
	Long:  `Public get user ban`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		input := &users.PublicGetUserBanParams{
			Namespace:  namespace,
			UserID:     userId,
			ActiveOnly: &activeOnly,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.PublicGetUserBan(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetUserBanCmd)
	publicGetUserBanCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetUserBanCmd.MarkFlagRequired("namespace")
	publicGetUserBanCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicGetUserBanCmd.MarkFlagRequired("userId")
	publicGetUserBanCmd.Flags().BoolP("activeOnly", "ay", false, "Active only")
}
