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

// AdminUpdateRolePermissionsV4Cmd represents the AdminUpdateRolePermissionsV4 command
var AdminUpdateRolePermissionsV4Cmd = &cobra.Command{
	Use:   "adminUpdateRolePermissionsV4",
	Short: "Admin update role permissions V4",
	Long:  `Admin update role permissions V4`,
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
		input := &roles.AdminUpdateRolePermissionsV4Params{
			Body:   body,
			RoleID: roleId,
		}
		ok, errOK := rolesService.AdminUpdateRolePermissionsV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateRolePermissionsV4Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateRolePermissionsV4Cmd.MarkFlagRequired("body")
	AdminUpdateRolePermissionsV4Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminUpdateRolePermissionsV4Cmd.MarkFlagRequired("roleId")
}
