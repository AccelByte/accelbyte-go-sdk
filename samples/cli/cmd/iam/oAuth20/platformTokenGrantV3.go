// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package oAuth20

import (
	"encoding/json"
	"net/http"

	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
)

// PlatformTokenGrantV3Cmd represents the PlatformTokenGrantV3 command
var PlatformTokenGrantV3Cmd = &cobra.Command{
	Use:   "platformTokenGrantV3",
	Short: "Platform token grant V3",
	Long:  `Platform token grant V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:           factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			ConfigRepository: &repository.ConfigRepositoryImpl{},
			TokenRepository:  &repository.TokenRepositoryImpl{},
		}
		platformId, _ := cmd.Flags().GetString("platformId")
		clientId, _ := cmd.Flags().GetString("clientId")
		deviceId, _ := cmd.Flags().GetString("deviceId")
		platformToken, _ := cmd.Flags().GetString("platformToken")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &o_auth2_0.PlatformTokenGrantV3Params{
			ClientID:      &clientId,
			DeviceID:      &deviceId,
			PlatformToken: &platformToken,
			PlatformID:    platformId,
			HTTPClient:    httpClient,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := oAuth20Service.PlatformTokenGrantV3(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	PlatformTokenGrantV3Cmd.Flags().StringP("clientId", "", "", "Client id")
	PlatformTokenGrantV3Cmd.Flags().StringP("deviceId", "", "", "Device id")
	PlatformTokenGrantV3Cmd.Flags().StringP("platformToken", "", "", "Platform token")
	PlatformTokenGrantV3Cmd.Flags().StringP("platformId", "", "", "Platform id")
	_ = PlatformTokenGrantV3Cmd.MarkFlagRequired("platformId")
}
