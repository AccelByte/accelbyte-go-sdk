// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20Extension

import (
	"net/http"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RequestOneTimeLinkingCodeV3Cmd represents the RequestOneTimeLinkingCodeV3 command
var RequestOneTimeLinkingCodeV3Cmd = &cobra.Command{
	Use:   "requestOneTimeLinkingCodeV3",
	Short: "Request one time linking code V3",
	Long:  `Request one time linking code V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		platformId, _ := cmd.Flags().GetString("platformId")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &o_auth2_0_extension.RequestOneTimeLinkingCodeV3Params{
			PlatformID: platformId,
			HTTPClient: httpClient,
		}
		ok, err := oAuth20ExtensionService.RequestOneTimeLinkingCodeV3Short(input)
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
	RequestOneTimeLinkingCodeV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = RequestOneTimeLinkingCodeV3Cmd.MarkFlagRequired("platformId")
}
