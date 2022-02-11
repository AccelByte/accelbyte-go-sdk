// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package statConfiguration

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"net/http"
	"os"
)

// ImportStatsCmd represents the ImportStats command
var ImportStatsCmd = &cobra.Command{
	Use:   "importStats",
	Short: "Import stats",
	Long:  `Import stats`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statConfigurationService := &social.StatConfigurationService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		output := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", output)
		file, err := os.Open(output)
		if err != nil {
			return err
		}
		replaceExisting, _ := cmd.Flags().GetBool("replaceExisting")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &stat_configuration.ImportStatsParams{
			File:            file,
			Namespace:       namespace,
			ReplaceExisting: &replaceExisting,
			HTTPClient:      httpClient,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := statConfigurationService.ImportStats(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	ImportStatsCmd.Flags().StringP("file", "", "", "File")
	ImportStatsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ImportStatsCmd.MarkFlagRequired("namespace")
	ImportStatsCmd.Flags().BoolP("replaceExisting", "", false, "Replace existing")
}
