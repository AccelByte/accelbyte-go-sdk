// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package rolesDeprecated

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles_deprecated"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateRolePermissionsCmd represents the UpdateRolePermissions command
var UpdateRolePermissionsCmd = &cobra.Command{
	Use:   "updateRolePermissions",
	Short: "Update role permissions",
	Long:  `Update role permissions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesDeprecatedService := &iam.RolesDeprecatedService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.AccountcommonPermissions
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles_deprecated.UpdateRolePermissionsParams{
			Body:   body,
			RoleID: roleId,
		}
		errInput := rolesDeprecatedService.UpdateRolePermissionsShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	UpdateRolePermissionsCmd.Flags().String("body", "", "Body")
	_ = UpdateRolePermissionsCmd.MarkFlagRequired("body")
	UpdateRolePermissionsCmd.Flags().String("roleId", "", "Role id")
	_ = UpdateRolePermissionsCmd.MarkFlagRequired("roleId")
}
