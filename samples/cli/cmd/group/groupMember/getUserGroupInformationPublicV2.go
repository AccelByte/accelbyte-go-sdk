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

// GetUserGroupInformationPublicV2Cmd represents the GetUserGroupInformationPublicV2 command
var GetUserGroupInformationPublicV2Cmd = &cobra.Command{
	Use:   "getUserGroupInformationPublicV2",
	Short: "Get user group information public V2",
	Long:  `Get user group information public V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &group_member.GetUserGroupInformationPublicV2Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := groupMemberService.GetUserGroupInformationPublicV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserGroupInformationPublicV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserGroupInformationPublicV2Cmd.MarkFlagRequired("namespace")
	GetUserGroupInformationPublicV2Cmd.Flags().Int64("limit", 20, "Limit")
	GetUserGroupInformationPublicV2Cmd.Flags().Int64("offset", 0, "Offset")
}
