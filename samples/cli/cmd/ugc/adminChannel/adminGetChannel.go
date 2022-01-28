// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminChannel

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_channel"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetChannelCmd represents the AdminGetChannel command
var AdminGetChannelCmd = &cobra.Command{
	Use:   "adminGetChannel",
	Short: "Admin get channel",
	Long:  `Admin get channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminChannelService := &ugc.AdminChannelService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetString("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &admin_channel.AdminGetChannelParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminChannelService.AdminGetChannel(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AdminGetChannelCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = AdminGetChannelCmd.MarkFlagRequired("namespace")
	AdminGetChannelCmd.Flags().StringP("userId", "", " ", "User id")
	_ = AdminGetChannelCmd.MarkFlagRequired("userId")
	AdminGetChannelCmd.Flags().StringP("limit", "", "20", "Limit")
	AdminGetChannelCmd.Flags().StringP("offset", "", "0", "Offset")
}
