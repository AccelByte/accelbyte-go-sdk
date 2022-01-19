// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_roles"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteMemberRoleAdminV1Cmd represents the deleteMemberRoleAdminV1 command
var deleteMemberRoleAdminV1Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := groupRolesService.DeleteMemberRoleAdminV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteMemberRoleAdminV1Cmd)
	deleteMemberRoleAdminV1Cmd.Flags().StringP("memberRoleId", "m", " ", "Member role id")
	_ = deleteMemberRoleAdminV1Cmd.MarkFlagRequired("memberRoleId")
	deleteMemberRoleAdminV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteMemberRoleAdminV1Cmd.MarkFlagRequired("namespace")
}
