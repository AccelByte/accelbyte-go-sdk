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

// AdminGetRoleSourceV3Cmd represents the AdminGetRoleSourceV3 command
var AdminGetRoleSourceV3Cmd = &cobra.Command{
	Use:   "adminGetRoleSourceV3",
	Short: "Admin get role source V3",
	Long:  `Admin get role source V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		overrideRoleConfigV3Service := &iam.OverrideRoleConfigv3Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		identity, _ := cmd.Flags().GetString("identity")
		input := &override_role_config_v3.AdminGetRoleSourceV3Params{
			Namespace: namespace,
			Identity:  identity,
		}
		ok, errOK := overrideRoleConfigV3Service.AdminGetRoleSourceV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetRoleSourceV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetRoleSourceV3Cmd.MarkFlagRequired("namespace")
	AdminGetRoleSourceV3Cmd.Flags().String("identity", "", "Identity")
	_ = AdminGetRoleSourceV3Cmd.MarkFlagRequired("identity")
}
