// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managedResources

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/managed_resources"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateNoSQLClusterV2Cmd represents the UpdateNoSQLClusterV2 command
var UpdateNoSQLClusterV2Cmd = &cobra.Command{
	Use:   "updateNoSQLClusterV2",
	Short: "Update no SQL cluster V2",
	Long:  `Update no SQL cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesService := &csm.ManagedResourcesService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.NosqlresourceNoSQLResourceConfiguration
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources.UpdateNoSQLClusterV2Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := managedResourcesService.UpdateNoSQLClusterV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateNoSQLClusterV2Cmd.Flags().String("body", "", "Body")
	_ = UpdateNoSQLClusterV2Cmd.MarkFlagRequired("body")
	UpdateNoSQLClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateNoSQLClusterV2Cmd.MarkFlagRequired("namespace")
}
