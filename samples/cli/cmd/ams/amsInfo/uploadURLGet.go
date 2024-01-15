// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package amsInfo

import (
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/a_m_s_info"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UploadURLGetCmd represents the UploadURLGet command
var UploadURLGetCmd = &cobra.Command{
	Use:   "uploadURLGet",
	Short: "Upload URL get",
	Long:  `Upload URL get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		amsInfoService := &ams.AMSInfoService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &a_m_s_info.UploadURLGetParams{}
		errOK := amsInfoService.UploadURLGetShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
}
