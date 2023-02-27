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

// BulkAddStatsCmd represents the BulkAddStats command
var BulkAddStatsCmd = &cobra.Command{
	Use:   "bulkAddStats",
	Short: "Bulk add stats",
	Long:  `Bulk add stats`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statCycleConfigurationService := &social.StatCycleConfigurationService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		cycleId, _ := cmd.Flags().GetString("cycleId")
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.BulkCycleStatsAdd
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &stat_cycle_configuration.BulkAddStatsParams{
			Body:      body,
			CycleID:   cycleId,
			Namespace: namespace,
		}
		ok, err := statCycleConfigurationService.BulkAddStatsShort(input)
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
	BulkAddStatsCmd.Flags().String("body", "", "Body")
	BulkAddStatsCmd.Flags().String("cycleId", "", "Cycle id")
	_ = BulkAddStatsCmd.MarkFlagRequired("cycleId")
	BulkAddStatsCmd.Flags().String("namespace", "", "Namespace")
	_ = BulkAddStatsCmd.MarkFlagRequired("namespace")
}
