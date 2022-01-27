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

// CreateChannelCmd represents the CreateChannel command
var CreateChannelCmd = &cobra.Command{
	Use:   "CreateChannel",
	Short: "Create channel",
	Long:  `Create channel`,
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
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_channel.CreateChannelParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicChannelService.CreateChannel(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	CreateChannelCmd.Flags().StringP("body", "by", " ", "Body")
	_ = CreateChannelCmd.MarkFlagRequired("body")
	CreateChannelCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = CreateChannelCmd.MarkFlagRequired("namespace")
	CreateChannelCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = CreateChannelCmd.MarkFlagRequired("userId")
}
