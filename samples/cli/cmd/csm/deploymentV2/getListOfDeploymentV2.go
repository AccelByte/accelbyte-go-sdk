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

// GetListOfDeploymentV2Cmd represents the GetListOfDeploymentV2 command
var GetListOfDeploymentV2Cmd = &cobra.Command{
	Use:   "getListOfDeploymentV2",
	Short: "Get list of deployment V2",
	Long:  `Get list of deployment V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentV2Service := &csm.DeploymentV2Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelGetDeploymentListV2Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &deployment_v2.GetListOfDeploymentV2Params{
			Body:      body,
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := deploymentV2Service.GetListOfDeploymentV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetListOfDeploymentV2Cmd.Flags().String("body", "", "Body")
	_ = GetListOfDeploymentV2Cmd.MarkFlagRequired("body")
	GetListOfDeploymentV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetListOfDeploymentV2Cmd.MarkFlagRequired("namespace")
	GetListOfDeploymentV2Cmd.Flags().Int64("limit", 20, "Limit")
	GetListOfDeploymentV2Cmd.Flags().Int64("offset", 0, "Offset")
}
