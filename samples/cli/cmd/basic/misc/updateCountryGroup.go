// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package misc

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/misc"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateCountryGroupCmd represents the UpdateCountryGroup command
var UpdateCountryGroupCmd = &cobra.Command{
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
		ok, errOK := miscService.UpdateCountryGroupShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateCountryGroupCmd.Flags().String("body", "", "Body")
	UpdateCountryGroupCmd.Flags().String("countryGroupCode", "", "Country group code")
	_ = UpdateCountryGroupCmd.MarkFlagRequired("countryGroupCode")
	UpdateCountryGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateCountryGroupCmd.MarkFlagRequired("namespace")
}
