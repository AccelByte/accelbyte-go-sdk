// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package roles

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetRolesV4Cmd represents the AdminGetRolesV4 command
var AdminGetRolesV4Cmd = &cobra.Command{
	Use:   "adminGetRolesV4",
	Short: "Admin get roles V4",
	Long:  `Admin get roles V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		adminRole, _ := cmd.Flags().GetBool("adminRole")
		isWildcard, _ := cmd.Flags().GetBool("isWildcard")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &roles.AdminGetRolesV4Params{
			AdminRole:  &adminRole,
			IsWildcard: &isWildcard,
			Limit:      &limit,
			Offset:     &offset,
		}
		ok, err := rolesService.AdminGetRolesV4Short(input)
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
	AdminGetRolesV4Cmd.Flags().Bool("adminRole", false, "Admin role")
	AdminGetRolesV4Cmd.Flags().Bool("isWildcard", false, "Is wildcard")
	AdminGetRolesV4Cmd.Flags().Int64("limit", 20, "Limit")
	AdminGetRolesV4Cmd.Flags().Int64("offset", 0, "Offset")
}
