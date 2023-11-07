// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicGroup

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetGroupContentsV2Cmd represents the PublicGetGroupContentsV2 command
var PublicGetGroupContentsV2Cmd = &cobra.Command{
	Use:   "publicGetGroupContentsV2",
	Short: "Public get group contents V2",
	Long:  `Public get group contents V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGroupService := &ugc.PublicGroupService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &public_group.PublicGetGroupContentsV2Params{
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := publicGroupService.PublicGetGroupContentsV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetGroupContentsV2Cmd.Flags().String("groupId", "", "Group id")
	_ = PublicGetGroupContentsV2Cmd.MarkFlagRequired("groupId")
	PublicGetGroupContentsV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetGroupContentsV2Cmd.MarkFlagRequired("namespace")
	PublicGetGroupContentsV2Cmd.Flags().String("userId", "", "User id")
	_ = PublicGetGroupContentsV2Cmd.MarkFlagRequired("userId")
	PublicGetGroupContentsV2Cmd.Flags().Int64("limit", 20, "Limit")
	PublicGetGroupContentsV2Cmd.Flags().Int64("offset", 0, "Offset")
}
