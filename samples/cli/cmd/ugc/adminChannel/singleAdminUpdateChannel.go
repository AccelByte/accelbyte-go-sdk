// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminChannel

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_channel"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// singleAdminUpdateChannelCmd represents the singleAdminUpdateChannel command
var singleAdminUpdateChannelCmd = &cobra.Command{
	Use:   "singleAdminUpdateChannel",
	Short: "Single admin update channel",
	Long:  `Single admin update channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminChannelService := &ugc.AdminChannelService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsChannelRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_channel.SingleAdminUpdateChannelParams{
			Body:      body,
			ChannelID: channelId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminChannelService.SingleAdminUpdateChannel(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(singleAdminUpdateChannelCmd)
	singleAdminUpdateChannelCmd.Flags().StringP("body", "by", " ", "Body")
	_ = singleAdminUpdateChannelCmd.MarkFlagRequired("body")
	singleAdminUpdateChannelCmd.Flags().StringP("channelId", "cd", " ", "Channel id")
	_ = singleAdminUpdateChannelCmd.MarkFlagRequired("channelId")
	singleAdminUpdateChannelCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = singleAdminUpdateChannelCmd.MarkFlagRequired("namespace")
}
