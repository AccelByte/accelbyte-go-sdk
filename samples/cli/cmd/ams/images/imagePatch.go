// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package images

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/images"
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ImagePatchCmd represents the ImagePatch command
var ImagePatchCmd = &cobra.Command{
	Use:   "imagePatch",
	Short: "Image patch",
	Long:  `Image patch`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imagesService := &ams.ImagesService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *amsclientmodels.APIImageUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		imageID, _ := cmd.Flags().GetString("imageID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &images.ImagePatchParams{
			Body:      body,
			ImageID:   imageID,
			Namespace: namespace,
		}
		ok, errOK := imagesService.ImagePatchShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ImagePatchCmd.Flags().String("body", "", "Body")
	_ = ImagePatchCmd.MarkFlagRequired("body")
	ImagePatchCmd.Flags().String("imageID", "", "Image ID")
	_ = ImagePatchCmd.MarkFlagRequired("imageID")
	ImagePatchCmd.Flags().String("namespace", "", "Namespace")
	_ = ImagePatchCmd.MarkFlagRequired("namespace")
}
