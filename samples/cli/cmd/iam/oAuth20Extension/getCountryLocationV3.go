// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package oAuth20Extension

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"net/http"
)

// GetCountryLocationV3Cmd represents the GetCountryLocationV3 command
var GetCountryLocationV3Cmd = &cobra.Command{
	Use:   "getCountryLocationV3",
	Short: "Get country location V3",
	Long:  `Get country location V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &o_auth2_0_extension.GetCountryLocationV3Params{
			HTTPClient: httpClient,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := oAuth20ExtensionService.GetCountryLocationV3(input)
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
}
