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

// GetMemberRolesListAdminV1Cmd represents the GetMemberRolesListAdminV1 command
var GetMemberRolesListAdminV1Cmd = &cobra.Command{
	Use:   "getMemberRolesListAdminV1",
	Short: "Get member roles list admin V1",
	Long:  `Get member roles list admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupRolesService := &group.GroupRolesService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &group_roles.GetMemberRolesListAdminV1Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupRolesService.GetMemberRolesListAdminV1(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	GetMemberRolesListAdminV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetMemberRolesListAdminV1Cmd.MarkFlagRequired("namespace")
	GetMemberRolesListAdminV1Cmd.Flags().Int64P("limit", "", 20, "Limit")
	GetMemberRolesListAdminV1Cmd.Flags().Int64P("offset", "", 0, "Offset")
}
