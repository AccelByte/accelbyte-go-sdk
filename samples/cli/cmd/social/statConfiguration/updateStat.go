// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateStatCmd represents the updateStat command
var updateStatCmd = &cobra.Command{
	Use:   "updateStat",
	Short: "Update stat",
	Long:  `Update stat`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statConfigurationService := &social.StatConfigurationService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.StatUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &stat_configuration.UpdateStatParams{
			Body:      body,
			Namespace: namespace,
			StatCode:  statCode,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := statConfigurationService.UpdateStat(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateStatCmd)
	updateStatCmd.Flags().StringP("body", "b", " ", "Body")
	updateStatCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updateStatCmd.MarkFlagRequired("namespace")
	updateStatCmd.Flags().StringP("statCode", "s", " ", "Stat code")
	_ = updateStatCmd.MarkFlagRequired("statCode")
}
