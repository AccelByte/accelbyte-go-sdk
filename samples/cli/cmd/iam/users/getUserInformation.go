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

// GetUserInformationCmd represents the GetUserInformation command
var GetUserInformationCmd = &cobra.Command{
	Use:   "getUserInformation",
	Short: "Get user information",
	Long:  `Get user information`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.GetUserInformationParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersService.GetUserInformationShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserInformationCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserInformationCmd.MarkFlagRequired("namespace")
	GetUserInformationCmd.Flags().String("userId", "", "User id")
	_ = GetUserInformationCmd.MarkFlagRequired("userId")
}
