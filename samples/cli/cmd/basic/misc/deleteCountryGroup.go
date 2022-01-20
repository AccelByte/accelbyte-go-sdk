// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/misc"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteCountryGroupCmd represents the deleteCountryGroup command
var deleteCountryGroupCmd = &cobra.Command{
	Use:   "deleteCountryGroup",
	Short: "Delete country group",
	Long:  `Delete country group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		miscService := &basic.MiscService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		countryGroupCode, _ := cmd.Flags().GetString("countryGroupCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &misc.DeleteCountryGroupParams{
			CountryGroupCode: countryGroupCode,
			Namespace:        namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := miscService.DeleteCountryGroup(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteCountryGroupCmd)
	deleteCountryGroupCmd.Flags().StringP("countryGroupCode", "c", " ", "Country group code")
	_ = deleteCountryGroupCmd.MarkFlagRequired("countryGroupCode")
	deleteCountryGroupCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteCountryGroupCmd.MarkFlagRequired("namespace")
}