// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"net/http"
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateStadiaJsonConfigFileCmd represents the UpdateStadiaJsonConfigFile command
var UpdateStadiaJsonConfigFileCmd = &cobra.Command{
	Use:   "updateStadiaJsonConfigFile",
	Short: "Update stadia json config file",
	Long:  `Update stadia json config file`,
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
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &i_a_p.UpdateStadiaJSONConfigFileParams{
			File:       file,
			Namespace:  namespace,
			HTTPClient: httpClient,
		}
		ok, err := iapService.UpdateStadiaJSONConfigFileShort(input, nil)
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
	UpdateStadiaJsonConfigFileCmd.Flags().StringP("file", "", "", "File")
	UpdateStadiaJsonConfigFileCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateStadiaJsonConfigFileCmd.MarkFlagRequired("namespace")
}
