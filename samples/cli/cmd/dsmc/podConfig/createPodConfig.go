// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package podConfig

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/pod_config"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreatePodConfigCmd represents the CreatePodConfig command
var CreatePodConfigCmd = &cobra.Command{
	Use:   "createPodConfig",
	Short: "Create pod config",
	Long:  `Create pod config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		podConfigService := &dsmc.PodConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dsmcclientmodels.ModelsCreatePodConfigRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		name, _ := cmd.Flags().GetString("name")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &pod_config.CreatePodConfigParams{
			Body:      body,
			Name:      name,
			Namespace: namespace,
		}
		created, errCreated := podConfigService.CreatePodConfigShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreatePodConfigCmd.Flags().String("body", "", "Body")
	_ = CreatePodConfigCmd.MarkFlagRequired("body")
	CreatePodConfigCmd.Flags().String("name", "", "Name")
	_ = CreatePodConfigCmd.MarkFlagRequired("name")
	CreatePodConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = CreatePodConfigCmd.MarkFlagRequired("namespace")
}
