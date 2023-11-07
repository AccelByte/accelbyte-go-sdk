// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package amsQoS

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/a_m_s_qo_s"
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QoSRegionsUpdateCmd represents the QoSRegionsUpdate command
var QoSRegionsUpdateCmd = &cobra.Command{
	Use:   "qoSRegionsUpdate",
	Short: "Qo S regions update",
	Long:  `Qo S regions update`,
	RunE: func(cmd *cobra.Command, args []string) error {
		amsQoSService := &ams.AMSQoSService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *amsclientmodels.APIUpdateServerRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		region, _ := cmd.Flags().GetString("region")
		input := &a_m_s_qo_s.QoSRegionsUpdateParams{
			Body:      body,
			Namespace: namespace,
			Region:    region,
		}
		errNoContent := amsQoSService.QoSRegionsUpdateShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	QoSRegionsUpdateCmd.Flags().String("body", "", "Body")
	_ = QoSRegionsUpdateCmd.MarkFlagRequired("body")
	QoSRegionsUpdateCmd.Flags().String("namespace", "", "Namespace")
	_ = QoSRegionsUpdateCmd.MarkFlagRequired("namespace")
	QoSRegionsUpdateCmd.Flags().String("region", "", "Region")
	_ = QoSRegionsUpdateCmd.MarkFlagRequired("region")
}
