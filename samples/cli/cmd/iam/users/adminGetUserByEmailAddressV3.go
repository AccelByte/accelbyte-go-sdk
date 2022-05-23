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

// AdminGetUserByEmailAddressV3Cmd represents the AdminGetUserByEmailAddressV3 command
var AdminGetUserByEmailAddressV3Cmd = &cobra.Command{
	Use:   "adminGetUserByEmailAddressV3",
	Short: "Admin get user by email address V3",
	Long:  `Admin get user by email address V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		emailAddress, _ := cmd.Flags().GetString("emailAddress")
		input := &users.AdminGetUserByEmailAddressV3Params{
			Namespace:    namespace,
			EmailAddress: &emailAddress,
		}
		ok, err := usersService.AdminGetUserByEmailAddressV3Short(input)
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
	AdminGetUserByEmailAddressV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserByEmailAddressV3Cmd.MarkFlagRequired("namespace")
	AdminGetUserByEmailAddressV3Cmd.Flags().String("emailAddress", "", "Email address")
}
