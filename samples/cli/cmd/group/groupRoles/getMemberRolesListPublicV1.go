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

// getMemberRolesListPublicV1Cmd represents the getMemberRolesListPublicV1 command
var getMemberRolesListPublicV1Cmd = &cobra.Command{
	Use:   "getMemberRolesListPublicV1",
	Short: "Get member roles list public V1",
	Long:  `Get member roles list public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupRolesService := &group.GroupRolesService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &group_roles.GetMemberRolesListPublicV1Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupRolesService.GetMemberRolesListPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getMemberRolesListPublicV1Cmd)
	getMemberRolesListPublicV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getMemberRolesListPublicV1Cmd.MarkFlagRequired("namespace")
	getMemberRolesListPublicV1Cmd.Flags().Int64P("limit", "l", 20, "Limit")
	getMemberRolesListPublicV1Cmd.Flags().Int64P("offset", "o", 0, "Offset")
}
