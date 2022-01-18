// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/ticket"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type TicketService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (t *TicketService) GetTicketDynamic(input *ticket.GetTicketDynamicParams)(*platformclientmodels.TicketDynamicInfo, error) {
    accessToken, err := t.TokenRepository.GetToken()
    if err != nil {
		return nil, err
	}
ok, notFound, err := t.Client.Ticket.GetTicketDynamic(input, client.BearerToken(*accessToken.AccessToken))
    if notFound != nil {
		return nil, notFound
    }
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (t *TicketService) DecreaseTicketSale(input *ticket.DecreaseTicketSaleParams) error {
	accessToken, err := t.TokenRepository.GetToken()
    if err != nil {
		return err
	}
    _, notFound, unprocessableEntity, err := t.Client.Ticket.DecreaseTicketSale(input, client.BearerToken(*accessToken.AccessToken))
    if notFound != nil {
		return notFound
    }
    if unprocessableEntity != nil {
		return unprocessableEntity
    }
    if err != nil {
		return err
	}
	return nil
}

func (t *TicketService) GetTicketBoothID(input *ticket.GetTicketBoothIDParams)(*platformclientmodels.TicketBoothID, error) {
    accessToken, err := t.TokenRepository.GetToken()
    if err != nil {
		return nil, err
	}
ok, notFound, err := t.Client.Ticket.GetTicketBoothID(input, client.BearerToken(*accessToken.AccessToken))
    if notFound != nil {
		return nil, notFound
    }
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (t *TicketService) IncreaseTicketSale(input *ticket.IncreaseTicketSaleParams)(*platformclientmodels.TicketSaleIncrementResult, error) {
    accessToken, err := t.TokenRepository.GetToken()
    if err != nil {
		return nil, err
	}
ok, notFound, unprocessableEntity, err := t.Client.Ticket.IncreaseTicketSale(input, client.BearerToken(*accessToken.AccessToken))
    if notFound != nil {
		return nil, notFound
    }
    if unprocessableEntity != nil {
		return nil, unprocessableEntity
    }
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (t *TicketService) AcquireUserTicket(input *ticket.AcquireUserTicketParams)(*platformclientmodels.TicketAcquireResult, error) {
    accessToken, err := t.TokenRepository.GetToken()
    if err != nil {
		return nil, err
	}
ok, notFound, conflict, unprocessableEntity, err := t.Client.Ticket.AcquireUserTicket(input, client.BearerToken(*accessToken.AccessToken))
    if notFound != nil {
		return nil, notFound
    }
    if conflict != nil {
		return nil, conflict
    }
    if unprocessableEntity != nil {
		return nil, unprocessableEntity
    }
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (t *TicketService) GetTicketDynamicShort(input *ticket.GetTicketDynamicParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.TicketDynamicInfo, error) {
    ok, err := t.Client.Ticket.GetTicketDynamicShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (t *TicketService) DecreaseTicketSaleShort(input *ticket.DecreaseTicketSaleParams, authInfo runtime.ClientAuthInfoWriter) error {
    _, err := t.Client.Ticket.DecreaseTicketSaleShort(input, authInfo)
    if err != nil {
		return err
	}
	return nil
}

func (t *TicketService) GetTicketBoothIDShort(input *ticket.GetTicketBoothIDParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.TicketBoothID, error) {
    ok, err := t.Client.Ticket.GetTicketBoothIDShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (t *TicketService) IncreaseTicketSaleShort(input *ticket.IncreaseTicketSaleParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.TicketSaleIncrementResult, error) {
    ok, err := t.Client.Ticket.IncreaseTicketSaleShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (t *TicketService) AcquireUserTicketShort(input *ticket.AcquireUserTicketParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.TicketAcquireResult, error) {
    ok, err := t.Client.Ticket.AcquireUserTicketShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

