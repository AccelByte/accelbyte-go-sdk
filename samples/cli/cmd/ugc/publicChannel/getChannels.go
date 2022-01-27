// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicChannel

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_channel"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getChannelsCmd represents the getChannels command
var getChannelsCmd = &cobra.Command{
	Use:   "getChannels",
	Short: "Get channels",
	Long:  `Get channels`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicChannelService := &ugc.PublicChannelService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetString("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &public_channel.GetChannelsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicChannelService.GetChannels(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getChannelsCmd)
	getChannelsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getChannelsCmd.MarkFlagRequired("namespace")
	getChannelsCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = getChannelsCmd.MarkFlagRequired("userId")
	getChannelsCmd.Flags().StringP("limit", "lt", "20", "Limit")
	getChannelsCmd.Flags().StringP("offset", "ot", "0", "Offset")
}
