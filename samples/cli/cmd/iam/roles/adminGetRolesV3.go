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

// AdminGetRolesV3Cmd represents the AdminGetRolesV3 command
var AdminGetRolesV3Cmd = &cobra.Command{
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
	AdminGetRolesV3Cmd.Flags().StringP("after", "", "0", "After")
	AdminGetRolesV3Cmd.Flags().StringP("before", "", "0", "Before")
	AdminGetRolesV3Cmd.Flags().BoolP("isWildcard", "", false, "Is wildcard")
	AdminGetRolesV3Cmd.Flags().Int64P("limit", "", 20, "Limit")
}
