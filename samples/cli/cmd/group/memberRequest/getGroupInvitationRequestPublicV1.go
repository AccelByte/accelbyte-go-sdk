// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package memberRequest

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/member_request"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetGroupInvitationRequestPublicV1Cmd represents the GetGroupInvitationRequestPublicV1 command
var GetGroupInvitationRequestPublicV1Cmd = &cobra.Command{
	Use:   "getGroupInvitationRequestPublicV1",
	Short: "Get group invitation request public V1",
	Long:  `Get group invitation request public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		memberRequestService := &group.MemberRequestService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &member_request.GetGroupInvitationRequestPublicV1Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := memberRequestService.GetGroupInvitationRequestPublicV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetGroupInvitationRequestPublicV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetGroupInvitationRequestPublicV1Cmd.MarkFlagRequired("namespace")
	GetGroupInvitationRequestPublicV1Cmd.Flags().Int64("limit", 20, "Limit")
	GetGroupInvitationRequestPublicV1Cmd.Flags().Int64("offset", 0, "Offset")
}
