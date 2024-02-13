// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package tags

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/tags"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminPostTagHandlerV1Cmd represents the AdminPostTagHandlerV1 command
var AdminPostTagHandlerV1Cmd = &cobra.Command{
	Use:   "adminPostTagHandlerV1",
	Short: "Admin post tag handler V1",
	Long:  `Admin post tag handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		tagsService := &cloudsave.TagsService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsTagRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &tags.AdminPostTagHandlerV1Params{
			Body:      body,
			Namespace: namespace,
		}
		errCreated := tagsService.AdminPostTagHandlerV1Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminPostTagHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPostTagHandlerV1Cmd.MarkFlagRequired("body")
	AdminPostTagHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPostTagHandlerV1Cmd.MarkFlagRequired("namespace")
}
