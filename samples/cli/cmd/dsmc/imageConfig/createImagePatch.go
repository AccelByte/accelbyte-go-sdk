// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package imageConfig

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/image_config"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateImagePatchCmd represents the CreateImagePatch command
var CreateImagePatchCmd = &cobra.Command{
	Use:   "createImagePatch",
	Short: "Create image patch",
	Long:  `Create image patch`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imageConfigService := &dsmc.ImageConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dsmcclientmodels.ModelsCreateImagePatchRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &image_config.CreateImagePatchParams{
			Body: body,
		}
		errInput := imageConfigService.CreateImagePatchShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	CreateImagePatchCmd.Flags().StringP("body", "", "", "Body")
	_ = CreateImagePatchCmd.MarkFlagRequired("body")
}
