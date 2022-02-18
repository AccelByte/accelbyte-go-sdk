// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetAdminUsersByRoleIDCmd represents the GetAdminUsersByRoleID command
var GetAdminUsersByRoleIDCmd = &cobra.Command{
	Use:   "getAdminUsersByRoleID",
	Short: "Get admin users by role ID",
	Long:  `Get admin users by role ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		after, _ := cmd.Flags().GetInt64("after")
		before, _ := cmd.Flags().GetInt64("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &users.GetAdminUsersByRoleIDParams{
			Namespace: namespace,
			After:     &after,
			Before:    &before,
			Limit:     &limit,
			RoleID:    &roleId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.GetAdminUsersByRoleID(input)
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
	GetAdminUsersByRoleIDCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetAdminUsersByRoleIDCmd.MarkFlagRequired("namespace")
	GetAdminUsersByRoleIDCmd.Flags().Int64P("after", "", 0, "After")
	GetAdminUsersByRoleIDCmd.Flags().Int64P("before", "", 0, "Before")
	GetAdminUsersByRoleIDCmd.Flags().Int64P("limit", "", 20, "Limit")
	GetAdminUsersByRoleIDCmd.Flags().StringP("roleId", "", "", "Role id")
}
