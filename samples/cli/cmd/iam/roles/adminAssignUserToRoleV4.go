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

// AdminAssignUserToRoleV4Cmd represents the AdminAssignUserToRoleV4 command
var AdminAssignUserToRoleV4Cmd = &cobra.Command{
	Use:   "adminAssignUserToRoleV4",
	Short: "Admin assign user to role V4",
	Long:  `Admin assign user to role V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelAssignUserV4Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminAssignUserToRoleV4Params{
			Body:   body,
			RoleID: roleId,
		}
		created, errCreated := rolesService.AdminAssignUserToRoleV4Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminAssignUserToRoleV4Cmd.Flags().String("body", "", "Body")
	_ = AdminAssignUserToRoleV4Cmd.MarkFlagRequired("body")
	AdminAssignUserToRoleV4Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminAssignUserToRoleV4Cmd.MarkFlagRequired("roleId")
}
