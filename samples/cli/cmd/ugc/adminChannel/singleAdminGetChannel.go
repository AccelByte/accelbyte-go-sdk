// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminChannel

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_channel"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SingleAdminGetChannelCmd represents the SingleAdminGetChannel command
var SingleAdminGetChannelCmd = &cobra.Command{
	Use:   "singleAdminGetChannel",
	Short: "Single admin get channel",
	Long:  `Single admin get channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminChannelService := &ugc.AdminChannelService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &admin_channel.SingleAdminGetChannelParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := adminChannelService.SingleAdminGetChannelShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SingleAdminGetChannelCmd.Flags().String("namespace", "", "Namespace")
	_ = SingleAdminGetChannelCmd.MarkFlagRequired("namespace")
	SingleAdminGetChannelCmd.Flags().Int64("limit", 20, "Limit")
	SingleAdminGetChannelCmd.Flags().Int64("offset", 0, "Offset")
}
