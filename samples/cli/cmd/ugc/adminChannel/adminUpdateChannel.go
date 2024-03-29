// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminChannel

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_channel"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateChannelCmd represents the AdminUpdateChannel command
var AdminUpdateChannelCmd = &cobra.Command{
	Use:   "adminUpdateChannel",
	Short: "Admin update channel",
	Long:  `Admin update channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminChannelService := &ugc.AdminChannelService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsUpdateChannelRequest
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
		ok, errOK := adminChannelService.AdminUpdateChannelShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateChannelCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateChannelCmd.MarkFlagRequired("body")
	AdminUpdateChannelCmd.Flags().String("channelId", "", "Channel id")
	_ = AdminUpdateChannelCmd.MarkFlagRequired("channelId")
	AdminUpdateChannelCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateChannelCmd.MarkFlagRequired("namespace")
	AdminUpdateChannelCmd.Flags().String("userId", "", "User id")
	_ = AdminUpdateChannelCmd.MarkFlagRequired("userId")
}
