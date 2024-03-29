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

// UpdatePodConfigCmd represents the UpdatePodConfig command
var UpdatePodConfigCmd = &cobra.Command{
	Use:   "updatePodConfig",
	Short: "Update pod config",
	Long:  `Update pod config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		podConfigService := &dsmc.PodConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dsmcclientmodels.ModelsUpdatePodConfigRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		name, _ := cmd.Flags().GetString("name")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &pod_config.UpdatePodConfigParams{
			Body:      body,
			Name:      name,
			Namespace: namespace,
		}
		ok, errOK := podConfigService.UpdatePodConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdatePodConfigCmd.Flags().String("body", "", "Body")
	_ = UpdatePodConfigCmd.MarkFlagRequired("body")
	UpdatePodConfigCmd.Flags().String("name", "", "Name")
	_ = UpdatePodConfigCmd.MarkFlagRequired("name")
	UpdatePodConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdatePodConfigCmd.MarkFlagRequired("namespace")
}
