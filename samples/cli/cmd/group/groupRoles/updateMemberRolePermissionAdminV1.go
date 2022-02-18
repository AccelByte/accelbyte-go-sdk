// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package groupRoles

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_roles"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateMemberRolePermissionAdminV1Cmd represents the UpdateMemberRolePermissionAdminV1 command
var UpdateMemberRolePermissionAdminV1Cmd = &cobra.Command{
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
	UpdateMemberRolePermissionAdminV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = UpdateMemberRolePermissionAdminV1Cmd.MarkFlagRequired("body")
	UpdateMemberRolePermissionAdminV1Cmd.Flags().StringP("memberRoleId", "", "", "Member role id")
	_ = UpdateMemberRolePermissionAdminV1Cmd.MarkFlagRequired("memberRoleId")
	UpdateMemberRolePermissionAdminV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateMemberRolePermissionAdminV1Cmd.MarkFlagRequired("namespace")
}
