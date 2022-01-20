// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminHideUserContentCmd represents the adminHideUserContent command
var adminHideUserContentCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminContentService.AdminHideUserContent(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminHideUserContentCmd)
	adminHideUserContentCmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminHideUserContentCmd.MarkFlagRequired("body")
	adminHideUserContentCmd.Flags().StringP("contentId", "c", " ", "Content id")
	_ = adminHideUserContentCmd.MarkFlagRequired("contentId")
	adminHideUserContentCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminHideUserContentCmd.MarkFlagRequired("namespace")
	adminHideUserContentCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminHideUserContentCmd.MarkFlagRequired("userId")
}