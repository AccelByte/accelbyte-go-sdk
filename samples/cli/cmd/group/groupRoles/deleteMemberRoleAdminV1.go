// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package groupRoles

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_roles"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteMemberRoleAdminV1Cmd represents the DeleteMemberRoleAdminV1 command
var DeleteMemberRoleAdminV1Cmd = &cobra.Command{
	Use:   "deleteMemberRoleAdminV1",
	Short: "Delete member role admin V1",
	Long:  `Delete member role admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupRolesService := &group.GroupRolesService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		memberRoleId, _ := cmd.Flags().GetString("memberRoleId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_roles.DeleteMemberRoleAdminV1Params{
			MemberRoleID: memberRoleId,
			Namespace:    namespace,
		}
		errInput := groupRolesService.DeleteMemberRoleAdminV1Short(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteMemberRoleAdminV1Cmd.Flags().StringP("memberRoleId", "", "", "Member role id")
	_ = DeleteMemberRoleAdminV1Cmd.MarkFlagRequired("memberRoleId")
	DeleteMemberRoleAdminV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteMemberRoleAdminV1Cmd.MarkFlagRequired("namespace")
}
