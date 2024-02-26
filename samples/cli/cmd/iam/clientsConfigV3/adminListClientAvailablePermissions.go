// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clientsConfigV3

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients_config_v3"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminListClientAvailablePermissionsCmd represents the AdminListClientAvailablePermissions command
var AdminListClientAvailablePermissionsCmd = &cobra.Command{
	Use:   "adminListClientAvailablePermissions",
	Short: "Admin list client available permissions",
	Long:  `Admin list client available permissions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsConfigV3Service := &iam.ClientsConfigV3Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		excludePermissions, _ := cmd.Flags().GetBool("excludePermissions")
		input := &clients_config_v3.AdminListClientAvailablePermissionsParams{
			ExcludePermissions: &excludePermissions,
		}
		ok, errOK := clientsConfigV3Service.AdminListClientAvailablePermissionsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListClientAvailablePermissionsCmd.Flags().Bool("excludePermissions", false, "Exclude permissions")
}
