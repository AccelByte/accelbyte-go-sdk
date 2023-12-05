// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContentLegacy

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content_legacy"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetContentBulkByShareCodesCmd represents the PublicGetContentBulkByShareCodes command
var PublicGetContentBulkByShareCodesCmd = &cobra.Command{
	Use:   "publicGetContentBulkByShareCodes",
	Short: "Public get content bulk by share codes",
	Long:  `Public get content bulk by share codes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentLegacyService := &ugc.PublicContentLegacyService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsGetContentBulkByShareCodesRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_content_legacy.PublicGetContentBulkByShareCodesParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := publicContentLegacyService.PublicGetContentBulkByShareCodesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetContentBulkByShareCodesCmd.Flags().String("body", "", "Body")
	_ = PublicGetContentBulkByShareCodesCmd.MarkFlagRequired("body")
	PublicGetContentBulkByShareCodesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetContentBulkByShareCodesCmd.MarkFlagRequired("namespace")
}
