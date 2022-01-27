// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package config

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminUpdateConfigV1Cmd represents the adminUpdateConfigV1 command
var adminUpdateConfigV1Cmd = &cobra.Command{
	Use:   "adminUpdateConfigV1",
	Short: "Admin update config V1",
	Long:  `Admin update config V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &lobby.ConfigService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsConfigReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &config.AdminUpdateConfigV1Params{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := configService.AdminUpdateConfigV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateConfigV1Cmd)
	adminUpdateConfigV1Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = adminUpdateConfigV1Cmd.MarkFlagRequired("body")
	adminUpdateConfigV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminUpdateConfigV1Cmd.MarkFlagRequired("namespace")
}
