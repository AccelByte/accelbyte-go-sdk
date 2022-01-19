// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetRolesV3Cmd represents the adminGetRolesV3 command
var adminGetRolesV3Cmd = &cobra.Command{
	Use:   "adminGetRolesV3",
	Short: "Admin get roles V3",
	Long:  `Admin get roles V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		isWildcard, _ := cmd.Flags().GetBool("isWildcard")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &roles.AdminGetRolesV3Params{
			After:      &after,
			Before:     &before,
			IsWildcard: &isWildcard,
			Limit:      &limit,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := rolesService.AdminGetRolesV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetRolesV3Cmd)
	adminGetRolesV3Cmd.Flags().StringP("after", "a", "0", "After")
	adminGetRolesV3Cmd.Flags().StringP("before", "b", "0", "Before")
	adminGetRolesV3Cmd.Flags().BoolP("isWildcard", "i", false, "Is wildcard")
	adminGetRolesV3Cmd.Flags().Int64P("limit", "l", 20, "Limit")
}
