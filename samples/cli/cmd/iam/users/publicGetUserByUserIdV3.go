// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetUserByUserIdV3Cmd represents the publicGetUserByUserIdV3 command
var publicGetUserByUserIdV3Cmd = &cobra.Command{
	Use:   "publicGetUserByUserIdV3",
	Short: "Public get user by user id V3",
	Long:  `Public get user by user id V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.PublicGetUserByUserIDV3Params{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.PublicGetUserByUserIDV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetUserByUserIdV3Cmd)
	publicGetUserByUserIdV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicGetUserByUserIdV3Cmd.MarkFlagRequired("namespace")
	publicGetUserByUserIdV3Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicGetUserByUserIdV3Cmd.MarkFlagRequired("userId")
}