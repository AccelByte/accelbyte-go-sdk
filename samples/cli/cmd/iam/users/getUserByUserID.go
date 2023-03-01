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

// GetUserByUserIDCmd represents the GetUserByUserID command
var GetUserByUserIDCmd = &cobra.Command{
	Use:   "getUserByUserID",
	Short: "Get user by user ID",
	Long:  `Get user by user ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.GetUserByUserIDParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersService.GetUserByUserIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserByUserIDCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserByUserIDCmd.MarkFlagRequired("namespace")
	GetUserByUserIDCmd.Flags().String("userId", "", "User id")
	_ = GetUserByUserIDCmd.MarkFlagRequired("userId")
}
