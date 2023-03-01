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

// DeleteUserInformationCmd represents the DeleteUserInformation command
var DeleteUserInformationCmd = &cobra.Command{
	Use:   "deleteUserInformation",
	Short: "Delete user information",
	Long:  `Delete user information`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.DeleteUserInformationParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := usersService.DeleteUserInformationShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteUserInformationCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteUserInformationCmd.MarkFlagRequired("namespace")
	DeleteUserInformationCmd.Flags().String("userId", "", "User id")
	_ = DeleteUserInformationCmd.MarkFlagRequired("userId")
}
