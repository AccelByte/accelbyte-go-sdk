// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package statCycleConfiguration

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_cycle_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// BulkGetStatCycle1Cmd represents the BulkGetStatCycle1 command
var BulkGetStatCycle1Cmd = &cobra.Command{
	Use:   "bulkGetStatCycle1",
	Short: "Bulk get stat cycle 1",
	Long:  `Bulk get stat cycle 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statCycleConfigurationService := &social.StatCycleConfigurationService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.BulkStatCycleRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &stat_cycle_configuration.BulkGetStatCycle1Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := statCycleConfigurationService.BulkGetStatCycle1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkGetStatCycle1Cmd.Flags().String("body", "", "Body")
	_ = BulkGetStatCycle1Cmd.MarkFlagRequired("body")
	BulkGetStatCycle1Cmd.Flags().String("namespace", "", "Namespace")
	_ = BulkGetStatCycle1Cmd.MarkFlagRequired("namespace")
}
