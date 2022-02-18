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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := rolesService.AdminGetRolesV4(input)
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
	AdminGetRolesV4Cmd.Flags().BoolP("adminRole", "", false, "Admin role")
	AdminGetRolesV4Cmd.Flags().BoolP("isWildcard", "", false, "Is wildcard")
	AdminGetRolesV4Cmd.Flags().Int64P("limit", "", 20, "Limit")
	AdminGetRolesV4Cmd.Flags().Int64P("offset", "", 0, "Offset")
}
