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

// adminUpdateRoleV4Cmd represents the adminUpdateRoleV4 command
var adminUpdateRoleV4Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := rolesService.AdminUpdateRoleV4(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateRoleV4Cmd)
	adminUpdateRoleV4Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = adminUpdateRoleV4Cmd.MarkFlagRequired("body")
	adminUpdateRoleV4Cmd.Flags().StringP("roleId", "rd", " ", "Role id")
	_ = adminUpdateRoleV4Cmd.MarkFlagRequired("roleId")
}
