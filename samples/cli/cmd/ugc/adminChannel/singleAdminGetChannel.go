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
		ok, err := adminChannelService.SingleAdminGetChannelShort(input)
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
	SingleAdminGetChannelCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SingleAdminGetChannelCmd.MarkFlagRequired("namespace")
	SingleAdminGetChannelCmd.Flags().Int64P("limit", "", 20, "Limit")
	SingleAdminGetChannelCmd.Flags().Int64P("offset", "", 0, "Offset")
}
