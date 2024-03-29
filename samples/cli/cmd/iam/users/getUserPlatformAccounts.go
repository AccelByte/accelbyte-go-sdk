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

// GetUserPlatformAccountsCmd represents the GetUserPlatformAccounts command
var GetUserPlatformAccountsCmd = &cobra.Command{
	Use:   "getUserPlatformAccounts",
	Short: "Get user platform accounts",
	Long:  `Get user platform accounts`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.GetUserPlatformAccountsParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersService.GetUserPlatformAccountsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserPlatformAccountsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserPlatformAccountsCmd.MarkFlagRequired("namespace")
	GetUserPlatformAccountsCmd.Flags().String("userId", "", "User id")
	_ = GetUserPlatformAccountsCmd.MarkFlagRequired("userId")
}
