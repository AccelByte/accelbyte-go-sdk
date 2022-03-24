// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicChannel

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_channel"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateChannelCmd represents the UpdateChannel command
var UpdateChannelCmd = &cobra.Command{
	Use:   "updateChannel",
	Short: "Update channel",
	Long:  `Update channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicChannelService := &ugc.PublicChannelService{
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
		input := &public_channel.UpdateChannelParams{
			Body:      body,
			ChannelID: channelId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := publicChannelService.UpdateChannelShort(input)
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
	UpdateChannelCmd.Flags().StringP("body", "", "", "Body")
	_ = UpdateChannelCmd.MarkFlagRequired("body")
	UpdateChannelCmd.Flags().StringP("channelId", "", "", "Channel id")
	_ = UpdateChannelCmd.MarkFlagRequired("channelId")
	UpdateChannelCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateChannelCmd.MarkFlagRequired("namespace")
	UpdateChannelCmd.Flags().StringP("userId", "", "", "User id")
	_ = UpdateChannelCmd.MarkFlagRequired("userId")
}
