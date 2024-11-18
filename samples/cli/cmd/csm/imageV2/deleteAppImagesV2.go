// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package imageV2

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/image_v2"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteAppImagesV2Cmd represents the DeleteAppImagesV2 command
var DeleteAppImagesV2Cmd = &cobra.Command{
	Use:   "deleteAppImagesV2",
	Short: "Delete app images V2",
	Long:  `Delete app images V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imageV2Service := &csm.ImageV2Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.GeneratedDeleteAppImagesV1Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &image_v2.DeleteAppImagesV2Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		errNoContent := imageV2Service.DeleteAppImagesV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteAppImagesV2Cmd.Flags().String("body", "", "Body")
	_ = DeleteAppImagesV2Cmd.MarkFlagRequired("body")
	DeleteAppImagesV2Cmd.Flags().String("app", "", "App")
	_ = DeleteAppImagesV2Cmd.MarkFlagRequired("app")
	DeleteAppImagesV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteAppImagesV2Cmd.MarkFlagRequired("namespace")
}
