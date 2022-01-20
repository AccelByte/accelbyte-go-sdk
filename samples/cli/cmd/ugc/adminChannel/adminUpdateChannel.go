// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

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

// adminUpdateChannelCmd represents the adminUpdateChannel command
var adminUpdateChannelCmd = &cobra.Command{
	Use:   "adminUpdateChannel",
	Short: "Admin update channel",
	Long:  `Admin update channel`,
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
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_channel.AdminUpdateChannelParams{
			Body:      body,
			ChannelID: channelId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminChannelService.AdminUpdateChannel(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateChannelCmd)
	adminUpdateChannelCmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminUpdateChannelCmd.MarkFlagRequired("body")
	adminUpdateChannelCmd.Flags().StringP("channelId", "c", " ", "Channel id")
	_ = adminUpdateChannelCmd.MarkFlagRequired("channelId")
	adminUpdateChannelCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminUpdateChannelCmd.MarkFlagRequired("namespace")
	adminUpdateChannelCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminUpdateChannelCmd.MarkFlagRequired("userId")
}