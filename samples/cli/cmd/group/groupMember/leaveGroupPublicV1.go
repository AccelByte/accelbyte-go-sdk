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

// LeaveGroupPublicV1Cmd represents the LeaveGroupPublicV1 command
var LeaveGroupPublicV1Cmd = &cobra.Command{
	Use:   "leaveGroupPublicV1",
	Short: "Leave group public V1",
	Long:  `Leave group public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_member.LeaveGroupPublicV1Params{
			Namespace: namespace,
		}
		ok, errOK := groupMemberService.LeaveGroupPublicV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	LeaveGroupPublicV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = LeaveGroupPublicV1Cmd.MarkFlagRequired("namespace")
}
