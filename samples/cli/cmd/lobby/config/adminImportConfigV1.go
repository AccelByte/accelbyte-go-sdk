// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package config

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"net/http"
)

// AdminImportConfigV1Cmd represents the AdminImportConfigV1 command
var AdminImportConfigV1Cmd = &cobra.Command{
	Use:   "adminImportConfigV1",
	Short: "Admin import config V1",
	Long:  `Admin import config V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &lobby.ConfigService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &config.AdminImportConfigV1Params{
			Namespace:  namespace,
			HTTPClient: httpClient,
		}
		ok, err := configService.AdminImportConfigV1Short(input)
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
	AdminImportConfigV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminImportConfigV1Cmd.MarkFlagRequired("namespace")
}
