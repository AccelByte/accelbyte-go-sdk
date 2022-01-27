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
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// addRoleManagersCmd represents the addRoleManagers command
var addRoleManagersCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := rolesService.AddRoleManagers(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(addRoleManagersCmd)
	addRoleManagersCmd.Flags().StringP("body", "by", " ", "Body")
	_ = addRoleManagersCmd.MarkFlagRequired("body")
	addRoleManagersCmd.Flags().StringP("roleId", "rd", " ", "Role id")
	_ = addRoleManagersCmd.MarkFlagRequired("roleId")
}
