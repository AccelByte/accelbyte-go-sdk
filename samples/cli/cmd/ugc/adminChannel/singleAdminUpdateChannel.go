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

// SingleAdminUpdateChannelCmd represents the SingleAdminUpdateChannel command
var SingleAdminUpdateChannelCmd = &cobra.Command{
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
		ok, errOK := adminChannelService.SingleAdminUpdateChannelShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SingleAdminUpdateChannelCmd.Flags().String("body", "", "Body")
	_ = SingleAdminUpdateChannelCmd.MarkFlagRequired("body")
	SingleAdminUpdateChannelCmd.Flags().String("channelId", "", "Channel id")
	_ = SingleAdminUpdateChannelCmd.MarkFlagRequired("channelId")
	SingleAdminUpdateChannelCmd.Flags().String("namespace", "", "Namespace")
	_ = SingleAdminUpdateChannelCmd.MarkFlagRequired("namespace")
}
