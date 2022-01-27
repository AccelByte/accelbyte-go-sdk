// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package misc

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/misc"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetCountriesCmd represents the GetCountries command
var GetCountriesCmd = &cobra.Command{
	Use:   "GetCountries",
	Short: "Get countries",
	Long:  `Get countries`,
	RunE: func(cmd *cobra.Command, args []string) error {
		miscService := &basic.MiscService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		lang, _ := cmd.Flags().GetString("lang")
		input := &misc.GetCountriesParams{
			Namespace: namespace,
			Lang:      &lang,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := miscService.GetCountries(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetCountriesCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetCountriesCmd.MarkFlagRequired("namespace")
	GetCountriesCmd.Flags().StringP("lang", "lg", " ", "Lang")
}
