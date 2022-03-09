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
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminCreateChannelCmd represents the AdminCreateChannel command
var AdminCreateChannelCmd = &cobra.Command{
	Use:   "adminCreateChannel",
	Short: "Admin create channel",
	Long:  `Admin create channel`,
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
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_channel.AdminCreateChannelParams{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminChannelService.AdminCreateChannel(input)
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
	AdminCreateChannelCmd.Flags().StringP("body", "", "", "Body")
	_ = AdminCreateChannelCmd.MarkFlagRequired("body")
	AdminCreateChannelCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminCreateChannelCmd.MarkFlagRequired("namespace")
}
