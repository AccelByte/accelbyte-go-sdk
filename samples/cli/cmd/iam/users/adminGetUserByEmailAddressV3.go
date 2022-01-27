// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetUserByEmailAddressV3Cmd represents the adminGetUserByEmailAddressV3 command
var adminGetUserByEmailAddressV3Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminGetUserByEmailAddressV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetUserByEmailAddressV3Cmd)
	adminGetUserByEmailAddressV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminGetUserByEmailAddressV3Cmd.MarkFlagRequired("namespace")
	adminGetUserByEmailAddressV3Cmd.Flags().StringP("emailAddress", "es", " ", "Email address")
}
