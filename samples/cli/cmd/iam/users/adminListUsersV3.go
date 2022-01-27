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

// adminListUsersV3Cmd represents the adminListUsersV3 command
var adminListUsersV3Cmd = &cobra.Command{
	Use:   "adminListUsersV3",
	Short: "Admin list users V3",
	Long:  `Admin list users V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &users.AdminListUsersV3Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminListUsersV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminListUsersV3Cmd)
	adminListUsersV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminListUsersV3Cmd.MarkFlagRequired("namespace")
	adminListUsersV3Cmd.Flags().Int64P("limit", "lt", 20, "Limit")
	adminListUsersV3Cmd.Flags().Int64P("offset", "ot", 0, "Offset")
}
