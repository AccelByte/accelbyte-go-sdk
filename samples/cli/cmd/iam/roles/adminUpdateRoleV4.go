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

// AdminUpdateRoleV4Cmd represents the AdminUpdateRoleV4 command
var AdminUpdateRoleV4Cmd = &cobra.Command{
	Use:   "adminUpdateRoleV4",
	Short: "Admin update role V4",
	Long:  `Admin update role V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelRoleV4Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminUpdateRoleV4Params{
			Body:   body,
			RoleID: roleId,
		}
		ok, err := rolesService.AdminUpdateRoleV4Short(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	AdminUpdateRoleV4Cmd.Flags().StringP("body", "", "", "Body")
	_ = AdminUpdateRoleV4Cmd.MarkFlagRequired("body")
	AdminUpdateRoleV4Cmd.Flags().StringP("roleId", "", "", "Role id")
	_ = AdminUpdateRoleV4Cmd.MarkFlagRequired("roleId")
}
