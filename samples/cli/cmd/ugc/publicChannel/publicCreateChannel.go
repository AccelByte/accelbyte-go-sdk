// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// PublicCreateChannelCmd represents the PublicCreateChannel command
var PublicCreateChannelCmd = &cobra.Command{
	Use:   "publicCreateChannel",
	Short: "Public create channel",
	Long:  `Public create channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicChannelService := &ugc.PublicChannelService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsPublicChannelRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_channel.PublicCreateChannelParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := publicChannelService.PublicCreateChannelShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	PublicCreateChannelCmd.Flags().String("body", "", "Body")
	_ = PublicCreateChannelCmd.MarkFlagRequired("body")
	PublicCreateChannelCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicCreateChannelCmd.MarkFlagRequired("namespace")
	PublicCreateChannelCmd.Flags().String("userId", "", "User id")
	_ = PublicCreateChannelCmd.MarkFlagRequired("userId")
}
