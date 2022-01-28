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

// AdminRemoveRoleManagersV3Cmd represents the AdminRemoveRoleManagersV3 command
var AdminRemoveRoleManagersV3Cmd = &cobra.Command{
	Use:   "adminRemoveRoleManagersV3",
	Short: "Admin remove role managers V3",
	Long:  `Admin remove role managers V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelRoleManagersRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminRemoveRoleManagersV3Params{
			Body:   body,
			RoleID: roleId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := rolesService.AdminRemoveRoleManagersV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AdminRemoveRoleManagersV3Cmd.Flags().StringP("body", "", " ", "Body")
	_ = AdminRemoveRoleManagersV3Cmd.MarkFlagRequired("body")
	AdminRemoveRoleManagersV3Cmd.Flags().StringP("roleId", "", " ", "Role id")
	_ = AdminRemoveRoleManagersV3Cmd.MarkFlagRequired("roleId")
}
