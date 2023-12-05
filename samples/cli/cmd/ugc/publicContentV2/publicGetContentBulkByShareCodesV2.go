// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContentV2

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content_v2"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetContentBulkByShareCodesV2Cmd represents the PublicGetContentBulkByShareCodesV2 command
var PublicGetContentBulkByShareCodesV2Cmd = &cobra.Command{
	Use:   "publicGetContentBulkByShareCodesV2",
	Short: "Public get content bulk by share codes V2",
	Long:  `Public get content bulk by share codes V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentV2Service := &ugc.PublicContentV2Service{
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
		input := &public_content_v2.PublicGetContentBulkByShareCodesV2Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := publicContentV2Service.PublicGetContentBulkByShareCodesV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetContentBulkByShareCodesV2Cmd.Flags().String("body", "", "Body")
	_ = PublicGetContentBulkByShareCodesV2Cmd.MarkFlagRequired("body")
	PublicGetContentBulkByShareCodesV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetContentBulkByShareCodesV2Cmd.MarkFlagRequired("namespace")
}
