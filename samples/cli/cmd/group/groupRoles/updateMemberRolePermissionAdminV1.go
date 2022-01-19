// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_roles"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateMemberRolePermissionAdminV1Cmd represents the updateMemberRolePermissionAdminV1 command
var updateMemberRolePermissionAdminV1Cmd = &cobra.Command{
	Use:   "updateMemberRolePermissionAdminV1",
	Short: "Update member role permission admin V1",
	Long:  `Update member role permission admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupRolesService := &group.GroupRolesService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *groupclientmodels.ModelsUpdateMemberRolePermissionsRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		memberRoleId, _ := cmd.Flags().GetString("memberRoleId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_roles.UpdateMemberRolePermissionAdminV1Params{
			Body:         body,
			MemberRoleID: memberRoleId,
			Namespace:    namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupRolesService.UpdateMemberRolePermissionAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateMemberRolePermissionAdminV1Cmd)
	updateMemberRolePermissionAdminV1Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = updateMemberRolePermissionAdminV1Cmd.MarkFlagRequired("body")
	updateMemberRolePermissionAdminV1Cmd.Flags().StringP("memberRoleId", "m", " ", "Member role id")
	_ = updateMemberRolePermissionAdminV1Cmd.MarkFlagRequired("memberRoleId")
	updateMemberRolePermissionAdminV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updateMemberRolePermissionAdminV1Cmd.MarkFlagRequired("namespace")
}
