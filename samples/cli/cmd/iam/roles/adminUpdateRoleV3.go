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

// adminUpdateRoleV3Cmd represents the adminUpdateRoleV3 command
var adminUpdateRoleV3Cmd = &cobra.Command{
	Use:   "adminUpdateRoleV3",
	Short: "Admin update role V3",
	Long:  `Admin update role V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelRoleUpdateRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminUpdateRoleV3Params{
			Body:   body,
			RoleID: roleId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := rolesService.AdminUpdateRoleV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateRoleV3Cmd)
	adminUpdateRoleV3Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = adminUpdateRoleV3Cmd.MarkFlagRequired("body")
	adminUpdateRoleV3Cmd.Flags().StringP("roleId", "rd", " ", "Role id")
	_ = adminUpdateRoleV3Cmd.MarkFlagRequired("roleId")
}
