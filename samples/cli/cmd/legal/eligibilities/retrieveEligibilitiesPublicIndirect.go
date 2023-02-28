// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package eligibilities

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/eligibilities"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveEligibilitiesPublicIndirectCmd represents the RetrieveEligibilitiesPublicIndirect command
var RetrieveEligibilitiesPublicIndirectCmd = &cobra.Command{
	Use:   "retrieveEligibilitiesPublicIndirect",
	Short: "Retrieve eligibilities public indirect",
	Long:  `Retrieve eligibilities public indirect`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eligibilitiesService := &legal.EligibilitiesService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		countryCode, _ := cmd.Flags().GetString("countryCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &eligibilities.RetrieveEligibilitiesPublicIndirectParams{
			ClientID:    clientId,
			CountryCode: countryCode,
			Namespace:   namespace,
			UserID:      userId,
		}
		ok, errOK := eligibilitiesService.RetrieveEligibilitiesPublicIndirectShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveEligibilitiesPublicIndirectCmd.Flags().String("clientId", "", "Client id")
	_ = RetrieveEligibilitiesPublicIndirectCmd.MarkFlagRequired("clientId")
	RetrieveEligibilitiesPublicIndirectCmd.Flags().String("countryCode", "", "Country code")
	_ = RetrieveEligibilitiesPublicIndirectCmd.MarkFlagRequired("countryCode")
	RetrieveEligibilitiesPublicIndirectCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveEligibilitiesPublicIndirectCmd.MarkFlagRequired("namespace")
	RetrieveEligibilitiesPublicIndirectCmd.Flags().String("userId", "", "User id")
	_ = RetrieveEligibilitiesPublicIndirectCmd.MarkFlagRequired("userId")
}
