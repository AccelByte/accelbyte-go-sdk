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

// AdminAddRoleMembersV3Cmd represents the AdminAddRoleMembersV3 command
var AdminAddRoleMembersV3Cmd = &cobra.Command{
	Use:   "adminAddRoleMembersV3",
	Short: "Admin add role members V3",
	Long:  `Admin add role members V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelRoleMembersRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminAddRoleMembersV3Params{
			Body:   body,
			RoleID: roleId,
		}
		errNoContent := rolesService.AdminAddRoleMembersV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminAddRoleMembersV3Cmd.Flags().String("body", "", "Body")
	_ = AdminAddRoleMembersV3Cmd.MarkFlagRequired("body")
	AdminAddRoleMembersV3Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminAddRoleMembersV3Cmd.MarkFlagRequired("roleId")
}
