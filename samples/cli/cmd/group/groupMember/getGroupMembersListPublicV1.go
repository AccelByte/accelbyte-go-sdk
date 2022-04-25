// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package groupMember

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_member"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetGroupMembersListPublicV1Cmd represents the GetGroupMembersListPublicV1 command
var GetGroupMembersListPublicV1Cmd = &cobra.Command{
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
		ok, err := groupMemberService.GetGroupMembersListPublicV1Short(input, nil)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetGroupMembersListPublicV1Cmd.Flags().StringP("groupId", "", "", "Group id")
	_ = GetGroupMembersListPublicV1Cmd.MarkFlagRequired("groupId")
	GetGroupMembersListPublicV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetGroupMembersListPublicV1Cmd.MarkFlagRequired("namespace")
	GetGroupMembersListPublicV1Cmd.Flags().Int64P("limit", "", 20, "Limit")
	GetGroupMembersListPublicV1Cmd.Flags().Int64P("offset", "", 0, "Offset")
	GetGroupMembersListPublicV1Cmd.Flags().StringP("order", "", "", "Order")
}
