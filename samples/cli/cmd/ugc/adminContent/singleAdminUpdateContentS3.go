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

// singleAdminUpdateContentS3Cmd represents the singleAdminUpdateContentS3 command
var singleAdminUpdateContentS3Cmd = &cobra.Command{
	Use:   "singleAdminUpdateContentS3",
	Short: "Single admin update content S3",
	Long:  `Single admin update content S3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsCreateContentRequestS3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_content.SingleAdminUpdateContentS3Params{
			Body:      body,
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminContentService.SingleAdminUpdateContentS3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(singleAdminUpdateContentS3Cmd)
	singleAdminUpdateContentS3Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = singleAdminUpdateContentS3Cmd.MarkFlagRequired("body")
	singleAdminUpdateContentS3Cmd.Flags().StringP("channelId", "c", " ", "Channel id")
	_ = singleAdminUpdateContentS3Cmd.MarkFlagRequired("channelId")
	singleAdminUpdateContentS3Cmd.Flags().StringP("contentId", "c", " ", "Content id")
	_ = singleAdminUpdateContentS3Cmd.MarkFlagRequired("contentId")
	singleAdminUpdateContentS3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = singleAdminUpdateContentS3Cmd.MarkFlagRequired("namespace")
}