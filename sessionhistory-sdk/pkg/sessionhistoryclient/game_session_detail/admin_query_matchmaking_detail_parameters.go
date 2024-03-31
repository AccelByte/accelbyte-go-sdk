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

// NewAdminQueryMatchmakingDetailParams creates a new AdminQueryMatchmakingDetailParams object
// with the default values initialized.
func NewAdminQueryMatchmakingDetailParams() *AdminQueryMatchmakingDetailParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryMatchmakingDetailParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminQueryMatchmakingDetailParamsWithTimeout creates a new AdminQueryMatchmakingDetailParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminQueryMatchmakingDetailParamsWithTimeout(timeout time.Duration) *AdminQueryMatchmakingDetailParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryMatchmakingDetailParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminQueryMatchmakingDetailParamsWithContext creates a new AdminQueryMatchmakingDetailParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminQueryMatchmakingDetailParamsWithContext(ctx context.Context) *AdminQueryMatchmakingDetailParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryMatchmakingDetailParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminQueryMatchmakingDetailParamsWithHTTPClient creates a new AdminQueryMatchmakingDetailParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminQueryMatchmakingDetailParamsWithHTTPClient(client *http.Client) *AdminQueryMatchmakingDetailParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryMatchmakingDetailParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminQueryMatchmakingDetailParams contains all the parameters to send to the API endpoint
for the admin query matchmaking detail operation typically these are written to a http.Request
*/
type AdminQueryMatchmakingDetailParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*GameSessionID
	  gamesession ID

	*/
	GameSessionID *string
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
	/*OrderBy
	  Order result by specific attribute. Supported: expiredAt (default)

	*/
	OrderBy *string
	/*TicketID
	  ticket ID

	*/
	TicketID *string
	/*UserID
	  user ID

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) WithTimeout(timeout time.Duration) *AdminQueryMatchmakingDetailParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) WithContext(ctx context.Context) *AdminQueryMatchmakingDetailParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) WithHTTPClient(client *http.Client) *AdminQueryMatchmakingDetailParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminQueryMatchmakingDetailParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) WithNamespace(namespace string) *AdminQueryMatchmakingDetailParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithGameSessionID adds the gameSessionID to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) WithGameSessionID(gameSessionID *string) *AdminQueryMatchmakingDetailParams {
	o.SetGameSessionID(gameSessionID)
	return o
}

// SetGameSessionID adds the gameSessionId to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) SetGameSessionID(gameSessionID *string) {
	o.GameSessionID = gameSessionID
}

// WithLimit adds the limit to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) WithLimit(limit *int64) *AdminQueryMatchmakingDetailParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) WithOffset(offset *int64) *AdminQueryMatchmakingDetailParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrder adds the order to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) WithOrder(order *string) *AdminQueryMatchmakingDetailParams {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) SetOrder(order *string) {
	o.Order = order
}

// WithOrderBy adds the orderBy to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) WithOrderBy(orderBy *string) *AdminQueryMatchmakingDetailParams {
	o.SetOrderBy(orderBy)
	return o
}

// SetOrderBy adds the orderBy to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) SetOrderBy(orderBy *string) {
	o.OrderBy = orderBy
}

// WithTicketID adds the ticketID to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) WithTicketID(ticketID *string) *AdminQueryMatchmakingDetailParams {
	o.SetTicketID(ticketID)
	return o
}

// SetTicketID adds the ticketId to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) SetTicketID(ticketID *string) {
	o.TicketID = ticketID
}

// WithUserID adds the userID to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) WithUserID(userID *string) *AdminQueryMatchmakingDetailParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin query matchmaking detail params
func (o *AdminQueryMatchmakingDetailParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminQueryMatchmakingDetailParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.GameSessionID != nil {

		// query param gameSessionID
		var qrGameSessionID string
		if o.GameSessionID != nil {
			qrGameSessionID = *o.GameSessionID
		}
		qGameSessionID := qrGameSessionID
		if qGameSessionID != "" {
			if err := r.SetQueryParam("gameSessionID", qGameSessionID); err != nil {
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

	if o.OrderBy != nil {

		// query param orderBy
		var qrOrderBy string
		if o.OrderBy != nil {
			qrOrderBy = *o.OrderBy
		}
		qOrderBy := qrOrderBy
		if qOrderBy != "" {
			if err := r.SetQueryParam("orderBy", qOrderBy); err != nil {
				return err
			}
		}

	}

	if o.TicketID != nil {

		// query param ticketID
		var qrTicketID string
		if o.TicketID != nil {
			qrTicketID = *o.TicketID
		}
		qTicketID := qrTicketID
		if qTicketID != "" {
			if err := r.SetQueryParam("ticketID", qTicketID); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param userID
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("userID", qUserID); err != nil {
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
