// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// addRolePermissionCmd represents the addRolePermission command
var addRolePermissionCmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(addRolePermissionCmd)
	addRolePermissionCmd.Flags().StringP("body", "b", " ", "Body")
	_ = addRolePermissionCmd.MarkFlagRequired("body")
	addRolePermissionCmd.Flags().Int64P("action", "a", -1, "Action")
	_ = addRolePermissionCmd.MarkFlagRequired("action")
	addRolePermissionCmd.Flags().StringP("resource", "r", " ", "Resource")
	_ = addRolePermissionCmd.MarkFlagRequired("resource")
	addRolePermissionCmd.Flags().StringP("roleId", "r", " ", "Role id")
	_ = addRolePermissionCmd.MarkFlagRequired("roleId")
}
