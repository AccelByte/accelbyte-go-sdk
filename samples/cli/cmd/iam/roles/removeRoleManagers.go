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

// RemoveRoleManagersCmd represents the RemoveRoleManagers command
var RemoveRoleManagersCmd = &cobra.Command{
	Use:   "removeRoleManagers",
	Short: "Remove role managers",
	Long:  `Remove role managers`,
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
		input := &roles.RemoveRoleManagersParams{
			Body:   body,
			RoleID: roleId,
		}
		errInput := rolesService.RemoveRoleManagersShort(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	RemoveRoleManagersCmd.Flags().StringP("body", "", "", "Body")
	_ = RemoveRoleManagersCmd.MarkFlagRequired("body")
	RemoveRoleManagersCmd.Flags().StringP("roleId", "", "", "Role id")
	_ = RemoveRoleManagersCmd.MarkFlagRequired("roleId")
}
