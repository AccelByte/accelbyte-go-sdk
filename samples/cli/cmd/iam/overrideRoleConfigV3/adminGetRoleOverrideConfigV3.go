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

// AdminGetRoleOverrideConfigV3Cmd represents the AdminGetRoleOverrideConfigV3 command
var AdminGetRoleOverrideConfigV3Cmd = &cobra.Command{
	Use:   "adminGetRoleOverrideConfigV3",
	Short: "Admin get role override config V3",
	Long:  `Admin get role override config V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		overrideRoleConfigV3Service := &iam.OverrideRoleConfigv3Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		identity, _ := cmd.Flags().GetString("identity")
		input := &override_role_config_v3.AdminGetRoleOverrideConfigV3Params{
			Namespace: namespace,
			Identity:  identity,
		}
		ok, errOK := overrideRoleConfigV3Service.AdminGetRoleOverrideConfigV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetRoleOverrideConfigV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetRoleOverrideConfigV3Cmd.MarkFlagRequired("namespace")
	AdminGetRoleOverrideConfigV3Cmd.Flags().String("identity", "", "Identity")
	_ = AdminGetRoleOverrideConfigV3Cmd.MarkFlagRequired("identity")
}
