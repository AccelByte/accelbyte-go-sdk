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

// AddRolePermissionCmd represents the AddRolePermission command
var AddRolePermissionCmd = &cobra.Command{
	Use:   "addRolePermission",
	Short: "Add role permission",
	Long:  `Add role permission`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUpdatePermissionScheduleRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		action, _ := cmd.Flags().GetInt64("action")
		resource, _ := cmd.Flags().GetString("resource")
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AddRolePermissionParams{
			Body:     body,
			Action:   action,
			Resource: resource,
			RoleID:   roleId,
		}
		errNoContent := rolesService.AddRolePermissionShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AddRolePermissionCmd.Flags().String("body", "", "Body")
	_ = AddRolePermissionCmd.MarkFlagRequired("body")
	AddRolePermissionCmd.Flags().Int64("action", -1, "Action")
	_ = AddRolePermissionCmd.MarkFlagRequired("action")
	AddRolePermissionCmd.Flags().String("resource", "", "Resource")
	_ = AddRolePermissionCmd.MarkFlagRequired("resource")
	AddRolePermissionCmd.Flags().String("roleId", "", "Role id")
	_ = AddRolePermissionCmd.MarkFlagRequired("roleId")
}
