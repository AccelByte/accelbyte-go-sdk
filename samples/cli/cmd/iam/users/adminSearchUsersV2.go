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

// AdminSearchUsersV2Cmd represents the AdminSearchUsersV2 command
var AdminSearchUsersV2Cmd = &cobra.Command{
	Use:   "adminSearchUsersV2",
	Short: "Admin search users V2",
	Long:  `Admin search users V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		displayName, _ := cmd.Flags().GetString("displayName")
		limit, _ := cmd.Flags().GetString("limit")
		loginId, _ := cmd.Flags().GetString("loginId")
		platformUserId, _ := cmd.Flags().GetString("platformUserId")
		roleId, _ := cmd.Flags().GetString("roleId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminSearchUsersV2Params{
			Namespace:      namespace,
			After:          &after,
			Before:         &before,
			DisplayName:    &displayName,
			Limit:          &limit,
			LoginID:        &loginId,
			PlatformUserID: &platformUserId,
			RoleID:         &roleId,
			UserID:         &userId,
			PlatformID:     platformId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminSearchUsersV2(input)
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
	AdminSearchUsersV2Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminSearchUsersV2Cmd.MarkFlagRequired("namespace")
	AdminSearchUsersV2Cmd.Flags().StringP("after", "", "0", "After")
	AdminSearchUsersV2Cmd.Flags().StringP("before", "", "0", "Before")
	AdminSearchUsersV2Cmd.Flags().StringP("displayName", "", "", "Display name")
	AdminSearchUsersV2Cmd.Flags().StringP("limit", "", "20", "Limit")
	AdminSearchUsersV2Cmd.Flags().StringP("loginId", "", "", "Login id")
	AdminSearchUsersV2Cmd.Flags().StringP("platformUserId", "", "", "Platform user id")
	AdminSearchUsersV2Cmd.Flags().StringP("roleId", "", "", "Role id")
	AdminSearchUsersV2Cmd.Flags().StringP("userId", "", "", "User id")
	AdminSearchUsersV2Cmd.Flags().StringP("platformId", "", "", "Platform id")
	_ = AdminSearchUsersV2Cmd.MarkFlagRequired("platformId")
}
