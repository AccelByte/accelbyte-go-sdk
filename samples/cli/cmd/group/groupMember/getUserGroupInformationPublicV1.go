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

// GetUserGroupInformationPublicV1Cmd represents the GetUserGroupInformationPublicV1 command
var GetUserGroupInformationPublicV1Cmd = &cobra.Command{
	Use:   "getUserGroupInformationPublicV1",
	Short: "Get user group information public V1",
	Long:  `Get user group information public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &group_member.GetUserGroupInformationPublicV1Params{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := groupMemberService.GetUserGroupInformationPublicV1Short(input, nil)
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
	GetUserGroupInformationPublicV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUserGroupInformationPublicV1Cmd.MarkFlagRequired("namespace")
	GetUserGroupInformationPublicV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = GetUserGroupInformationPublicV1Cmd.MarkFlagRequired("userId")
}
