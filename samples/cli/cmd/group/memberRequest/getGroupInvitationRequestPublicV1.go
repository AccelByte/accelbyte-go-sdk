// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/member_request"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getGroupInvitationRequestPublicV1Cmd represents the getGroupInvitationRequestPublicV1 command
var getGroupInvitationRequestPublicV1Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := memberRequestService.GetGroupInvitationRequestPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getGroupInvitationRequestPublicV1Cmd)
	getGroupInvitationRequestPublicV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getGroupInvitationRequestPublicV1Cmd.MarkFlagRequired("namespace")
	getGroupInvitationRequestPublicV1Cmd.Flags().Int64P("limit", "l", 20, "Limit")
	getGroupInvitationRequestPublicV1Cmd.Flags().Int64P("offset", "o", 0, "Offset")
}
