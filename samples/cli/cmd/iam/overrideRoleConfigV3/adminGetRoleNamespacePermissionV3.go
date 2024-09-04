// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package overrideRoleConfigV3

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/override_role_config_v3"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetRoleNamespacePermissionV3Cmd represents the AdminGetRoleNamespacePermissionV3 command
var AdminGetRoleNamespacePermissionV3Cmd = &cobra.Command{
	Use:   "adminGetRoleNamespacePermissionV3",
	Short: "Admin get role namespace permission V3",
	Long:  `Admin get role namespace permission V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		overrideRoleConfigV3Service := &iam.OverrideRoleConfigv3Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &override_role_config_v3.AdminGetRoleNamespacePermissionV3Params{
			Namespace: namespace,
			RoleID:    roleId,
		}
		ok, errOK := overrideRoleConfigV3Service.AdminGetRoleNamespacePermissionV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetRoleNamespacePermissionV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetRoleNamespacePermissionV3Cmd.MarkFlagRequired("namespace")
	AdminGetRoleNamespacePermissionV3Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminGetRoleNamespacePermissionV3Cmd.MarkFlagRequired("roleId")
}
