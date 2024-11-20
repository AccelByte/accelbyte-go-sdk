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

// CreateStatCycleCmd represents the CreateStatCycle command
var CreateStatCycleCmd = &cobra.Command{
	Use:   "createStatCycle",
	Short: "Create stat cycle",
	Long:  `Create stat cycle`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statCycleConfigurationService := &social.StatCycleConfigurationService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.StatCycleCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &stat_cycle_configuration.CreateStatCycleParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := statCycleConfigurationService.CreateStatCycleShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreateStatCycleCmd.Flags().String("body", "", "Body")
	_ = CreateStatCycleCmd.MarkFlagRequired("body")
	CreateStatCycleCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateStatCycleCmd.MarkFlagRequired("namespace")
}
