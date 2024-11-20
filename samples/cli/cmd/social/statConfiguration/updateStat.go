// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package statConfiguration

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateStatCmd represents the UpdateStat command
var UpdateStatCmd = &cobra.Command{
	Use:   "updateStat",
	Short: "Update stat",
	Long:  `Update stat`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statConfigurationService := &social.StatConfigurationService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.StatUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		input := &stat_configuration.UpdateStatParams{
			Body:      body,
			Namespace: namespace,
			StatCode:  statCode,
		}
		ok, errOK := statConfigurationService.UpdateStatShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateStatCmd.Flags().String("body", "", "Body")
	_ = UpdateStatCmd.MarkFlagRequired("body")
	UpdateStatCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateStatCmd.MarkFlagRequired("namespace")
	UpdateStatCmd.Flags().String("statCode", "", "Stat code")
	_ = UpdateStatCmd.MarkFlagRequired("statCode")
}
