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

// AdminGetUserSinglePlatformAccountCmd represents the AdminGetUserSinglePlatformAccount command
var AdminGetUserSinglePlatformAccountCmd = &cobra.Command{
	Use:   "adminGetUserSinglePlatformAccount",
	Short: "Admin get user single platform account",
	Long:  `Admin get user single platform account`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		userId, _ := cmd.Flags().GetString("userId")
		crossNamespace, _ := cmd.Flags().GetBool("crossNamespace")
		input := &users.AdminGetUserSinglePlatformAccountParams{
			Namespace:      namespace,
			PlatformID:     platformId,
			UserID:         userId,
			CrossNamespace: &crossNamespace,
		}
		ok, errOK := usersService.AdminGetUserSinglePlatformAccountShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetUserSinglePlatformAccountCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserSinglePlatformAccountCmd.MarkFlagRequired("namespace")
	AdminGetUserSinglePlatformAccountCmd.Flags().String("platformId", "", "Platform id")
	_ = AdminGetUserSinglePlatformAccountCmd.MarkFlagRequired("platformId")
	AdminGetUserSinglePlatformAccountCmd.Flags().String("userId", "", "User id")
	_ = AdminGetUserSinglePlatformAccountCmd.MarkFlagRequired("userId")
	AdminGetUserSinglePlatformAccountCmd.Flags().Bool("crossNamespace", false, "Cross namespace")
}
