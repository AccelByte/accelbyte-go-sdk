// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetUserByUserIDV2Cmd represents the PublicGetUserByUserIDV2 command
var PublicGetUserByUserIDV2Cmd = &cobra.Command{
	Use:   "publicGetUserByUserIDV2",
	Short: "Public get user by user IDV2",
	Long:  `Public get user by user IDV2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.PublicGetUserByUserIDV2Params{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.PublicGetUserByUserIDV2(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	PublicGetUserByUserIDV2Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetUserByUserIDV2Cmd.MarkFlagRequired("namespace")
	PublicGetUserByUserIDV2Cmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicGetUserByUserIDV2Cmd.MarkFlagRequired("userId")
}
