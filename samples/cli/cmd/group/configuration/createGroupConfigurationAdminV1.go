// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateGroupConfigurationAdminV1Cmd represents the CreateGroupConfigurationAdminV1 command
var CreateGroupConfigurationAdminV1Cmd = &cobra.Command{
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
		ok, err := configurationService.CreateGroupConfigurationAdminV1Short(input, nil)
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
	CreateGroupConfigurationAdminV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = CreateGroupConfigurationAdminV1Cmd.MarkFlagRequired("body")
	CreateGroupConfigurationAdminV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CreateGroupConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
}
