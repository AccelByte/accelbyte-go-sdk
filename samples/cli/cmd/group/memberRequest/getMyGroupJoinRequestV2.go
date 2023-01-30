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

// GetMyGroupJoinRequestV2Cmd represents the GetMyGroupJoinRequestV2 command
var GetMyGroupJoinRequestV2Cmd = &cobra.Command{
	Use:   "getMyGroupJoinRequestV2",
	Short: "Get my group join request V2",
	Long:  `Get my group join request V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		memberRequestService := &group.MemberRequestService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &member_request.GetMyGroupJoinRequestV2Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, err := memberRequestService.GetMyGroupJoinRequestV2Short(input)
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
	GetMyGroupJoinRequestV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetMyGroupJoinRequestV2Cmd.MarkFlagRequired("namespace")
	GetMyGroupJoinRequestV2Cmd.Flags().Int64("limit", 20, "Limit")
	GetMyGroupJoinRequestV2Cmd.Flags().Int64("offset", 0, "Offset")
}
