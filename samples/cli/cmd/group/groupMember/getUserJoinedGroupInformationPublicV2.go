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

// GetUserJoinedGroupInformationPublicV2Cmd represents the GetUserJoinedGroupInformationPublicV2 command
var GetUserJoinedGroupInformationPublicV2Cmd = &cobra.Command{
	Use:   "getUserJoinedGroupInformationPublicV2",
	Short: "Get user joined group information public V2",
	Long:  `Get user joined group information public V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &group_member.GetUserJoinedGroupInformationPublicV2Params{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, err := groupMemberService.GetUserJoinedGroupInformationPublicV2Short(input)
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
	GetUserJoinedGroupInformationPublicV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserJoinedGroupInformationPublicV2Cmd.MarkFlagRequired("namespace")
	GetUserJoinedGroupInformationPublicV2Cmd.Flags().String("userId", "", "User id")
	_ = GetUserJoinedGroupInformationPublicV2Cmd.MarkFlagRequired("userId")
	GetUserJoinedGroupInformationPublicV2Cmd.Flags().Int64("limit", 20, "Limit")
	GetUserJoinedGroupInformationPublicV2Cmd.Flags().Int64("offset", 0, "Offset")
}
