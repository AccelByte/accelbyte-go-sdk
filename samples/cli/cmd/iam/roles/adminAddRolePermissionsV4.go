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

// AdminAddRolePermissionsV4Cmd represents the AdminAddRolePermissionsV4 command
var AdminAddRolePermissionsV4Cmd = &cobra.Command{
	Use:   "adminAddRolePermissionsV4",
	Short: "Admin add role permissions V4",
	Long:  `Admin add role permissions V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.AccountcommonPermissionsV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminAddRolePermissionsV4Params{
			Body:   body,
			RoleID: roleId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := rolesService.AdminAddRolePermissionsV4(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	AdminAddRolePermissionsV4Cmd.Flags().StringP("body", "", "", "Body")
	_ = AdminAddRolePermissionsV4Cmd.MarkFlagRequired("body")
	AdminAddRolePermissionsV4Cmd.Flags().StringP("roleId", "", "", "Role id")
	_ = AdminAddRolePermissionsV4Cmd.MarkFlagRequired("roleId")
}
