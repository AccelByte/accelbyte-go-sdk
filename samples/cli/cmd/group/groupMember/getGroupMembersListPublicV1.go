// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package groupMember

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_member"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getGroupMembersListPublicV1Cmd represents the getGroupMembersListPublicV1 command
var getGroupMembersListPublicV1Cmd = &cobra.Command{
	Use:   "getGroupMembersListPublicV1",
	Short: "Get group members list public V1",
	Long:  `Get group members list public V1`,
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
		input := &group_member.GetGroupMembersListPublicV1Params{
			GroupID:   groupId,
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Order:     &order,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupMemberService.GetGroupMembersListPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getGroupMembersListPublicV1Cmd)
	getGroupMembersListPublicV1Cmd.Flags().StringP("groupId", "gd", " ", "Group id")
	_ = getGroupMembersListPublicV1Cmd.MarkFlagRequired("groupId")
	getGroupMembersListPublicV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getGroupMembersListPublicV1Cmd.MarkFlagRequired("namespace")
	getGroupMembersListPublicV1Cmd.Flags().Int64P("limit", "lt", 20, "Limit")
	getGroupMembersListPublicV1Cmd.Flags().Int64P("offset", "ot", 0, "Offset")
	getGroupMembersListPublicV1Cmd.Flags().StringP("order", "or", " ", "Order")
}
