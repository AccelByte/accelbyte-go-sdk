// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session_detail

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewAdminQueryTicketDetailParams creates a new AdminQueryTicketDetailParams object
// with the default values initialized.
func NewAdminQueryTicketDetailParams() *AdminQueryTicketDetailParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryTicketDetailParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminQueryTicketDetailParamsWithTimeout creates a new AdminQueryTicketDetailParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminQueryTicketDetailParamsWithTimeout(timeout time.Duration) *AdminQueryTicketDetailParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryTicketDetailParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminQueryTicketDetailParamsWithContext creates a new AdminQueryTicketDetailParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminQueryTicketDetailParamsWithContext(ctx context.Context) *AdminQueryTicketDetailParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryTicketDetailParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminQueryTicketDetailParamsWithHTTPClient creates a new AdminQueryTicketDetailParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminQueryTicketDetailParamsWithHTTPClient(client *http.Client) *AdminQueryTicketDetailParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryTicketDetailParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminQueryTicketDetailParams contains all the parameters to send to the API endpoint
for the admin query ticket detail operation typically these are written to a http.Request
*/
type AdminQueryTicketDetailParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*EndDate
	  End Date 2024-05-06T03:48:23Z

	*/
	EndDate *string
	/*GameMode
	  Game Mode

	*/
	GameMode *string
	/*Limit
	  Pagination limit

	*/
	Limit *int64
	/*Offset
	  Pagination offset

	*/
	Offset *int64
	/*Order
	  Order of the result. Supported: desc (default), asc

	*/
	Order *string
	/*PartyID
	  Party ID

	*/
	PartyID *string
	/*Region
	  Region

	*/
	Region *string
	/*StartDate
	  Start Date 2024-05-06T03:48:23Z

	*/
	StartDate *string
	/*UserIDs
	  User IDs

	*/
	UserIDs *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) WithTimeout(timeout time.Duration) *AdminQueryTicketDetailParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) WithContext(ctx context.Context) *AdminQueryTicketDetailParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) WithHTTPClient(client *http.Client) *AdminQueryTicketDetailParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminQueryTicketDetailParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) WithNamespace(namespace string) *AdminQueryTicketDetailParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEndDate adds the endDate to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) WithEndDate(endDate *string) *AdminQueryTicketDetailParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) SetEndDate(endDate *string) {
	o.EndDate = endDate
}

// WithGameMode adds the gameMode to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) WithGameMode(gameMode *string) *AdminQueryTicketDetailParams {
	o.SetGameMode(gameMode)
	return o
}

// SetGameMode adds the gameMode to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) SetGameMode(gameMode *string) {
	o.GameMode = gameMode
}

// WithLimit adds the limit to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) WithLimit(limit *int64) *AdminQueryTicketDetailParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) WithOffset(offset *int64) *AdminQueryTicketDetailParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrder adds the order to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) WithOrder(order *string) *AdminQueryTicketDetailParams {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) SetOrder(order *string) {
	o.Order = order
}

// WithPartyID adds the partyID to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) WithPartyID(partyID *string) *AdminQueryTicketDetailParams {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) SetPartyID(partyID *string) {
	o.PartyID = partyID
}

// WithRegion adds the region to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) WithRegion(region *string) *AdminQueryTicketDetailParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) SetRegion(region *string) {
	o.Region = region
}

// WithStartDate adds the startDate to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) WithStartDate(startDate *string) *AdminQueryTicketDetailParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) SetStartDate(startDate *string) {
	o.StartDate = startDate
}

// WithUserIDs adds the userIDs to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) WithUserIDs(userIDs *string) *AdminQueryTicketDetailParams {
	o.SetUserIDs(userIDs)
	return o
}

// SetUserIDs adds the userIDs to the admin query ticket detail params
func (o *AdminQueryTicketDetailParams) SetUserIDs(userIDs *string) {
	o.UserIDs = userIDs
}

// WriteToRequest writes these params to a swagger request
func (o *AdminQueryTicketDetailParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.EndDate != nil {

		// query param endDate
		var qrEndDate string
		if o.EndDate != nil {
			qrEndDate = *o.EndDate
		}
		qEndDate := qrEndDate
		if qEndDate != "" {
			if err := r.SetQueryParam("endDate", qEndDate); err != nil {
				return err
			}
		}

	}

	if o.GameMode != nil {

		// query param gameMode
		var qrGameMode string
		if o.GameMode != nil {
			qrGameMode = *o.GameMode
		}
		qGameMode := qrGameMode
		if qGameMode != "" {
			if err := r.SetQueryParam("gameMode", qGameMode); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.Order != nil {

		// query param order
		var qrOrder string
		if o.Order != nil {
			qrOrder = *o.Order
		}
		qOrder := qrOrder
		if qOrder != "" {
			if err := r.SetQueryParam("order", qOrder); err != nil {
				return err
			}
		}

	}

	if o.PartyID != nil {

		// query param partyID
		var qrPartyID string
		if o.PartyID != nil {
			qrPartyID = *o.PartyID
		}
		qPartyID := qrPartyID
		if qPartyID != "" {
			if err := r.SetQueryParam("partyID", qPartyID); err != nil {
				return err
			}
		}

	}

	if o.Region != nil {

		// query param region
		var qrRegion string
		if o.Region != nil {
			qrRegion = *o.Region
		}
		qRegion := qrRegion
		if qRegion != "" {
			if err := r.SetQueryParam("region", qRegion); err != nil {
				return err
			}
		}

	}

	if o.StartDate != nil {

		// query param startDate
		var qrStartDate string
		if o.StartDate != nil {
			qrStartDate = *o.StartDate
		}
		qStartDate := qrStartDate
		if qStartDate != "" {
			if err := r.SetQueryParam("startDate", qStartDate); err != nil {
				return err
			}
		}

	}

	if o.UserIDs != nil {

		// query param userIDs
		var qrUserIDs string
		if o.UserIDs != nil {
			qrUserIDs = *o.UserIDs
		}
		qUserIDs := qrUserIDs
		if qUserIDs != "" {
			if err := r.SetQueryParam("userIDs", qUserIDs); err != nil {
				return err
			}
		}

	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
