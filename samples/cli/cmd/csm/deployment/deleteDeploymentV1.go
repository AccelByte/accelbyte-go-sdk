// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package deployment

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/deployment"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteDeploymentV1Cmd represents the DeleteDeploymentV1 command
var DeleteDeploymentV1Cmd = &cobra.Command{
	Use:   "deleteDeploymentV1",
	Short: "Delete deployment V1",
	Long:  `Delete deployment V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentService := &csm.DeploymentService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deploymentId, _ := cmd.Flags().GetString("deploymentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &deployment.DeleteDeploymentV1Params{
			DeploymentID: deploymentId,
			Namespace:    namespace,
		}
		errNoContent := deploymentService.DeleteDeploymentV1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteDeploymentV1Cmd.Flags().String("deploymentId", "", "Deployment id")
	_ = DeleteDeploymentV1Cmd.MarkFlagRequired("deploymentId")
	DeleteDeploymentV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteDeploymentV1Cmd.MarkFlagRequired("namespace")
}
