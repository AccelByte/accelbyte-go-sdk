// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package image

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/image"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteAppImagesV1Cmd represents the DeleteAppImagesV1 command
var DeleteAppImagesV1Cmd = &cobra.Command{
	Use:   "deleteAppImagesV1",
	Short: "Delete app images V1",
	Long:  `Delete app images V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imageService := &csm.ImageService{
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
		input := &image.DeleteAppImagesV1Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		errNoContent := imageService.DeleteAppImagesV1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteAppImagesV1Cmd.Flags().String("body", "", "Body")
	_ = DeleteAppImagesV1Cmd.MarkFlagRequired("body")
	DeleteAppImagesV1Cmd.Flags().String("app", "", "App")
	_ = DeleteAppImagesV1Cmd.MarkFlagRequired("app")
	DeleteAppImagesV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteAppImagesV1Cmd.MarkFlagRequired("namespace")
}
