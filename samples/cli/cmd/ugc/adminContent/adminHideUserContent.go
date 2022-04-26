// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminContent

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminHideUserContentCmd represents the AdminHideUserContent command
var AdminHideUserContentCmd = &cobra.Command{
	Use:   "adminHideUserContent",
	Short: "Admin hide user content",
	Long:  `Admin hide user content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsHideContentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_content.AdminHideUserContentParams{
			Body:      body,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := adminContentService.AdminHideUserContentShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	AdminHideUserContentCmd.Flags().StringP("body", "", "", "Body")
	_ = AdminHideUserContentCmd.MarkFlagRequired("body")
	AdminHideUserContentCmd.Flags().StringP("contentId", "", "", "Content id")
	_ = AdminHideUserContentCmd.MarkFlagRequired("contentId")
	AdminHideUserContentCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminHideUserContentCmd.MarkFlagRequired("namespace")
	AdminHideUserContentCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminHideUserContentCmd.MarkFlagRequired("userId")
}
