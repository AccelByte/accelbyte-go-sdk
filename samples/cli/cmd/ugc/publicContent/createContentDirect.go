// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicContent

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateContentDirectCmd represents the CreateContentDirect command
var CreateContentDirectCmd = &cobra.Command{
	Use:   "createContentDirect",
	Short: "Create content direct",
	Long:  `Create content direct`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentService := &ugc.PublicContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsCreateContentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content.CreateContentDirectParams{
			Body:      body,
			ChannelID: channelId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicContentService.CreateContentDirect(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	CreateContentDirectCmd.Flags().StringP("body", "", "", "Body")
	_ = CreateContentDirectCmd.MarkFlagRequired("body")
	CreateContentDirectCmd.Flags().StringP("channelId", "", "", "Channel id")
	_ = CreateContentDirectCmd.MarkFlagRequired("channelId")
	CreateContentDirectCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CreateContentDirectCmd.MarkFlagRequired("namespace")
	CreateContentDirectCmd.Flags().StringP("userId", "", "", "User id")
	_ = CreateContentDirectCmd.MarkFlagRequired("userId")
}
