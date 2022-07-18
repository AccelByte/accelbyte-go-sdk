// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package rolesDeprecated

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles_deprecated"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateRoleCmd represents the UpdateRole command
var UpdateRoleCmd = &cobra.Command{
	Use:   "updateRole",
	Short: "Update role",
	Long:  `Update role`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesDeprecatedService := &iam.RolesDeprecatedService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelRoleUpdateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles_deprecated.UpdateRoleParams{
			Body:   body,
			RoleID: roleId,
		}
		ok, err := rolesDeprecatedService.UpdateRoleShort(input)
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
	UpdateRoleCmd.Flags().String("body", "", "Body")
	_ = UpdateRoleCmd.MarkFlagRequired("body")
	UpdateRoleCmd.Flags().String("roleId", "", "Role id")
	_ = UpdateRoleCmd.MarkFlagRequired("roleId")
}
