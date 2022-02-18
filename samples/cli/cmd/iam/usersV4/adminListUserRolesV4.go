// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package usersV4

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminListUserRolesV4Cmd represents the AdminListUserRolesV4 command
var AdminListUserRolesV4Cmd = &cobra.Command{
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
	AdminListUserRolesV4Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminListUserRolesV4Cmd.MarkFlagRequired("namespace")
	AdminListUserRolesV4Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminListUserRolesV4Cmd.MarkFlagRequired("userId")
}
