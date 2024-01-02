// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicStagingContent

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_staging_content"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateStagingContentCmd represents the UpdateStagingContent command
var UpdateStagingContentCmd = &cobra.Command{
	Use:   "updateStagingContent",
	Short: "Update staging content",
	Long:  `Update staging content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicStagingContentService := &ugc.PublicStagingContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsUpdateStagingContentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_staging_content.UpdateStagingContentParams{
			Body:      body,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := publicStagingContentService.UpdateStagingContentShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateStagingContentCmd.Flags().String("body", "", "Body")
	_ = UpdateStagingContentCmd.MarkFlagRequired("body")
	UpdateStagingContentCmd.Flags().String("contentId", "", "Content id")
	_ = UpdateStagingContentCmd.MarkFlagRequired("contentId")
	UpdateStagingContentCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateStagingContentCmd.MarkFlagRequired("namespace")
	UpdateStagingContentCmd.Flags().String("userId", "", "User id")
	_ = UpdateStagingContentCmd.MarkFlagRequired("userId")
}
