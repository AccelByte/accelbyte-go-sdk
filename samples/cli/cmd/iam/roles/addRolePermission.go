// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
	Use:   "AddRolePermission",
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := rolesService.AddRolePermission(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AddRolePermissionCmd.Flags().StringP("body", "by", " ", "Body")
	_ = AddRolePermissionCmd.MarkFlagRequired("body")
	AddRolePermissionCmd.Flags().Int64P("action", "an", -1, "Action")
	_ = AddRolePermissionCmd.MarkFlagRequired("action")
	AddRolePermissionCmd.Flags().StringP("resource", "re", " ", "Resource")
	_ = AddRolePermissionCmd.MarkFlagRequired("resource")
	AddRolePermissionCmd.Flags().StringP("roleId", "rd", " ", "Role id")
	_ = AddRolePermissionCmd.MarkFlagRequired("roleId")
}
