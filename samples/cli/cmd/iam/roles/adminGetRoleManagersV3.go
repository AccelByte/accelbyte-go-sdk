// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package roles

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetRoleManagersV3Cmd represents the AdminGetRoleManagersV3 command
var AdminGetRoleManagersV3Cmd = &cobra.Command{
	Use:   "adminGetRoleManagersV3",
	Short: "Admin get role managers V3",
	Long:  `Admin get role managers V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &roles.AdminGetRoleManagersV3Params{
			RoleID: roleId,
			After:  &after,
			Before: &before,
			Limit:  &limit,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := rolesService.AdminGetRoleManagersV3(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	AdminGetRoleManagersV3Cmd.Flags().StringP("roleId", "", "", "Role id")
	_ = AdminGetRoleManagersV3Cmd.MarkFlagRequired("roleId")
	AdminGetRoleManagersV3Cmd.Flags().StringP("after", "", "0", "After")
	AdminGetRoleManagersV3Cmd.Flags().StringP("before", "", "0", "Before")
	AdminGetRoleManagersV3Cmd.Flags().Int64P("limit", "", 20, "Limit")
}
