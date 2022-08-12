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

// RemoveRoleMembersCmd represents the RemoveRoleMembers command
var RemoveRoleMembersCmd = &cobra.Command{
	Use:   "removeRoleMembers",
	Short: "Remove role members",
	Long:  `Remove role members`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelRoleMembersRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.RemoveRoleMembersParams{
			Body:   body,
			RoleID: roleId,
		}
		errInput := rolesService.RemoveRoleMembersShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	RemoveRoleMembersCmd.Flags().String("body", "", "Body")
	_ = RemoveRoleMembersCmd.MarkFlagRequired("body")
	RemoveRoleMembersCmd.Flags().String("roleId", "", "Role id")
	_ = RemoveRoleMembersCmd.MarkFlagRequired("roleId")
}
