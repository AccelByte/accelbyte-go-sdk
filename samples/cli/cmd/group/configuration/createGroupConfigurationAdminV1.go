// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package configuration

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// createGroupConfigurationAdminV1Cmd represents the createGroupConfigurationAdminV1 command
var createGroupConfigurationAdminV1Cmd = &cobra.Command{
	Use:   "createGroupConfigurationAdminV1",
	Short: "Create group configuration admin V1",
	Long:  `Create group configuration admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &group.ConfigurationService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *groupclientmodels.ModelsCreateGroupConfigurationRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.CreateGroupConfigurationAdminV1Params{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := configurationService.CreateGroupConfigurationAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(createGroupConfigurationAdminV1Cmd)
	createGroupConfigurationAdminV1Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = createGroupConfigurationAdminV1Cmd.MarkFlagRequired("body")
	createGroupConfigurationAdminV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = createGroupConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
}
