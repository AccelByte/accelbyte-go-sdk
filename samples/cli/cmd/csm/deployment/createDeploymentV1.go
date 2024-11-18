// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package deployment

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/deployment"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateDeploymentV1Cmd represents the CreateDeploymentV1 command
var CreateDeploymentV1Cmd = &cobra.Command{
	Use:   "createDeploymentV1",
	Short: "Create deployment V1",
	Long:  `Create deployment V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentService := &csm.DeploymentService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.GeneratedCreateDeploymentV1Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &deployment.CreateDeploymentV1Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		created, errCreated := deploymentService.CreateDeploymentV1Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreateDeploymentV1Cmd.Flags().String("body", "", "Body")
	_ = CreateDeploymentV1Cmd.MarkFlagRequired("body")
	CreateDeploymentV1Cmd.Flags().String("app", "", "App")
	_ = CreateDeploymentV1Cmd.MarkFlagRequired("app")
	CreateDeploymentV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = CreateDeploymentV1Cmd.MarkFlagRequired("namespace")
}
