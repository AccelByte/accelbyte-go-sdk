// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminStagingContent

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_staging_content"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminApproveStagingContentCmd represents the AdminApproveStagingContent command
var AdminApproveStagingContentCmd = &cobra.Command{
	Use:   "adminApproveStagingContent",
	Short: "Admin approve staging content",
	Long:  `Admin approve staging content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminStagingContentService := &ugc.AdminStagingContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsApproveStagingContentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_staging_content.AdminApproveStagingContentParams{
			Body:      body,
			ContentID: contentId,
			Namespace: namespace,
		}
		ok, errOK := adminStagingContentService.AdminApproveStagingContentShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminApproveStagingContentCmd.Flags().String("body", "", "Body")
	_ = AdminApproveStagingContentCmd.MarkFlagRequired("body")
	AdminApproveStagingContentCmd.Flags().String("contentId", "", "Content id")
	_ = AdminApproveStagingContentCmd.MarkFlagRequired("contentId")
	AdminApproveStagingContentCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminApproveStagingContentCmd.MarkFlagRequired("namespace")
}
