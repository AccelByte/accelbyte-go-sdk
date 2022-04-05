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

// AddRoleManagersCmd represents the AddRoleManagers command
var AddRoleManagersCmd = &cobra.Command{
	Use:   "addRoleManagers",
	Short: "Add role managers",
	Long:  `Add role managers`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelRoleManagersRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AddRoleManagersParams{
			Body:   body,
			RoleID: roleId,
		}
		errInput := rolesService.AddRoleManagersShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AddRoleManagersCmd.Flags().StringP("body", "", "", "Body")
	_ = AddRoleManagersCmd.MarkFlagRequired("body")
	AddRoleManagersCmd.Flags().StringP("roleId", "", "", "Role id")
	_ = AddRoleManagersCmd.MarkFlagRequired("roleId")
}
