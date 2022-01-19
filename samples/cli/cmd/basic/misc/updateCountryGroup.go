// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/misc"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateCountryGroupCmd represents the updateCountryGroup command
var updateCountryGroupCmd = &cobra.Command{
	Use:   "updateCountryGroup",
	Short: "Update country group",
	Long:  `Update country group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		miscService := &basic.MiscService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		countryGroupCode, _ := cmd.Flags().GetString("countryGroupCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *basicclientmodels.UpdateCountryGroupRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &misc.UpdateCountryGroupParams{
			Body:             body,
			CountryGroupCode: countryGroupCode,
			Namespace:        namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := miscService.UpdateCountryGroup(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateCountryGroupCmd)
	updateCountryGroupCmd.Flags().StringP("body", "b", " ", "Body")
	updateCountryGroupCmd.Flags().StringP("countryGroupCode", "c", " ", "Country group code")
	_ = updateCountryGroupCmd.MarkFlagRequired("countryGroupCode")
	updateCountryGroupCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updateCountryGroupCmd.MarkFlagRequired("namespace")
}
