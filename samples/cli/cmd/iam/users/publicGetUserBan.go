// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetUserBanCmd represents the PublicGetUserBan command
var PublicGetUserBanCmd = &cobra.Command{
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
		ok, err := usersService.PublicGetUserBanShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	PublicGetUserBanCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserBanCmd.MarkFlagRequired("namespace")
	PublicGetUserBanCmd.Flags().String("userId", "", "User id")
	_ = PublicGetUserBanCmd.MarkFlagRequired("userId")
	PublicGetUserBanCmd.Flags().Bool("activeOnly", false, "Active only")
}
