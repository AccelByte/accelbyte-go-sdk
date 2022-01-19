// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminListUserRolesV4Cmd represents the adminListUserRolesV4 command
var adminListUserRolesV4Cmd = &cobra.Command{
	Use:   "adminListUserRolesV4",
	Short: "Admin list user roles V4",
	Long:  `Admin list user roles V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users_v4.AdminListUserRolesV4Params{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersV4Service.AdminListUserRolesV4(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminListUserRolesV4Cmd)
	adminListUserRolesV4Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminListUserRolesV4Cmd.MarkFlagRequired("namespace")
	adminListUserRolesV4Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminListUserRolesV4Cmd.MarkFlagRequired("userId")
}
