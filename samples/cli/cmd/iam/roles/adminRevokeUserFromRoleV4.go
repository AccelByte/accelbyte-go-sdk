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

// AdminRevokeUserFromRoleV4Cmd represents the AdminRevokeUserFromRoleV4 command
var AdminRevokeUserFromRoleV4Cmd = &cobra.Command{
	Use:   "AdminRevokeUserFromRoleV4",
	Short: "Admin revoke user from role V4",
	Long:  `Admin revoke user from role V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelRevokeUserV4Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminRevokeUserFromRoleV4Params{
			Body:   body,
			RoleID: roleId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := rolesService.AdminRevokeUserFromRoleV4(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AdminRevokeUserFromRoleV4Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = AdminRevokeUserFromRoleV4Cmd.MarkFlagRequired("body")
	AdminRevokeUserFromRoleV4Cmd.Flags().StringP("roleId", "rd", " ", "Role id")
	_ = AdminRevokeUserFromRoleV4Cmd.MarkFlagRequired("roleId")
}
