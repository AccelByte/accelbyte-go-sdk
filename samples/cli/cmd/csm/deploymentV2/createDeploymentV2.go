// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package deploymentV2

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/deployment_v2"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateDeploymentV2Cmd represents the CreateDeploymentV2 command
var CreateDeploymentV2Cmd = &cobra.Command{
	Use:   "createDeploymentV2",
	Short: "Create deployment V2",
	Long:  `Create deployment V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentV2Service := &csm.DeploymentV2Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelCreateDeploymentV2Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &deployment_v2.CreateDeploymentV2Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		created, errCreated := deploymentV2Service.CreateDeploymentV2Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreateDeploymentV2Cmd.Flags().String("body", "", "Body")
	_ = CreateDeploymentV2Cmd.MarkFlagRequired("body")
	CreateDeploymentV2Cmd.Flags().String("app", "", "App")
	_ = CreateDeploymentV2Cmd.MarkFlagRequired("app")
	CreateDeploymentV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = CreateDeploymentV2Cmd.MarkFlagRequired("namespace")
}
