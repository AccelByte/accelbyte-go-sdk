// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package misc

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/misc"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetCountriesCmd represents the publicGetCountries command
var publicGetCountriesCmd = &cobra.Command{
	Use:   "publicGetCountries",
	Short: "Public get countries",
	Long:  `Public get countries`,
	RunE: func(cmd *cobra.Command, args []string) error {
		miscService := &basic.MiscService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		lang, _ := cmd.Flags().GetString("lang")
		input := &misc.PublicGetCountriesParams{
			Namespace: namespace,
			Lang:      &lang,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := miscService.PublicGetCountries(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetCountriesCmd)
	publicGetCountriesCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetCountriesCmd.MarkFlagRequired("namespace")
	publicGetCountriesCmd.Flags().StringP("lang", "lg", " ", "Lang")
}
