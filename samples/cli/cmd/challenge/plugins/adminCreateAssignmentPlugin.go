// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package plugins

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclient/plugins"
	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/challenge"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminCreateAssignmentPluginCmd represents the AdminCreateAssignmentPlugin command
var AdminCreateAssignmentPluginCmd = &cobra.Command{
	Use:   "adminCreateAssignmentPlugin",
	Short: "Admin create assignment plugin",
	Long:  `Admin create assignment plugin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		pluginsService := &challenge.PluginsService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *challengeclientmodels.ModelPluginAssignmentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &plugins.AdminCreateAssignmentPluginParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := pluginsService.AdminCreateAssignmentPluginShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminCreateAssignmentPluginCmd.Flags().String("body", "", "Body")
	_ = AdminCreateAssignmentPluginCmd.MarkFlagRequired("body")
	AdminCreateAssignmentPluginCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateAssignmentPluginCmd.MarkFlagRequired("namespace")
}
