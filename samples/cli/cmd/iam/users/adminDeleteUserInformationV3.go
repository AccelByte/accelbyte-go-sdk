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

// AdminDeleteUserInformationV3Cmd represents the AdminDeleteUserInformationV3 command
var AdminDeleteUserInformationV3Cmd = &cobra.Command{
	Use:   "adminDeleteUserInformationV3",
	Short: "Admin delete user information V3",
	Long:  `Admin delete user information V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminDeleteUserInformationV3Params{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.AdminDeleteUserInformationV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AdminDeleteUserInformationV3Cmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = AdminDeleteUserInformationV3Cmd.MarkFlagRequired("namespace")
	AdminDeleteUserInformationV3Cmd.Flags().StringP("userId", "", " ", "User id")
	_ = AdminDeleteUserInformationV3Cmd.MarkFlagRequired("userId")
}
