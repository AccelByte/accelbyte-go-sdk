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

// GetGroupMembersListAdminV1Cmd represents the GetGroupMembersListAdminV1 command
var GetGroupMembersListAdminV1Cmd = &cobra.Command{
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
		ok, errOK := groupMemberService.GetGroupMembersListAdminV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetGroupMembersListAdminV1Cmd.Flags().String("groupId", "", "Group id")
	_ = GetGroupMembersListAdminV1Cmd.MarkFlagRequired("groupId")
	GetGroupMembersListAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetGroupMembersListAdminV1Cmd.MarkFlagRequired("namespace")
	GetGroupMembersListAdminV1Cmd.Flags().Int64("limit", 20, "Limit")
	GetGroupMembersListAdminV1Cmd.Flags().Int64("offset", 0, "Offset")
	GetGroupMembersListAdminV1Cmd.Flags().String("order", "", "Order")
}
