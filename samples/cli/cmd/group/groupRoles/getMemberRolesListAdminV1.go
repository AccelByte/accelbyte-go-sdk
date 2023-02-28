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
		ok, errOK := groupRolesService.GetMemberRolesListAdminV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetMemberRolesListAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetMemberRolesListAdminV1Cmd.MarkFlagRequired("namespace")
	GetMemberRolesListAdminV1Cmd.Flags().Int64("limit", 20, "Limit")
	GetMemberRolesListAdminV1Cmd.Flags().Int64("offset", 0, "Offset")
}
