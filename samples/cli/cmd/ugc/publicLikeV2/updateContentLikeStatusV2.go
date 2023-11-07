// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicLikeV2

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_like_v2"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateContentLikeStatusV2Cmd represents the UpdateContentLikeStatusV2 command
var UpdateContentLikeStatusV2Cmd = &cobra.Command{
	Use:   "updateContentLikeStatusV2",
	Short: "Update content like status V2",
	Long:  `Update content like status V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicLikeV2Service := &ugc.PublicLikeV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsContentLikeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_like_v2.UpdateContentLikeStatusV2Params{
			Body:      body,
			ContentID: contentId,
			Namespace: namespace,
		}
		ok, errOK := publicLikeV2Service.UpdateContentLikeStatusV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateContentLikeStatusV2Cmd.Flags().String("body", "", "Body")
	_ = UpdateContentLikeStatusV2Cmd.MarkFlagRequired("body")
	UpdateContentLikeStatusV2Cmd.Flags().String("contentId", "", "Content id")
	_ = UpdateContentLikeStatusV2Cmd.MarkFlagRequired("contentId")
	UpdateContentLikeStatusV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateContentLikeStatusV2Cmd.MarkFlagRequired("namespace")
}
