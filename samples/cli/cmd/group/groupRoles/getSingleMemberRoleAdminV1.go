// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package groupRoles

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_roles"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetSingleMemberRoleAdminV1Cmd represents the GetSingleMemberRoleAdminV1 command
var GetSingleMemberRoleAdminV1Cmd = &cobra.Command{
	Use:   "getSingleMemberRoleAdminV1",
	Short: "Get single member role admin V1",
	Long:  `Get single member role admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupRolesService := &group.GroupRolesService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		memberRoleId, _ := cmd.Flags().GetString("memberRoleId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_roles.GetSingleMemberRoleAdminV1Params{
			MemberRoleID: memberRoleId,
			Namespace:    namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupRolesService.GetSingleMemberRoleAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetSingleMemberRoleAdminV1Cmd.Flags().StringP("memberRoleId", "", " ", "Member role id")
	_ = GetSingleMemberRoleAdminV1Cmd.MarkFlagRequired("memberRoleId")
	GetSingleMemberRoleAdminV1Cmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = GetSingleMemberRoleAdminV1Cmd.MarkFlagRequired("namespace")
}
