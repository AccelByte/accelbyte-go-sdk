// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managedResourcesKeyValue

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/managed_resources_key_value"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateKeyValueClusterV2Cmd represents the CreateKeyValueClusterV2 command
var CreateKeyValueClusterV2Cmd = &cobra.Command{
	Use:   "createKeyValueClusterV2",
	Short: "Create key value cluster V2",
	Long:  `Create key value cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesKeyValueService := &csm.ManagedResourcesKeyValueService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.DomainKeyValueResourceConfiguration
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources_key_value.CreateKeyValueClusterV2Params{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := managedResourcesKeyValueService.CreateKeyValueClusterV2Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreateKeyValueClusterV2Cmd.Flags().String("body", "", "Body")
	_ = CreateKeyValueClusterV2Cmd.MarkFlagRequired("body")
	CreateKeyValueClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = CreateKeyValueClusterV2Cmd.MarkFlagRequired("namespace")
}
