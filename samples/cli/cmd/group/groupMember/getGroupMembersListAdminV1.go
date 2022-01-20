// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_member"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getGroupMembersListAdminV1Cmd represents the getGroupMembersListAdminV1 command
var getGroupMembersListAdminV1Cmd = &cobra.Command{
	Use:   "getGroupMembersListAdminV1",
	Short: "Get group members list admin V1",
	Long:  `Get group members list admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		order, _ := cmd.Flags().GetString("order")
		input := &group_member.GetGroupMembersListAdminV1Params{
			GroupID:   groupId,
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Order:     &order,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupMemberService.GetGroupMembersListAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getGroupMembersListAdminV1Cmd)
	getGroupMembersListAdminV1Cmd.Flags().StringP("groupId", "g", " ", "Group id")
	_ = getGroupMembersListAdminV1Cmd.MarkFlagRequired("groupId")
	getGroupMembersListAdminV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getGroupMembersListAdminV1Cmd.MarkFlagRequired("namespace")
	getGroupMembersListAdminV1Cmd.Flags().Int64P("limit", "l", 20, "Limit")
	getGroupMembersListAdminV1Cmd.Flags().Int64P("offset", "o", 0, "Offset")
	getGroupMembersListAdminV1Cmd.Flags().StringP("order", "o", " ", "Order")
}