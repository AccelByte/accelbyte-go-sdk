// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iap

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"net/http"
	"os"
)

// UpdateXblBPCertFileCmd represents the UpdateXblBPCertFile command
var UpdateXblBPCertFileCmd = &cobra.Command{
	Use:   "updateXblBPCertFile",
	Short: "Update xbl BP cert file",
	Long:  `Update xbl BP cert file`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		output := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", output)
		file, err := os.Open(output)
		if err != nil {
			return err
		}
		password, _ := cmd.Flags().GetString("password")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &i_a_p.UpdateXblBPCertFileParams{
			File:       file,
			Password:   &password,
			Namespace:  namespace,
			HTTPClient: httpClient,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := iapService.UpdateXblBPCertFile(input)
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
	UpdateXblBPCertFileCmd.Flags().StringP("file", "", "", "File")
	UpdateXblBPCertFileCmd.Flags().StringP("password", "", "", "Password")
	UpdateXblBPCertFileCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateXblBPCertFileCmd.MarkFlagRequired("namespace")
}
