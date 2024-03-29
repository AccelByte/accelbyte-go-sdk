// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package roles

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateRolePermissionsV3Cmd represents the AdminUpdateRolePermissionsV3 command
var AdminUpdateRolePermissionsV3Cmd = &cobra.Command{
	Use:   "adminUpdateRolePermissionsV3",
	Short: "Admin update role permissions V3",
	Long:  `Admin update role permissions V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.AccountcommonPermissionsV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminUpdateRolePermissionsV3Params{
			Body:   body,
			RoleID: roleId,
		}
		errNoContent := rolesService.AdminUpdateRolePermissionsV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminUpdateRolePermissionsV3Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateRolePermissionsV3Cmd.MarkFlagRequired("body")
	AdminUpdateRolePermissionsV3Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminUpdateRolePermissionsV3Cmd.MarkFlagRequired("roleId")
}
