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

// GenerateTokenByNewHeadlessAccountV3Cmd represents the GenerateTokenByNewHeadlessAccountV3 command
var GenerateTokenByNewHeadlessAccountV3Cmd = &cobra.Command{
	Use:   "generateTokenByNewHeadlessAccountV3",
	Short: "Generate token by new headless account V3",
	Long:  `Generate token by new headless account V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		linkingToken, _ := cmd.Flags().GetString("linkingToken")
		extendExp, _ := cmd.Flags().GetBool("extendExp")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &o_auth2_0_extension.GenerateTokenByNewHeadlessAccountV3Params{
			ExtendExp:    &extendExp,
			LinkingToken: linkingToken,
			HTTPClient:   httpClient,
		}
		ok, err := oAuth20ExtensionService.GenerateTokenByNewHeadlessAccountV3Short(input)
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
	GenerateTokenByNewHeadlessAccountV3Cmd.Flags().Bool("extendExp", false, "Extend exp")
	GenerateTokenByNewHeadlessAccountV3Cmd.Flags().String("linkingToken", "", "Linking token")
	_ = GenerateTokenByNewHeadlessAccountV3Cmd.MarkFlagRequired("linkingToken")
}
